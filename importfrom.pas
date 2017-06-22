unit importfrom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, JclStrings, ComCtrls;

type
  Tf_importfrom = class(TForm)
    OpenDialog1: TOpenDialog;
    Edit1: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    PageControl1: TPageControl;
    ts_viste: TTabSheet;
    ts_forms: TTabSheet;
    ts_actions: TTabSheet;
    imp_view: TButton;
    imp_form: TButton;
    imp_action: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1DblClick(Sender: TObject);
    procedure imp_viewClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    function sposta_exp(id_exp_ori : integer): integer;
    procedure imp_formClick(Sender: TObject);
    procedure imp_actionClick(Sender: TObject);
  private
  gap_exp: Integer;
    { Private declarations }
  public
  elenco_view, elenco_form, elenco_action : string;
    { Public declarations }
  end;

var
  f_importfrom: Tf_importfrom;

implementation

uses dm, import, work, StrUtils;

{$R *.dfm}

procedure Tf_importfrom.Button1Click(Sender: TObject);
var nomeprg: string;
begin

  nomeprg:= ExtractFileName(Edit1.Text);
  nomeprg:=StrToken(nomeprg, '.');
  f_import.prg_importExecute(self, '', Edit1.Text);


  dm_form.t_programmi.Locate('nome', nomeprg, []);
end;

procedure Tf_importfrom.Edit1DblClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    Edit1.Text:=OpenDialog1.FileName;
    Button1Click(self);
  end;
end;

procedure Tf_importfrom.imp_viewClick(Sender: TObject);
var nome_attribuito_alla_view: string;
begin
  nome_attribuito_alla_view:= dm_form.t_tasknome.Value;
  // controlla nome univoco altrimenti lo chiede all'infinito
  while (PosEx(nome_attribuito_alla_view, elenco_view,1) > 0) do
  begin

     nome_attribuito_alla_view:=InputBox('The view "' + dm_form.t_tasknome.Value + '" already exists!', 'Please enter another Name' , '');
     // modifica il nome scatenando in cascata le modifiche ai collegamenti
     dm_form.t_task.Edit;
     dm_form.t_tasknomeSetText(dm_form.t_tasknome, nome_attribuito_alla_view);
  end;



  with dm_form do
  begin

  // prima le select
  t_select.First;
  while not (t_select.eof) do
  begin
    t_select.Edit;
    t_selectprg.Value:=f_work.nodo_prg_attivo.Text;
    //sposta le expression del gap
    if t_selectinit.Value > 0 then t_selectinit.Value:=sposta_exp(t_selectinit.Value);
    if t_selectrangemin.Value > 0 then t_selectrangemin.Value:=sposta_exp(t_selectrangemin.Value);
    if t_selectrangemax.Value > 0 then t_selectrangemax.Value:=sposta_exp(t_selectrangemax.Value);
    if t_selectnot.Value > 0 then t_selectnot.Value:=sposta_exp(t_selectnot.Value);
    if t_selectlike.Value > 0 then t_selectlike.Value:=sposta_exp(t_selectlike.Value);

    t_select.Post;

  end;

  //poi le usa files e joins
  t_usa_file.First;
  while not (t_usa_file.eof) do
  begin

    while not (t_union.eof) do
    begin
        t_union.Edit;
        t_unionprg.Value:= f_work.nodo_prg_attivo.Text;
         //sposta le expression del gap
        if t_unioninit.Value > 0 then t_unioninit.Value:=sposta_exp(t_unioninit.Value);
        if t_unionrangemin.Value > 0 then t_unionrangemin.Value:=sposta_exp(t_unionrangemin.Value);
        if t_unionrangemax.Value > 0 then t_unionrangemax.Value:=sposta_exp(t_unionrangemax.Value);
        if t_unionnot.Value > 0 then t_unionnot.Value:=sposta_exp(t_unionnot.Value);
        if t_unionlike.Value > 0 then t_unionlike.Value:=sposta_exp(t_unionlike.Value);


        t_union.Post;
    end;
    t_usa_file.Edit;
    t_usa_fileprg.Value:=f_work.nodo_prg_attivo.Text;
    t_usa_file.Post;
  end;



  //poi la view
  t_task.Edit;
  t_tasknome.Value:=nome_attribuito_alla_view;
  t_taskprg.Value:= f_work.nodo_prg_attivo.Text;
  t_task.Post;
 end;
end;

procedure Tf_importfrom.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dm_form.t_programmi.Locate('nome', f_work.nodo_prg_attivo.Text, []);
end;

