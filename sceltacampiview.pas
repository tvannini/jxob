unit sceltacampiview;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, regexpr, ComCtrls, Menus, jbstr, ActnList;

type
  Tf_scelta_campiview = class(TForm)
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    ListBox1: TListBox;
    PopupMenu1: TPopupMenu;
    Select1: TMenuItem;
    Esc1: TMenuItem;
    ActionList1: TActionList;
    carica_lista: TAction;
    prova: TAction;
    procedure BitBtn1Click(Sender: TObject);
    procedure Esc1Click(Sender: TObject);
    procedure carica_listaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure provaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    nomemodello: string;
    cosa_cerco: string;

    { Public declarations }
  end;

var
  f_scelta_campiview: Tf_scelta_campiview;

implementation

uses work, dm;

{$R *.dfm}



procedure Tf_scelta_campiview.BitBtn1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tf_scelta_campiview.Esc1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tf_scelta_campiview.carica_listaExecute(Sender: TObject);
var
  r1, r2:  TRegExpr;
  selezione, selezione2, nomeview: string;
  ricerca: string;
begin
  //carica list
  ListBox1.Clear;

  r1 := TRegExpr.Create;
  r1.ModifierS := True;

  r2 := TRegExpr.Create;
  r2.ModifierS := True;


  if cosa_cerco <> 'elenco_view' then
  begin

    if FileExists(f_work.userdir + dm_form.t_applicazioneviews.Value) then
    begin
      Memo1.Lines.LoadFromFile(f_work.userdir + dm_form.t_applicazioneviews.Value)
    end
    else begin
      Memo1.Lines.LoadFromFile(f_work.prgdir + dm_form.t_applicazioneviews.Value)
    end;

    //leva costanti PHP per la gestione delle view
    Memo1.Lines.Text := StringReplace(Memo1.Lines.Text, '$_o2viewalias.',
      '', [rfReplaceAll]);
    Memo1.Lines.Text := StringReplace(Memo1.Lines.Text, '$task_' + nomemodello +
      '->nome."_".', '', [rfReplaceAll]);


    ricerca := '(usa\(|calcola\()';
    r1.Expression := 'task_' + nomemodello + '->' + ricerca + '(.*?);';
    if r1.exec(Memo1.Lines.Text) then
    begin
      repeat
        Memo1.SelStart := r1.MatchPos[0] - 1;
        Memo1.SelLength := r1.MatchLen[0];
        selezione := Memo1.SelText;
        selezione := ExtractWord(2, selezione, ['(']);
        selezione := ExtractWord(1, selezione, [',']);


        selezione := copy(selezione, 2, length(selezione) - 2);

        ListBox1.Items.Append(selezione);

      until not r1.ExecNext
    end;
  end
  else begin
    if FileExists(f_work.userdir + '_o2viewmodels.prg') then
    begin
      Memo1.Lines.LoadFromFile(f_work.userdir + '_o2viewmodels.prg')
    end
    else begin
      Memo1.Lines.LoadFromFile(f_work.prgdir + '_o2viewmodels.prg')
    end;

    r1.Expression := 'o2def::view(.*?);';
    if r1.Exec(memo1.Lines.Text) then
    begin
      repeat

        memo1.SelStart := r1.MatchPos[0] - 1;
        memo1.SelLength := r1.MatchLen[0];
        selezione := Memo1.SelText;


        r2.Expression := '\(.*\)';

        if r2.exec(selezione) then
        begin
          selezione2 := copy(r2.match[0], 2, r2.MatchLen[0] - 2);
          nomeview   := extractword(1, selezione2, [',']);
          nomeview   := copy(trim(nomeview), 2, length(trim(nomeview)) - 2);
          ListBox1.Items.Append(nomeview);
        end;

      until not r1.ExecNext
    end;

  end;

  FreeAndNil(r1);
  FreeAndNil(r2);

end;

procedure Tf_scelta_campiview.FormShow(Sender: TObject);
begin
  carica_lista.Execute;
  ListBox1.SetFocus;
end;

procedure Tf_scelta_campiview.provaExecute(Sender: TObject);
begin
  //niente
end;

end.
