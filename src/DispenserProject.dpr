program DispenserProject;

uses
  Vcl.Forms,
  Dispenser in 'Dispenser.pas' {Form1},
  CPort in 'E:\Delphi Zubeh�r\ComPort\Source\CPort.pas',
  CPortAbout in 'E:\Delphi Zubeh�r\ComPort\Source\CPortAbout.pas' {AboutBox},
  CPortCtl in 'E:\Delphi Zubeh�r\ComPort\Source\CPortCtl.pas',
  CPortEsc in 'E:\Delphi Zubeh�r\ComPort\Source\CPortEsc.pas',
  CPortMonitor in 'E:\Delphi Zubeh�r\ComPort\Source\CPortMonitor.pas',
  CPortSetup in 'E:\Delphi Zubeh�r\ComPort\Source\CPortSetup.pas' {ComSetupFrm},
  CPortTrmSet in 'E:\Delphi Zubeh�r\ComPort\Source\CPortTrmSet.pas' {ComTrmSetForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
