unit freCompiler;

interface

uses
  System.Generics.Collections,
  SysUtils,
  Windows,
  //
  freInterfacesInt,
  FREE,
  freOperations;

type
  TfreBin = class(TInterfacedObject,
                  IfreBin)

  private
    FCurPos   : Pointer;
    FFirstPos : Pointer;
    FSize     : Integer;
    FOffset   : Integer;
    FLinks    : TDictionary<String, Integer>;
    FValues   : TfreValues;

  protected
    function Allocated : Boolean;
    procedure DoWrite(ASize : Integer); inline;

  protected
    // IfreBin
    procedure SetLabel(ALabel : String);
    function GetOffset(ALabel : String) : Integer;
    function GetLabel(ALabel : String) : NativeUInt;

    function Values : PfreValues;

    procedure B(ACode : Byte); inline;
    procedure W(ACode : Word); inline;
    procedure I(ACode : Integer); inline;
    procedure P(ACode : NativeUInt); inline;
    procedure Buf(AData : Pointer; ASize : Integer); inline;

    procedure Align(AValue : Integer);

    function Size : Integer;
    procedure SetMemory(APointer : Pointer);

  public
    constructor Create;
    destructor Destroy; override;

  end;

  TfreCode86 = class(TfreBin,
                     IfreCode)

  protected
    procedure WriteOperation(AOperation : TfrOperation; var ATarget : TfreRegistry); inline;

  protected
    // IfreProc
    procedure CMPRC(ARegistr : TfreRegistry; AValue : Byte);                          // CMP EAX, 255
    procedure CMPMC(AOffset : NativeUInt; AValue : Integer);                          // CMP [$123], 123456789
    procedure CMP_RCB(ARegistr : TfreRegistry; AValue : Byte); overload;              // CMP [EAX], 255
    procedure _CMP(ARegistr : TfreRegistry; AOffset : Byte; AValue : Byte); overload; // CMP [EAX+1], 255
    procedure CMP_R_M(ARegistr : TfreRegistry; AOffset : NativeUInt); overload;       // CMP EAX, [255]
    procedure JC_Long(AOffset : NativeUInt);
    procedure JNC_Long(AOffset : NativeUInt);
    procedure JC_Short(AOffset : Byte);
    procedure JNC_Short(AOffset : Byte);
    procedure _Equal(AOffset : NativeUInt);
    procedure _NotEqual(AOffset : NativeUInt);
    procedure Less(AOffset : NativeUInt);
    procedure _Greater(AOffset : NativeUInt);
    procedure Greater_Short(AOffset : Byte); // JNBE 11
    procedure _GreaterOrEqual(AOffset : NativeUInt);

    procedure _ShortJMP(AOffset : ShortInt);                                                // JMP 127
    procedure _LongJMP(AOffset : NativeUInt); overload;                                     // JMP 1270
    procedure _JMP(ARegistr : TfreRegistry; AScale : Byte; AOffset : NativeUInt); overload; // JMP [EAX * 8 + 500]
    procedure Call(AOffset : NativeUInt); overload;                                         // CALL(333)
    procedure _ADD(ARegistr : TfreRegistry; AValue : Byte); overload;                       // ADD EAX, 55
    procedure _ADD(ATarget, ASource : TfreRegistry); overload;                              // ADD EAX, ECX
    procedure _MOV(ATarget, ASource : TfreRegistry); overload;                              // MOV AL, [EAX]
    procedure _MOV(AOffset : NativeUInt; ARegistr : TfreRegistry; AValue : Integer); overload;
    procedure _MOV(AOffset : NativeUInt; ARegistr : TfreRegistry); overload; // MOV [$111], EAX
    procedure _MOV(AOffset : NativeUInt; AValue : Integer); overload;
    procedure _MOV(ARegistr : TfreRegistry; AValue : Integer); overload; // MOV EAX, 55
    procedure _MOV(ARegistr : TfreRegistry; AOffset : NativeUInt); overload;
    procedure _MOV(ATarget : TfreRegistry; AOffset : NativeUInt; ASource : TfreRegistry); overload; // MOV [EAX + 123], ECX
    procedure _MOV(ATarget : TfreRegistry; AOffset : NativeUInt; AValue : Integer); overload;       // MOV [EAX + 123], 555
    procedure C2_M(ATarget : NativeUInt; AValue : Integer);                                         // MOV [$1111], 555
    procedure MO2_R(ATarget : TfreRegistry; ASource : TfreRegistry; AOffset : NativeUInt);          // MOV ECX, [EAX + 123]
    procedure SUB_MO2_R(ATarget : TfreRegistry; ASource : TfreRegistry; AOffset : NativeUInt);      // SUB ECX, [EAX + 123]
    procedure SUB_C_M(AOffset : NativeUInt; AValue : Integer); overload;                            // SUB [123], 55
    procedure SUB_R_M(AOffset : NativeUInt; ASource : TfreRegistry); overload;                      // SUB [123], EAX
    procedure DEC_M(AOffset : NativeUInt); overload;                                                // SUB [123], 1
    procedure _SUB(ATarget, ASource : TfreRegistry); overload;                                      // SUB EAX, ECX
    procedure _SUB(ARegistr : TfreRegistry; AValue : Byte); overload;                               // SUB EAX, 55
    procedure REP_CMPSB;

    procedure _(AOperation : TfrOperation; ARegistr : TfreRegistry); overload;                                                  // PUSH EAX
    procedure _(AOperation : TfrOperation; AOffset : NativeUInt = 0); overload;                                                 // RET // JMP 1234
    procedure _(ATarget : TfreRegistry; AValue : Integer); overload;                                                            // MOV EAX, 8
    procedure _(AOperation : TfrOperation; ATarget : TfreRegistry; APointer : NativeUInt); overload;                            // MOV EAX, [$FFFF]
    procedure _(AOperation : TfrOperation; ATarget, ASource : TfreRegistry); overload;                                          // MOV EAX, ECX
    procedure _(AOperation : TfrOperation; ATarget, ASource : TfreRegistry; AScale : Byte; AOffset : NativeUInt = 0); overload; // MOV EAX, [ECX * 2 + 55]
    procedure _(AOperation : TfrOperation; ATarget, ASource, AOffset : TfreRegistry; AScale : Byte = 0); overload;              // MOV EAX, [EDX + ECX * 2]
    procedure _MOVZX(ATarget, ASource : TfreRegistry; AOffset : Byte = 0);                                                      // MOVZX EAX, [EAX + 1]

    procedure SSE2_CMPStr(AMMX : Byte; ASource : TfreRegistry; AMode : Byte);
    procedure SSE2_CMPStrO(AMMX : Byte; ASource : TfreRegistry; AOffset : SmallInt; AMode : Byte; AImplicit : Boolean = False); // PCMPESTRI XMM0, [EAX + 1], 1
    procedure SSE2_MOVDQ(AMMX : Byte; ASource : TfreRegistry);                                                                  //
    procedure _M2X(AMMX : Byte; AOffset : NativeUInt);                                                                          // MOVDQU XMM0, [123456]

    procedure Break;

  end;

  TfreExpression = class(TInterfacedObject,
                         IfreExpression)

  private
    FCurChar   : TfreStringPos;
    FLastChar  : TfreStringPos;
    FCancelled : Boolean;
    FPosition  : Integer;

  protected
    // IfreExpression
    function EOF : Boolean;
    function PrevChar : TfreChar;
    function NextChar : TfreChar;
    function CurChar : TfreChar;
    function Next(AOffset : Integer = 1) : Boolean;
    procedure Cancel;
    function Cancelled : Boolean;
    function Position : Integer;

  public
    constructor Create(AExpr : TfreString);

  end;

  TfreProc = record
  public
    FNextProc : Pointer;
    Data      : Pointer;
    Size      : Integer;
    Root      : IfreOperation;
    Optimized : IfreOperation;
  end;

