unit sceltacampotab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxControls, cxGridCustomView,
  ExtCtrls, cxClasses, cxGridLevel, cxGrid, StdCtrls, Menus;

type
  Tf_sceltacampotab = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1id_campo: TcxGridDBColumn;
    cxGrid1DBTableView1nomecampo: TcxGridDBColumn;
    cxGrid1DBTableView1dbname: TcxGridDBColumn;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    scelta1: TMenuItem;
    Uscita: TMenuItem;
    cxGrid1TableView1: TcxGridTableView;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    Zoom1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure scelta1Click(Sender: TObject);
    procedure UscitaClick(Sender: TObject);
    procedure Zoom1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_sceltacampotab: Tf_sceltacampotab;

implementation

uses dm, work;

{$R *.dfm}

procedure Tf_sceltacampotab.FormShow(Sender: TObject);
begin
 cxGrid1DBTableView1.DataController.ClearSelection;
 cxGrid1.SetFocus;
 cxGrid1DBTableView1nomecampo.FocusWithSelection;

end;

procedure Tf_sceltacampotab.scelta1Click(Sender: TObject);
begin
ModalResult:=mrOk
end;

procedure Tf_sceltacampotab.UscitaClick(Sender: TObject);
begin
 ModalResult:=mrCancel
end;





procedure Tf_sceltacampotab.Zoom1Click(Sender: TObject);
begin
  //
  IF cxGrid1DBTableView1DBColumn1.Focused then
    begin
        ShowMessage(f_work.decodifica_datatype(dm_form.t_campipicture.Value, '', ''));
    end;
end;

end.
