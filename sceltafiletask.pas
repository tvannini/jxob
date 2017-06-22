unit sceltafiletask;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dm, Grids, DBGrids, StdCtrls, Menus, DB, DBClient, ExtCtrls;

type
  Tf_sceltafiletask = class(TForm)
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    scelta1: TMenuItem;
    Uscita1: TMenuItem;
    Panel1: TPanel;
    Button1: TButton;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Uscita1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_sceltafiletask: Tf_sceltafiletask;

implementation

{$R *.dfm}

procedure Tf_sceltafiletask.DBGrid1DblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tf_sceltafiletask.Uscita1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