function Compile(AExpr : TfreString) : TfreProc;
procedure FreeProc(var AProc : TfreProc);
procedure Stub_Next;

implementation

procedure Stub_Next;
asm
  MOV EAX, Integer(False)
end;

procedure TfreCode86.WriteOperation(AOperation : TfrOperation; var ATarget : TfreRegistry);
var
  Operation : Byte;
begin
  Operation := Byte(AOperation);

  if ATarget < _AX then
    B(Operation)
  else if ATarget < _AL then
  begin
    B(c_WordSize);
    B(Operation);
    ATarget := TfreRegistry(Byte(ATarget) - Byte(_AX));
  end
  else
  begin
    B(Operation - 1);
    ATarget := TfreRegistry(Byte(ATarget) - Byte(_AL));
  end;
end;

procedure TfreCode86.CMPRC(ARegistr : TfreRegistry; AValue : Byte);
begin
  B($83);
  B($F8 + Byte(ARegistr));
  B(AValue);
end;

procedure TfreCode86.CMPMC(AOffset : NativeUInt; AValue : Integer);
begin
  B($81);
  B($3D);
  P(AOffset);
  I(AValue);
end;

procedure TfreCode86.CMP_RCB(ARegistr : TfreRegistry; AValue : Byte);
begin
  B($80);
  B($38 + Byte(ARegistr));
  B(AValue);
