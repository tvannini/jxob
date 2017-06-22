unit sceltamodellol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, Grids, DBGrids;

type
  Tf_sceltamodel = class(TForm)
    dbgrid_models: TDBGrid;
    PopupMenu1: TPopupMenu;
    btn_select: TBitBtn;
    Select1: TMenuItem;
    procedure Select1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_sceltamodel: Tf_sceltamodel;

implementation

uses dm;

{$R *.dfm}

procedure Tf_sceltamodel.Select1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
