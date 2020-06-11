unit unt_splashscreen;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Media,
  FMX.Controls.Presentation, FMX.StdCtrls, System.IOUtils, FMX.Platform,

  {$IFDEF WIN32}
  FMX.Media.Win,
  {$ENDIF WIN32}

  {$IFDEF ANDROID}
  FMX.Media.Android,
  {$ENDIF ANDROID}

  FMX.Objects;

type
  Tfrm_splashscreen = class(TForm)
    MediaPlayer1: TMediaPlayer;
    MediaPlayerControl1: TMediaPlayerControl;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_splashscreen: Tfrm_splashscreen;
  caminhovideo: string;

implementation

{$R *.fmx}

procedure Tfrm_splashscreen.FormShow(Sender: TObject);
var resolucao : string;
    ScreenSize: TSize;
  begin
    ScreenSize := Screen.Size;

    frm_splashscreen.Height := ScreenSize.cx;
    frm_splashscreen.Width := ScreenSize.cy;

    resolucao := MediaPlayer1.VideoSize.X.ToString;


    {$IFDEF WIN32}
      caminhovideo := 'D:\Documentos\GitHub\streaming-de-midia\midia\vertical_video.wmv';
    {$ENDIF WIN32}

    {$IFDEF ANDROID}
      caminhovideo := System.IOUtils.TPath.Combine(System.IOUtils.TPath.GetDocumentsPath, 'vertical_video.mp4');
      FullScreen := true;
    {$ENDIF ANDROID}

    MediaPlayer1.FileName := caminhovideo;
    MediaPlayer1.Play;
  end;

procedure Tfrm_splashscreen.Timer1Timer(Sender: TObject);
var duracaototalvideo: string;
  begin
    //Label1.Text := MediaPlayer1.CurrentTime.ToString;

    duracaototalvideo := MediaPlayer1.Duration.ToString;

    if MediaPlayer1.CurrentTime.ToString = duracaototalvideo then
      begin
        MediaPlayer1.CurrentTime := 0;
      end;
  end;

end.