end;

procedure TfreCode86._CMP(ARegistr : TfreRegistry; AOffset, AValue : Byte);
begin
  B($80);
  B($78 + Byte(ARegistr));
  B(AOffset);
  B(AValue);
end;

procedure TfreCode86.CMP_R_M(ARegistr : TfreRegistry; AOffset : NativeUInt);
begin
  B($3B);
  B($05 + Byte(ARegistr) * 8);
  P(AOffset);
end;

procedure TfreCode86.JC_Long(AOffset : NativeUInt);
begin
  B($0F);
  B($82);
  I(AOffset - SizeOf(Byte) * 2 - SizeOf(AOffset));
end;

procedure TfreCode86.JNC_Long(AOffset : NativeUInt);
begin
  B($0F);
  B($83);
  I(AOffset - SizeOf(Byte) * 2 - SizeOf(AOffset));
end;

procedure TfreCode86.JC_Short(AOffset : Byte);
begin
  B($72);
  B(AOffset - SizeOf(Byte) - SizeOf(AOffset));
end;

procedure TfreCode86.JNC_Short(AOffset : Byte);
begin
  B($73);
  B(AOffset - SizeOf(Byte) - SizeOf(AOffset));
end;

procedure TfreCode86._Equal(AOffset : NativeUInt);
begin
  B($0F);
  B($84);
  I(AOffset - SizeOf(Byte) * 2 - SizeOf(AOffset));
end;

procedure TfreCode86._NotEqual(AOffset : NativeUInt);
begin
  B($0F);
  B($85);
  I(AOffset - SizeOf(Byte) * 2 - SizeOf(AOffset));
end;

procedure TfreCode86.Less(AOffset : NativeUInt);
begin
  B($0F);
  B($8C);
  I(AOffset - SizeOf(Byte) * 2 - SizeOf(AOffset));
end;

procedure TfreCode86._Greater(AOffset : NativeUInt);
begin
  B($0F);
  B($87);
  I(AOffset - SizeOf(Byte) * 2 - SizeOf(AOffset));
end;

procedure TfreCode86.Greater_Short(AOffset : Byte);
begin
  B($77);
  B(AOffset - SizeOf(Byte) - SizeOf(AOffset));
end;

procedure TfreCode86._GreaterOrEqual(AOffset : NativeUInt);
begin
  B($0F);
  B($83);
  I(AOffset - SizeOf(Byte) * 2 - SizeOf(AOffset));
end;

procedure TfreCode86._ShortJMP(AOffset : ShortInt);
begin
  B($EB);
  B(AOffset - SizeOf(AOffset) * 2);
end;

procedure TfreCode86._LongJMP(AOffset : NativeUInt);
begin
  B($E9);
  I(AOffset - SizeOf(Byte) - SizeOf(AOffset));
end;

procedure TfreCode86._JMP(ARegistr : TfreRegistry; AScale : Byte; AOffset : NativeUInt);
begin
  B($FF);
  B($24);
  B($5 + Byte(ARegistr) * 8 + Scales[AScale]);
  P(AOffset);
end;

procedure TfreCode86.Call(AOffset : NativeUInt);
begin
  B($E8);
  P(AOffset);
end;

procedure TfreCode86._ADD(ARegistr : TfreRegistry; AValue : Byte);
begin
  B($83);
  B($C0 + Byte(ARegistr));
  B(AValue);
end;

procedure TfreCode86._ADD(ATarget, ASource : TfreRegistry);
begin
  B($01);
  B($C0 + Byte(ATarget) + Byte(ASource) * 8);
end;

procedure TfreCode86._MOV(ATarget, ASource : TfreRegistry);
begin
  B($8A);
  B(Byte(ATarget) * 8 + Byte(ASource));
