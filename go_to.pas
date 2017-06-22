unit go_to;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus;

type
  Tf_goto = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PopupMenu1: TPopupMenu;
    Exit: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    scelta: integer;
    { Public declarations }
  end;

var
  f_goto: Tf_goto;

implementation

{$R *.dfm}

procedure Tf_goto.BitBtn1Click(Sender: TObject);
begin
  scelta      := 0;
  ModalResult := mrOk;
end;

procedure Tf_goto.BitBtn2Click(Sender: TObject);
begin
  scelta      := 1;
  ModalResult := mrOk;

end;



procedure Tf_goto.ExitClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
