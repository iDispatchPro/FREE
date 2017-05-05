unit MainFormUnit;

interface

uses
  System.Generics.Collections,
  System.Types,
  Winapi.ShlObj,
  IniFiles,
  RegularExpressions,
  System.Diagnostics,
  DateUtils,
  Winapi.Windows,
  System.SysUtils,
  System.Classes,
  FREE,
  freRegExpr,
  freOperations,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.ExtCtrls,
  Vcl.AppEvnts,
  Vcl.Buttons,
  System.ImageList,
  Vcl.ImgList;

type
  TSpeedTest = class;

  TTestData = record
  public
    Data     : TfreString;
    Expr     : TfreString;
    Pattern  : TfreString;
    SlowData : TfreString;
    FastData : TfreString;

  end;

  TSpeedTestWorker = class(TThread)
  private
    FSpeedTests : TList<TSpeedTest>;
    FTestData   : TTestData;
    FGeneration : Integer;

  protected
    procedure Execute; override;
    procedure InitData(out AData : TfreString; ASingle : Boolean);

  public
    procedure Reset(AData, AExpr, APattern : TfreString);
    constructor Create;
    destructor Destroy; override;

  end;

  TSpeedTest = class
  private
    FName            : String;
    FTimeFast        : Double;
    FTimeSlow        : Double;
    FTimeCall        : Double;
    FTimeCompile     : Double;
    FCount           : Integer;
    FError           : String;
    FProceedSlowTest : Boolean;

  protected
    procedure Execute(AData : TTestData);
    procedure Compile(AExpr : TfreString); virtual; abstract;
    procedure MatchAll(AData : TfreString); virtual; abstract;
    procedure Match(AData : TfreString); virtual; abstract;

  public
    constructor Create;
    function Desc : String;
    procedure Reset;

  end;

  TPos_Test = class(TSpeedTest)
  private
    FExpr : TfreString;

  protected
    procedure Compile(AExpr : TfreString); override;
    procedure MatchAll(AData : TfreString); override;
    procedure Match(AData : TfreString); override;

  public
    constructor Create;

  end;

  TFREE_Test = class(TSpeedTest)
  private
    FRE : IfreRegExpr;

  protected
    procedure Compile(AExpr : TfreString); override;
    procedure MatchAll(AData : TfreString); override;
    procedure Match(AData : TfreString); override;

  public
    constructor Create;

  end;

  TPCRE_Test = class(TSpeedTest)
  private
    PCRE : TRegEx;

  protected
    procedure Compile(AExpr : TfreString); override;
    procedure MatchAll(AData : TfreString); override;
    procedure Match(AData : TfreString); override;

  public
    constructor Create;

  end;

  TPIRE_Test = class(TSpeedTest)
  protected
    procedure Compile(AExpr : TfreString); override;
    procedure MatchAll(AData : TfreString); override;
    procedure Match(AData : TfreString); override;

  public
    constructor Create;

  end;

  TMainForm = class(TForm)
  published
    aShowHiddenOperations   : TSpeedButton;
    aDeleteTestSet          : TSpeedButton;
    ImageList               : TImageList;
    Panel1                  : TPanel;
    Panel4                  : TPanel;
    Place_TestSet           : TPanel;
    Splitter1               : TSplitter;
    Panel9                  : TPanel;
    Panel10                 : TPanel;
    Panel8                  : TPanel;
    TestSet                 : TTreeView;
    Panel6                  : TPanel;
    TextTitle               : TPanel;
    Text                    : TRichEdit;
    Panel3                  : TPanel;
    Panel12                 : TPanel;
    Panel13                 : TPanel;
    Panel14                 : TPanel;
    Expression              : TRichEdit;
    Panel15                 : TPanel;
    Splitter3               : TSplitter;
    Panel16                 : TPanel;
    Panel17                 : TPanel;
    Panel18                 : TPanel;
    Panel19                 : TPanel;
    Panel20                 : TPanel;
    Panel21                 : TPanel;
    Panel25                 : TPanel;
    Splitter4               : TSplitter;
    Place_ExpressionTree    : TPanel;
    Panel11                 : TPanel;
    Panel7                  : TPanel;
    ExpressionTree          : TTreeView;
    Panel22                 : TPanel;
    Panel23                 : TPanel;
    Panel24                 : TPanel;
    Panel26                 : TPanel;
    Panel27                 : TPanel;
    Panel28                 : TPanel;
    Results                 : TTreeView;
    Panel29                 : TPanel;
    Panel30                 : TPanel;
    Panel31                 : TPanel;
    Splitter_ExpressionTree : TSplitter;
    aShowExpressionTree     : TSpeedButton;
    aShowTestSets           : TSpeedButton;
    aAddTestSet             : TSpeedButton;
    aUpdateTestSet          : TSpeedButton;
    Timer                   : TTimer;
    aMultithreaded          : TSpeedButton;
    Place_OptimizedTree     : TPanel;
    Panel5                  : TPanel;
    Panel32                 : TPanel;
    SpeedButton1            : TSpeedButton;
    OptimizedTree           : TTreeView;
    Panel33                 : TPanel;
    Panel34                 : TPanel;
    Panel35                 : TPanel;
    Splitter_OptimizedTree  : TSplitter;

    procedure FormDestroy(Sender : TObject);
    procedure aMultithreadedClick(Sender : TObject);
    procedure TimerTimer(Sender : TObject);
    procedure ResultsChange(Sender : TObject; Node : TTreeNode);
    procedure aDeleteTestSetClick(Sender : TObject);
    procedure aShowHiddenOperationsClick(Sender : TObject);
    procedure TextChange(Sender : TObject);
    procedure aAddTestSetClick(Sender : TObject);
    procedure aUpdateTestSetClick(Sender : TObject);
    procedure ExpressionChange(Sender : TObject);
    procedure ExpressionTreeChange(Sender : TObject; Node : TTreeNode);
    procedure ExpressionSelectionChange(Sender : TObject);
    procedure FormClose(Sender : TObject; var Action : TCloseAction);
    procedure FormCreate(Sender : TObject);
    procedure aShowExpressionTreeClick(Sender : TObject);
    procedure aShowTestSetsClick(Sender : TObject);
    procedure TestSetChange(Sender : TObject; Node : TTreeNode);
    procedure TestSetChanging(Sender : TObject; Node : TTreeNode; var AllowChange : Boolean);
    procedure TextSelectionChange(Sender : TObject);

  private
    FLockResult      : Boolean;
    FLockTestSet     : Boolean;
    FExpression      : IfreRegExpr;
    FSpeedTestWorker : TSpeedTestWorker;
    FSpeedTestsNode  : TTreeNode;
    FMatchesNode     : TTreeNode;
    FIcons           : TDictionary<String, Integer>;

    procedure InitIcons;
    function IsTestFailed(AMathesNode : TTreeNode) : Boolean;
    procedure ApplyCurTest(ANode : TTreeNode);
    procedure ShowSpeedTests;
    procedure MakeDirty;
    procedure HideStoreButtons;
    procedure StoreTestSet;
    procedure StoreToFile;
    procedure SyncExpressionPos;
    procedure ShowTextPos;
    procedure Match(ASelectFirstMatch : Boolean);
    procedure LoadTests;
    procedure ShowExpression;
    function Icon(AName : String) : Integer;
    function AddTestNode(ARoot : TTreeNode; AText : String; AImage : Integer) : TTreeNode;
    function GetSpecialFolderPath(CSIDL : Integer) : String;
    function CFGPath : String;
    function AddResultNode(ARoot : TTreeNode; AText : String; AImage : Integer) : TTreeNode;

  end;

