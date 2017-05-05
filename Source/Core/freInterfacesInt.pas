unit freInterfacesInt;

interface

uses
  FREE;

type
  TfreRegistry = (_EAX, _ECX, _EDX, _EBX, _ESP_Stack, _EBP, _ESI, _EDI, _AX, _CX, _DX, _BX, _SP, _BP, _SI, _DI, _AL, _CL, _DL, _BL, _SPL, _SIL);
  TfrOperation = (_MOV = $8B, _CMP = $3B, _ADD = $03, _SUB = $2B, _PUSH = $50, _POP = $58, _RET = $C3, _INC = $40, _DEC = $48);

  TfreValues = record
  public
    Variables       : Integer;
    Retry           : String;
    NotFound        : String;
    HasSuffix       : Boolean;
    Iteration       : Integer;
    Group           : Integer;
    Invert          : Boolean;
    CaseInsensetive : Boolean;
    ZeroTerminated  : Boolean;
    TinySource      : Boolean;
    FirstSet        : Boolean;
    BeginDoc        : Boolean;
    EndDoc          : Boolean;
    HaveSet         : Boolean;
    MultiSet        : Boolean;

  end;

  PfreValues = ^TfreValues;

  IfreBin = interface
    ['{3623FF81-6051-4093-B3E2-4F174C5E9355}']

    procedure B(ACode : Byte);
    procedure W(ACode : Word);
    procedure I(ACode : Integer);
    procedure P(ACode : NativeUInt);
    procedure Buf(AData : Pointer; ASize : Integer);

    procedure SetLabel(ALabel : String);
    function GetOffset(ALabel : String) : Integer;
    function GetLabel(ALabel : String) : NativeUInt;

    procedure Align(AValue : Integer);

    function Size : Integer;
    procedure SetMemory(APointer : Pointer);

    function Values : PfreValues;
    property Offset[ALabel : String] : Integer read GetOffset; default;

  end;

  IfreCode = interface(IfreBin)
    ['{30B6DBD4-BF62-4A7C-907E-C2A8C77B86C0}']

    procedure _Equal(AOffset : NativeUInt);
    procedure _NotEqual(AOffset : NativeUInt);
    procedure Less(AOffset : NativeUInt);
    procedure _Greater(AOffset : NativeUInt);
    procedure Greater_Short(AOffset : Byte); // JNBE 11
    procedure _GreaterOrEqual(AOffset : NativeUInt);
    procedure JC_Long(AOffset : NativeUInt);
    procedure JNC_Long(AOffset : NativeUInt);
    procedure JC_Short(AOffset : Byte);
    procedure JNC_Short(AOffset : Byte);

    procedure _ShortJMP(AOffset : ShortInt);                                                // JMP 127
    procedure _LongJMP(AOffset : NativeUInt); overload;                                     // JMP 1270
    procedure _JMP(ARegistr : TfreRegistry; AScale : Byte; AOffset : NativeUInt); overload; // JMP [EAX * 8 + 500]
    procedure Call(AOffset : NativeUInt); overload;                                         // CALL(333)
    procedure CMPRC(ARegistr : TfreRegistry; AValue : Byte);                                // CMP EAX, 255
    procedure CMPMC(AOffset : NativeUInt; AValue : Integer);                                // CMP [$123], 123456789
    procedure CMP_RCB(ARegistr : TfreRegistry; AValue : Byte); overload;                    // CMP [EAX], 255
    procedure CMP_R_M(ARegistr : TfreRegistry; AOffset : NativeUInt); overload;             // CMP EAX, [255]
    procedure _CMP(ARegistr : TfreRegistry; AOffset : Byte; AValue : Byte); overload;       // CMP [EAX+1], 255
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
    procedure SUB_R_M(AOffset : NativeUInt; ARegistry : TfreRegistry); overload;                    // SUB [123], EAX
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

    procedure SSE2_CMPStr(AMMX : Byte; ASource : TfreRegistry; AMode : Byte);                                                   // PCMPESTRI XMM0, [EAX], 1
    procedure SSE2_CMPStrO(AMMX : Byte; ASource : TfreRegistry; AOffset : SmallInt; AMode : Byte; AImplicit : Boolean = False); // PCMPESTRI XMM0, [EAX + 1], 1
    procedure SSE2_MOVDQ(AMMX : Byte; ASource : TfreRegistry);                                                                  //
    procedure _M2X(AMMX : Byte; AOffset : NativeUInt);                                                                          // MOVDQU XMM0, [123456]

    procedure Break;

  end;

  IfreExpression = interface
    ['{DD52415A-FFEF-4DA9-8293-E3E9649BE44C}']

    function EOF : Boolean;
    function PrevChar : TfreChar;
    function NextChar : TfreChar;
    function CurChar : TfreChar;
    function Next(AOffset : Integer = 1) : Boolean;
    procedure Cancel;
    function Cancelled : Boolean;
    function Position : Integer;

  end;

  IfreOperationInt = interface(IfreOperation)
    ['{6DE4BBA2-4975-4828-AEF4-AC36C81B79A6}']

    procedure Build;
    procedure Parse;
    function Suffix : IfreOperationInt;
    procedure MarkAsHidden;
    procedure Add(AOperation : IfreOperationInt);

  end;

const
  c_WordSize        = $66;
  c_Move            = $8B;
  c_MoveByte        = $8A;
  c_MoveArg         = $C0;
  c_RR              = $04;
  SByte             = 2;
  UByte             = 0;
  EQUAL_ANY         = 0;
  RANGES            = 4;
  EQUAL_EACH        = 8;
  EQUAL_ORDERED     = 12;
  NEGATIVE_POLARITY = 16;
  BYTE_MASK         = 64;

const
  cRussianChars = 'ÈˆÛÍÂÌ„¯˘Áı˙Ù˚‚‡ÔÓÎ‰Ê˝ˇ˜ÒÏËÚ¸·˛∏…÷” ≈Õ√ÿŸ«’⁄‘€¬¿œ–ŒÀƒ∆›ﬂ◊—Ã»“‹¡ﬁ®';
  cNumberChars  = '0123456789';
  cIdentChars   = 'qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM_' + cNumberChars;
  cStartOfStr   = #13;
  cEndOfStr     = #10;
  cTabChar      = #9;
  cSpaceChars   = #32 + cTabChar + cStartOfStr + cEndOfStr;

const
  Scales : array [0 .. 8] of Byte = (0, 0, 64, 0, 128, 0, 0, 0, 192);

implementation

end.
