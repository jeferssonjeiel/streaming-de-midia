program streaming;

uses
  System.StartUpCopy,
  FMX.Forms,
  unt_splashscreen in 'unt_splashscreen.pas' {frm_app};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm_app, frm_app);
  Application.Run;
end.
