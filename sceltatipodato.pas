unit sceltatipodato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, ComCtrls;

type
  Tf_selecttype = class(TForm)
    ListView1: TListView;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    Select1: TMenuItem;
    Exit1: TMenuItem;
    procedure Select1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public

    scelta: string;
    { Public declarations }
  end;

var
  f_selecttype: Tf_selecttype;

implementation

{$R *.dfm}

procedure Tf_selecttype.Select1Click(Sender: TObject);
begin
  if ListView1.SelCount > 0 then
  begin
    scelta      := ListView1.Selected.Caption;
    ModalResult := mrOk;
  end;
end;

procedure Tf_selecttype.Exit1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
