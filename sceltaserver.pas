unit sceltaserver;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dm, Grids, DBGrids, StdCtrls, Menus;

type
  Tf_sceltaserver = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    scelta1: TMenuItem;
    Uscita1: TMenuItem;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Uscita1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_sceltaserver: Tf_sceltaserver;

implementation

{$R *.dfm}

procedure Tf_sceltaserver.DBGrid1DblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tf_sceltaserver.Uscita1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
