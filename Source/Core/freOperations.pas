unit freOperations;

interface

uses
  Windows,
  Math,
  //
  System.Generics.Collections,
  System.SysUtils,
  //
  freInterfacesInt,
  FREE;

type
  TfreOperation      = class;
  TfreOperationClass = class of TfreOperation;

  TfreParseResult = (fprValid, fprLast, fprInvalid, fprNext);

  TfreOperation = class(TInterfacedObject,
                        IfreOperation,
                        IfreOperationInt)

  private
    FName       : String;
    FParameters : String;
    FItems      : TList<IfreOperationInt>;
    FCode       : IfreCode;
    FData       : IfreBin;
    FExpr       : IfreExpression;
    FNote       : String;
    FStatus     : TfreOperationStatus;
    FStart      : Integer;
    FLen        : Integer;

  protected
    procedure InvalidSymbol;
    procedure Process(AOperation : TfreOperationClass; AContainer : TfreOperationClass = nil);
    function ParseChar : TfreParseResult; virtual;
    procedure Init; virtual;
    procedure Finish; virtual;
    function New(AOperation : TfreOperationClass) : IfreOperationInt; inline;
    function Unique(AName : String = '') : String; inline;
    function StoreCurChar(ALabel : String) : String; inline;
    function CheckEOF(ALabel : String) : String; inline;

    // IfreOperation
    function Name : String; virtual;
    function Parameters : String;
    function Count : Integer;
    function GetItems(AIndex : Integer) : IfreOperation;
    function Note : String;
    function Status : TfreOperationStatus;
    function Start : Integer;
    function Len : Integer;

    // IfreOperationInt
    procedure Build; virtual;
    function Suffix : IfreOperationInt; virtual;
    procedure MarkAsHidden;
    procedure Parse;
    procedure Add(AOperation : IfreOperationInt);

  public
    constructor Create(ACode : IfreCode; AData : IfreBin; AExpr : IfreExpression);
    destructor Destroy; override;

  end;

  TfreGroupMode = (fgmSimple, fgmLook, fgmNotCaptured, fgmConditional, fgmAheadPositive, fgmAheadNegative, fgmBehind, fgmBehindPositive, fgmBehindNegative);

  TfreGroup = class(TfreOperation)
  private
    FMode   : TfreGroupMode;
    FClosed : Boolean;
    FIndex  : Integer;

  protected
    procedure ProcessBody; inline;

  protected
    function ParseChar : TfreParseResult; override;
    procedure Finish; override;
    procedure Build; override;

  end;

  TfreRoot = class(TfreGroup)
  protected
    procedure Init; override;
    procedure Build; override;
    procedure Finish; override;
    function ParseChar : TfreParseResult; override;

  end;

  TfreVariants = class(TfreOperation)
  protected
    function ParseChar : TfreParseResult; override;
    procedure Finish; override;
    procedure Build; override;

  end;

  TfreVariant = class(TfreOperation)
  protected
    function ParseChar : TfreParseResult; override;
    procedure Finish; override;

  end;

  TfreJumpMode = (fjmBin, fjmDec, fjmHex, fjmOct);

  TfreJump = class(TfreOperation)
  private
    FMode  : TfreJumpMode;
    FIndex : Integer;

  protected
    procedure Init; override;
    function ParseChar : TfreParseResult; override;
    procedure Finish; override;
    procedure Build; override;

  end;

  TfreBackRef = class(TfreOperation)
  private
    FIndex : Integer;

  protected
    procedure Finish; override;
    function ParseChar : TfreParseResult; override;
    procedure Build; override;

  end;

  TfreMultiStep = (mmNone, mmMin, mmMax, mmDone);
  TGreedyMode   = (fgmFixed, fgmNotGreedy, fgmGreedy, fgmPossessive);

  IfreGreedy = interface
    ['{E2C2E843-37C9-4890-B819-3E7A82C0D243}']

    procedure SetPosition(AName : String);

  end;

  TfreQuantifier = class(TfreOperation)
  private
    FMin      : Integer;
    FMax      : Integer;
    FGreedy   : TGreedyMode;
    FStep     : TfreMultiStep;
    FBufStr   : TfreString;
    FRepeater : IfreGreedy;

  protected
    procedure SetMulti(AMin, AMax : Cardinal); inline;
    procedure FinishMinMulti; inline;

  protected
    procedure Init; override;
    function ParseChar : TfreParseResult; override;
    procedure Finish; override;
    procedure Build; override;
    function Suffix : IfreOperationInt; override;

  end;

  TfrePossessive = class(TfreOperation)

  protected
    function ParseChar : TfreParseResult; override;
    procedure Finish; override;

  end;

  TfreGreedy = class(TfreOperation,
                     IfreGreedy)

  private
    FPosition : String;

  protected
    function ParseChar : TfreParseResult; override;
    procedure Finish; override;
    procedure Build; override;

    // IfreGreedy
    procedure SetPosition(AName : String);

  end;

  TfreRange = class(TfreOperation)
  protected
    procedure Init; override;
    function ParseChar : TfreParseResult; override;
    procedure Finish; override;

  end;

  TfreSet = class(TfreOperation)
  private
    FSet     : array [Low(TfreChar) .. High(TfreChar)] of Boolean;
    FControl : Boolean;
    FStates  : Integer;
    FDone    : String;
    FTable   : String;

  protected
    procedure ToggleFlag(AName : String; AFlag : PBoolean); inline;
    procedure MakeSet(AChars : TfreString);
    procedure MakeRange;
    procedure BuildFirst;
    procedure BuildStateTable;

  protected
    function ParseChar : TfreParseResult; override;
    procedure Finish; override;
    procedure Build; override;

    // IfreOperation
    function Name : String; override;

  end;