procedure Tf_importfrom.FormShow(Sender: TObject);
begin
  //determina gap espressioni
  dm_form.t_espressioni.Last;
  gap_exp:=dm_form.t_espressioniidexp.Value;

  //definisce l'elenco delle view, delle from e delle action per
  // bloccare i duplicati
  with dm_form do
  begin
      elenco_view:='';
      t_task.First;
      while not(t_task.Eof) do
      begin
          elenco_view:=trim(elenco_view) + ',' + t_tasknome.Value;
          t_task.Next;
      end;

      elenco_form:='';
      t_form.First;
      while not(t_form.Eof) do
      begin
          elenco_form:=trim(elenco_form) + ',' + t_formnomeform.Value;
          t_form.Next;
      end;

      elenco_action:='';
      t_azioni.First;
      while not(t_azioni.Eof) do
      begin
          elenco_action:=trim(elenco_action) + ',' + t_azioniazione.Value;
          t_azioni.Next;
      end;



  end;

  // apre dialog
  Edit1DblClick(self);
end;

function Tf_importfrom.sposta_exp(id_exp_ori: integer): integer;
begin

  if id_exp_ori = 0 then
  begin
      Result:=0;
      Exit;
  end
  else
  begin

    if dm_form.t_espressioni.Locate('idexp', id_exp_ori, []) then
    begin
      dm_form.t_espressioni.Edit;
      dm_form.t_espressioniidexp.Value:= id_exp_ori + gap_exp;
      dm_form.t_espressioniprg.Value:= f_work.nodo_prg_attivo.Text;
      dm_form.t_espressioni.Post
    end;
  Result:=id_exp_ori + gap_exp;
  end;
end;

procedure Tf_importfrom.imp_formClick(Sender: TObject);
var nome_attribuito_form : string;
begin
  nome_attribuito_form:= dm_form.t_formnomeform.Value;
  // controlla nome univoco altrimenti lo chiede all'infinito
  while (PosEx(nome_attribuito_form, elenco_form,1) > 0) do
  begin

     nome_attribuito_form:=InputBox('The form "' + dm_form.t_formnomeform.Value + '" already exists!', 'Please enter another Name' , '');
     // modifica il nome scatenando in cascata le modifiche ai collegamenti
     dm_form.t_form.Edit;
     dm_form.t_formnomeformChange(dm_form.t_formnomeform);
  end;


  // sposta i controlli e la form
  with dm_form do
  begin

  t_controlliform.First;
  while not (t_controlliform.Eof) do
  begin
  t_controlliform.Edit;
  t_controlliformnomeform.Value:=nome_attribuito_form;
  t_controlliformprg.Value:=f_work.nodo_prg_attivo.Text;
  // le espressioni si spostano
  t_controlliformvisibile.Value:=sposta_exp(t_controlliformvisibile.Value);
  t_controlliformabilitato.Value:=sposta_exp(t_controlliformabilitato.Value);
  t_controlliformsubmitonchange.Value:=sposta_exp(t_controlliformsubmitonchange.Value);

  t_controlliform.Post;
  end;

  //sposta la form
  t_form.Edit;
  t_formnomeform.Value:=nome_attribuito_form;
  t_formprg.Value:=f_work.nodo_prg_attivo.Text;
  // sposta le expression del gap
  t_formvisibile.Value:=sposta_exp(t_formvisibile.Value);
  t_formdicitura_exp.Value:=sposta_exp(t_formdicitura_exp.Value);
  t_formbarra_titolo.Value:=sposta_exp(t_formbarra_titolo.Value);
  t_formbarra_stato.Value:=sposta_exp(t_formbarra_stato.Value);



  t_form.Post;



  end;
end;

procedure Tf_importfrom.imp_actionClick(Sender: TObject);
var nome_attribuito_action : string;
begin
nome_attribuito_action:=dm_form.t_azioniazione.Value;
  // controlla nome univoco altrimenti lo chiede all'infinito
  while (PosEx(nome_attribuito_action, elenco_action,1) > 0) do
  begin

     nome_attribuito_action:=InputBox('The action "' + dm_form.t_azioniazione.Value + '" already exists!', 'Please enter another Name' , '');
     // modifica il nome scatenando in cascata le modifiche ai collegamenti
     dm_form.t_azioni.Edit;
     dm_form.t_azioniazioneSetText(dm_form.t_azioniazione, nome_attribuito_action);
  end;


  // sposta le operazioni e la action
  with dm_form do
  begin

  t_operazioni.First;
  while not (t_operazioni.Eof) do
  begin
  t_operazioni.Edit;
  t_operazioniazione.Value:=nome_attribuito_action;
  t_operazioniprg.Value:=f_work.nodo_prg_attivo.Text;
  // le espressioni si spostano
  t_operazioniexp2.Value:=sposta_exp(t_operazioniexp2.Value);

  t_operazioni.Post;
  end;

  //sposta la action
  t_azioni.Edit;
  t_azioniazione.Value:=nome_attribuito_action;
  t_azioniprg.Value:=f_work.nodo_prg_attivo.Text;

  t_azioni.Post;



  end;

end;

end.