end;

procedure TfreCode86._MOV(AOffset : NativeUInt; ARegistr : TfreRegistry; AValue : Integer);
begin
  B($C7);
  B($80 + Byte(ARegistr));
  P(AOffset);
  I(AValue);
end;

procedure TfreCode86._MOV(AOffset : NativeUInt; ARegistr : TfreRegistry);
begin
  B($89);
  B($05 + Byte(ARegistr) * 8);
  P(AOffset);
end;

procedure TfreCode86._MOV(AOffset : NativeUInt; AValue : Integer);
begin
  B($C7);
  B($05);
  P(AOffset);
  I(AValue);
end;

procedure TfreCode86._MOV(ARegistr : TfreRegistry; AValue : Integer);
begin
  B($B8 + Byte(ARegistr));
  I(AValue);
end;

procedure TfreCode86._MOV(ARegistr : TfreRegistry; AOffset : NativeUInt);
begin
  B($B8 + Byte(ARegistr));
  P(AOffset);
end;

procedure TfreCode86._MOV(ATarget : TfreRegistry; AOffset : NativeUInt; ASource : TfreRegistry);
begin
  B($89);
  B($80 + Byte(ATarget) + Byte(ASource) * 8);
  P(AOffset);
end;

procedure TfreCode86._MOV(ATarget : TfreRegistry; AOffset : NativeUInt; AValue : Integer);
begin
  B($C7);
  B($40 + Byte(ATarget));
  B(AOffset);
  I(AValue);
end;

procedure TfreCode86.C2_M(ATarget : NativeUInt; AValue : Integer);
begin
  B($C7);
  B($05);
  P(ATarget);
  I(AValue);
end;

procedure TfreCode86.MO2_R(ATarget, ASource : TfreRegistry; AOffset : NativeUInt);
begin
  B($8B);
  B($80 + Byte(ATarget) * 8 + Byte(ASource));
  I(AOffset);
end;

procedure TfreCode86.SUB_MO2_R(ATarget, ASource : TfreRegistry; AOffset : NativeUInt);
begin
  B($2B);
  B($80 + Byte(ATarget) * 8 + Byte(ASource));
  I(AOffset);
end;

procedure TfreCode86.SUB_C_M(AOffset : NativeUInt; AValue : Integer);
begin
  B($83);
  B($2D);
  P(AOffset);
  I(AValue);
end;

procedure TfreCode86.SUB_R_M(AOffset : NativeUInt; ASource : TfreRegistry);
begin
  B($29);
  B($05 + Byte(ASource) * 8);
  P(AOffset);
end;

procedure TfreCode86.DEC_M(AOffset : NativeUInt);
begin
  B($FF);
  B($0D);
  P(AOffset);
end;

procedure TfreCode86._SUB(ATarget, ASource : TfreRegistry);
begin
  B($29);
  B($C0 + Byte(ATarget) + Byte(ASource) * 8);
end;

procedure TfreCode86._SUB(ARegistr : TfreRegistry; AValue : Byte);
begin
  B($83);
  B($E8 + Byte(ARegistr));
  B(AValue);
end;

procedure TfreCode86.REP_CMPSB;
begin
  B($F3);
  B($A6);
end;

procedure TfreCode86._(AOperation : TfrOperation; ARegistr : TfreRegistry);
begin
  B(Byte(AOperation) + Byte(ARegistr));
end;

procedure TfreCode86._(AOperation : TfrOperation; AOffset : NativeUInt);
begin
  B(Byte(AOperation));
end;

procedure TfreCode86._(ATarget : TfreRegistry; AValue : Integer);
const
  c_MoveByte = $B0;
  c_Move     = $B8;
begin
  if ATarget < _AX then
  begin
    B(c_Move + Byte(ATarget));
    I(AValue);
  end
  else if ATarget < _AL then
  begin
    B(c_WordSize);
    B(c_Move + Byte(ATarget) - Byte(_AX));
    W(AValue);
  end
  else
  begin
    B(c_MoveByte + Byte(ATarget) - Byte(_AL));
    B(AValue);
  end;
end;

procedure TfreCode86._(AOperation : TfrOperation; ATarget : TfreRegistry; APointer : NativeUInt);
const
  c_MoveArg = $05;
begin
  WriteOperation(AOperation, ATarget);

  B(c_MoveArg + Byte(ATarget) * 8);
  I(Integer(APointer));
