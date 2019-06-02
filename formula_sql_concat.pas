unit formula_sql_concat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, sceltaespressioni, sceltacampiprg, Buttons,
  Mask, DBCtrls, ActnList, XPStyleActnCtrls, regexpr, jbstr, ActnMan, StrUtils, ComCtrls,
  Menus, Grids, VolDBGrid, JclStrings, missingpars;

type
  Tf_formula_sql_concat = class(TForm)
    ActionList1: TActionList;
    ActExit: TAction;
    ActOK: TAction;
    FreeParsPopup: TPopupMenu;
    Delete1: TMenuItem;
    Insert1: TMenuItem;
    Cancel1: TMenuItem;
    ParamsGrid: TVolgaDBGrid;
    ExpReturnFrame: TGroupBox;
    ExpReturnStr: TDBEdit;
    Panel1: TPanel;
    BtnOk: TButton;
    BtnCancel: TButton;
    procedure FormShow(Sender: TObject);
    procedure ActExitExecute(Sender: TObject);
    procedure ActOKExecute(Sender: TObject);
    procedure ParamsGridCellSelect();
    procedure ParamsGridCellClick(Sender: TObject; Column: TVolgaColumn);
    procedure ParamsGridKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ParamsGridDblClick(Sender: TObject);
    procedure ParamsGridZoom();
    procedure ParamsGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ParamsGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TVolgaColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure ParamsGridKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    ResParsCount: integer;
    ResParsText: TStringList;
  end;

var
  f_formula_sql_concat: Tf_formula_sql_concat;

implementation

uses dm, work;

{$R *.dfm}

procedure Tf_formula_sql_concat.FormShow(Sender: TObject);
var
  ParExp, i: integer;
  r: TRegExpr;
  ParStr, ParType, ParField: string;
begin
  ResParsText.Clear;
  // ____________________________________ Set result values to actual values ___
  ResParsText.Text      := dm_form.t_selectsql.Text;
  ResParsCount          := ResParsText.Count;
  ParamsGrid.DataSource := nil;
  dm_form.t_formulas_sql.EmptyDataSet;
  for i := 0 to ResParsCount - 1 do
  begin
    ParStr := ResParsText.Strings[i];
    // ________________________________________________ Segment by reference ___
    if StrLeft(ParStr, 1) = #127 then
    begin
      ParType  := 'Ref';
      ParField := StrRight(ParStr, StrLength(ParStr) - 1);
      ParExp   := 0;
    end
    // _______________________________________________ Segment by expression ___
    else
    begin
      ParType  := 'Exp';
      ParExp   := StrToInt(ParStr);
      ParField := '';
    end;
    dm_form.t_formulas_sql.InsertRecord([i + 1,
                                         ParType,
                                         ParExp,
                                         ParField]);
  end;
  ParamsGrid.PopupMenu   := FreeParsPopup;
  ParamsGrid.AllowInsert := True;
  ParamsGrid.AllowDelete := True;
  ParamsGrid.DataSource  := dm_form.ds_formulas_sql;
  dm_form.t_formulas_sql.First;
  ParamsGridCellSelect;
end;


procedure Tf_formula_sql_concat.ActExitExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;


