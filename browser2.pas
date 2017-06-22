unit browser2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, MOZILLACONTROLLib_TLB;

type
  TForm1 = class(TForm)
    MozillaBrowser1: TMozillaBrowser;
    procedure FormShow(Sender: TObject);
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
begin
MozillaBrowser1.Navigate('http://localhost/o2/index.html');
end;

end.