end;

procedure TfreCode86._(AOperation : TfrOperation; ATarget, ASource : TfreRegistry);
begin
  WriteOperation(AOperation, ATarget);

  B(c_MoveArg + Byte(ATarget) * 8 + Byte(ASource));
end;

procedure TfreCode86._(AOperation : TfrOperation; ATarget, ASource : TfreRegistry; AScale : Byte; AOffset : NativeUInt = 0);
begin
  WriteOperation(AOperation, ATarget);

  B(c_RR + Byte(ATarget) * 8);
  B(Byte(ASource) * 8 + Scales[AScale] + 5);
  I(AOffset);
end;

procedure TfreCode86._(AOperation : TfrOperation; ATarget, ASource, AOffset : TfreRegistry; AScale : Byte = 0);
begin
  WriteOperation(AOperation, ATarget);

  B(c_RR + Byte(ATarget) * 8);
  B(Byte(ASource) + Byte(AOffset) * 8 + Scales[AScale]);
end;

procedure TfreCode86._MOVZX(ATarget, ASource : TfreRegistry; AOffset : Byte = 0);
begin
  if (AOffset > 0) then
    Inc(AOffset, $40);

  B($0F);
  B($B6);
  B(AOffset + Byte(ATarget) * 8 + Byte(ASource));
end;

procedure TfreCode86.SSE2_CMPStr(AMMX : Byte; ASource : TfreRegistry; AMode : Byte);
begin
  B($66);
  B($0F);
  B($3A);
  B($61);
  B(AMMX * 8 + Byte(ASource));
  B(AMode);
end;

procedure TfreCode86.SSE2_CMPStrO(AMMX : Byte; ASource : TfreRegistry; AOffset : SmallInt; AMode : Byte; AImplicit : Boolean = False);
begin
  B($66);
  B($0F);
  B($3A);

  if AImplicit then // Автоопределение конца строки
    B($63)
  else
    B($61);

  B($40 + AMMX * 8 + Byte(ASource));
  B(AOffset);
  B(AMode);
end;

procedure TfreCode86.SSE2_MOVDQ(AMMX : Byte; ASource : TfreRegistry);
begin
  B($F3);
  B($0F);
  B($6F);
  B(AMMX * 8 + Byte(ASource));
end;

procedure TfreCode86._M2X(AMMX : Byte; AOffset : NativeUInt);
begin
  B($F3);
  B($0F);
  B($6F);
  B($05 + AMMX * 8);
  P(AOffset);
end;

procedure TfreCode86.Break;
begin
  B($CC);
end;

function TfreBin.Allocated : Boolean;
begin
  Exit(FFirstPos <> nil);
end;

procedure TfreBin.DoWrite(ASize : Integer);
begin
  Inc(FOffset, ASize);
  Inc(FSize, ASize);

  FCurPos := Pointer(NativeUInt(FCurPos) + NativeUInt(ASize));
end;

procedure TfreBin.SetLabel(ALabel : String);
begin
  FLinks.AddOrSetValue(ALabel, FOffset);
end;

function TfreBin.GetOffset(ALabel : String) : Integer;
begin
  if Allocated then
    Exit(Integer(NativeInt(FLinks[ALabel]) - FOffset));

  Exit(0);
end;

function TfreBin.GetLabel(ALabel : String) : NativeUInt;
begin
  if Allocated then
    Exit(NativeUInt(FLinks[ALabel]) + NativeUInt(FFirstPos));

  Exit(0);
end;

function TfreBin.Values : PfreValues;
begin
  Exit(@FValues);
end;

procedure TfreBin.B(ACode : Byte);
begin
  if Allocated then
    PByte(FCurPos)^ := ACode;

  DoWrite(SizeOf(ACode));
end;

procedure TfreBin.W(ACode : Word);
begin
  if Allocated then
    PWord(FCurPos)^ := ACode;

  DoWrite(SizeOf(ACode));
end;

procedure TfreBin.I(ACode : Integer);
begin
  if Allocated then
    PInteger(FCurPos)^ := ACode;

  DoWrite(SizeOf(ACode));
end;

procedure TfreBin.P(ACode : NativeUInt);
begin
  if Allocated then
    PNativeUInt(FCurPos)^ := ACode;

  DoWrite(SizeOf(ACode));
end;

