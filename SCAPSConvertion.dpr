program SCAPSConvertion;

uses
  Forms,
  main in 'main.pas' {MainForm},
  IV_Class in 'IV_Class.pas',
  ResultAll in 'ResultAll.pas',
  SomeFunction in 'SomeFunction.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
