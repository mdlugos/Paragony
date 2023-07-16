program paragony;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  RFO in 'RFO.pas' {RFODialog},
  UnitSp in 'UnitSp.pas' {Splash};

{$R *.RES}

begin
  Application.Initialize;
  Splash:=TSplash.Create(Application);
  Application.Title := 'Paragony';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
