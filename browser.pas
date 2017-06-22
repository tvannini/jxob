unit browser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, ExtCtrls, ToolWin, ComCtrls;

type
  TForm1 = class(TForm)
    WebBrowser1: TWebBrowser;
    ToolBar1: TToolBar;
    procedure FormShow(Sender: TObject);
    procedure WebBrowser1BeforeNavigate2(Sender: TObject;
      const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
      Headers: OleVariant; var Cancel: WordBool);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
var NavigateOptions:OleVariant;
begin

  NavigateOptions := navNoHistory or navNoReadFromCache or
                    navNoWriteToCache;
WebBrowser1.Navigate('http://demo.software4u.it:8080/o2/', NavigateOptions);

end;




procedure TForm1.WebBrowser1BeforeNavigate2(Sender: TObject;
  const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
  Headers: OleVariant; var Cancel: WordBool);
begin
Flags:=navNoHistory;
end;

end.