procedure TfreBin.Buf(AData : Pointer; ASize : Integer);
begin
  if Allocated then
    MoveMemory(FCurPos, AData, ASize);

  DoWrite(ASize);
end;

procedure TfreBin.Align(AValue : Integer);
begin
  while (FOffset mod AValue > 0) do
    B(0);
end;

function TfreBin.Size : Integer;
begin
  Exit(FSize);
end;

procedure TfreBin.SetMemory(APointer : Pointer);
begin
  FFirstPos := APointer;
  FCurPos   := APointer;
  FOffset   := 0;
end;

constructor TfreBin.Create;
begin
  inherited;

  FLinks  := TDictionary<String, Integer>.Create;
  FCurPos := nil;
  FSize   := 0;
  FOffset := 0;
end;

destructor TfreBin.Destroy;
begin
  FreeAndNil(FLinks);
  FreeAndNil(FValues);

  inherited;
end;

function TfreExpression.EOF : Boolean;
begin
  Exit((NativeUInt(FCurChar) >= NativeUInt(FLastChar)) or FCancelled);
end;

function TfreExpression.PrevChar : TfreChar;
begin
  Exit(TfreStringPos(NativeUInt(FCurChar) - SizeOf(TfreChar))^);
end;

function TfreExpression.NextChar : TfreChar;
begin
  Exit(TfreStringPos(NativeUInt(FCurChar) + SizeOf(TfreChar))^);
end;

function TfreExpression.CurChar : TfreChar;
begin
  Exit(FCurChar^);
end;

function TfreExpression.Next(AOffset : Integer = 1) : Boolean;
begin
  FCurChar  := TfreStringPos(NativeUInt(FCurChar) + NativeUInt(SizeOf(TfreChar) * AOffset));
  Result    := not EOF;
  FPosition := FPosition + AOffset;
end;

procedure TfreExpression.Cancel;
begin
  FCancelled := True;
end;

function TfreExpression.Cancelled : Boolean;
begin
  Exit(FCancelled);
end;

function TfreExpression.Position : Integer;
begin
  Exit(FPosition);
end;

constructor TfreExpression.Create(AExpr : TfreString);
begin
  inherited Create;

  FCurChar  := TfreStringPos(AExpr);
  FLastChar := TfreStringPos(NativeUInt(AExpr) + NativeUInt(Length(AExpr)));
  FPosition := 0;
end;

function Compile(AExpr : TfreString) : TfreProc;
var
  Root       : IfreOperationInt;
  Code       : IfreCode;
  Data       : IfreBin;
  Expr       : IfreExpression;
  OldProtect : Cardinal;
const
  Align = 16;
begin
  Data        := TfreBin.Create;
  Code        := TfreCode86.Create;
  Expr        := TfreExpression.Create(AExpr);
  Root        := TfreRoot.Create(Code, Data, Expr);
  Result.Root := Root;

  Root.Parse;

  if Expr.Cancelled then
  begin
    Result.FNextProc := @Stub_Next;

    Exit;
  end;

  Root.Build;

  if (Code.Size = 0) then
    TfreExpression.Create('No code generated.');

  Result.Size                 := (Code.Size + Data.Size + Align - 1 + SizeOf(Integer)) div Align * Align;
  Result.FNextProc            := GetMemory(Result.Size);
  PInteger(Result.FNextProc)^ := Code.Values.Group + 1;
  Result.FNextProc            := Pointer(NativeUInt(Result.FNextProc) + SizeOf(Integer));
  Result.Data                 := Pointer(NativeUInt(Result.FNextProc) + NativeUInt(Code.Size));

  if (Result.FNextProc = nil) then
    TfreExpression.Create('Cannot allocate memory.');

  Code.SetMemory(Result.FNextProc);
  Data.SetMemory(Result.Data);

  Root.Build;

  if not VirtualProtect(Result.FNextProc, Code.Size, PAGE_EXECUTE_READWRITE, OldProtect) then
    raise TfreException.Create('Cannot change a memory status.');
end;

procedure FreeProc(var AProc : TfreProc);
begin
  if (AProc.Data = nil) then
    Exit;

  FreeMemory(Pointer(NativeUInt(AProc.FNextProc) - SizeOf(Integer)));

  AProc.FNextProc := nil;
  AProc.Data      := nil;
  AProc.Root      := nil;
end;

end.
