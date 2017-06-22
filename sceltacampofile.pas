unit sceltacampofile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dm, Menus, StdCtrls, Grids, DBGrids, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  ExtCtrls, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid;

type
  Tf_sceltacampo = class(TForm)
    PopupMenu1: TPopupMenu;
    scelta1: TMenuItem;
    Uscita: TMenuItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1id_campo: TcxGridDBColumn;
    cxGrid1DBTableView1nomecampo: TcxGridDBColumn;
    cxGrid1DBTableView1dbname: TcxGridDBColumn;
    cxGrid1DBTableView1picture: TcxGridDBColumn;
    Panel1: TPanel;
    Button1: TButton;
    procedure scelta1Click(Sender: TObject);
    procedure UscitaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_sceltacampo: Tf_sceltacampo;

implementation

{$R *.dfm}

procedure Tf_sceltacampo.scelta1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tf_sceltacampo.UscitaClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tf_sceltacampo.FormShow(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.ClearSelection;

end;

end.
