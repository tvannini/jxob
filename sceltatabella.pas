unit sceltatabella;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dm, Menus, StdCtrls, Grids, DBGrids, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  ExtCtrls, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid;

type
  Tf_sceltatabella = class(TForm)
    PopupMenu1: TPopupMenu;
    scelta1: TMenuItem;
    esc1: TMenuItem;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1TableView1: TcxGridTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1Id: TcxGridDBColumn;
    cxGrid1DBTableView1Nome: TcxGridDBColumn;
    cxGrid1DBTableView1Nome_fisico: TcxGridDBColumn;
    cxGrid1DBTableView1database: TcxGridDBColumn;
    cxGrid1DBTableView1folder: TcxGridDBColumn;
    Panel1: TPanel;
    Button1: TButton;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure esc1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_sceltatabella: Tf_sceltatabella;

implementation

{$R *.dfm}

procedure Tf_sceltatabella.DBGrid1DblClick(Sender: TObject);
begin

  ModalResult := mrOk;
end;

procedure Tf_sceltatabella.esc1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
