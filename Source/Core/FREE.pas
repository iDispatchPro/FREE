unit FREE;

interface

uses
  System.Generics.Collections,
  SysUtils;

const
  cMaxGroups = 100;
  cMaxVars   = 100;

type
  TfreChar      = AnsiChar;
  TfreString    = AnsiString;
  TfreStringPos = ^TfreChar;

  TfreVarPos = record
  public
    Start  : TfreStringPos;
    Finish : TfreStringPos;

    function Len : Integer; inline;

  end;

  TfreMatch = record
  private
    FCurPos   : TfreStringPos;
    FLastPos  : TfreStringPos;
    FGroups   : array [0 .. cMaxGroups - 1] of TfreVarPos;
    FNextProc : Pointer;

  public
    procedure Create(ASource : Pointer; ASize : NativeUInt; AProc : Pointer); inline;
    function Next : Boolean;
    function GetCount : Integer; inline;
    function GetValue(AIndex : Integer) : TfreString; inline;
    function GetPos(AIndex : Integer) : TfreVarPos; inline;
    function Substitute(ATemplate : TfreString) : TfreString;

    property Values[AIndex : Integer] : TfreString read GetValue; default;
    property Positions[AIndex : Integer] : TfreVarPos read GetPos;
    property Count : Integer read GetCount;

  end;

  TfreOperationStatus = (fosOk, fosHidden, fosWarning, fosError);

  IfreOperation = interface
    ['{292F07E9-89AC-4C2C-B7A9-E081DC1F1070}']

    function Name : String;
    function Parameters : String;
    function Count : Integer;
    function GetItems(AIndex : Integer) : IfreOperation;
    function Note : String;
    function Status : TfreOperationStatus;
    function Start : Integer;
    function Len : Integer;

    property Items[AIndex : Integer] : IfreOperation read GetItems; default;

  end;

  IfreRegExpr = interface
    ['{807694BD-7971-405F-A26F-689E24E15A18}']

    function Expr : TfreString;
    function Match(ASource : TfreString) : TfreMatch;
    function MatchBin(ASource : Pointer; ASize : NativeUInt) : TfreMatch;
    function Operations : IfreOperation;
    function OptimizedOperations : IfreOperation;
    function Size : Integer;

  end;

  TfreException = class(Exception);

function RegExpr(AExpr : TfreString) : IfreRegExpr;
function ReplaceRE(ASource, AFrom, ATo : TfreString) : TfreString; inline;

implementation

uses
  freRegExpr;

var
  Cache       : TDictionary<TfreString, IfreRegExpr>;
  Substituter : IfreRegExpr;

function RegExpr(AExpr : TfreString) : IfreRegExpr;
begin
  TMonitor.Enter(Cache);
  try
    if (not Cache.TryGetValue(AExpr, Result)) then
    begin
      Result := TfreRegExpr.Create(AExpr);

      Cache.Add(AExpr, Result);
    end;
  finally
    TMonitor.Exit(Cache);
  end;
end;

function ReplaceRE(ASource, AFrom, ATo : TfreString) : TfreString;
var
  Match : TfreMatch;
begin
  Match  := RegExpr(AFrom).Match(ASource);
  Result := '';

  while Match.Next do
    Result := Result + Match.Substitute(ATo);
end;

function TfreVarPos.Len : Integer;
begin
  Exit(Integer(NativeUInt(Finish) - NativeUInt(Start)));
end;

procedure TfreMatch.Create(ASource : Pointer; ASize : NativeUInt; AProc : Pointer);
begin
  FNextProc := AProc;
  FCurPos   := ASource;
  FLastPos  := TfreStringPos(NativeUInt(ASource) + ASize - 1);
end;

function TfreMatch.Next : Boolean;
asm
  CALL DWORD PTR [EAX + FNextProc]
end;

function TfreMatch.GetCount : Integer;
begin
  Exit(PInteger(NativeUInt(FNextProc) - SizeOf(Result))^);
end;

function TfreMatch.GetValue(AIndex : Integer) : TfreString;
var
  P : TfreVarPos;
begin
  P := GetPos(AIndex);

  SetLength(Result, P.Len);
  Move(P.Start^, Result[1], P.Len);
end;

function TfreMatch.GetPos(AIndex : Integer) : TfreVarPos;
begin
  Result := FGroups[AIndex];
end;

function TfreMatch.Substitute(ATemplate : TfreString) : TfreString;
var
  Match : TfreMatch;
begin
  Match  := Substituter.Match(ATemplate);
  Result := '';

  while Match.Next do
    Result := Match[0] + Self[StrToInt(Match[1])];
end;

initialization

Cache       := TDictionary<TfreString, IfreRegExpr>.Create;
Substituter := RegExpr('(.*?)[^@]{0;1}@(\d*?)');

finalization

FreeAndNil(Cache);

end.
