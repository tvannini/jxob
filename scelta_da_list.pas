unit scelta_da_list;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Menus;

type
  Tf_scelta_da_list = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    ListBox1: TListBox;
    PopupMenu1: TPopupMenu;
    Select1: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Select1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_scelta_da_list: Tf_scelta_da_list;

implementation

{$R *.dfm}

procedure Tf_scelta_da_list.BitBtn1Click(Sender: TObject);
begin
  if ListBox1.ItemIndex > -1 then ModalResult:=mrok else ShowMessage('Select the template, please');
end;

procedure Tf_scelta_da_list.FormShow(Sender: TObject);
begin
  if ListBox1.Items.Count > 0 then
  begin
      ListBox1.ItemIndex:=0;
  end;
end;

procedure Tf_scelta_da_list.Select1Click(Sender: TObject);
begin
  BitBtn1.Click;
end;

end.
