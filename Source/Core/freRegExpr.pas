unit freRegExpr;

interface

uses
  SysUtils,
  Windows,
  //
  freCompiler,
  freInterfacesInt,
  FREE;

type
  TfreRegExpr = class(TInterfacedObject,
                      IfreRegExpr)

  private
    FProc : TfreProc;
    FExpr : TfreString;

  protected
    // IfrRegExpr
    function Expr : TfreString;
    function Match(ASource : TfreString) : TfreMatch; inline;
    function MatchBin(ASource : Pointer; ASize : NativeUInt) : TfreMatch; inline;
    function Operations : IfreOperation;
    function OptimizedOperations : IfreOperation;
    function Size : Integer;

  public
    constructor Create(AExpr : TfreString);
    destructor Destroy; override;

  end;

implementation

function TfreRegExpr.Expr : TfreString;
begin
  Exit(FExpr);
end;

function TfreRegExpr.Match(ASource : TfreString) : TfreMatch;
begin
  Result := MatchBin(TfreStringPos(ASource), Length(ASource));
end;

function TfreRegExpr.MatchBin(ASource : Pointer; ASize : NativeUInt) : TfreMatch;
begin
  if (ASize = 0) then
    Result.Create(ASource, ASize, @Stub_Next)
  else
    Result.Create(ASource, ASize, FProc.FNextProc);
end;

function TfreRegExpr.Operations : IfreOperation;
begin
  Exit(FProc.Root);
end;

function TfreRegExpr.OptimizedOperations : IfreOperation;
begin
  Exit(FProc.Optimized);
end;

function TfreRegExpr.Size : Integer;
begin
  Exit(FProc.Size);
end;

constructor TfreRegExpr.Create(AExpr : TfreString);
begin
  inherited Create;

  FExpr := AExpr;
  FProc := freCompiler.Compile(FExpr);
end;

destructor TfreRegExpr.Destroy;
begin
  freCompiler.FreeProc(FProc);

  inherited;
end;

end.
