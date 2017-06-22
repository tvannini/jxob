unit sceltadbengine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  Tf_sceltadbengine = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    Select1: TMenuItem;
    Esc1: TMenuItem;
    Label1: TLabel;
    procedure Select1Click(Sender: TObject);
    procedure Esc1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_sceltadbengine: Tf_sceltadbengine;

implementation

{$R *.dfm}

procedure Tf_sceltadbengine.Select1Click(Sender: TObject);
begin
  Modalresult := mrOk;
end;

procedure Tf_sceltadbengine.Esc1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