function IsSSE42 : Boolean;

const
  CurChar : TfreRegistry  = _ESI;
  LastChar : TfreRegistry = _EDI;
  A : TfreRegistry        = _EAX;
  D : TfreRegistry        = _EDX;
  Value : TfreRegistry    = _ECX;
  _Self : TfreRegistry    = _EBX;

implementation

var
  LCase         : array [TfreChar] of TfreChar;
  UCase         : array [TfreChar] of TfreChar;
  AllChars      : TfreString;
  IdentCharsI   : TfreString;
  NumberCharsI  : TfreString;
  RussianCharsI : TfreString;
  SpaceCharsI   : TfreString;
  SSE42         : Boolean;

const
  FCurChar   = 0;
  FLastPos   = FCurChar + Sizeof(Integer);
  FVariables = FLastPos + Sizeof(TfreStringPos);

function IsSSE42 : Boolean;
begin
  Exit(SSE42);
end;

procedure TfreOperation.InvalidSymbol;
begin
  raise TfreException.Create('Invalid char');
end;

procedure TfreOperation.Process(AOperation : TfreOperationClass; AContainer : TfreOperationClass = nil);
var
  Operation : IfreOperationInt;
  Container : IfreOperationInt;
begin
  Operation := New(AOperation);

  Operation.Parse;

  if (AContainer <> nil) and (Operation.Status <> fosError) then
  begin
    Container := New(AContainer);

    Add(Container);
    Container.Add(Operation);

    Container.Parse;

    Operation := Container.Suffix;

    if (Operation <> nil) then
    begin
      Operation.Parse;

      Add(Operation);
    end;
  end
  else
    Add(Operation);
end;

function TfreOperation.ParseChar : TfreParseResult;
begin
  Exit(fprInvalid);
end;

procedure TfreOperation.Init;
begin

end;

procedure TfreOperation.Finish;
begin

end;

function TfreOperation.New(AOperation : TfreOperationClass) : IfreOperationInt;
begin
  Result := AOperation.Create(FCode, FData, FExpr);
end;

function TfreOperation.Unique(AName : String) : String;
begin
  Inc(FCode.Values.Iteration);

  Result := AName + FCode.Values.Iteration.ToString;
end;

function TfreOperation.StoreCurChar(ALabel : String) : String;
begin
  Result := ALabel;

  FData.SetLabel(ALabel);
  FData.P(0);
  FCode._MOV(FData.GetLabel(ALabel), CurChar);
end;

function TfreOperation.CheckEOF(ALabel : String) : String;
begin
  Result := ALabel;

  FCode._(_CMP, CurChar, LastChar);
  FCode._Greater(FCode[Result]);
end;

function TfreOperation.Name : String;
begin
  Exit(FName);
end;

function TfreOperation.Parameters : String;
begin
  Exit(FParameters);
end;

function TfreOperation.Count : Integer;
begin
  Exit(FItems.Count);
end;

function TfreOperation.GetItems(AIndex : Integer) : IfreOperation;
begin
  Exit(FItems[AIndex]);
end;

function TfreOperation.Note : String;
begin
  Exit(FNote);
end;

function TfreOperation.Status : TfreOperationStatus;
begin
  Exit(FStatus);
end;

function TfreOperation.Start : Integer;
begin
  Exit(FStart);
end;

function TfreOperation.Len : Integer;
begin
  Exit(FLen);
end;

procedure TfreOperation.Build;
var
  Operation : IfreOperationInt;
begin
  for Operation in FItems do
    Operation.Build;
end;

function TfreOperation.Suffix : IfreOperationInt;
begin
  Exit(nil);
end;

procedure TfreOperation.MarkAsHidden;
begin
  if (FStatus = fosOk) then
    FStatus := fosHidden;
end;

procedure TfreOperation.Parse;
var
  Res : TfreParseResult;
begin
  try
    FStart := FExpr.Position;

    Init;

    repeat
      Res := ParseChar;

      case Res of
        fprNext :;

        fprValid :
          FExpr.Next;

        fprInvalid :
          Break;

        fprLast :
          begin
            FExpr.Next;
            Break;
          end;
      end;
    until FExpr.EOF;

    Finish;

    if (FNote > '') then
      FStatus := fosWarning;
  except
    on E : Exception do
    begin
      FNote   := E.Message;
      FStatus := fosError;

      FExpr.Cancel;
    end;
  end;

  FLen := Max(1, FExpr.Position - FStart);
