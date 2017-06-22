unit valori_tstrings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus, ExtCtrls;

type
  Tf_tstrings = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_tstrings: Tf_tstrings;

implementation

{$R *.dfm}


procedure Tf_tstrings.BitBtn1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