procedure Tf_formula_sql_concat.ActOKExecute(Sender: TObject);
begin
  ParamsGrid.DataSource := nil;
  ResParsCount          := 0;
  ResParsText.Clear;
  with dm_form do
  begin
    // __________________________________________ Loop on defined parameters ___
    t_formulas_sql.First;
    repeat
      // ___________________________________________ Parameter by expression ___
      if (t_formulas_sqlType.Value = 'Exp') and
         (t_formulas_sqlExp.AsInteger > 0) then
      begin
        ResParsText.Add(t_formulas_sqlExp.AsString);
        Inc(ResParsCount);
      end
      // ____________________________________________ Parameter by reference ___
      else if t_formulas_sqlType.Value = 'Ref' then
      begin
        ResParsText.Add(#127 + t_formulas_sqlField.Value);
        Inc(ResParsCount);
      end;
      t_formulas_sql.Next;
    until t_formulas_sql.Eof;
  end;
  ModalResult := mrOk;
end;


procedure Tf_formula_sql_concat.ParamsGridCellClick(Sender: TObject;
                                           Column: TVolgaColumn);
begin
  ParamsGridCellSelect();
end;


procedure Tf_formula_sql_concat.ParamsGridKeyUp(Sender: TObject;
                                       var Key: Word;
                                       Shift: TShiftState);
begin
  if Ord(Key) < 48  then
  begin
    ParamsGridCellSelect();
  end;
end;


procedure Tf_formula_sql_concat.ParamsGridCellSelect();
begin
  ExpReturnFrame.Visible := False;
  if dm_form.t_formulas_sqlType.Value = 'Exp' then
  begin
    dm_form.t_espressioni.Locate('idexp', dm_form.t_formulas_sqlExp.Value, []);
    ExpReturnFrame.Visible := True;
  end;
end;


procedure Tf_formula_sql_concat.ParamsGridDblClick(Sender: TObject);
begin
  ParamsGridZoom();
end;


procedure Tf_formula_sql_concat.ParamsGridKeyDown(Sender: TObject;
                                         var Key: Word;
                                         Shift: TShiftState);
begin
  // _____________________________________________________________ F5 (zoom) ___
  if Ord(Key) = 116 then
  begin
    ParamsGridZoom();
  end
  // _____________________________________________________ DEL and BACKSPACE ___
  else if (Ord(Key) = 8) or (Ord(Key) = 46) then
  begin
    dm_form.t_formulas_sql.Edit;
    ParamsGrid.SelectedField.AsString := '';
    dm_form.t_formulas_sql.Post;
  end;
end;


procedure Tf_formula_sql_concat.ParamsGridZoom();
var
  ParExp: integer;
  ParStr, ParField, ParView: String;
begin
  // __________________________________________________ Called on expression ___
  if (ParamsGrid.SelectedField.FieldName = 'Exp') then
  begin
    f_sceltaexpr.ShowModal;
    if f_sceltaexpr.ModalResult = mrOk then
    begin
      ParExp := dm_form.t_espressioniidexp.Value;
      dm_form.t_formulas_sql.Edit;
      dm_form.t_formulas_sqlType.Value  := 'Exp';
      dm_form.t_formulas_sqlExp.Value   := ParExp;
      dm_form.t_formulas_sqlField.Value := '';
      dm_form.t_formulas_sql.Post;
    end;
  end
  // _____________________________________________ Called on field reference ___
  else if ParamsGrid.SelectedField.FieldName = 'Field' then
  begin
    ParView := dm_form.t_task.Lookup('id',
                                     dm_form.t_selectidtask.Value,
                                     'nome');
    If (f_work.call_scelta_campoprg('',
                                    false,
                                    false,
                                    false,
                                    true,
                                    ParView) <> '') then
    begin
      ParStr   := f_sceltacampiprg.scelta;
      ParField := ExtractWord(2, ParStr, [chr(129)]);
      dm_form.t_formulas_sql.Edit;
      dm_form.t_formulas_sqlType.Value  := 'Ref';
      dm_form.t_formulas_sqlField.Value := ParField;
      dm_form.t_formulas_sqlExp.Value   := 0;
      dm_form.t_formulas_sql.Post;
    end;
  end;
  ParamsGridCellSelect;
  // reimposta mastersource ???
  dm_form.t_select.MasterSource := dm_form.ds_task;
end;

procedure Tf_formula_sql_concat.ParamsGridDrawColumnCell(Sender: TObject;
                                                const Rect: TRect;
                                                DataCol: Integer;
                                                Column: TVolgaColumn;
                                                State: TGridDrawState);
begin
   if (Column.FieldName = 'Exp') and (column.Field.AsInteger = 0) then
   begin
     ParamsGrid.Canvas.TextRect(Rect, Rect.Left, Rect.Top, '');
   end
   else
   begin
     ParamsGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
end;

procedure Tf_formula_sql_concat.FormCreate(Sender: TObject);
begin
  ResParsText := TStringList.Create;
end;

procedure Tf_formula_sql_concat.Insert1Click(Sender: TObject);
begin
  with dm_form do
  begin
    t_formulas_sql.Append;
    ParamsGrid.Columns[3].Field.FocusControl;
  end;
end;

procedure Tf_formula_sql_concat.Delete1Click(Sender: TObject);
begin
  if MessageDlg('Delete record?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
  begin
    Exit;
  end;
  dm_form.t_formulas_sql.Delete;
end;

procedure Tf_formula_sql_concat.Cancel1Click(Sender: TObject);
begin
  dm_form.t_formulas_sql.Cancel;
end;

procedure Tf_formula_sql_concat.ParamsGridKeyPress(Sender: TObject; var Key: Char);
begin
  if ParamsGrid.SelectedField.FieldName = 'Field' then
  begin
    Key := #0;
  end;
end;

procedure Tf_formula_sql_concat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if ParamsGrid.EditorMode then
  begin
    ParamsGrid.EditorMode := false;
  end;
end;

end.