end;

procedure TfreOperation.Add(AOperation : IfreOperationInt);
begin
  FItems.Add(AOperation);
end;

constructor TfreOperation.Create(ACode : IfreCode; AData : IfreBin; AExpr : IfreExpression);
begin
  inherited Create;

  FItems  := TList<IfreOperationInt>.Create;
  FName   := ClassName.Replace('Tfre', '');
  FData   := AData;
  FCode   := ACode;
  FExpr   := AExpr;
  FStatus := fosOk;
end;

destructor TfreOperation.Destroy;
begin
  FreeAndNil(FItems);

  inherited;
end;

procedure TfreRoot.Init;
begin
  if FExpr.EOF then
    raise TfreException.Create('Empty expression');

  FCode.Values.FirstSet        := True;
  FCode.Values.CaseInsensetive := False;
  FCode.Values.Group           := -1;
  FCode.Values.BeginDoc        := False;
  FCode.Values.EndDoc          := False;
  FCode.Values.HaveSet         := False;

  inherited;
end;

procedure TfreRoot.Build;
begin
  FCode._(_MOV, _Self, _EAX);

  FCode._(_MOV, CurChar, _Self, 0, FCurChar);
  FCode._(_MOV, LastChar, _Self, 0, FLastPos);

  FCode.Values.NotFound := 'NotFound';
  FCode.Values.Retry    := 'Start';

  FCode.SetLabel(FCode.Values.Retry); // Точка отката при несовпадении (кроме FirstSet)

  FCode.Values.FirstSet  := True;
  FCode.Values.Iteration := 0;

  if FCode.Values.BeginDoc then
    FCode.Values.Retry := FCode.Values.NotFound;

  inherited;

  FCode._(_EAX, Integer(True));
  FCode._MOV(_Self, FCurChar, CurChar);
  FCode._(_RET);

  FCode.SetLabel(FCode.Values.NotFound);

  FCode._(_EAX, Integer(False));
  FCode._(_RET);
end;

procedure TfreRoot.Finish;
begin
  FClosed := True;

  inherited;

  FParameters := '';

  if (not FCode.Values.HaveSet) then
    raise TfreException.Create('Sets not found.');
end;

function TfreRoot.ParseChar : TfreParseResult;
begin
  ProcessBody;

  Exit(fprInvalid);
end;

procedure TfreGroup.ProcessBody;
begin
  if (FMode = fgmSimple) then
  begin
    FIndex             := FCode.Values.Group + 1;
    FCode.Values.Group := FIndex;
  end
  else
    FIndex := -1;

  Process(TfreVariants);
end;

function TfreGroup.ParseChar : TfreParseResult;
begin
  case FMode of
    fgmSimple :
      case FExpr.CurChar of
        '?' : FMode := fgmLook;
        '(' :;

      else
        ProcessBody;
      end;

    fgmLook :
      case FExpr.CurChar of
        '<' : FMode := fgmBehind;
        '=' : FMode := fgmAheadPositive;
        '!' : FMode := fgmAheadNegative;
        ':' : FMode := fgmNotCaptured;
        '(' : FMode := fgmConditional;

      else
        InvalidSymbol;
      end;

    fgmBehind :
      begin
        if (not FCode.Values.FirstSet) then
          raise TfreException.Create('Behind assertion must be first.');

        case FExpr.CurChar of
          '=' : FMode := fgmBehindPositive;
          '!' : FMode := fgmBehindNegative;

        else
          InvalidSymbol;
        end;
      end;

  else
    ProcessBody;
  end;

  if (FExpr.CurChar = ')') then
  begin
    FClosed := True;

    Exit(fprLast);
  end;

  Exit(fprValid);
end;

procedure TfreGroup.Finish;
begin
  {$IFNDEF MoreGroups}
  if (FIndex + 1 > cMaxGroups) then
    raise TfreException.Create('Too many groups.');
  {$ENDIF}
  if (not FClosed) then
    raise TfreException.Create('Open group.');

  if (Count = 0) then
    raise TfreException.Create('Empty group.');

  case FMode of
    fgmAheadPositive, fgmAheadNegative :
      if (not FExpr.EOF) then
        raise TfreException.Create('Ahead assertion must be last.');
  end;

  case FMode of
    fgmAheadPositive : FParameters  := '[Ahead positive]';
    fgmAheadNegative : FParameters  := '[Ahead negative]';
    fgmBehindPositive : FParameters := '[Behind positive]';
    fgmBehindNegative : FParameters := '[Behind negative]';
    fgmNotCaptured : FParameters    := '[Not capture group]';
    fgmConditional : FParameters    := '[Conditional]';

  else
    if (FIndex >= 0) then
      FParameters := IntToStr(FIndex)
  end;
end;

procedure TfreGroup.Build;
var
  Offset : Integer;
