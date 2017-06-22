unit sceltamodello;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, Grids, DBGrids, ActnList, ExtCtrls, JclStrings,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid;

type
  Tf_sceltamodel = class(TForm)
    PopupMenu1: TPopupMenu;
    Select1: TMenuItem;
    Exit1: TMenuItem;
    ActionList1: TActionList;
    scelta_expr: TAction;
    dbgrid_modelsDBTableView1: TcxGridDBTableView;
    dbgrid_modelsLevel1: TcxGridLevel;
    dbgrid_models: TcxGrid;
    dbgrid_modelsDBTableView1idmodello: TcxGridDBColumn;
    dbgrid_modelsDBTableView1tipo_dato: TcxGridDBColumn;
    dbgrid_modelsDBTableView1maschera: TcxGridDBColumn;
    Panel1: TPanel;
    btn_select: TBitBtn;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    e_modelexp: TEdit;
    Group1: TMenuItem;
    dbgrid_modelsDBTableView1DBColumn1: TcxGridDBColumn;
    procedure Select1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure scelta_exprExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_selectClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Group1Click(Sender: TObject);
  private
    { Private declarations }
  public

    attiva_espressione: boolean;
    vreturn: string;

    { Public declarations }
  end;

var
  f_sceltamodel: Tf_sceltamodel;

implementation

uses dm, export, sceltatipodato, work, sceltaespressioni, StrUtils;

{$R *.dfm}

procedure Tf_sceltamodel.Select1Click(Sender: TObject);
begin
  btn_selectClick(self);
end;

procedure Tf_sceltamodel.Exit1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;


procedure Tf_sceltamodel.Button1Click(Sender: TObject);
begin
  f_export.models_export.Execute;
end;


procedure Tf_sceltamodel.FormShow(Sender: TObject);
begin


  e_modelexp.Visible   := attiva_espressione;
  SpeedButton1.Visible := attiva_espressione;



  if LeftStr(vreturn, 7) = '[o2exp_' then
  begin
    e_modelexp.Text := copy(vreturn, 2, length(vreturn) - 2);
    e_modelexp.Text := StrAfter('o2exp_', e_modelexp.Text);
  end
  else
  begin
    e_modelexp.Text := '';
    dm_form.t_modelli.Locate('idmodello', vreturn, []);
  end;

end;





procedure Tf_sceltamodel.scelta_exprExecute(Sender: TObject);
var exp_local: integer;
begin
  if e_modelexp.Text <> '' then exp_local:=strtoint(e_modelexp.Text);
  exp_local:=f_work.call_scelta_exp(exp_local);
  if exp_local <> 0 then
  begin
    e_modelexp.Text := inttostr(exp_local)
  end;
end;

procedure Tf_sceltamodel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  attiva_espressione := False;
end;

procedure Tf_sceltamodel.btn_selectClick(Sender: TObject);
begin

  if e_modelexp.Text <> '' then
  begin
    vreturn := '[o2exp_' + e_modelexp.Text + ']'
  end
  else begin
    vreturn := dm_form.t_modelliidmodello.Value
  end;

  ModalResult := mrOk;
end;

procedure Tf_sceltamodel.SpeedButton1Click(Sender: TObject);
begin
  scelta_expr.Execute;
end;

procedure Tf_sceltamodel.Group1Click(Sender: TObject);
begin
   dbgrid_modelsDBTableView1.OptionsView.GroupByBox:=
   not(dbgrid_modelsDBTableView1.OptionsView.GroupByBox);
end;

end.
