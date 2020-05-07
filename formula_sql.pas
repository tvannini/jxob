unit formula_sql;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, sceltaespressioni, sceltacampiprg, Buttons,
  Mask, DBCtrls, ActnList, XPStyleActnCtrls, regexpr, jbstr, ActnMan, StrUtils, ComCtrls,
  Menus, Grids, VolDBGrid, JclStrings, missingpars;

type
  Tf_formula_sql = class(TForm)
    SQLPages: TPageControl;
    TabConcat: TTabSheet;
    TabSQL: TTabSheet;
    ExpReturnFrame: TGroupBox;
    ExpReturnStr: TDBEdit;
    ParamsGrid: TVolgaDBGrid;
    Panel1: TPanel;
    BtnConcatOk: TButton;
    BtnCancel: TButton;
    ActionList1: TActionList;
    ActExit: TAction;
    ActOK: TAction;
    FreeParsPopup: TPopupMenu;
    Delete1: TMenuItem;
    Insert1: TMenuItem;
    Cancel1: TMenuItem;
    Panel2: TPanel;
    BtnSQLOK: TButton;
    BtnSQLCancel: TButton;
    CodeExp: TEdit;
    Label1: TLabel;
    CodeScript: TMemo;
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
    procedure CodeExpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodeExpChange(Sender: TObject);
    procedure SQLPagesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ResType: String;
    ResParsCount: integer;
    ResParsText: TStringList;
  end;

var
  f_formula_sql: Tf_formula_sql;

implementation

uses dm, work;

{$R *.dfm}

procedure Tf_formula_sql.FormShow(Sender: TObject);
var
  ParExp, i: integer;
  r: TRegExpr;
  ParStr, ParType, ParField: string;
begin
  ResParsText.Clear;
  CodeExp.Text          := '';
  CodeScript.Text       := '';
  ParamsGrid.DataSource := nil;
  dm_form.t_formulas_sql.EmptyDataSet;
  // _______________________________________________________ SQL Type: JXSQL ___
  if (dm_form.t_selectsql.Value = '') and
     (dm_form.t_selectinit.Value <> 0) then
  begin
    ResParsCount      := dm_form.t_selectinit.Value;
    CodeExp.Text      := IntToStr(ResParsCount);
    SQLPages.TabIndex := 1;
    ResType           := 'S';
  end
  // ______________________________________________________ SQL Type: CONCAT ___
  else
  begin
    // __________________________________ Set result values to actual values ___
    ResParsText.Text      := dm_form.t_selectsql.Text;
    ResParsCount          := ResParsText.Count;
    for i := 0 to ResParsCount - 1 do
    begin
      ParStr := ResParsText.Strings[i];
      // ______________________________________________ Segment by reference ___
      if StrLeft(ParStr, 1) = #127 then
      begin
        ParType  := 'Ref';
        ParField := StrRight(ParStr, StrLength(ParStr) - 1);
        ParExp   := 0;
      end
      // _____________________________________________ Segment by expression ___
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
    dm_form.t_formulas_sql.First;
    SQLPages.TabIndex := 0;
    ResType           := 'C';
  end;
  ParamsGrid.PopupMenu   := FreeParsPopup;
  ParamsGrid.AllowInsert := True;
  ParamsGrid.AllowDelete := True;
  ParamsGrid.DataSource  := dm_form.ds_formulas_sql;
  ParamsGridCellSelect;
end;


procedure Tf_formula_sql.ActExitExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;


procedure Tf_formula_sql.ActOKExecute(Sender: TObject);
begin
  ParamsGrid.DataSource := nil;
  ResParsCount          := 0;
  ResParsText.Clear;
  // ______________________________________________________ Result as CONCAT ___
  if ResType = 'C' then
  begin
    with dm_form do
    begin
      // ________________________________________ Loop on defined parameters ___
      t_formulas_sql.First;
      repeat
        // _________________________________________ Parameter by expression ___
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
  end
  // ____________________________________________________ Result as SQL code ___
  else
  begin
    if CodeExp.Text <> '' then
    begin
      ResParsCount := StrToInt(CodeExp.Text);
    end
    else
    begin
      ResParsCount := 0;
    end;
  end;
  ModalResult := mrOk;