begin
  if (FIndex >= 0) then
  begin
    if (FMode = fgmSimple) then
    begin
      Offset := FIndex * Sizeof(TfreVarPos);

      FCode._MOV(_Self, FVariables + Offset, CurChar);

      inherited;

      FCode._MOV(_Self, FVariables + Offset + Sizeof(TfreStringPos), CurChar);
    end
    else
      inherited;
  end
  else
  begin
    FCode.Values.Variables := 0;

    inherited;
  end;
end;

function TfreVariants.ParseChar : TfreParseResult;
begin
  Process(TfreVariant);

  if (FExpr.CurChar = '|') then
    Exit(fprValid)
  else
    Exit(fprInvalid);
end;

procedure TfreVariants.Finish;
begin
  if (Count < 2) then
  begin
    FStatus := fosHidden;

    FItems[0].MarkAsHidden;
  end;
end;

procedure TfreVariants.Build;
var
  i    : Integer;
  Done : String;
begin
  if (FStatus = fosHidden) then
  begin
    inherited;

    Exit;
  end;

  Done := Unique;

  for i := 0 to Count - 2 do
  begin
    FItems[i].Build;
    FCode._LongJMP(FCode[Done]);
  end;

  FItems.Last.Build;

  FCode.SetLabel(Done);
end;

procedure TfreQuantifier.SetMulti(AMin, AMax : Cardinal);
begin
  FMin  := AMin;
  FMax  := AMax;
  FStep := mmDone;
end;

procedure TfreQuantifier.FinishMinMulti;
begin
  if (FBufStr > '') then
  begin
    FMin    := StrToInt(String(FBufStr));
    FBufStr := '';
  end
  else
    FMin := -1;
end;

procedure TfreQuantifier.Init;
begin
  FMin    := -1;
  FMax    := -1;
  FStep   := mmNone;
  FBufStr := '';
  FGreedy := fgmGreedy;
end;

function TfreQuantifier.ParseChar : TfreParseResult;
begin
  case FStep of
    mmNone :
      case FExpr.CurChar of
        '{' : FStep := mmMin;
        '*' : SetMulti(0, MaxInt);
        '+' : SetMulti(1, MaxInt);
        '?' : SetMulti(0, 1);

      else
        Exit(fprInvalid);
      end;

    mmMin :
      begin
        case FExpr.CurChar of
          ',' :
            begin
              FinishMinMulti;

              FStep := mmMax;
            end;

          '}' :
            begin
              if (FBufStr = '') then
                raise TfreException.Create('Empty quantifier');

              FinishMinMulti;

              FMax  := FMin; // {n} - точно n раз
              FStep := mmDone;
            end;

          '0' .. '9' : FBufStr := FBufStr + FExpr.CurChar;
          ' ' :;

        else
          InvalidSymbol;
        end;
      end;

    mmMax :
      begin
        case FExpr.CurChar of
          '}' :
            begin
              if (FBufStr > '') then
                FMax := StrToInt(String(FBufStr))
              else
                FMax := MaxInt; // {n,} - более n раз

              FStep := mmDone;
            end;

          '0' .. '9' : FBufStr := FBufStr + FExpr.CurChar;
          ' ' :;

        else
          InvalidSymbol;
        end;
      end;

    mmDone :
      case FExpr.CurChar of
        '?' : FGreedy := fgmNotGreedy;
        '+' : FGreedy := fgmPossessive;

      else
        Exit(fprInvalid);
      end;

  else
    Exit(fprInvalid);
  end;

  Exit(fprValid);
end;

procedure TfreQuantifier.Finish;
begin
  if (FMax = FMin) then
    FGreedy := fgmFixed;

  if (FStep = mmNone) then
  begin
    FStatus := fosHidden;

    Exit;
  end;

  if (FStep <> mmDone) then
    raise TfreException.Create('Open quantifier');

  if (FStep <> mmNone) then
  begin
    if (FMin < 0) and (FMax < 0) then
      raise TfreException.Create('Empty quantifier')
    else if (FMin = 0) and (FMax < 1) then
      raise TfreException.Create('Zero quantifier');
  end;

  if (FMin < 0) then // {, n} - не более n раз
    FMin := 0
  else if (FMin > FMax) then
    raise TfreException.Create('Max quantifier < min quantifier');

  case FGreedy of
    fgmFixed :
      begin
        FParameters := Format('х %d [Fixed]', [FMin]);

        if (FMax = 1) then
        begin
          if (FNote > '') then
            FNote := FNote + '; ';

          FNote := FNote + 'Unnecessary quantifier';
        end;

        Exit;
      end;

    fgmGreedy :
      FParameters := 'Greedy';

    fgmNotGreedy :
      begin
        FParameters := 'NOT greedy';
      end;

    fgmPossessive :
      FParameters := 'Possessive';
  end;

  FParameters := Format(' from %d to %d [%s]', [FMin, FMax, FParameters]);
end;

procedure TfreQuantifier.Build;
var
  i        : Integer;
  NotFound : String;
  Loop     : String;
