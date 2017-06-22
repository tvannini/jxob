unit print;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, XPStyleActnCtrls, ActnMan, StdCtrls, Buttons, ComCtrls,
  JvComponent, JvSearchFiles, regexpr, Jclstrings, Grids, DBGrids, ExtCtrls,
  Menus, jbstr, DB, DBClient, JvSysComp, JvEdit, JvTypedEdit;

type
  Tf_print = class(TForm)
    JvSearchFile1: TJvSearchFiles;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    PopupMenu1: TPopupMenu;
    E1: TMenuItem;
    Confirm1: TMenuItem;
    PopupMenu2: TPopupMenu;
    Zoom1: TMenuItem;
    Label3: TLabel;
    Label4: TLabel;
    ActionList1: TActionList;
    carica_prg: TAction;
    reporter: TAction;
    Memo2: TMemo;
    t_tmpsource: TClientDataSet;
    t_tmpsourceresource: TStringField;
    t_tmpsourcefile_path: TStringField;
    t_tmpsourcemaster: TStringField;
    t_tmpsourcemaster_fields: TStringField;
    t_tmpsourceindex_fields: TStringField;
    OpenDialog1: TOpenDialog;
    o2reporter: TJvCreateProcess;
    OpenDialog2: TOpenDialog;
    memo_testata: TMemo;
    memo_piede: TMemo;
    Label5: TLabel;
    file_rep: TJvSearchFiles;
    GroupBox1: TGroupBox;
    TreeView1: TTreeView;
    Panel3: TPanel;
    Button1: TButton;
    BitBtn3: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    e_modello: TJvIntegerEdit;
    e_pdf: TJvIntegerEdit;
    ed_printer: TJvIntegerEdit;
    procedure carica_prgExecute(Sender: TObject);
    procedure JvSearchFile1FindFile(Sender: TObject; const AName: string);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure Zoom1Click(Sender: TObject);
    procedure reporterExecute(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure CreaNuovoReport(modello:String);
    procedure file_repFindFile(Sender: TObject; const AName: String);
  private
    { Private declarations }
    r: TRegExpr;

  public
    scelta: string;
    { Public declarations }
  end;

var
  f_print: Tf_print;

implementation

uses work, dm, sceltaespressioni,scelta_da_list;

{$R *.dfm}

procedure Tf_print.carica_prgExecute(Sender: TObject);
var
  n, i: cardinal;
  temp, id, id_padre, nome_prg, nome_risorsa, master, index: string;
begin
  TreeView1.Items.Clear;
  dm_form.t_printdef.EmptyDataSet;
  dm_form.t_printdef.Open;

  if dm_form.t_operazionicallparam.Value <> '' then
  begin

    for i := 1 to StrCharCount(dm_form.t_operazionicallparam.Value, '§') do
    begin
      temp := ExtractWord(i, dm_form.t_operazionicallparam.Value, ['§']);


      id     := ExtractWord(1, temp, ['|']);
      id_padre := ExtractWord(2, temp, ['|']);
      nome_prg := ExtractWord(3, temp, ['|']);
      nome_risorsa := ExtractWord(4, temp, ['|']);
      master := ExtractWord(5, temp, ['|']);
      index  := ExtractWord(6, temp, ['|']);

      dm_form.t_printdef.InsertRecord([id, id_padre, nome_prg, nome_risorsa, master, index]);

    end;
  end;

  //cerca prima fra quelli in check
  JvSearchFile1.RootDirectory := f_work.userdir;
  JvSearchFile1.Search;
  // e poi gli altri
  JvSearchFile1.RootDirectory := f_work.prgdir;
  JvSearchFile1.Search;

end;

procedure Tf_print.JvSearchFile1FindFile(Sender: TObject; const AName: string);
var
  nomeprg, folder: string;
  campo:    TListItem;
  numero_risorse: integer;
  nodo_prg: TTreeNode;
  nome_risorsa: string;

begin
  nomeprg := StrReverse(AName);
  nomeprg := StrReverse(ExtractWord(1, nomeprg, ['\']));
  nomeprg := strtoken(nomeprg, '.');

  if (JvSearchFile1.RootDirectory = f_work.userdir) or
    (not (FileExists(f_work.userdir + nomeprg + '.prg'))) then
  begin
    numero_risorse := 0;
    Memo1.Lines.LoadFromFile(AName);

    r := TRegExpr.Create;
    r.ModifierI := True;



    //o2def::io('prova_io', 'F', test2_exp_2(), 'O');
    //cerca solo io di output
    r.Expression := 'o2def\:\:io\((.*?)\x22O\x22\);';
    if r.Exec(Memo1.Lines.Text) then
    begin
      repeat
        Inc(numero_risorse);

        if numero_risorse = 1 then
        begin
          nodo_prg := TreeView1.Items.AddChild(nodo_prg, nomeprg)
        end;

        nome_risorsa := copy(r.Match[0], pos('(', r.Match[0]) +
          1, pos(',', r.Match[0]) - pos('(', r.Match[0]) - 1);
        nome_risorsa := copy(trim(nome_risorsa), 2, length(trim(nome_risorsa)) - 2);
        TreeView1.Items.AddChild(nodo_prg, nome_risorsa);


      until not r.ExecNext
    end;

  end;
end;


procedure Tf_print.BitBtn1Click(Sender: TObject);
var
  n: integer;
begin

  for n := 0 to TreeView1.SelectionCount - 1 do
  begin
    dm_form.t_printdef.Insert;
    dm_form.t_printdefid.Value      := TreeView1.Selections[n].Text;
    dm_form.t_printdefprg_ref.Value := TreeView1.Selections[n].Parent.Text;
    dm_form.t_printdefrisorsa_ref.Value := TreeView1.Selections[n].Text;
    dm_form.t_printdef.Post;
  end;
end;

procedure Tf_print.BitBtn2Click(Sender: TObject);
begin
  dm_form.t_printdef.Delete;
end;

procedure Tf_print.BitBtn3Click(Sender: TObject);
begin
  scelta      := e_modello.Text + ':' + e_pdf.Text + ':' + ed_printer.Text;

  if (dm_form.t_printdef.RecordCount= 0) then

   ShowMessage('Insert at least a resource before confirm')
  else ModalResult := mrOk;
end;

procedure Tf_print.E1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tf_print.Zoom1Click(Sender: TObject);
var exp_local: integer;
begin
  if (Self.e_modello.Focused) and (e_modello.Text <> '') then exp_local:= StrToInt(e_modello.Text)
  else
    if (Self.e_pdf.Focused) and (e_pdf.Text <> '') then exp_local:= StrToInt(e_pdf.Text)
      else if (Self.ed_printer.Focused) and (ed_printer.Text <> '') then exp_local:= StrToInt(ed_printer.Text) ;


  exp_local:=f_work.call_scelta_exp(exp_local);
  if exp_local <> 0 then
  begin
    if Self.e_modello.Focused then e_modello.Text := inttostr(exp_local)
    else
      if Self.e_pdf.Focused then e_pdf.Text := inttostr(exp_local)
      else
        if Self.ed_printer.Focused then ed_printer.Text := inttostr(exp_local)

  end;
end;

procedure Tf_print.reporterExecute(Sender: TObject);
var problemi : Boolean;
 return, i : Integer;
 temp_riga, ultimo_alias, reportpath : string;
begin
 //
 reportpath:= f_work.settings.ReadString('O2_ENV', 'design_report', '');
 if not(FileExists(reportpath)) then ShowMessage('Report manager not found. Check path in the settings area')
 else
 begin

  return:=MessageDlg('Create new report?',mtConfirmation,mbYesNoCancel,1);
  if return = mrNo then
  begin
     // apre report esistente e sostituisce i dati
     if OpenDialog2.Execute then
     begin
        o2reporter.CommandLine:= reportpath + ' "' + OpenDialog2.FileName + '"';
        o2reporter.Run;
     end;

  end
  else
  if return = mrYes then
  begin
     f_scelta_da_list.Caption:='Template selection';
     f_scelta_da_list.ListBox1.Items.Clear;
     // carica tutti i files .rep presenti nella dir di janox
     file_rep.RootDirectory := ExtractFileDir(Application.ExeName);
     file_rep.Search;

     f_scelta_da_list.ShowModal;
     if (f_scelta_da_list.ModalResult = mrOk) and (f_scelta_da_list.ListBox1.ItemIndex <> -1) then
     begin
      CreaNuovoReport(f_scelta_da_list.ListBox1.Items[f_scelta_da_list.ListBox1.ItemIndex]);
      o2reporter.CommandLine:= reportpath + ' ' + f_work.tempdir + 'temp.rep';
      o2reporter.Run;
     end;
  end;
 end;
end;

procedure Tf_print.DBGrid1EditButtonClick(Sender: TObject);
begin
 if (OpenDialog1.Execute) then
 begin
     dm_form.t_printdef.Edit;
     dm_form.t_printdeftemp_xml.Value:=OpenDialog1.FileName;
 end;
end;

procedure Tf_print.CreaNuovoReport(modello: String);
var
 leggi,scrivi:TStringList;
 i: Integer;
 trovato_dtainfo:Boolean;
begin
// la funzione apre il file
  leggi:=TStringList.Create;
  scrivi:=TStringList.Create;
  leggi.LoadFromFile(modello);
  try
    //loop su leggi e ricopia aggiungendo IN DataInfo
    for i := 0 to leggi.Count -1 do
    begin
      scrivi.Append(leggi.Strings[i]);
      if trim(leggi.Strings[i]) = 'DataInfo = <>' then
      with dm_form do
      begin
       scrivi.Delete(i);
       scrivi.Append('  DataInfo = <');
       t_printdef.First;
       while not(t_printdef.Eof) do
       begin
         scrivi.Append('    item');
         scrivi.Append('      Alias = ' + chr(39) + t_printdefrisorsa_ref.Value +chr(39));
         scrivi.Append('      DatabaseAlias = '+chr(39)+'O2'+chr(39));
         scrivi.Append('    end');

         t_printdef.Next;
       end;
       scrivi.Append('>');

      end;



    end;

   scrivi.SaveToFile(f_work.tempdir + 'temp.rep');
   finally
   FreeAndNil(leggi);
   FreeAndNil(scrivi);
  end;

end;

procedure Tf_print.file_repFindFile(Sender: TObject; const AName: String);
begin
    f_scelta_da_list.ListBox1.Items.Append(AName);
end;


end.