var
  MainForm : TMainForm;

implementation

{$R *.dfm}

const
  Giga          = 1024 * 1024 * 1024;
  TestSize      = 50 * 1024 * 1024;
  CallRepeat    = 1000;
  cExprFileName = 'Data\Expressions.txt';
  pire          = 'pire.dll';

procedure PIRE_Compile(AExpr : PAnsiChar); cdecl; external pire name 'Compile';
function PIRE_Match(AData : PAnsiChar) : Boolean; cdecl; external pire name 'Match';

procedure TMainForm.FormDestroy(Sender : TObject);
begin
  FreeandNil(FIcons);
end;

procedure TMainForm.aMultithreadedClick(Sender : TObject);
begin
  Match(True);
end;

procedure TMainForm.TimerTimer(Sender : TObject);
begin
  ShowSpeedTests;
end;

procedure TMainForm.ResultsChange(Sender : TObject; Node : TTreeNode);
begin
  if (Results.Selected = nil) then
    Exit;

  Text.SelStart  := TSmallPoint(Integer(Results.Selected.Data)).X;
  Text.SelLength := TSmallPoint(Integer(Results.Selected.Data)).Y;
end;

procedure TMainForm.aDeleteTestSetClick(Sender : TObject);
begin
  TestSet.Selected.Delete;

  aDeleteTestSet.Visible := (TestSet.Items.Count > 1);

  StoreToFile;
end;

procedure TMainForm.aShowHiddenOperationsClick(Sender : TObject);
begin
  ShowExpression;
end;

procedure TMainForm.TextChange(Sender : TObject);
begin
  if FLockResult then
    Exit;

  FLockResult := True;
  try
    MakeDirty;
    Match(False);
  finally
    FLockResult := False;
  end;
