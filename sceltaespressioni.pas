unit sceltaespressioni;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, dm, StdCtrls, DBCtrls, dbcgrids,
  ActnList, XPStyleActnCtrls, ActnMan, Math, Menus, Mask, ExtCtrls, DB,
  DosCommand, strutils, ComCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxSplitter;

type
  Tf_sceltaexpr = class(TForm)
    Button1: TButton;
    Button2: TButton;
    PopupMenu1: TPopupMenu;
    scelta1: TMenuItem;
    Zoom1: TMenuItem;
    DBMemo1: TDBMemo;
    Esc1: TMenuItem;
    DBNavigator1: TDBNavigator;
    New1: TMenuItem;
    Delete1: TMenuItem;
    ActionList1: TActionList;
    modifica_exp: TAction;
    Panel1: TPanel;
    check_exp: TAction;
    comando: TDosCommand;
    Memo1: TMemo;
    PageControl1: TPageControl;
    ts_script: TTabSheet;
    ts_checkresult: TTabSheet;
    Cancel: TMenuItem;
    dbgrid1DBTableView1: TcxGridDBTableView;
    dbgrid1Level1: TcxGridLevel;
    dbgrid1: TcxGrid;
    dbgrid1DBTableView1idexp: TcxGridDBColumn;
    dbgrid1DBTableView1return: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    procedure modifica_expExecute(Sender: TObject);
    procedure scelta1Click(Sender: TObject);
    procedure Esc1Click(Sender: TObject);
    procedure New1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Zoom1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure comandoTerminated(Sender: TObject);
    procedure check_expExecute(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_sceltaexpr: Tf_sceltaexpr;

implementation

uses work, editorphp;

{$R *.dfm}

procedure Tf_sceltaexpr.modifica_expExecute(Sender: TObject);
begin

  f_editorphp.Editor.Clear;

  f_editorphp.Editor.Text := (dm_form.t_espressioniexpr.Value);

  f_editorphp.Save1.Enabled  := False;
  f_editorphp.Save1.ShortCut := 0;
  f_editorphp.singleLine     := False;
  f_editorphp.ShowModal;

  if f_editorphp.ModalResult = mrOk then
  begin
    dm_form.t_espressioni.Edit;
    dm_form.t_espressioniexpr.Value := f_editorphp.Editor.Lines.Text;
  end;
  check_exp.Execute;
end;



procedure Tf_sceltaexpr.scelta1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;



procedure Tf_sceltaexpr.Esc1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;



procedure Tf_sceltaexpr.New1Click(Sender: TObject);
begin
  DBNavigator1.BtnClick(nbInsert);
end;

procedure Tf_sceltaexpr.Delete1Click(Sender: TObject);
begin
  DBNavigator1.BtnClick(nbDelete);
end;

procedure Tf_sceltaexpr.Zoom1Click(Sender: TObject);
begin
  if not (f_work.mycheck_local) then
  begin
    ShowMessage('Read Only' + chr(13) + chr(10) + 'The program is not checked')
  end;

  if dm_form.t_espressioni.State = dsInsert then
  begin
    dm_form.t_espressioni.Post
  end;
  f_editorphp.Save1.Enabled := True;
  f_editorphp.Editor.Lines.Clear;

  f_editorphp.Editor.Text := (dm_form.t_espressionireturn.Value);

  f_editorphp.Save1.Enabled  := True;
  f_editorphp.Save1.ShortCut := TextToShortCut('Enter');
  f_editorphp.singleLine     := True;
  f_editorphp.ShowModal;
  if f_editorphp.ModalResult = mrOk then
  begin
    dm_form.t_espressioni.Edit;
    dm_form.t_espressionireturn.Value := TRIM(f_editorphp.Editor.Lines.Text);
  end;

end;


procedure Tf_sceltaexpr.FormShow(Sender: TObject);
begin
  //posizione cursore
  DBGrid1.SetFocus;

  dbgrid1DBTableView1return.FocusWithSelection;

  PageControl1.ActivePage := ts_script;
end;


procedure Tf_sceltaexpr.comandoTerminated(Sender: TObject);
begin
  if (leftstr(Memo1.Lines.Text, 25) <> 'No syntax errors detected') then
  begin
    PageControl1.ActivePage := ts_checkresult;
  end;
end;


procedure Tf_sceltaexpr.check_expExecute(Sender: TObject);
var
  buffer: string;
begin
  Memo1.Lines.Clear;
  buffer := '<?php function jxcheckexp() {' + dm_form.t_espressioniexpr.AsString +
            ' return (' + dm_form.t_espressionireturn.Value + ');} ?>';
  Memo1.Lines.add(buffer);
  Memo1.Lines.SaveToFile(f_work.tempdir + 'check_exp.tmp');
  Memo1.Lines.Clear;

  // chiama php.exe per controllo sintattico
  comando.OutputLines := Memo1.Lines;
  comando.CommandLine := ExtractFileDir(Application.ExeName) + '\php.exe -l ' +
                         f_work.tempdir + 'check_exp.tmp';
  comando.Execute;
end;

procedure Tf_sceltaexpr.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePage = ts_checkresult then
  begin
    //dm_form.t_espressioni.Post;
    check_exp.Execute;
  end;
end;



procedure Tf_sceltaexpr.CancelClick(Sender: TObject);
begin
  DBNavigator1.BtnClick(nbCancel);
end;


procedure Tf_sceltaexpr.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if
  (dm_form.t_espressioni.State = dsEdit) or (dm_form.t_espressioni.State = dsInsert) then
  begin
    dm_form.t_espressioni.Post
  end;

end;

end.
