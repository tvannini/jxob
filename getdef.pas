unit getdef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, ComCtrls, DBClient,
  DosCommand, Menus, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, IdComponent, IdHTTP, ActnList, ExtCtrls, DBCtrls;

type
  Tf_getdef = class(TForm)
    db: TClientDataSet;
    ds_db: TDataSource;
    ds_tab: TDataSource;
    tabella: TClientDataSet;
    tabellafieldindex: TIntegerField;
    tabellafieldname: TStringField;
    tabellafieldtype: TStringField;
    tabellafieldsize: TStringField;
    tabellafielddefault: TStringField;
    tabellaselection: TStringField;
    tabelladatamodel: TStringField;
    PopupMenu1: TPopupMenu;
    Zoom1: TMenuItem;
    dbtabindex: TIntegerField;
    dbtabname: TStringField;
    dbselection: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1tabname: TcxGridDBColumn;
    Memo1: TMemo;
    ActionList1: TActionList;
    ret_fields: TAction;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    DBGrid_field: TDBGrid;
    Button2: TButton;
    bt_selcampi: TButton;
    Button1: TButton;
    Splitter2: TSplitter;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure Button1Click(Sender: TObject);
    procedure bt_selcampiClick(Sender: TObject);
    procedure Zoom1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GrabXml(url: string);
    procedure ret_fieldsExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_getdef: Tf_getdef;

implementation

uses dm, sceltamodello, work, export;

{$R *.dfm}

procedure Tf_getdef.Button1Click(Sender: TObject);
var
 engine, nomeserver, nomedb, schema, user, pswd, urlfinale: string;
 stream :TStream;
begin
  dm_form.t_servers.Locate('nomeserver', dm_form.t_databasesserver.Value, []);
  engine:=dm_form.t_serverstiposerver.Value;
  nomeserver:=dm_form.t_serversnomefisico.Value;
  nomedb:=dm_form.t_databasesnomefisicodb.Value;
  schema:=dm_form.t_databasesowner.Value;
  user:=dm_form.t_serversutente.Value;
  pswd:=dm_form.t_serverspassword.Value;


  urlfinale:='http://xeon:8080/o2/' +
             'o2devinfo.php?dbinfo=1'  +
             '&engine=' + engine +
             '&server='+ nomeserver +
             '&owner=' + schema +
             '&dbname=' +nomedb +
             '&uid=' + user +
             '&pswd=' + pswd;

  urlfinale:=StringReplace(urlfinale, ' ', '%20', [rfReplaceAll]);
  Memo1.Lines.Text:=urlfinale;
  GrabXml(urlfinale);

  Memo1.Lines.SaveToFile(f_work.tempdir + 'dbgetdef.xml');

  db.Close;
  db.LoadFromFile(f_work.tempdir + 'dbgetdef.xml');
  db.Open;


end;







procedure Tf_getdef.bt_selcampiClick(Sender: TObject);
var tipodato : string;
begin
  // recupera tracciato record
  ret_fields.Execute;

  //seleziona o deseleziona tutti
  tabella.DisableControls;
  try
  tabella.First;
  while not (tabella.Eof) do
  begin
  tipodato:='';

      tabella.Edit;

      // type
     if Pos('char', tabellafieldtype.Value) > 0 then tipodato:='_alpha';
     if (Pos('char', tabellafieldtype.Value) > 0) and
        (tabellafieldsize.Value = '8') and (tabellafielddefault.Value = '00000000') then
        tipodato:='_date';
     if Pos('int', tabellafieldtype.Value) > 0 then tipodato:='_integer';

     if Pos('float', tabellafieldtype.Value) > 0 then tipodato:='_float';
     if Pos('double', tabellafieldtype.Value) > 0 then tipodato:='_float';

     if Pos('date', tabellafieldtype.Value) > 0 then tipodato:='_date';
     if Pos('text', tabellafieldtype.Value) > 0 then tipodato:='_memo';

     if (tabellafieldsize.Value <> '') and (tipodato='_alpha') then tipodato:=Trim(tipodato) + '_'+tabellafieldsize.Value;

     tabelladatamodel.Value:=tipodato;


     tabella.Post;

     tabella.Next
  end;
  finally
  tabella.EnableControls;
  tabella.First;
  end;