end;

procedure TMainForm.aAddTestSetClick(Sender : TObject);
begin
  FLockTestSet := True;
  try
    TestSet.Selected := AddTestNode(TestSet.Items[0], '', Icon('Expression'));

    StoreTestSet;
  finally
    FLockTestSet := False;
  end;
end;

procedure TMainForm.aUpdateTestSetClick(Sender : TObject);
begin
  StoreTestSet;
end;

procedure TMainForm.ExpressionChange(Sender : TObject);
begin
  if FLockResult then
    Exit;

  Match(True);
  MakeDirty;
end;

procedure TMainForm.ExpressionTreeChange(Sender : TObject; Node : TTreeNode);
var
  AOperation : IfreOperation;
begin
  if FLockResult then
    Exit;

  FLockResult := True;
  try
    if (Node.Data = nil) then
    begin
      Expression.SelLength := 0;

      Exit;
    end;

    AOperation := IfreOperation(Node.Data);

    Expression.SelStart  := AOperation.Start;
    Expression.SelLength := AOperation.Len;
  finally
    FLockResult := False;
  end;
end;

procedure TMainForm.ExpressionSelectionChange(Sender : TObject);
begin
  SyncExpressionPos;
end;

procedure TMainForm.FormClose(Sender : TObject; var Action : TCloseAction);
var
  Ini : TIniFile;

  procedure SaveTrigger(ATrigger : TSpeedButton);
  begin
    Ini.WriteString('', ATrigger.Name, ATrigger.Down.ToString);
  end;

begin
  if not aShowTestSets.Visible then
    Exit;

  try
    Application.ProcessMessages;

    ForceDirectories(ExtractFileDir(CFGPath));

    Ini := TIniFile.Create(CFGPath);
    try
      SaveTrigger(aShowExpressionTree);
      SaveTrigger(aShowTestSets);

      if (TestSet.Selected = nil) then
        Ini.WriteInteger('', TestSet.Name, -1)
      else
        Ini.WriteInteger('', TestSet.Name, TestSet.Selected.AbsoluteIndex);

      Ini.WriteInteger('Form', 'Width', Width);
      Ini.WriteInteger('Form', 'Height', Height);
      Ini.WriteInteger('Form', 'Left', Left);
      Ini.WriteInteger('Form', 'Top', Top);
    finally
      FreeandNil(Ini);
    end;
  finally
    TerminateProcess(GetCurrentProcess, 0);
  end;
end;

procedure TMainForm.FormCreate(Sender : TObject);
var
  Ini : TIniFile;
  I   : Integer;

  procedure ReadTrigger(ATrigger : TSpeedButton; ADefault : Boolean);
  begin
    ATrigger.Down := (Ini.ReadString('', ATrigger.Name, ADefault.ToString) = True.ToString);

    ATrigger.Click;
  end;

begin
  Caption := 'Fast Regular Expression Engine [';

  Caption := Caption + 'ASCII';

  {$IFDEF WIN32}
  Caption := Caption + ' x86';
  {$ELSE}
  Caption := Caption + ' x64';
  {$ENDIF}
  if IsSSE42 then
    Caption := Caption + ' SSE 4.2';

  Caption := Caption + ']';

  InitIcons;
  LoadTests;

  if FindCmdLineSwitch('check') then
    Application.Terminate;

  if (not FindCmdLineSwitch('simple')) then
    FSpeedTestWorker := TSpeedTestWorker.Create;

  Ini := TIniFile.Create(CFGPath);
  try
    ReadTrigger(aShowExpressionTree, True);
    ReadTrigger(aShowTestSets, False);

    I           := Ini.ReadInteger('', TestSet.Name, -1);
    FLockResult := True;

    if (I >= 0) and (I < TestSet.Items.Count) then
    begin
      TestSet.Selected := TestSet.Items.Item[I];
      FLockResult      := False;
    end
    else
    begin
      Expression.Text := '\west';
      FLockResult     := False;
      Text.Text       := '123Test456restore';
    end;

    Width  := Ini.ReadInteger('Form', 'Width', Width);
    Height := Ini.ReadInteger('Form', 'Height', Height);
    Left   := Ini.ReadInteger('Form', 'Left', Left);
    Top    := Ini.ReadInteger('Form', 'Top', Top);
  finally
    FreeandNil(Ini);
  end;

  if FindCmdLineSwitch('simple') then
  begin
    aShowTestSets.Down := False;

    aShowTestSets.Click;
    aShowTestSets.Hide;
  end;

  Timer.Enabled := True;
end;

