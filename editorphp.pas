unit editorphp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  SynEditHighlighter, SynEdit, StdCtrls, ExtCtrls, SynEditTypes, SynHighlighterPHP,
  SynCompletionProposal, ToolsAPI, ActnList, Menus, ToolWin, ComCtrls,regexpr,
  JvComponent, JvSearchFiles;

type
  Tf_editorphp = class(TForm)
    Editor: TSynEdit;
    SynCompletionProposal1: TSynCompletionProposal;
    Panel1: TPanel;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    Zoom1: TMenuItem;
    ActionList1: TActionList;
    scelta_oggetti_o2: TAction;
    Exit1: TMenuItem;
    Save1: TMenuItem;
    SynPHPSyn1: TSynPHPSyn;
    aggiornavar: TAction;
    procedure proposalBrackets();
    procedure EditorPaintTransient(Sender: TObject; Canvas: TCanvas;
      TransientType: TTransientType);
    procedure FormCreate(Sender: TObject);
    procedure scelta_oggetti_o2Execute(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SynCompletionProposal1Change(Sender: TObject;
      AIndex: Integer);
    procedure aggiornavarExecute(Sender: TObject);
    procedure EditorChange(Sender: TObject);
    procedure SynCompletionProposal1AfterCodeCompletion(Sender: TObject;
      const Value: String; Shift: TShiftState; Index: Integer;
      EndToken: Char);
    procedure SynCompletionProposal1CodeCompletion(Sender: TObject;
      var Value: String; Shift: TShiftState; Index: Integer;
      EndToken: Char);
    procedure SynCompletionProposal1Execute(Kind: SynCompletionType;
      Sender: TObject; var CurrentInput: String; var x, y: Integer;
      var CanExecute: Boolean);
  private
    { Private declarations }
    FBracketFG: TColor;
    FBracketBG: TColor;
  public
  item_funzioni, item_variabili,insert_funzioni, insert_variabili : TStringList;
  singleLine: Boolean;

    { Public declarations }
  end;

var
  f_editorphp: Tf_editorphp;
  completionStart: Integer;

implementation

uses work, sceltastatiview, sceltacampiprg, dm, Math, StrUtils;

{$R *.DFM}

procedure Tf_editorphp.EditorPaintTransient(Sender: TObject; Canvas: TCanvas;
  TransientType: TTransientType);
const
  AllBrackets = ['{', '[', '(', '}', ']', ')'];
var
  Editor:     TSynEdit;
  OpenChars:  array of char; // [0..2] of Char=();
  CloseChars: array of char; // [0..2] of Char=();

  function CharToPixels(P: TBufferCoord): TPoint;
  begin
    Result := Editor.RowColumnToPixels(Editor.BufferToDisplayPos(P));
  end;

var
  P:                  TBufferCoord;
  Pix:                TPoint;
  D:                  TDisplayCoord;
  S:                  string;
  I:                  integer;
  Attri:              TSynHighlighterAttributes;
  ArrayLength:        integer;
  start:              integer;
  TmpCharA, TmpCharB: char;
begin
  if TSynEdit(Sender).SelAvail then
  begin
    exit
  end;
  Editor         := TSynEdit(Sender);
  ArrayLength    := 3;
  Label1.Caption := 'Line: ' + IntToStr(Editor.CaretY);
  Label2.Caption := 'Column: ' + IntToStr(Editor.CaretX);
  // if you had a highlighter that used a markup language, like html or xml,
  // then you would want to highlight the greater and less than signs as well
  // as illustrated below
  //  if (Editor.Highlighter = shHTML) or (Editor.Highlighter = shXML) then
  //    inc(ArrayLength);
  SetLength(OpenChars, ArrayLength);
  SetLength(CloseChars, ArrayLength);
  for i := 0 to ArrayLength - 1 do
  begin
    case i of
      0:
      begin
        OpenChars[i]  := '(';
        CloseChars[i] := ')';
      end;
      1:
      begin
        OpenChars[i]  := '{';
        CloseChars[i] := '}';
      end;
      2:
      begin
        OpenChars[i]  := '[';
        CloseChars[i] := ']';
      end;
    end
  end;

  P := Editor.CaretXY;
  D := Editor.DisplayXY;

  Start := Editor.SelStart;

  if (Start > 0) and (Start <= length(Editor.Text)) then
  begin
    TmpCharA := Editor.Text[Start];
  end
  else begin
    TmpCharA := #0;
  end;

  if (Start < length(Editor.Text)) then
  begin
    TmpCharB := Editor.Text[Start + 1];
  end
  else begin
    TmpCharB := #0;
  end;

  if not (TmpCharA in AllBrackets) and not (TmpCharB in AllBrackets) then
  begin
    exit
  end;
  S := TmpCharB;
  if not (TmpCharB in AllBrackets) then
  begin
    P.char := P.char - 1;
    S      := TmpCharA;
  end;
  Editor.GetHighlighterAttriAtRowCol(P, S, Attri);

  if (Editor.Highlighter.SymbolAttribute = Attri) then
  begin
    for i := low(OpenChars) to High(OpenChars) do
    begin
      if (S = OpenChars[i]) or (S = CloseChars[i]) then
      begin
        Pix := CharToPixels(P);

        Editor.Canvas.Brush.Style := bsSolid; // Clear;
        Editor.Canvas.Font.Assign(Editor.Font);
        Editor.Canvas.Font.Style := Attri.Style;

        if (TransientType = ttAfter) then
        begin
          Editor.Canvas.Font.Color  := FBracketFG;
          Editor.Canvas.Brush.Color := FBracketBG;
        end
        else
        begin
          Editor.Canvas.Font.Color  := Attri.Foreground;
          Editor.Canvas.Brush.Color := Attri.Background;
        end;

        if Editor.Canvas.Font.Color = clNone then
        begin
          Editor.Canvas.Font.Color := Editor.Font.Color
        end;

        if Editor.Canvas.Brush.Color = clNone then
        begin
          Editor.Canvas.Brush.Color := Editor.Color
        end;

        Editor.Canvas.TextOut(Pix.X, Pix.Y, S);
        P := Editor.GetMatchingBracketEx(P);

        if (P.char > 0) and (P.Line > 0) then
        begin
          Pix := CharToPixels(P);
          if Pix.X > Editor.Gutter.Width then
          begin
            if S = OpenChars[i] then
            begin
              Editor.Canvas.TextOut(Pix.X, Pix.Y, CloseChars[i]);
            end
            else begin
              Editor.Canvas.TextOut(Pix.X, Pix.Y, OpenChars[i]);
            end;
          end;
        end;
      end; //if
    end;//for i :=
    Editor.Canvas.Brush.Style := bsSolid;
  end;
end;



procedure Tf_editorphp.FormCreate(Sender: TObject);
begin
  item_funzioni    := TStringList.Create;
  item_variabili   := TStringList.Create;
  insert_funzioni  := TStringList.Create;
  insert_variabili := TStringList.Create;
  FBracketFG       := clRed;
  FBracketBG       := clLtGray;
end;


procedure Tf_editorphp.scelta_oggetti_o2Execute(Sender: TObject);
var
  appoggio: string;
begin
  If (f_work.call_scelta_campoprg('', true, true, true, true) <> '') then
  begin

    if (f_sceltacampiprg.PageControl1.ActivePage <> f_sceltacampiprg.ts_fields) then
    begin
      Editor.SelText := f_sceltacampiprg.scelta;
    end
    else if f_sceltacampiprg.ListView1.Selected.SubItems.Strings[0] =
      'Parameter' then
    begin
      Editor.SelText := ('o2par(' + f_sceltacampiprg.ListView1.Selected.SubItems.Strings
        [1] + ')')
    end
    else
    begin
      appoggio := 'o2val';
      if f_sceltacampiprg.varprev then appoggio := 'o2pre';
      if f_sceltacampiprg.zero then appoggio := 'o2zero';


      if (dm_form.t_programminome.Value <> '_o2viewmodels') or
        (f_sceltacampiprg.ListView1.Selected.SubItems.Strings[1] = '_o2SESSION') then
      begin
        Editor.SelText := (appoggio + '(' + chr(39) +
          f_sceltacampiprg.ListView1.Selected.SubItems.Strings[1] + chr(39) + ',' +
          chr(39) + f_sceltacampiprg.ListView1.Selected.Caption + chr(39) + ')')
      end
      else begin
        Editor.SelText := (appoggio + '(' +
          f_sceltacampiprg.ListView1.Selected.SubItems.Strings[1] + '_o2self' + ',' +
          f_sceltacampiprg.ListView1.Selected.SubItems.Strings[1] + '_o2self' + '."_".' +
          chr(39) + f_sceltacampiprg.ListView1.Selected.Caption + chr(39) + ')')
      end;

    end;
    dm_form.t_select.MasterSource := dm_form.ds_task;
  end;

end;


procedure Tf_editorphp.Exit1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tf_editorphp.Save1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;


procedure Tf_editorphp.FormShow(Sender: TObject);
begin
  aggiornavar.Execute;
  Editor.ReadOnly := not f_work.mycheck_local;
  Editor.SetFocus;
end;


procedure Tf_editorphp.SynCompletionProposal1Change(Sender: TObject;
  AIndex: Integer);
begin
  if AIndex = 0 then SynCompletionProposal1.Deactivate;
end;


procedure Tf_editorphp.aggiornavarExecute(Sender: TObject);
begin
  // __________________________________________________ Reload proposal list ___
  SynCompletionProposal1.ItemList.Clear;
  SynCompletionProposal1.InsertList.Clear;
  // ______________________________________________________ Reload functions ___
  SynCompletionProposal1.ItemList.AddStrings(item_funzioni);
  SynCompletionProposal1.InsertList.AddStrings(insert_funzioni);
  // _________________________ Manage functions brackets depending on config ___
  proposalBrackets;
  // ___________________________________ Reload expression-defined variables ___
  SynCompletionProposal1.ItemList.AddStrings(item_variabili);
  SynCompletionProposal1.InsertList.AddStrings(insert_variabili);
end;


{*
 * Set proposal inserted brackets depending on config
 *}
procedure Tf_editorphp.proposalBrackets();
var
  i: Integer;
  w: String;
  b: String;
begin
  b := f_work.settings.ReadString('Editor', 'brackets', 'N');
  if b <> 'B' then
  begin
    for i := 0 to SynCompletionProposal1.InsertList.Count - 1 do
    begin
      w := SynCompletionProposal1.InsertList.Strings[i];
      if RightStr(w, 2) = '()' then
      begin
        if b = 'O' then
        begin
          SynCompletionProposal1.InsertList.Strings[i] := LeftStr(w,
                                                                Length(w) - 1 );
        end
        else
        begin
          SynCompletionProposal1.InsertList.Strings[i] := LeftStr(w,
                                                                Length(w) - 2 );
        end;
      end;
    end;
  end;
end;


procedure Tf_editorphp.EditorChange(Sender: TObject);
var r: TRegExpr;
    word: String;
    InsertPos, WordPos: Integer;
begin
  if singleLine and (Length(Editor.Text) > 254) then
  begin
    ShowMessage('Attention: expression code too long!' + #13 +
                'Please use script code instead.');
  end;
  insert_variabili.Clear;
  item_variabili.Clear;
  InsertPos    := Editor.RowColToCharIndex(Editor.WordStart);
  r            := TRegExpr.Create;
  r.Expression := '\$(\w*)';
  if r.Exec(editor.Lines.Text) then
  begin
    repeat
      word    := r.Match[0];
      WordPos := r.MatchPos[0];
      // ________________ Include only variables defined BEFORE insert point ___
      if WordPos > InsertPos - 1 then
      begin
       Break;
      end
      // ___________________________ Not in list yet and not typing variable ___
      else if (insert_variabili.IndexOf(word) = -1) and
         (WordPos <> InsertPos - 1) then
      begin
        insert_variabili.Append(word);
        item_variabili.Append('\style{+B}\color{$000000AA}' + word +
                              '\style{-B}');
      end;
    until not r.ExecNext;
  end;
  FreeAndNil(r);
  aggiornavar.Execute;

end;

procedure Tf_editorphp.SynCompletionProposal1AfterCodeCompletion(
                                                            Sender: TObject;
                                                            const Value: String;
                                                            Shift: TShiftState;
                                                            Index: Integer;
                                                            EndToken: Char);
begin
  { If Value ends with "()" means that:
     1. selected item is a function;
     2. option brackets is set to "Both". }
  // ________________________________________ Position caret inside brackets ___
  if RightStr(Value, 2) = '()' then
  begin
    // __________________________________________ Move caret backward 1 char ___
    Editor.CaretX := Editor.CaretX - 1;
  end;
end;


{*
 * This method and next one (SynCompletionProposal1Execute) are used to avoid
 * next-word replacing on item selection.
 *}
procedure Tf_editorphp.SynCompletionProposal1CodeCompletion(Sender: TObject;
                                                            var Value: String;
                                                            Shift: TShiftState;
                                                            Index: Integer;
  EndToken: Char);
begin
  // ___________________________________________ Allow replace for variables ___
  if LeftStr(Editor.SelText, 1) <> '$' then
  begin
    Editor.SelEnd := completionStart +
                     Length(SynCompletionProposal1.CurrentString);
  end;
end;


{*
 * This method and previous one (SynCompletionProposal1CodeCompletion) are used
 * to avoid next-word replacing on item selection.
 *}
procedure Tf_editorphp.SynCompletionProposal1Execute(Kind: SynCompletionType;
                                                     Sender: TObject;
                                                     var CurrentInput: String;
                                                     var x, y: Integer;
                                                     var CanExecute: Boolean);
begin
  completionStart := Editor.SelStart - Length(CurrentInput);
end;

end.
