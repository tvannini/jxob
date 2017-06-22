unit scelta_tabsheet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus;

type
  Tf_scelta_tabsheet = class(TForm)
    ListBox1: TListBox;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    Select1: TMenuItem;
    Exit1: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_scelta_tabsheet: Tf_scelta_tabsheet;

implementation

{$R *.dfm}

procedure Tf_scelta_tabsheet.BitBtn1Click(Sender: TObject);
begin
  ModalResult := mrOk
end;

procedure Tf_scelta_tabsheet.Exit1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