procedure TMainForm.aShowExpressionTreeClick(Sender : TObject);
begin
  Splitter_OptimizedTree.Visible  := aShowExpressionTree.Down;
  Place_OptimizedTree.Visible     := aShowExpressionTree.Down;
  Splitter_ExpressionTree.Visible := aShowExpressionTree.Down;
  Place_ExpressionTree.Visible    := aShowExpressionTree.Down;
end;

procedure TMainForm.aShowTestSetsClick(Sender : TObject);
begin
  Place_TestSet.Visible := aShowTestSets.Down;
end;

procedure TMainForm.TestSetChange(Sender : TObject; Node : TTreeNode);
begin
  if FLockTestSet then
    Exit;

  aDeleteTestSet.Visible := (TestSet.Items.Count > 1);

  ApplyCurTest(Node);

  HideStoreButtons;

  ShowTextPos;
end;

procedure TMainForm.TestSetChanging(Sender : TObject; Node : TTreeNode; var AllowChange : Boolean);
begin
  AllowChange := Node.Level = 1;
end;

procedure TMainForm.TextSelectionChange(Sender : TObject);
begin
  ShowTextPos;
end;

procedure TMainForm.InitIcons;
begin
  FIcons := TDictionary<String, Integer>.Create;

  FIcons.Add('pcre', 22);
  FIcons.Add('pire', 35);
  FIcons.Add('free', 5);
  FIcons.Add('pos', 3);
  FIcons.Add('root', 5);
  FIcons.Add('match', 9);
  FIcons.Add('matches', 9);
  FIcons.Add('variant', 37);
  FIcons.Add('expression', 29);
  FIcons.Add('variable', 33);
  FIcons.Add('group', 33);
  FIcons.Add('speedtest', 21);
  FIcons.Add('text', 27);
  FIcons.Add('set', 23);
  FIcons.Add('backref', 10);
  FIcons.Add('quantifier', 26);
  FIcons.Add('error', 0);
  FIcons.Add('warning', 1);
  FIcons.Add('ok', 4);
  FIcons.Add('variants', 24);
  FIcons.Add('range', 34);
  FIcons.Add('greedy', 7);
  FIcons.Add('possessive', 8);
  FIcons.Add('jump', 15);
  FIcons.Add('flag', 38);
end;

function TMainForm.IsTestFailed(AMathesNode : TTreeNode) : Boolean;
var
  A : TTreeNode;
  B : TTreeNode;
  M : Integer;
  v : Integer;
begin
  if (AMathesNode.Count <> FMatchesNode.Count) then
    Exit(True)
  else
    for M := 0 to AMathesNode.Count - 1 do
    begin
      A := AMathesNode.Item[M];
      B := FMatchesNode.Item[M];

      if (A.Count <> B.Count) then
        Exit(True)
      else
        for v := 0 to A.Count - 1 do
          if (A.Item[v].Text <> B.Item[v].Text) then
            Exit(True);
    end;

  Exit(False);
end;

procedure TMainForm.ApplyCurTest(ANode : TTreeNode);
begin
  FLockResult     := True;
  Text.Text       := ANode.Item[0].Text;
  Expression.Text := ANode.Text;
  FLockResult     := False;

  ExpressionChange(nil);
end;

procedure TMainForm.ShowSpeedTests;
var
  Result : TSpeedTest;
begin
  if (FSpeedTestsNode = nil) or (FSpeedTestWorker = nil) then
    Exit;

  Results.Items.BeginUpdate;
  try
    while (FSpeedTestsNode.Count > 0) do
      Results.Items.Delete(FSpeedTestsNode.Item[0]);

    for Result in FSpeedTestWorker.FSpeedTests do
      AddResultNode(FSpeedTestsNode, Result.Desc, Icon(Result.FName));

    FSpeedTestsNode.Expand(False);
  finally
    Results.Items.EndUpdate;
  end;
end;

procedure TMainForm.MakeDirty;
begin
  if FLockTestSet then
    Exit;

  aDeleteTestSet.Hide;

  if (TestSet.Selected <> nil) then
    aUpdateTestSet.Show;

  aAddTestSet.Show;
  aDeleteTestSet.Show;
end;

procedure TMainForm.HideStoreButtons;
begin
  aUpdateTestSet.Hide;
  aAddTestSet.Hide;
end;

procedure TMainForm.StoreTestSet;
var
  I           : Integer;
  TestNode    : TTreeNode;
  MatchesNode : TTreeNode;
  v           : Integer;
  MatchNode   : TTreeNode;
