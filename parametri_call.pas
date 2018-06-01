unit parametri_call;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, sceltaespressioni, sceltacampiprg, Buttons,
  Mask, DBCtrls, ActnList, XPStyleActnCtrls, regexpr, jbstr, ActnMan, StrUtils, ComCtrls,
  Menus, Grids, VolDBGrid, JclStrings, missingpars;

type
  Tf_parametri = class(TForm)
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
    programma: TMemo;
    Panel1: TPanel;
    BtnOk: TButton;
    Label4: TLabel;
    memo_noteprg: TMemo;
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
    prg_da_chiamare: string;
    ResParsCount: integer;
    ResParsText: TStringList;
  end;

var
  f_parametri: Tf_parametri;

implementation

uses dm, work;

{$R *.dfm}

procedure Tf_parametri.FormShow(Sender: TObject);
var
  ParExp, i: integer;
  r: TRegExpr;
  PrgExists: Boolean;
  ParStr, ParType, ParField, ParView: string;
  EParName, EParModel: string;
  EParID : integer;
begin
  // ____________ For "GOTO" operations don't allow passing variables by ref ___
  if dm_form.t_operazionioperazione.Value = 'Call program' then
  begin
    ParamsGrid.Columns[4].Visible := True;
  end
  else
  begin
     ParamsGrid.Columns[4].Visible := False;
  end;
  memo_noteprg.Clear;
  ResParsText.Clear;
  // ____________________________________ Set result values to actual values ___
  ResParsText.Text      := f_work.db_parametri.Lines.Text;
  ResParsCount          := f_work.db_parametri.Lines.Count;
  ParamsGrid.DataSource := nil;
  dm_form.tmp_callparams.EmptyDataSet;
  PrgExists := FileExists(prg_da_chiamare + '.prg');
  // ___ If explicit called prg (not by expression) load expected parameters ___
  if (Pos('[o2exp_', prg_da_chiamare) = 0) and PrgExists then
  begin
    programma.Lines.LoadFromFile(prg_da_chiamare + '.prg');
    r            := TRegExpr.Create;
    r.ModifierI  := True;
    r.Expression := 'o2def::par\(\s*(\d+)\s*,\s*["' + #39 +
                    '](\w+)["' + #39 + ']\s*,\s*["' + #39 +
                    '](\w+)["' + #39 + ']\s*\)\s*;';
    if r.Exec(programma.Lines.Text) then
    begin
      i := 0;
      repeat
        EParID    := StrToInt(r.Match[1]);
        EParName  := r.Match[2];
        EParModel := r.Match[3];
        ParStr    := f_work.db_parametri.Lines[i];
        if ParStr = '' then
        // _________________________________________________ Empty parameter ___
        begin
          ParType  := '';
          ParField := '';
          ParExp   := 0;
        end
        // __________________________________________________ Parameter NULL ___
        else if ParStr = 'null' then
        begin
          ParType  := '';
          ParField := '';
          ParExp   := 0;
        end
        // _________________________________________ Parameter by expression ___
        else if StrLeft(ParStr, 7) = '[o2exp_' then
        begin
          ParType  := 'Exp';
          ParExp   := StrToInt(Copy(ParStr, 8, Pos(']', ParStr) - 8));
          ParField := '';
        end
        else
        // __________________________________________ Parameter by reference ___
        begin
          ParType  := 'Ref';
          ParView  := ExtractWord(1, Copy(ParStr, 2, MaxInt), [chr(129)]);
          if ParView = 'prg§_§var' then
          begin
            ParView := '(Local)';
          end
          else if ParView = '_o2SESSION' then
          begin
            ParView := '(Session)';
          end;
          ParField := ExtractWord(2, ParStr, [chr(129)]);
          ParField := ParView + ' :: ' + ParField;
          ParExp   := 0;
        end;
        dm_form.tmp_callparams.InsertRecord([i + 1,
                                             EParName,
                                             EParModel,
                                             ParType,
                                             ParExp,
                                             ParField]);
        Inc(i);
      until not r.ExecNext;
    end;
    ParamsGrid.Columns[0].ReadOnly := True;
    ParamsGrid.AllowInsert         := False;
    ParamsGrid.AllowDelete         := False;
    // __________________________________________________ Load program notes ___
    r.expression := 'o2def::prgnotes\(\"(.*?)\"\)';
    if r.exec(programma.Lines.Text) then
    begin
      memo_noteprg.Lines.Append(r.Match[1]);
    end;
  end
  // __________________________ Program name by expression - Free parameters ___
  else
  begin
    if not PrgExists then
    begin
      ShowMessage('Can' +#39 + 't find program "' +
                  Trim(Copy(prg_da_chiamare,
                            LastDelimiter('\', prg_da_chiamare) + 1,
                            MaxInt)) +
                  '"');
    end;
    EParName  := '(Anonymous parameter)';
    EParModel := '(Unknown)';
    for i := 0 to f_work.db_parametri.Lines.Count - 1 do
    begin
      ParStr := f_work.db_parametri.Lines[i];
      if ParStr = '' then
      begin
        ParType  := '';
        ParField := '';
        ParExp   := 0;
      end
      else if StrLeft(ParStr, 7) = '[o2exp_' then
      begin
        ParType  := 'Exp';
        ParExp   := StrToInt(Copy(ParStr, 8, Pos(']', ParStr) - 8));
        ParField := '';
      end
      else
      begin
        ParType  := 'Ref';
        ParView  := ExtractWord(1, Copy(ParStr, 2, MaxInt), [chr(129)]);
        if ParView = 'prg§_§var' then
        begin
          ParView := '(Local)';
        end
        else if ParView = '_o2SESSION' then
        begin
          ParView := '(Session)';
        end;
        ParField := ExtractWord(2, ParStr, [chr(129)]);
        ParField := ParView + ' :: ' + ParField;
        ParExp   := 0;
      end;
      dm_form.tmp_callparams.InsertRecord([i + 1,
                                           EParName,
                                           EParModel,
                                           ParType,
                                           ParExp,
                                           ParField]);
    end;
    ParamsGrid.PopupMenu           := FreeParsPopup;
    ParamsGrid.Columns[0].ReadOnly := false;
    ParamsGrid.AllowInsert := True;
    ParamsGrid.AllowDelete := True;
  end;
  ParamsGrid.DataSource := dm_form.ds_tmp_callparams;
  dm_form.tmp_callparams.First;
  ParamsGridCellSelect;
end;


procedure Tf_parametri.ActExitExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;


procedure Tf_parametri.ActOKExecute(Sender: TObject);
var
  EndSet: Boolean;
  ParField, ParView: String;
begin
  ParamsGrid.DataSource := nil;
  ResParsCount          := 0;
  ResParsText.Clear;
  with dm_form do
  begin
    // __________________________________________ Loop on defined parameters ___
    tmp_callparams.First;
    repeat
      // _________________________________________ Parameter by expression ___
      if tmp_callparamsType.Value = 'Exp' then
      begin
        ResParsText.Add('[o2exp_' + tmp_callparamsExp.AsString + ']');
      end
      // __________________________________________ Parameter by reference ___
      else if tmp_callparamsType.Value = 'Ref' then
      begin
        ParView  := Trim(ExtractWord(1, tmp_callparamsField.Value, [':']));
        ParField := Trim(ExtractWord(2, tmp_callparamsField.Value, [':']));
        if ParView = '(Local)' then
        begin
          ParView := 'prg§_§var';
        end
        else if ParView = '(Session)' then
        begin
          ParView := '_o2SESSION';
        end;
        ResParsText.Add(#127 + ParView + #129 + ParField);
      end
      // _______________________________________ Missing parameter (to NULL) ___
      else
      begin
        ResParsText.SetText('null');
      end;
      Inc(ResParsCount);
      tmp_callparams.Next;
    until tmp_callparams.Eof;
  end;
  ModalResult := mrOk;
end;


procedure Tf_parametri.ParamsGridCellClick(Sender: TObject;
                                           Column: TVolgaColumn);
begin
  ParamsGridCellSelect();
end;


procedure Tf_parametri.ParamsGridKeyUp(Sender: TObject;
                                       var Key: Word;
                                       Shift: TShiftState);
begin
  if Ord(Key) < 48  then
  begin
    ParamsGridCellSelect();
  end;
end;


procedure Tf_parametri.ParamsGridCellSelect();
begin
  ExpReturnFrame.Visible := False;
  if dm_form.tmp_callparamsType.Value = 'Exp' then
  begin
    dm_form.t_espressioni.Locate('idexp', dm_form.tmp_callparamsExp.Value, []);
    ExpReturnFrame.Visible := True;
  end;
end;


procedure Tf_parametri.ParamsGridDblClick(Sender: TObject);
begin
  ParamsGridZoom();
end;


procedure Tf_parametri.ParamsGridKeyDown(Sender: TObject;
                                         var Key: Word;
                                         Shift: TShiftState);
begin
  // _____________________________________________________________ F5 (zoom) ___
  if Ord(Key) = 116 then
  begin
    ParamsGridZoom();
  end
  // _____________________________________________________ DEL and BACKSPACE ___
  else if ((Ord(Key) = 8) or (Ord(Key) = 46)) and
          (ParamsGrid.SelectedField.FieldName <> 'Name') and
          (ParamsGrid.SelectedField.FieldName <> 'Model')  then
  begin
    dm_form.tmp_callparams.Edit;
    ParamsGrid.SelectedField.AsString := '';
    dm_form.tmp_callparams.Post;
  end;
end;


procedure Tf_parametri.ParamsGridZoom();
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
      dm_form.tmp_callparams.Edit;
      dm_form.tmp_callparamsType.Value  := 'Exp';
      dm_form.tmp_callparamsExp.Value   := ParExp;
      dm_form.tmp_callparamsField.Value := '';
      dm_form.tmp_callparams.Post;
    end;
  end
  // _____________________________________________ Called on field reference ___
  else if ParamsGrid.SelectedField.FieldName = 'Field' then
  begin
    If (f_work.call_scelta_campoprg('', false, false, true, true, '')) <> ''
    then begin
      ParStr  := f_sceltacampiprg.scelta;
      ParView := ExtractWord(1, Copy(ParStr, 2, MaxInt), [chr(129)]);
      if ParView = 'prg§_§var' then
      begin
        ParView := '(Local)';
      end
      else if ParView = '_o2SESSION' then
      begin
        ParView := '(Session)';
      end;
      ParField := ExtractWord(2, ParStr, [chr(129)]);
      ParField := ParView + ' :: ' + ParField;
      dm_form.tmp_callparams.Edit;
      dm_form.tmp_callparamsType.Value  := 'Ref';
      dm_form.tmp_callparamsField.Value := ParField;
      dm_form.tmp_callparamsExp.Value   := 0;
      dm_form.tmp_callparams.Post;
    end;
  end;
  ParamsGridCellSelect;
  // reimposta mastersource ???
  dm_form.t_select.MasterSource := dm_form.ds_task;
end;

procedure Tf_parametri.ParamsGridDrawColumnCell(Sender: TObject;
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

procedure Tf_parametri.FormCreate(Sender: TObject);
begin
  ResParsText := TStringList.Create;
end;

procedure Tf_parametri.Insert1Click(Sender: TObject);
begin
  with dm_form do
  begin
    tmp_callparams.Append;
    ParamsGrid.Columns[3].Field.FocusControl;
  end;
end;

procedure Tf_parametri.Delete1Click(Sender: TObject);
begin
  if MessageDlg('Delete record?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
  begin
    Exit;
  end;
  dm_form.tmp_callparams.Delete;
end;

procedure Tf_parametri.Cancel1Click(Sender: TObject);
begin
  dm_form.tmp_callparams.Cancel;
end;

procedure Tf_parametri.ParamsGridKeyPress(Sender: TObject; var Key: Char);
begin
  if ParamsGrid.SelectedField.FieldName = 'Field' then
  begin
    Key := #0;
  end;
end;

procedure Tf_parametri.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if ParamsGrid.EditorMode then
  begin
    ParamsGrid.EditorMode := false;
  end;
end;

end.
