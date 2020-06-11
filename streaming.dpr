program streaming;

uses
  System.StartUpCopy,
  FMX.Forms,
  unt_login in 'unt_login.pas' {frm_login},
  unt_splashscreen in 'unt_splashscreen.pas' {frm_splashscreen};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm_splashscreen, frm_splashscreen);
  Application.Run;
end.