begin
  FLockTestSet := True;
  try
    TestNode               := TestSet.Selected;
    TestNode.ImageIndex    := Icon('Ok');
    TestNode.SelectedIndex := TestNode.ImageIndex;
    TestNode.Text          := Expression.Text;

    TestNode.DeleteChildren;

    AddTestNode(TestNode, Text.Text, Icon('Text'));

    MatchesNode := AddTestNode(TestNode, FMatchesNode.Text, Icon('Matches'));

    for I := 0 to FMatchesNode.Count - 1 do
    begin
      MatchNode := AddTestNode(MatchesNode, 'Match ¹' + IntToStr(I + 1), Icon('Match'));

      for v := 0 to FMatchesNode.Item[I].Count - 1 do
        AddTestNode(MatchNode, FMatchesNode.Item[I].Item[v].Text, Icon('Variable'));

      MatchNode.Expand(True);
    end;

    StoreToFile;

    TestNode.Expand(True);
  finally
    FLockTestSet := False;
  end;
end;

procedure TMainForm.StoreToFile;
var
  SL : TStringList;

  procedure StoreItem(ATestNode : TTreeNode);
  var
    M           : Integer;
    v           : Integer;
    MatchNode   : TTreeNode;
    MatchesNode : TTreeNode;
  begin
    SL.Add('');
    SL.Add(ATestNode.Item[0].Text);
    SL.Add(ATestNode.Text);

    MatchesNode := ATestNode.Item[1];

    SL.Add(IntToStr(MatchesNode.Count));

    for M := 0 to MatchesNode.Count - 1 do
    begin
      MatchNode := MatchesNode.Item[M];

      SL.Add(IntToStr(MatchNode.Count));

      for v := 0 to MatchNode.Count - 1 do
        SL.Add(MatchNode.Item[v].Text);
    end;
  end;

var
  I : Integer;
begin
  SL := TStringList.Create;
  try
    for I := 0 to TestSet.Items[0].Count - 1 do
      StoreItem(TestSet.Items[0].Item[I]);

    SL.SaveToFile(cExprFileName);
  finally
    FreeandNil(SL);
  end;

  HideStoreButtons;
end;

procedure TMainForm.SyncExpressionPos;

  function Find(ANode : TTreeNode) : Boolean;
  var
    I         : Integer;
    Operation : IfreOperation;
  begin
    for I := 0 to ANode.Count - 1 do
      if Find(ANode.Item[I]) then
        Exit(True);

    Operation := IfreOperation(ANode.Data);
    Result    := (Operation.Start <= Expression.SelStart) and (Operation.Start + Operation.Len > Expression.SelStart);

    if Result then
      ExpressionTree.Selected := ANode;
  end;

begin
  if not FLockResult then
  begin
    if (ExpressionTree.Items.Count = 0) then
      Exit;

    FLockResult := True;
    try
      Find(ExpressionTree.Items[0]);
    finally
      FLockResult := False;
    end;
  end;
end;

procedure TMainForm.ShowTextPos;
begin
  TextTitle.Caption := Format('Text [X:%d; Y:%d; S:%d; L:%d]', [Text.CaretPos.X, Text.CaretPos.Y, Text.SelLength, Length(Text.Text)]);
end;

procedure TMainForm.Match(ASelectFirstMatch : Boolean);
var
  Match      : TfreMatch;
  MatchCount : Integer;
  Src        : TfreString;

  procedure DisplayMath;
  var
    MatchNode : TTreeNode;
    Node      : TTreeNode;
    I         : Integer;
  begin
    if (MatchCount = 0) then
    begin
      FSpeedTestsNode := AddResultNode(nil, 'Speed test', Icon('SpeedTest'));
      FMatchesNode    := AddResultNode(nil, 'Matches', Icon('Matches'));

      if (FSpeedTestWorker <> nil) then
        FSpeedTestWorker.Reset(TfreString(Text.Text), TfreString(Expression.Text), Match[0]);
    end;

    Inc(MatchCount);

    MatchNode := AddResultNode(FMatchesNode, 'Match ¹' + MatchCount.ToString, Icon('Match'));

    for I := 0 to Match.Count - 1 do
    begin
      Node      := AddResultNode(MatchNode, String(Match[I]), Icon('Variable'));
      Node.Data := Pointer(SmallPoint(NativeUInt(Match.Positions[I].Start) - NativeUInt(TfreStringPos(Src)), Match.Positions[I].Len));

      if ASelectFirstMatch then
        Results.Selected := Node;

      ASelectFirstMatch := False;
    end;
  end;

begin
  MatchCount := 0;

  if (not Text.Focused) then
    Text.SelStart := 0;

  FSpeedTestsNode := nil;
  FMatchesNode    := nil;

  Results.Items.BeginUpdate;
  Results.Items.Clear;

  try
    TThread.NameThreadForDebugging(Expression.Text);

    FExpression := RegExpr(TfreString(Expression.Text));
    Src         := TfreString(Text.Text);
    Match       := FExpression.Match(Src);

    while Match.Next do
      DisplayMath;

    if (FMatchesNode = nil) then
      FMatchesNode := AddResultNode(nil, 'Match not found', Icon('Warning'));
  except
    on E : Exception do
      AddResultNode(nil, E.Message, Icon('Error'));
  end;

  FMatchesNode.Expand(True);
  ShowSpeedTests;
  Results.Items.EndUpdate;
  ShowExpression;
