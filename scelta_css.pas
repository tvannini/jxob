unit scelta_css;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, HTTPApp, HTTPProd, StdCtrls, regexpr, ComCtrls,
  Buttons, ActnList, XPStyleActnCtrls, ActnMan, Menus, SHDocVw;

type
  Tf_scelta_css = class(TForm)
    WebBrowser1: TWebBrowser;
    PageProducer1: TPageProducer;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    Memo2: TMemo;
    ListView1: TListView;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    btn_select: TBitBtn;
    e_expr: TEdit;
    Label3: TLabel;
    PopupMenu1: TPopupMenu;
    return1: TMenuItem;
    expr: TMenuItem;
    ActionList1: TActionList;
    ricarica_css: TAction;
    return: TAction;
    scelta_expr: TAction;
    Exit1: TMenuItem;
    definisce_filecss: TAction;
    procedure PageProducer1HTMLTag(Sender: TObject; Tag: TTag;
      const TagString: string; TagParams: TStrings; var ReplaceText: string);
    procedure FormShow(Sender: TObject);
    procedure ListView1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure BitBtn1Click(Sender: TObject);
    procedure ricarica_cssExecute(Sender: TObject);
    procedure returnExecute(Sender: TObject);
    procedure scelta_exprExecute(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure definisce_filecssExecute(Sender: TObject);
  private
    r: TRegExpr;
    r2: TRegExpr;
    fase: string;
    classecss_attiva: string;
    { Private declarations }
  public
    vreturn: string;
    { Public declarations }
  end;

var
  f_scelta_css: Tf_scelta_css;

implementation

uses work, dm, sceltaespressioni, StrUtils;

{$R *.dfm}

procedure Tf_scelta_css.PageProducer1HTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'stile' then
  begin
    ReplaceText := classecss_attiva
  end;
  if TagString = 'filecss' then
  begin
    ReplaceText := Memo1.Text
  end;
end;


procedure Tf_scelta_css.FormShow(Sender: TObject);
begin
  definisce_filecss.Execute;
  ricarica_css.Execute;
end;

procedure Tf_scelta_css.ListView1Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  if fase <> 'aggiornamento' then
  begin
    e_expr.Text:='';
    classecss_attiva := Item.Caption;
    memo2.Clear;
    memo2.Text := PageProducer1.Content;
    memo2.Lines.SaveToFile(f_work.tempdir + f_work.user + '_tmpcss.htm');
    WebBrowser1.Navigate(f_work.tempdir + f_work.user + '_tmpcss.htm');

    //si posiziona sul memo
    r  := TRegExpr.Create;
    r.ModifierI := True;
    r2 := TRegExpr.Create;
    r2.ModifierI := True;


    r.expression := '\.' + classecss_attiva + '(.*?)\{';
    if r.exec(Memo1.Lines.Text) then
    begin
      Memo1.SelStart  := r.MatchPos[0] - 1;
      Memo1.SelLength := r.MatchLen[0];

    end;

  end;
end;

procedure Tf_scelta_css.BitBtn1Click(Sender: TObject);
begin
  //salva css
  Memo1.Lines.SaveToFile(OpenDialog1.FileName);
  ricarica_css.Execute;
end;

procedure Tf_scelta_css.ricarica_cssExecute(Sender: TObject);
var
  oggetto:   TListItem;
  selezione: string;
begin
  fase := 'aggiornamento';
  memo1.Lines.LoadFromFile(OpenDialog1.FileName);

  ListView1.Clear;

  r  := TRegExpr.Create;
  r.ModifierS := False;
  r2 := TRegExpr.Create;
  r2.ModifierI := True;


  r.expression := '\w(.*?)\{';
  if r.exec(Memo1.Lines.Text) then
  begin
    repeat
      Memo1.SelStart := r.MatchPos[0] - 1;
      Memo1.SelLength := r.MatchLen[0];
      selezione := Memo1.SelText;
      selezione := trim(copy(trim(selezione), 1, length(trim(selezione)) - 1));
      if LeftStr(selezione, 2) <> 'o2' then
      begin
        oggetto := ListView1.Items.Add;
        oggetto.Caption := selezione;
      end;

    until not r.ExecNext
  end;


  fase := '';

end;

procedure Tf_scelta_css.returnExecute(Sender: TObject);
begin
  if e_expr.Text <> '' then
  begin
    vreturn := '[o2exp_' + e_expr.Text + ']'
  end
  else begin
    vreturn := classecss_attiva
  end;
  ModalResult := mrOk;
end;

procedure Tf_scelta_css.scelta_exprExecute(Sender: TObject);
var exp_local: integer;
begin
  if e_expr.Text <>'' then exp_local:=strtoint(e_expr.Text);
  exp_local:=f_work.call_scelta_exp(exp_local);
  if exp_local <> 0 then
  begin
    e_expr.Text := inttostr(exp_local);
  end;
end;

procedure Tf_scelta_css.Exit1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tf_scelta_css.definisce_filecssExecute(Sender: TObject);
var
  filecss: string;

begin


  //if OpenDialog1.Execute then
  begin
    filecss := dm_form.t_applicazionecss.Value;
    if filecss = '' then
    begin
      filecss := 'default.css'
    end;

    if FileExists(f_work.workdir + 'htdocs\css\' + filecss) then
    begin
      OpenDialog1.FileName := f_work.workdir + 'htdocs\css\' + filecss
    end
    else begin
      OpenDialog1.Execute
    end;


    f_scelta_css.Caption := 'CSS Selection from file: ' + OpenDialog1.FileName;

  end;
end;

end.