begin
  if (FStatus = fosHidden) then
    inherited
  else
  begin
    if (FRepeater <> nil) and ((FRepeater as IfreOperation).Status <> fosHidden) then
      FRepeater.SetPosition(StoreCurChar(Unique));

    NotFound := FCode.Values.NotFound;

    for i := 1 to FMin do
      inherited;

    if (FMin < FMax) then
    begin
      if FCode.Values.FirstSet then
      begin
        if FCode.Values.HasSuffix then
          FCode.Values.NotFound := Unique;

        inherited;

        FCode.SetLabel(FCode.Values.NotFound);
      end;

      FCode.Values.Retry    := Unique('QuantifierDone');
      FCode.Values.NotFound := FCode.Values.Retry;

      if (FMax = MaxInt) then
      begin
        Loop := Unique;

        FCode.SetLabel(Loop);

        inherited;

        FCode._LongJMP(FCode[Loop]);
      end
      else
        for i := FMin + 1 to FMax do
          inherited;

      FCode.SetLabel(FCode.Values.Retry);

      FCode.Values.Retry    := NotFound;
      FCode.Values.NotFound := NotFound;
    end;
  end;
end;

function TfreQuantifier.Suffix : IfreOperationInt;
begin
  case FGreedy of
    fgmPossessive :
      Result := New(TfrePossessive);

    fgmGreedy :
      begin
        Result    := New(TfreGreedy);
        FRepeater := Result as IfreGreedy;
      end;

  else
    Result := nil;
  end;
end;

procedure TfreSet.ToggleFlag(AName : String; AFlag : PBoolean);
begin
  FControl    := True;
  AFlag^      := not AFlag^;
  FParameters := AName;
end;

procedure TfreSet.MakeSet(AChars : TfreString);
var
  Char  : TfreChar;
  Value : Boolean;
begin
  Value := not FCode.Values.Invert;

  if FCode.Values.CaseInsensetive then
    for Char in AChars do
    begin
      FSet[UCase[Char]] := Value;
      FSet[LCase[Char]] := Value;

      if (FStates < High(Byte)) then
        Inc(FStates, 2);
    end
  else
    for Char in AChars do
    begin
      FSet[Char] := Value;

      if (FStates < High(Byte)) then
        Inc(FStates);
    end;
end;

procedure TfreSet.MakeRange;
var
  A     : TfreChar;
  B     : TfreChar;
  C     : TfreChar;
  Range : TfreString;
begin
  if FExpr.EOF then
    raise TfreException.Create('Invalid range.');

  B := FExpr.NextChar;
  A := FExpr.PrevChar;

  if A > B then
  begin
    A := FExpr.NextChar;
    B := FExpr.PrevChar;
  end;

  for C   := A to B do
    Range := Range + C;

  MakeSet(Range);

  FExpr.Next;
end;

procedure TfreSet.BuildFirst;
var
  L          : TfreChar;
  RangesSize : Integer;
  HasSet     : Boolean;
  First      : TfreChar;
  Last       : TfreChar;
  Table      : String;
  LoopMMX    : String;
  OneByOne   : String;
const
  ExpandCnt = 48;
  MMXSize   = 16;

  procedure FinishSet;
  begin
    if HasSet then
    begin
      HasSet := False;

      FData.B(Byte(First));
      FData.B(Byte(Last));
    end;
  end;