end;


procedure Tf_formula_sql.ParamsGridCellClick(Sender: TObject;
                                           Column: TVolgaColumn);
begin
  ParamsGridCellSelect();
end;


procedure Tf_formula_sql.ParamsGridKeyUp(Sender: TObject;
                                       var Key: Word;
                                       Shift: TShiftState);
begin
  if Ord(Key) < 48  then
  begin
    ParamsGridCellSelect();
  end;
end;


procedure Tf_formula_sql.ParamsGridCellSelect();
begin
  ExpReturnFrame.Visible := False;
  if dm_form.t_formulas_sqlType.Value = 'Exp' then
  begin
    dm_form.t_espressioni.Locate('idexp', dm_form.t_formulas_sqlExp.Value, []);
    ExpReturnFrame.Visible := True;
  end;
end;


procedure Tf_formula_sql.ParamsGridDblClick(Sender: TObject);
begin
  ParamsGridZoom();
end;


procedure Tf_formula_sql.ParamsGridKeyDown(Sender: TObject;
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


procedure Tf_formula_sql.ParamsGridZoom();
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

procedure Tf_formula_sql.ParamsGridDrawColumnCell(Sender: TObject;
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

procedure Tf_formula_sql.FormCreate(Sender: TObject);
begin
  ResParsText := TStringList.Create;
end;

procedure Tf_formula_sql.Insert1Click(Sender: TObject);
begin
  with dm_form do
  begin
    t_formulas_sql.Append;
    ParamsGrid.Columns[1].Field.FocusControl;
  end;
end;

procedure Tf_formula_sql.Delete1Click(Sender: TObject);
begin
  if MessageDlg('Delete record?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
  begin
    Exit;
  end;
  dm_form.t_formulas_sql.Delete;
end;

procedure Tf_formula_sql.Cancel1Click(Sender: TObject);
begin
  dm_form.t_formulas_sql.Cancel;
end;

procedure Tf_formula_sql.ParamsGridKeyPress(Sender: TObject; var Key: Char);
begin
  if ParamsGrid.SelectedField.FieldName = 'Field' then
  begin
    Key := #0;
  end;
end;

procedure Tf_formula_sql.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if ParamsGrid.EditorMode then
  begin
    ParamsGrid.EditorMode := false;
  end;
end;

procedure Tf_formula_sql.CodeExpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // _____________________________________________________________ F5 (zoom) ___
  if Ord(Key) = 116 then
  begin
    f_sceltaexpr.ShowModal;
    if f_sceltaexpr.ModalResult = mrOk then
    begin
      CodeExp.Text := IntToStr(dm_form.t_espressioniidexp.Value);
      dm_form.t_espressioni.Locate('idexp', CodeExp.Text, []);
      CodeScript.Text := dm_form.t_espressioniexpr.AsString + #13 + #10 +
                         dm_form.t_espressionireturn.AsString;
    end;
  end
  // _____________________________________________________ DEL and BACKSPACE ___
  else if (Ord(Key) = 8) or (Ord(Key) = 46) then
  begin
    CodeExp.Text    := '';
    CodeScript.Text := '';
  end;
end;

procedure Tf_formula_sql.CodeExpChange(Sender: TObject);
begin
  if CodeExp.Text <> '' then
  begin
    dm_form.t_espressioni.Locate('idexp', CodeExp.Text, []);
    CodeScript.Text := dm_form.t_espressioniexpr.AsString + #13 + #10 +
                       dm_form.t_espressionireturn.AsString;
  end;
end;

procedure Tf_formula_sql.SQLPagesChange(Sender: TObject);
begin
  if SQLPages.TabIndex = 0 then
  begin
    ResType := 'C';
  end
  else
  begin
    ResType := 'S';
  end;
end;

end.
