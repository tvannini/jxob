unit scelta_tipo_select;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus;

type
  Tf_tipo_select = class(TForm)
    ListBox1: TListBox;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    Select1: TMenuItem;
    Esc1: TMenuItem;
    procedure Select1Click(Sender: TObject);
    procedure Esc1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_tipo_select: Tf_tipo_select;

implementation

uses dm;

{$R *.dfm}

procedure Tf_tipo_select.Select1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tf_tipo_select.Esc1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;




procedure Tf_tipo_select.FormShow(Sender: TObject);
begin
  ListBox1.Clear;
  ListBox1.Items.Append('Select');
  ListBox1.Items.Append('Calculated');

  ListBox1.Selected[0] := True;
end;



end.