begin
  if SSE42 then
  begin
    HasSet     := False;
    RangesSize := 0;
    Table      := Unique('Table');

    FData.SetLabel(Table);

    for L := Low(TfreChar) to High(TfreChar) do
      if FSet[L] then
      begin
        if HasSet then
          Last := L
        else
        begin
          First := L;
          Last  := L;

          Inc(RangesSize, 2);
        end;

        HasSet := True;
      end
      else
        FinishSet;

    FinishSet;

    if (RangesSize > MMXSize) then
      raise TfreException.Create('Ranges overflow.');

    FCode._M2X(0, FData.GetLabel(Table)); // Загрузка образцов для первого символа в xmm0
    FCode._MOV(A, RangesSize);            // Размер образца
    FCode._MOV(D, MMXSize);               // Размер строки

    LoopMMX := Unique;

    FCode.SetLabel(LoopMMX);

    if FCode.Values.ZeroTerminated then
    begin
      FCode._ADD(CurChar, MMXSize);

      FCode.SSE2_CMPStrO(0, CurChar, -MMXSize, RANGES, True);

      FCode.Greater_Short(FCode[LoopMMX]);
      FCode.JNC_Long(FCode[FCode.Values.NotFound]);

      FCode._SUB(CurChar, MMXSize);
      FCode._ADD(CurChar, Value);
    end
    else
    begin
      FCode._ADD(CurChar, MMXSize);

      OneByOne := CheckEOF(Unique);

      FCode.SSE2_CMPStrO(0, CurChar, -MMXSize, RANGES);

      FCode.Greater_Short(FCode[LoopMMX]);
      FCode.JNC_Long(FCode[FCode.Values.NotFound]);

      FCode._SUB(CurChar, MMXSize);
      FCode._ADD(CurChar, Value);

      FCode._ShortJMP(FCode['FirstDone']);

      FCode.SetLabel(OneByOne);

      FCode._SUB(CurChar, MMXSize);
      FCode._(_MOV, D, LastChar);
      FCode._SUB(D, CurChar);
      FCode._(_INC, D);

      FCode.SSE2_CMPStr(0, CurChar, RANGES);
      FCode._GreaterOrEqual(FCode[FCode.Values.NotFound]);

      FCode._ADD(CurChar, Value);
    end;
  end
  else
  begin
    BuildStateTable;

    { if (Length(FSet) = 1) then
      begin
     FCode.SetLabel('FastLoop', Self);
     FCode._ADD(CurChar, ExpandCnt);
     FCode._(_CMP, CurChar, LastChar);

     FCode._Greater(FCode['OneByOne', Self]);

     for i := 1 to ExpandCnt do
     begin
     FCode._CMP(CurChar, i - ExpandCnt, Byte(FSet[1]));
     FCode._Equal(FCode['Done' + i.ToString, Self]);
     end;

     FCode._LongJMP(FCode['FastLoop', Self]);

     FCode.SetLabel('OneByOne', Self);
     FCode._SUB(CurChar, ExpandCnt - 1);
     end
     else

     for i := 1 to ExpandCnt do
     begin
     FCode.SetLabel('Done' + i.ToString, Self);
     FCode._ADD(CurChar, i);
     FCode._ShortJMP(FCode['Done', Self]);
     end;     }

    if not FCode.Values.ZeroTerminated then
      CheckEOF(FCode.Values.NotFound);

    // Шаг
    FCode._MOVZX(Value, CurChar);                               // Получение текущего символа
    FCode._JMP(Value, Sizeof(Pointer), FData.GetLabel(FTable)); // Прыжок по таблице состояний
  end;

  FCode.SetLabel('FirstDone');

  FCode._MOV(_Self, FVariables, CurChar);
end;

procedure TfreSet.BuildStateTable;
var
  C     : TfreChar;
  Retry : NativeInt;
  Done  : NativeInt;
  First : TfreChar;
begin
  FStates := 0;
  Retry   := FCode.GetLabel(FCode.Values.Retry);
  Done    := FCode.GetLabel(FDone);
  FTable  := Unique('Table');

  FData.SetLabel(FTable);

  if FCode.Values.ZeroTerminated then
  begin
    First := #1;

    FData.P(FCode.GetLabel(FCode.Values.NotFound));
  end
  else
    First := Low(TfreChar);

  for C := First to High(TfreChar) do
    if FSet[C] then
    begin
      FData.P(Done);
      Inc(FStates);
    end
    else
      FData.P(Retry);
end;

