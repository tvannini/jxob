unit sceltamenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, Menus;

type
  Tf_sceltamenu = class(TForm)
    TreeView1: TTreeView;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    Exit1: TMenuItem;
    Select: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure SelectClick(Sender: TObject);
  private
    { Private declarations }
  public
  scelta: string;
    { Public declarations }
  end;

var
  f_sceltamenu: Tf_sceltamenu;

implementation

{$R *.dfm}

uses dm, DB, StrUtils;

procedure Tf_sceltamenu.FormShow(Sender: TObject);
var
  nodo: TTreeNode;
begin
  // carica tree
  TreeView1.Items.Clear;
  with dm_form.t_menu do
  begin
    Filtered := False;
    First;
    while not EOF do
    begin

      if LeftStr(FieldValues['tipo'], 1) = 'M' then
      begin
        TreeView1.Items.Add(TreeView1.TopItem, FieldValues['id']);
      end;
      Next;
    end;
  end;

end;

procedure Tf_sceltamenu.Exit1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tf_sceltamenu.SelectClick(Sender: TObject);
begin
 scelta:=TreeView1.Selected.Text;
 ModalResult:=mrOk;
end;

end.
