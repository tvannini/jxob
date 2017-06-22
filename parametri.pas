unit parametri;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, Grids, DBGrids;

type
  Tf_parametri_in = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    Select1: TMenuItem;
    Exit1: TMenuItem;
    procedure Select1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_parametri_in: Tf_parametri_in;

implementation

uses dm;

{$R *.dfm}


procedure Tf_parametri_in.Select1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tf_parametri_in.Exit1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
