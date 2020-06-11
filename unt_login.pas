unit unt_login;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Effects;

type
  Tfrm_login = class(TForm)
    Image1: TImage;
    Layout1: TLayout;
    Image2: TImage;
    Layout2: TLayout;
    Layout3: TLayout;
    Rectangle1: TRectangle;
    Text1: TText;
    Rectangle2: TRectangle;
    Text2: TText;
    ShadowEffect1: TShadowEffect;
    ShadowEffect2: TShadowEffect;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_login: Tfrm_login;

implementation

{$R *.fmx}

procedure Tfrm_login.FormCreate(Sender: TObject);
  begin
    {$IFDEF ANDROID}
      FullScreen := true;
    {$ENDIF ANDROID}
  end;

end.
