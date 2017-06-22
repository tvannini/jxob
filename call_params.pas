unit call_params;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, VolDBGrid, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    VolgaDBGrid1: TVolgaDBGrid;
    pop_locate: TPopupMenu;
    Zoom1: TMenuItem;
    Select1: TMenuItem;
    Exit1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