end;

procedure TMainForm.LoadTests;
var
  TestFile    : TStringList;
  I           : Integer;
  Expression  : String;
  Source      : String;
  MatchCount  : Integer;
  VarCount    : Integer;
  M           : Integer;
  v           : Integer;
  Test        : TTreeNode;
  MatchNode   : TTreeNode;
  RootNode    : TTreeNode;
  MatchesNode : TTreeNode;

  function Next : String;
  begin
    Result := TestFile[I];

    Inc(I);
  end;

begin
  TestFile := TStringList.Create;
  try
    TestFile.LoadFromFile(ExtractFilePath(ParamStr(0)) + cExprFileName);

    TestSet.Items.BeginUpdate;
    try
      TestSet.Items.Clear;

      RootNode := AddTestNode(nil, 'Tests', Icon('Ok'));
      I        := 0;

      while (I < TestFile.Count) do
      begin
        Next;

        Source     := Next;
        Expression := Next;

        Test := AddTestNode(RootNode, Expression, Icon('Ok'));

        AddTestNode(Test, Source, Icon('Text'));

        MatchesNode := AddTestNode(Test, 'Matches', Icon('Matches'));
        MatchCount  := StrToInt(Next);

        for M := 1 to MatchCount do
        begin
          MatchNode := AddTestNode(MatchesNode, 'Match ¹' + M.ToString, Icon('Match'));
          VarCount  := StrToInt(Next);

          for v := 1 to VarCount do
            AddTestNode(MatchNode, Next, Icon('Variable'));
        end;

        MatchesNode.Expand(True);

        if (not FindCmdLineSwitch('simple')) then
        begin
          ApplyCurTest(Test);

          if IsTestFailed(MatchesNode) then
          begin
            Test.ImageIndex    := Icon('Error');
            Test.SelectedIndex := Test.ImageIndex;

            RootNode.ImageIndex    := Test.ImageIndex;
            RootNode.SelectedIndex := Test.ImageIndex;

            ExitCode := 2;
          end;
        end;
      end;

      RootNode.Expand(False);
    finally
      TestSet.Items.EndUpdate;
    end;
  finally
    FreeandNil(TestFile);
  end;
end;

procedure TMainForm.ShowExpression;

  function AddTestNode(ARoot : TTreeNode; AText : String; AImage : Integer) : TTreeNode;
  begin
    if ARoot = nil then
      Result := ExpressionTree.Items.Add(nil, AText)
    else
      Result := ExpressionTree.Items.AddChild(ARoot, AText);

    Result.ImageIndex    := AImage;
    Result.SelectedIndex := AImage;
  end;

  procedure ShowOperation(ARootNode : TTreeNode; AOperation : IfreOperation);
  var
    I    : Integer;
    Node : TTreeNode;
    Icn  : Integer;
    Text : String;
  begin
    if (AOperation.Status <> fosHidden) or aShowHiddenOperations.Down then
    begin
      Text := AOperation.Name;

      case AOperation.Status of
        fosWarning :
          Icn := Icon('Warning');

        fosError :
          Icn := Icon('Error');

      else
        Icn := Icon(AOperation.Name);
      end;

      if (AOperation.Note <> '') then
        Text := Text + ': ' + AOperation.Note
      else if (AOperation.Parameters > '') then
        Text := Text + ': ' + AOperation.Parameters;

      Node      := AddTestNode(ARootNode, Text, Icn);
      Node.Data := Pointer(AOperation);
    end
    else
      Node := ARootNode;

    for I := 0 to AOperation.Count - 1 do
      ShowOperation(Node, AOperation.Items[I]);
  end;

begin
  ExpressionTree.Items.BeginUpdate;
  try
    ExpressionTree.Items.Clear;

    ShowOperation(nil, FExpression.Operations);

    ExpressionTree.TopItem.Text := ExpressionTree.TopItem.Text + Format(' [Size: %.1f Kb.]', [FExpression.Size / 1024]);
  finally
    ExpressionTree.FullExpand;
    ExpressionTree.Items.EndUpdate;
  end;
end;

function TMainForm.Icon(AName : String) : Integer;
begin
  if not FIcons.TryGetValue(Lowercase(AName), Result) then
    Result := -1;
end;

