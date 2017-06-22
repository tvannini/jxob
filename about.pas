unit about;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, jpeg, JvGIF;

type
  TAboutBox = class(TForm)
    ProductName: TLabel;
    Copyright: TLabel;
    OKButton: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.dfm}

uses work, dm, StrUtils;

procedure TAboutBox.FormShow(Sender: TObject);
begin
  Image1.Picture := f_work.Image1.Picture;
  Label1.Caption := 'Version:' + f_work.build +
                    ' (' + dm_form.datetoo2date(
                        FileDateToDateTime(FileAge(Application.ExeName))) + ')';
  Copyright.Caption := Copyright.Caption +
                       LeftStr(dm_form.datetoo2date(
                          FileDateToDateTime(FileAge(Application.ExeName))), 4);
end;

end.
