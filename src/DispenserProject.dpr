program DispenserProject;

uses
  Vcl.Forms,
  Dispenser in 'Dispenser.pas' {Form1},
  CPort in 'E:\Delphi Zubehör\ComPort\Source\CPort.pas',
  CPortAbout in 'E:\Delphi Zubehör\ComPort\Source\CPortAbout.pas' {AboutBox},
  CPortCtl in 'E:\Delphi Zubehör\ComPort\Source\CPortCtl.pas',
  CPortEsc in 'E:\Delphi Zubehör\ComPort\Source\CPortEsc.pas',
  CPortMonitor in 'E:\Delphi Zubehör\ComPort\Source\CPortMonitor.pas',
  CPortSetup in 'E:\Delphi Zubehör\ComPort\Source\CPortSetup.pas' {ComSetupFrm},
  CPortTrmSet in 'E:\Delphi Zubehör\ComPort\Source\CPortTrmSet.pas' {ComTrmSetForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
