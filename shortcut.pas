unit shortcut;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  Tf_shortcut = class(TForm)
    HotKey1: THotKey;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_shortcut: Tf_shortcut;

implementation

{$R *.dfm}

procedure Tf_shortcut.Button1Click(Sender: TObject);
begin
Showmessage(inttostr(HotKey1.HotKey));

end;

end.
