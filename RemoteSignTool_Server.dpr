program RemoteSignTool_Server;

uses
  Vcl.Forms,
  fmMain in 'fmMain.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  if FindCmdLineSwitch('autostart', True)
    and FindCmdLineSwitch('hidden', True) then
    Application.ShowMainForm := False;
  Application.Run;
end.
