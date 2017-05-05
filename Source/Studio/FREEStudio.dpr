program FREEStudio;

uses
  Vcl.Forms,
  MainFormUnit in 'MainFormUnit.pas' {MainForm},
  FREE in '..\Core\FREE.pas',
  freInterfacesInt in '..\Core\freInterfacesInt.pas',
  freOperations in '..\Core\freOperations.pas',
  freRegExpr in '..\Core\freRegExpr.pas',
  freCompiler in '..\Core\freCompiler.pas';

{$R *.res}
{$SETPEFLAGS $20}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;

  ReportMemoryLeaksOnShutdown := True;

end.