function TfreSet.ParseChar : TfreParseResult;
begin
  case FExpr.CurChar of
    '-' :
      if FCode.Values.MultiSet then
      begin
        if ((FExpr.PrevChar <> '[') and (FExpr.NextChar <> ']')) then
          MakeRange;
      end
      else
        MakeSet(FExpr.CurChar);

    '.' :
      begin
        MakeSet(AllChars);

        FStates := High(Byte);
      end;
    '^' : MakeSet(cStartOfStr);
    '$' : MakeSet(cEndOfStr);
    '\' :
      begin
        if (not FExpr.Next) then
          raise TfreException.Create('Empty control char');

        case FExpr.CurChar of
          'd' : MakeSet(cNumberChars);
          'D' : MakeSet(NumberCharsI);
          'w' : MakeSet(cIdentChars);
          'W' : MakeSet(IdentCharsI);
          'c' : MakeSet(cRussianChars);
          'C' : MakeSet(RussianCharsI);
          's' : MakeSet(cSpaceChars);
          'S' : MakeSet(SpaceCharsI);
          '0' : MakeSet(#0);
          '.', '(', ')', '{', '}', '[', ']', '-', '+', '?' : MakeSet(FExpr.CurChar);
          '1' .. '9' : Process(TfreBackRef);
          'j' : Process(TfreJump);
          'A' : ToggleFlag('Begin document', @FCode.Values.BeginDoc);
          'Z' : ToggleFlag('End document', @FCode.Values.EndDoc);
          'i' : ToggleFlag('Case insensetive', @FCode.Values.CaseInsensetive);
          'T' : ToggleFlag('Optimize for tiny source', @FCode.Values.TinySource);
          'z' : ToggleFlag('Optimize for zero-terminated', @FCode.Values.ZeroTerminated);

        else InvalidSymbol;
        end;
      end;

    '_', '@', '!', '=', ':', ';', '<', '>', '/', '%', '#', '№', '"', '~', '*', ',', ' ', '`', '''', //
      #0 .. #31, '0' .. '9', 'a' .. 'z', 'A' .. 'Z', 'а' .. 'я', 'А' .. 'Я', 'ё', 'Ё' : MakeSet(FExpr.CurChar);
  else Exit(fprInvalid);
  end;

  if FCode.Values.MultiSet then
    Exit(fprValid)
  else
    Exit(fprLast);
end;

procedure TfreSet.Finish;
var
  C          : TfreChar;
  Parameters : TfreString;
begin
  if (not FControl) then
  begin
    FParameters := '';

    for C := #33 to High(TfreChar) do
      if FSet[C] then
        Parameters := Parameters + C;

    FParameters := String(Parameters);

    if (Count > 0) then
      FStatus := fosHidden;

    FCode.Values.FirstSet := False;
    FCode.Values.HaveSet  := True;
  end;
end;

procedure TfreSet.Build;
var
  C : TfreChar;
begin
  inherited;

  if FControl or (FItems.Count > 0) then
    Exit;

  FDone := Unique('Done');

  if FCode.Values.FirstSet and (not FCode.Values.BeginDoc) and (FStates < High(Byte)) then
    BuildFirst
  else
  begin
    if not FCode.Values.ZeroTerminated then
      CheckEOF(FCode.Values.NotFound);

    case FStates of
      1 : // One char
        begin
          for C := Low(TfreChar) to High(TfreChar) do
            if FSet[C] then
            begin
              FCode.CMP_RCB(CurChar, Byte(C));
              FCode._NotEqual(FCode[FCode.Values.Retry]);

              Break;
            end;
        end;

      High(Byte) : // Any char
        ;

    else // Set of chars
      begin
        BuildStateTable;

        FCode._MOVZX(Value, CurChar);                               // Получение текущего символа
        FCode._JMP(Value, Sizeof(Pointer), FData.GetLabel(FTable)); // Прыжок по таблице состояний
      end;
    end;
  end;

  FCode.SetLabel(FDone);

  FCode._(_INC, CurChar); // Следующий символ

  FCode.Values.FirstSet := False;
end;

function TfreSet.Name : String;
begin
  if FControl then
    Exit('Flag');

  Exit(inherited);
end;

procedure TfreJump.Init;
begin
  FMode := fjmBin;
end;

function TfreJump.ParseChar : TfreParseResult;
begin
  case FExpr.CurChar of
    'j' :;
    '0' .. '9' :
      FParameters := FParameters + Char(FExpr.CurChar);
  else
    if (FParameters = '') then
      case FExpr.CurChar of
        'd' : FMode := fjmDec;
        'h' : FMode := fjmHex;
        'o' : FMode := fjmOct;
      else
        Exit(fprInvalid);
      end;
  end;

  Exit(fprValid);
end;

procedure TfreJump.Finish;
begin
  if (FParameters = '') then
    raise TfreException.Create('Unknown source group index');

  FIndex := FParameters.ToInteger;

  case FMode of
    fjmBin : FParameters := 'Binary parameter';
    fjmDec : FParameters := 'Decimal parameter';
    fjmHex : FParameters := 'Hex parameter';
    fjmOct : FParameters := 'Oct parameter';
  end;

  FParameters := Format('%s in group #%d', [FParameters, FIndex]);

  if (FIndex < 1) or (FIndex > FCode.Values.Group) then
    raise TfreException.CreateFmt('Number must be between 1 and %d', [Integer(FCode.Values.Group)]);
end;

procedure TfreJump.Build;
begin
  if (FMode = fjmBin) then
  begin

  end
  else
  begin
    case FMode of
      fjmDec :
        begin

        end;

      fjmHex :
        begin

        end;

      fjmOct :
        begin

        end;
    end;
  end;

  FCode._ADD(CurChar, Value);

  CheckEOF(FCode.Values.NotFound);
end;

procedure TfreBackRef.Finish;
begin
  FIndex := StrToInt(FParameters);

  Dec(FStart);

  if (FIndex < 1) or (FIndex > FCode.Values.Group) then
    raise TfreException.CreateFmt('Number must be between 1 and %d', [Integer(FCode.Values.Group)]);
end;

function TfreBackRef.ParseChar : TfreParseResult;
begin
  case FExpr.CurChar of
    '0' .. '9' :
      FParameters := FParameters + Char(FExpr.CurChar);
  else
    Exit(fprInvalid);
  end;

  Exit(fprValid);
end;

procedure TfreBackRef.Build;
var
  Offset : Integer;
begin
  Offset := FVariables + FIndex * Sizeof(TfreVarPos);

  if FCode.Values.CaseInsensetive then
  begin

  end
  else
  begin
    FCode._(_MOV, A, LastChar);
    FCode._(_MOV, _EDI, CurChar);

    FCode._SUB(_EDX, A);

    FCode.MO2_R(_ESI, _Self, Offset); // Эталон

    FCode.MO2_R(_ECX, _Self, Offset + Sizeof(TfreStringPos));
    FCode._SUB(_ECX, _ESI); // Длинна эталона

    FCode.REP_CMPSB; // Сравнение

    FCode._NotEqual(FCode[FCode.Values.Retry]);

    FCode._(_MOV, CurChar, _EDI);
    FCode._(_MOV, LastChar, A);
  end;
end;

function CheckSSE42 : Boolean;
asm
  {$IFNDEF CPUX64}
  pushfd
  pop eax
  mov edx,eax
  xor eax,$200000
  push eax
  popfd
  pushfd
  pop eax
  xor eax,edx
  jz @0
  {$ENDIF}
  push ebx
  mov eax,1
  cpuid
  test edx,$100000
  setz al
  pop ebx
  ret
@0: xor eax,eax
end;

procedure Init;
var
  C : TfreChar;

  function InvertSet(ASet : AnsiString) : AnsiString;
  var
    s : TfreChar;
  begin
    Result := '';

    for s := Low(TfreChar) to High(TfreChar) do
      if (Pos(s, ASet) = 0) then
        Result := Result + s;
  end;

begin
  SSE42    := (not FindCmdLineSwitch('NOSSE')) and CheckSSE42;
  AllChars := '';

  for C := Low(TfreChar) to High(TfreChar) do
  begin
    LCase[C] := TfreChar(LowerCase(Char(C))[1]);
    UCase[C] := TfreChar(UpperCase(Char(C))[1]);
    AllChars := AllChars + C;
  end;

  RussianCharsI := InvertSet(cRussianChars);
  IdentCharsI   := InvertSet(cIdentChars);
  SpaceCharsI   := InvertSet(cSpaceChars);
  NumberCharsI  := InvertSet(cNumberChars);
end;

procedure TfreVariant.Finish;
begin
  if (Count = 1) and (FItems[0].Count = 1) and (FItems[0].Items[0].Name = 'Group') and (FItems[0].Status = fosHidden) then
    FNote := 'Child - unnecessary group';

  if (Count = 0) then
    raise TfreException.Create('Empty variant.');

  if FCode.Values.MultiSet then
    raise TfreException.Create('Open range');
end;

function TfreVariant.ParseChar : TfreParseResult;
begin
  case FExpr.CurChar of
    '(' : Process(TfreGroup, TfreQuantifier);
    '[' : Process(TfreRange, TfreQuantifier);
    '|', ')' : Exit(fprInvalid);

  else Process(TfreSet, TfreQuantifier);
  end;

  Exit(fprNext);
end;

procedure TfreRange.Init;
begin
  FCode.Values.Invert   := False;
  FCode.Values.MultiSet := True;
end;

function TfreRange.ParseChar : TfreParseResult;
begin
  case FExpr.CurChar of
    '[' :;
    '^' : FCode.Values.Invert := True;
    ']' : Exit(fprLast);
  else
    begin
      Process(TfreSet);

      if (FExpr.CurChar = ']') then
        Exit(fprLast)
      else
        raise TfreException.Create('Open range');
    end;
  end;

  Exit(fprValid);
end;

procedure TfreRange.Finish;
begin
  FCode.Values.MultiSet := False;

  if (Count = 0) then
    raise TfreException.Create('Empty range');
end;

function TfreGreedy.ParseChar : TfreParseResult;
begin
  if (not FExpr.EOF) then
    Process(TfreVariants);

  Exit(fprInvalid);
end;

procedure TfreGreedy.Finish;
begin
  if (Count = 0) or (GetItems(0).GetItems(0).Count = 0) then
  begin
    FStatus := fosHidden;

    FItems.Clear;
  end
  else
    FCode.Values.HasSuffix := True;
end;

procedure TfreGreedy.Build;
var
  NotFound  : String;
  Retry     : String;
  LocalName : String;
  Loop      : String;
  Done      : String;
begin
  if (FStatus = fosHidden) then
    Exit;

  NotFound := FCode.Values.NotFound;
  Retry    := FCode.Values.Retry;

  FCode.Values.NotFound := Unique('NotFoundRep');
  FCode.Values.Retry    := FCode.Values.NotFound;

  LocalName := StoreCurChar(Unique);
  Loop      := Unique;

  FCode.SetLabel(Loop);

  inherited;

  Done := Unique;

  FCode._ShortJMP(FCode[Done]);

  FCode.SetLabel(FCode.Values.NotFound);

  FCode.Values.NotFound := NotFound;
  FCode.Values.Retry    := Retry;

  FCode.DEC_M(FData.GetLabel(LocalName));
  FCode._(_MOV, CurChar, FData.GetLabel(LocalName));

  FCode.CMP_R_M(CurChar, FData.GetLabel(FPosition));
  FCode.Less(FCode[FCode.Values.NotFound]);

  FCode._LongJMP(FCode[Loop]);

  FCode.SetLabel(Done);
end;

procedure TfreGreedy.SetPosition(AName : String);
begin
  FPosition := AName;
end;

function TfrePossessive.ParseChar : TfreParseResult;
begin
  if (not FExpr.EOF) then
    Process(TfreVariants);

  Exit(fprInvalid);
end;

procedure TfrePossessive.Finish;
begin
  FStatus := fosHidden;

  if (Count > 0) then
    FCode.Values.HasSuffix := True;
end;

initialization

Init;

end.