function TMainForm.AddTestNode(ARoot : TTreeNode; AText : String; AImage : Integer) : TTreeNode;
begin
  if (ARoot = nil) then
    Result := TestSet.Items.Add(nil, AText)
  else
    Result := TestSet.Items.AddChild(ARoot, AText);

  Result.ImageIndex    := AImage;
  Result.SelectedIndex := AImage;
end;

function TMainForm.GetSpecialFolderPath(CSIDL : Integer) : String;
var
  Path : PChar;
begin
  Result := '';
  GetMem(Path, MAX_PATH);
  try
    if not SHGetSpecialFolderPath(0, Path, CSIDL, False) then
      raise Exception.Create('Shell function SHGetSpecialFolderPath fails.');

    Result := Trim(StrPas(Path));

    if Result = '' then
      raise Exception.Create('Shell function SHGetSpecialFolderPath return an empty string.');

    Result := IncludeTrailingPathDelimiter(Result);
  finally
    FreeMem(Path, MAX_PATH);
  end;
end;

function TMainForm.CFGPath : String;
const
  c_IniName = 'FREE.cfg';
begin
  Exit(GetSpecialFolderPath(CSIDL_APPDATA) + 'Local\' + Application.Title + '\' + c_IniName);
end;

function TMainForm.AddResultNode(ARoot : TTreeNode; AText : String; AImage : Integer) : TTreeNode;
begin
  if ARoot = nil then
    Result := Results.Items.Add(nil, AText)
  else
    Result := Results.Items.AddChild(ARoot, AText);

  Result.ImageIndex    := AImage;
  Result.SelectedIndex := AImage;
end;

procedure TSpeedTest.Execute(AData : TTestData);
var
  FastTime    : Double;
  SlowTime    : Double;
  CallTime    : Double;
  CompileTime : Double;
  Watch       : TStopwatch;
  I           : Integer;

  procedure Stop(out ATime : Double);
  begin
    Watch.Stop;

    ATime := Watch.ElapsedTicks / Watch.Frequency;
  end;

begin
  TThread.NameThreadForDebugging(FName);

  try
    Watch := Watch.StartNew;
    try
      for I := 1 to CallRepeat do
        Compile(AData.Expr);
    finally
      Stop(CompileTime);
    end;

    Watch := Watch.StartNew;
    try
      Match(AData.FastData);
    finally
      Stop(FastTime);
    end;

    if FProceedSlowTest then
    begin
      Watch := Watch.StartNew;
      try
        MatchAll(AData.SlowData);
      finally
        Stop(SlowTime);
      end;
    end
    else
      SlowTime := 0;

    Watch := Watch.StartNew;
    try
      for I := 1 to CallRepeat do
        Match(AData.Pattern);
    finally
      Stop(CallTime);
    end;

    System.TMonitor.Enter(Self);
    try
      FTimeSlow    := FTimeSlow + SlowTime;
      FTimeFast    := FTimeFast + FastTime;
      FTimeCall    := FTimeCall + CallTime;
      FTimeCompile := FTimeCompile + CompileTime;

      Inc(FCount);

      FError := '';
    finally
      System.TMonitor.Exit(Self);
    end;
  except
    on E : Exception do
      FError := E.Message;
  end;
end;

constructor TSpeedTest.Create;
begin
  inherited;

  FProceedSlowTest := True;

  Reset;
end;

function TSpeedTest.Desc : String;

  function Res(ATime : Double) : String;
  var
    S : Double;
  begin
    if (ATime = 0) then
      Exit('N\A')
    else
    begin
      S := (FCount * (TestSize / Giga)) / ATime;

      if S > 1000 then
        Exit('N\A')
      else
        Exit(Format('%.2f', [S]));
    end;
  end;

begin
  System.TMonitor.Enter(Self);
  try
    if (FError > '') then
      Exit(Format('%S: %s', [FName, FError]))
    else if (FCount = 0) then
      Exit(Format('%S: measuring...', [FName]))
    else
      Exit(Format('%S throughput: %s - %s Gb/s; Call %.5f ms.; Compile : %.3f ms.', [FName, Res(FTimeSlow), Res(FTimeFast), FTimeCall / FCount * 1000 / CallRepeat, FTimeCompile / FCount * 1000 / CallRepeat]));
  finally
    System.TMonitor.Exit(Self);
  end;
end;

procedure TSpeedTest.Reset;
begin
  System.TMonitor.Enter(Self);
  try
    FTimeSlow    := 0;
    FTimeFast    := 0;
    FTimeCall    := 0;
    FTimeCompile := 0;
    FError       := '';
    FCount       := 0;
  finally
    System.TMonitor.Exit(Self);
  end;
end;

procedure TPos_Test.Compile(AExpr : TfreString);
begin
  FExpr := AExpr;
end;

procedure TPos_Test.MatchAll(AData : TfreString);
var
  I : Integer;
begin
  I := 0;

  repeat
    I := Pos(FExpr, AData, I + 1);
  until (I = 0);
end;

procedure TPos_Test.Match(AData : TfreString);
begin
  Pos(FExpr, AData);
end;

constructor TPos_Test.Create;
begin
  inherited;

  FName := 'POS';
end;

procedure TPCRE_Test.Compile(AExpr : TfreString);
begin
  PCRE := TRegEx.Create(String(AExpr), [roCompiled]);
end;

procedure TPCRE_Test.MatchAll(AData : TfreString);
var
  M : TMatch;
begin
  M := PCRE.Match(String(AData));

  while M.Success do
    M := M.NextMatch;
end;

procedure TPCRE_Test.Match(AData : TfreString);
begin
  PCRE.Match(String(AData));
end;

constructor TPCRE_Test.Create;
begin
  inherited;

  FName            := 'PCRE';
  FProceedSlowTest := False;
end;

procedure TFREE_Test.Compile(AExpr : TfreString);
begin
  FRE := TfreRegExpr.Create(AExpr);
end;

procedure TFREE_Test.MatchAll(AData : TfreString);
var
  Match : TfreMatch;
begin
  Match := FRE.Match(AData);

  while Match.Next do;
end;

procedure TFREE_Test.Match(AData : TfreString);
begin
  FRE.Match(AData).Next;
end;

constructor TFREE_Test.Create;
begin
  inherited;

  FName := 'FREE';
end;

procedure TPIRE_Test.Compile(AExpr : TfreString);
begin
  try
    PIRE_Compile(PAnsiChar(AExpr));
  except
    raise Exception.Create('Unsupported expression');
  end;
end;

procedure TPIRE_Test.MatchAll(AData : TfreString);
begin
  PIRE_Match(PAnsiChar(AData));
end;

procedure TPIRE_Test.Match(AData : TfreString);
begin
  PIRE_Match(PAnsiChar(AData));
end;

constructor TPIRE_Test.Create;
begin
  inherited;

  FName            := 'PIRE';
  FProceedSlowTest := False;
end;

procedure TSpeedTestWorker.Execute;
var
  Generation : Integer;
  NeedInit   : Boolean;
  Test       : TSpeedTest;
begin
  NeedInit   := False;
  Generation := -1;

  repeat
    Sleep(100);

    System.TMonitor.Enter(Self);
    try
      if (FTestData.Data = '') or (FTestData.Expr = '') then
        Continue;

      if (Generation <> FGeneration) then
      begin
        Generation := FGeneration;
        NeedInit   := True;
      end;
    finally
      System.TMonitor.Exit(Self);
    end;

    if NeedInit then
    begin
      InitData(FTestData.FastData, True);
      InitData(FTestData.SlowData, False);

      NeedInit := False;
    end;

    for Test in FSpeedTests do
    begin
      if (Generation <> FGeneration) then
        Break;

      Test.Execute(FTestData);
    end;
  until Terminated;
end;

procedure TSpeedTestWorker.InitData(out AData : TfreString; ASingle : Boolean);
var
  Size : Integer;
  Len  : Integer;
begin
  SetLength(AData, TestSize);

  Len := Length(FTestData.Data) * SizeOf(FTestData.Pattern[1]);

  FillMemory(@AData[1], TestSize, 32);

  if ASingle then
    MoveMemory(@AData[Length(AData) - Length(FTestData.Pattern) + 1], @FTestData.Pattern[1], Len)
  else
  begin
    Size := (Length(AData) mod Length(FTestData.Pattern)) + 1;

    while (Size < Length(AData)) do
    begin
      MoveMemory(@AData[Size], @FTestData.Pattern[1], Len);
      Inc(Size, Length(FTestData.Pattern));
    end;
  end;
end;

procedure TSpeedTestWorker.Reset(AData, AExpr, APattern : TfreString);
var
  Test : TSpeedTest;
begin
  for Test in FSpeedTests do
    Test.Reset;

  Inc(FGeneration);

  FTestData.Data    := AData;
  FTestData.Expr    := AExpr;
  FTestData.Pattern := APattern;
end;

constructor TSpeedTestWorker.Create;
begin
  inherited Create;

  FSpeedTests := TList<TSpeedTest>.Create;

  FSpeedTests.Add(TFREE_Test.Create);
  FSpeedTests.Add(TPos_Test.Create);
  FSpeedTests.Add(TPIRE_Test.Create);
  FSpeedTests.Add(TPCRE_Test.Create);
end;

destructor TSpeedTestWorker.Destroy;
var
  Test : TSpeedTest;
begin
  for Test in FSpeedTests do
    Test.FREE;

  FreeandNil(FSpeedTests);

  inherited;
end;

end.