end;

procedure Tf_getdef.Zoom1Click(Sender: TObject);
begin

if DBGrid_field.SelectedField.FieldName = 'datamodel' then
  begin
    tabella.Edit;
    tabelladatamodel.Value:=f_work.call_scelta_modello(tabelladatamodel.Value);
  end;

end;

procedure Tf_getdef.Button2Click(Sender: TObject);
var numcampo : integer;
begin
  // crea la tabella con i campi selezionati e crea eventuali modelli nuovi
  tabella.DisableControls;
  numcampo:=0;
  try
  with dm_form do
  begin
     t_tabelle.Insert;
     t_tabelleNome.Value:=dbtabname.Value;
     t_tabelleNome_fisico.Value:=dbtabname.Value;
     t_tabelledatabase.Value:=DBLookupComboBox1.Text;
     t_tabelle.Post;

     //loop campi
     tabella.First;
     while not (tabella.eof) do
     begin
        //prende solo i selezionati e con un modello impostato
        if (tabelladatamodel.Value <> '') then
        begin
           // crea modello se non esiste
           if t_modelli.Lookup('idmodello', tabelladatamodel.Value, 'idmodello') <> tabelladatamodel.Value then
              begin
                  t_modelli.Insert;
                  t_modelliidmodello.Value:= tabelladatamodel.Value;
                  t_modelli.Post

              end;

           //crea campo
           inc(numcampo);

           t_campi.Insert;
           t_campiid_campo.Value:= numcampo;
           t_campinomecampo.Value:=tabellafieldname.Value;
           t_campidbname.Value:=tabellafieldname.Value;
           t_campipicture.Value:= tabelladatamodel.Value;
           t_campi.Post;
        end;

        tabella.Next;
     end;

  end;
  finally
  //FORZA L'EXPORT
  f_export.models_export.Execute;
  f_export.tables_export.Execute;
  dm_form.datatypes_modificato := False;
  dm_form.tables_modificato := False;

  tabella.EnableControls;

  end;
end;

procedure Tf_getdef.FormShow(Sender: TObject);
begin
  // CONTROLLO SE TABELLE E MODELLI IN CHECK
  if not(f_work.mycheck(dm_form.t_applicazionemodels.Value)) or not(f_work.mycheck(dm_form.t_applicazionetables.Value)) then
  begin
      ShowMessage('Check out data models and tables before');

  end;


end;

procedure Tf_getdef.GrabXml(url: string);
var
 http1: TIdHTTP;
 stream: TMemoryStream;
begin
     Memo1.Clear;
     http1:=TIdHTTP.Create(nil);
     try
       Memo1.Lines.Text:=http1.Get(url);
     finally
     http1.Free;
     end;

end;



procedure Tf_getdef.ret_fieldsExecute(Sender: TObject);
var
 engine, nomeserver, nomedb, schema, user, pswd, urlfinale: string;
 stream :TStream;
begin
  engine:=dm_form.t_serverstiposerver.Value;
  nomeserver:=dm_form.t_serversnomefisico.Value;
  nomedb:=dm_form.t_databasesnomefisicodb.Value;
  schema:=dm_form.t_databasesowner.Value;
  user:=dm_form.t_serversutente.Value;
  pswd:=dm_form.t_serverspassword.Value;


  urlfinale:='http://xeon:8080/o2/' +
             'o2devinfo.php?tabinfo=1'  +
             '&engine=' + engine +
             '&server='+ nomeserver +
             '&owner=' + schema +
             '&dbname=' +nomedb +
             '&uid=' + user +
             '&pswd=' + pswd +
             '&tabname=' + dbtabname.Value ;

  urlfinale:=StringReplace(urlfinale, ' ', '%20', [rfReplaceAll]);
  Memo1.Lines.Text:=urlfinale;
  GrabXml(urlfinale);

  Memo1.Lines.SaveToFile(f_work.tempdir + 'tabgetdef.xml');

  tabella.Close;
  tabella.LoadFromFile(f_work.tempdir + 'tabgetdef.xml');
  tabella.Open;


end;


end.
