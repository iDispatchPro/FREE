unit MainFormUnit;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  //
  FREE;

type
  TMainForm = class(TForm)
  published
    HelloWorldButton        : TButton;
    InvalidExpressionButton : TButton;
    FindAllButton           : TButton;
    eExpression             : TEdit;
    Label1                  : TLabel;
    mSource                 : TMemo;
    Label2                  : TLabel;
    mResults                : TMemo;
    Label3                  : TLabel;
    ComplexExpressionButton : TButton;
    ReplaceButton           : TButton;
    SubstituteButton        : TButton;

    procedure HelloWorldButtonClick(Sender : TObject);
    procedure InvalidExpressionButtonClick(Sender : TObject);
    procedure FindAllButtonClick(Sender : TObject);
    procedure ComplexExpressionButtonClick(Sender : TObject);
    procedure ReplaceButtonClick(Sender : TObject);
    procedure SubstituteButtonClick(Sender : TObject);

  end;

var
  MainForm : TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.HelloWorldButtonClick(Sender : TObject);
var
  Match      : TfreMatch;
  Expression : IfreRegExpr;
begin
  eExpression.Text := '\d*';
  mSource.Text     := 'This is a number: 123456.';

  Expression := RegExpr(eExpression.Text);
  Match      := Expression.Match(mSource.Text);

  if Match.Next then
    mResults.Text := Match[0]
  else
    mResults.Text := 'Not found';
end;

procedure TMainForm.InvalidExpressionButtonClick(Sender : TObject);
var
  Expression : IfreRegExpr;
begin
  eExpression.Text := '\';
  mSource.Text     := '';

  Expression := RegExpr(eExpression.Text);

  if (Expression.Operations.Status = fosOk) then
    mResults.Text := 'Valid expression.'
  else
    mResults.Text := 'Invalid expression.';
end;

procedure TMainForm.FindAllButtonClick(Sender : TObject);
var
  Match      : TfreMatch;
  Expression : IfreRegExpr;
begin
  eExpression.Text := '\d*';
  mSource.Text     := 'This is a first number: 123456.'#13#10'And this is a last number: 666.';

  Expression := RegExpr(eExpression.Text);
  Match      := Expression.Match(mSource.Text);

  mResults.Lines.Clear;

  while Match.Next do
    mResults.Lines.Add(Match[0]);
end;

procedure TMainForm.ComplexExpressionButtonClick(Sender : TObject);
var
  Match      : TfreMatch;
  Expression : IfreRegExpr;
begin
  eExpression.Text := '\iname\s*=\s*(["''])(.*)\1.*?value\s*=\s*(["''])(.*)\3';
  mSource.Text     := '<Name=   "employee"; age=27 ; VALUe =''Bob''>';

  Expression := RegExpr(eExpression.Text);
  Match      := Expression.Match(mSource.Text);

  if Match.Next then
    mResults.Text := Match[2] + ': ' + Match[4]
  else
    mResults.Text := 'Not found';
end;

procedure TMainForm.ReplaceButtonClick(Sender : TObject);
begin
  eExpression.Text := '\d*';
  mSource.Text     := 'This is a my passwords: 123456 and 9874123.';
  mResults.Text    := ReplaceRE(mSource.Text, eExpression.Text, '***');
end;

procedure TMainForm.SubstituteButtonClick(Sender : TObject);
var
  Match      : TfreMatch;
  Expression : IfreRegExpr;
begin
  eExpression.Text := '(\d*).(\d*)';
  mSource.Text     := 'This is a my ID: 123-456.';

  Expression := RegExpr(eExpression.Text);
  Match      := Expression.Match(mSource.Text);

  if Match.Next then
    mResults.Text := Match.Substitute('Found an ID: $0.'#13#10'This a first part: $1.'#13#10'This a second part: $2.'#13#10'This a reverted ID: $2-$1')
  else
    mResults.Text := 'Not found';
end;

end.
