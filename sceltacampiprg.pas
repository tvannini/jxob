unit sceltacampiprg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dm, StdCtrls, Grids, DBGrids, Menus, ComCtrls, Buttons, ActnList,
  ExtCtrls, DB, JvRadioGroup, DBCtrls, DBClient, JvComponent, JvSearchFiles,
  regexpr, OleCtrls, SHDocVw;

type
  Tf_sceltacampiprg = class(TForm)
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    Scelta1: TMenuItem;
    Esc1: TMenuItem;
    ListView1: TListView;
    e_trova: TEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Panel1: TPanel;
    PageControl1: TPageControl;
    ts_fields: TTabSheet;
    ts_appinfo: TTabSheet;
    bt_prec: TBitBtn;
    ts_view: TTabSheet;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    BitBtn3: TBitBtn;
    ActionList1: TActionList;
    azzera_radio: TAction;
    ts_expression: TTabSheet;
    DBGrid2: TDBGrid;
    DBMemo1: TDBMemo;
    btn_exp: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    DataSource1: TDataSource;
    bt_zero: TBitBtn;
    Zoom1: TMenuItem;
    DocSearchFile: TJvSearchFiles;
    ts_fnx: TTabSheet;
    FnxGroupsList: TListBox;
    FnxNamesList: TListBox;
    Panel4: TPanel;
    PreviewBox: TWebBrowser;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SearchText: TEdit;
    Label5: TLabel;
    Button2: TButton;
    Button3: TButton;

    procedure FormShow(Sender: TObject);
    procedure Scelta1Click(Sender: TObject);
    procedure Esc1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure trovaExecute(Sender: TObject; indice: integer);
    procedure bt_precClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure azzera_radioExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btn_expClick(Sender: TObject);
    procedure bt_zeroClick(Sender: TObject);
    procedure bt_formatClick(Sender: TObject);
    procedure Zoom1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DocSearchFileFindFile(Sender: TObject; const AName: String);
    procedure FnxGroupsListClick(Sender: TObject);
    procedure FnxNamesListClick(Sender: TObject);
    procedure PreviewBoxDocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    full: boolean;
  public
    { Public declarations }
    scelta: string;
    appvars, params, prgvars, selects: boolean;
    singola_view: string;
    varprev, zero, multiselect: boolean;
    ultima_view, ultimo_field : string;
    pos_select, pos_view, pos_usa_file, pos_union: TBookmark;
    doc_txt, doc_groups, doc_fnxs: TStringList;
  end;

var
  f_sceltacampiprg: Tf_sceltacampiprg;

implementation

uses work;

{$R *.dfm}

procedure Tf_sceltacampiprg.FormShow(Sender: TObject);
var
  campo: TListItem;
  task_in, field_in: string;
  v: variant;
  i: integer;

begin
  // _________________________________________ Save position for used tables ___
  pos_select   := dm_form.t_select.GetBookmark;
  pos_view     := dm_form.t_task.GetBookmark;
  pos_usa_file := dm_form.t_usa_file.GetBookmark;
  pos_union    := dm_form.t_union.GetBookmark;
  // ____________________________________________________ Set initial status ___
  zero         := False;
  varprev      := false;
  // __________________________________________ Full when called from script ___
  full                    := (appvars and params and prgvars and selects);
  PageControl1.ActivePage := ts_fields;
  if full then
  begin
    ts_view.TabVisible       := true;
    ts_fnx.TabVisible        := true;
    ts_appinfo.TabVisible    := true;
    ts_expression.TabVisible := true;
    bt_prec.Visible          := true;
    bt_zero.Visible          := true;
  end
  else
  begin
    ts_view.TabVisible       := false;
    ts_fnx.TabVisible        := false;
    ts_appinfo.TabVisible    := false;
    ts_expression.TabVisible := false;
    bt_prec.Visible          := false;
    bt_zero.Visible          := false;
  end;
  // __________________________________ Try to extract preset view and field ___
  if scelta <> '' then
  begin
    task_in  := Copy(scelta, 2, Pos(chr(129), scelta) - 2);
    field_in := Trim(Copy(scelta, Pos(chr(129), scelta) + 1, 80));
  end
  else
  begin
    task_in  := ultima_view;
    field_in := ultimo_field;
  end;
  listview1.Clear;
  with dm_form do
  begin
    // _____________________________________________ List program parameters ___
    if (params) then
    begin
      t_parametri.First;
      while not t_parametri.EOF do
      begin
        campo         := listview1.Items.Add;
        campo.Caption := t_parametrinome.Value;
        campo.SubItems.Add('Parameter');
        campo.SubItems.Add(t_parametriid.AsString);
        // _____________________________________________ Check for selection ___
        if (campo.Caption = field_in) and (campo.SubItems[1] = task_in) then
        begin
          ListView1.Selected := campo;
        end;
        t_parametri.Next;
      end;
    end;
    // ______________________________________________ List fields from views ___
    if (selects) then
    begin
      // __________________________________________________ Insert separator ___
      if ListView1.Items.Count > 0 then
      begin
        campo         := listview1.Items.Add;
        campo.Caption := '---';
      end;
      try
      t_select.DisableControls;
      t_usa_file.DisableControls;
      t_select.MasterSource   := nil;
      t_usa_file.MasterSource := nil;
      // ______________________________________ Set filter to program fields ___
      t_select.Filter   := 'prg = ' + chr(39) + t_programminome.Value + chr(39);
      t_select.Filtered := True;
      // _________________________________________ Loop on fields from views ___
      t_select.First;
      while not (t_select.EOF) do
      begin
        if (t_selectcon_nome.Value <> '') and
            (singola_view = '') or
            (t_task.Lookup('id', t_selectidtask.Value, 'nome') = singola_view)
           then
        begin
          campo         := listview1.Items.Add;
          campo.Caption := t_selectcon_nome.Value;
          if t_selecttipo.Value = 'Calculated' then
          begin
            campo.SubItems.Add('[Formula]');
            campo.SubItems.Add(t_task.Lookup('id',
                                             t_selectidtask.Value,
                                             'nome'));
          end
          else if t_selecttipo.Value = 'SQL' then
          begin
            campo.SubItems.Add('[SQL]');
            campo.SubItems.Add(t_task.Lookup('id',
                                             t_selectidtask.Value,
                                             'nome'));
          end
          else
          begin
            v := t_usa_file.Lookup('idtask;con_nome',
                                   VarArrayOf([t_selectidtask.AsString,
                                               t_selecttabella.AsString]),
                                   'tabella');
            if not (VarType(V) in [varNull]) then
            begin
              campo.SubItems.Add(v);
              campo.SubItems.Add(t_task.Lookup('id',
                                               t_selectidtask.Value,
                                               'nome'));
            end;
          end;
          // ___________________________________________ Check for selection ___
          if (campo.Caption = field_in) and (campo.SubItems[1] = task_in) then
          begin
            ListView1.Selected := campo;
          end;
        end;
        t_select.Next
      end;
      finally
        t_select.Filter         := '';
        t_select.Filtered       := False;
        t_usa_file.MasterSource := ds_task;
        t_select.MasterSource   := ds_task;
        t_usa_file.EnableControls;
        t_select.EnableControls;
      end;
    end;
    // ________________________________________________ List local variables ___
    if (prgvars) then
    begin
      // __________________________________________________ Insert separator ___
      if ListView1.Items.Count > 0 then
      begin
        campo         := listview1.Items.Add;
        campo.Caption := '---';
      end;
      t_variabili_prg.Filtered := false;
      // ___________________________________________ Loop on local variables ___
      t_variabili_prg.First;
      while not t_variabili_prg.EOF do
      begin
        campo         := listview1.Items.Add;
        campo.Caption := t_variabili_prgalias.Value;
        campo.SubItems.Add('Program Variable');
        campo.SubItems.Add('prg§_§var');
        // _____________________________________________ Check for selection ___
        if (campo.Caption = field_in) and (campo.SubItems[1] = task_in) then
        begin
          ListView1.Selected:=campo;
        end;
        t_variabili_prg.Next;
      end;
    end;
    // __________________________________________ List application variables ___
    if (appvars) then
    begin
      // __________________________________________________ Insert separator ___
      if ListView1.Items.Count > 0 then
      begin
        campo         := listview1.Items.Add;
        campo.Caption := '---';
      end;
      // __________________________________________________ Loop on app-vars ___
      t_variabili_app.First;
      while not t_variabili_app.EOF do
      begin
        campo         := listview1.Items.Add;
        campo.Caption := t_variabili_appalias.Value;
        campo.SubItems.Add('Session Variable');
        campo.SubItems.Add('_o2SESSION');
        // _____________________________________________ Check for selection ___
        if (campo.Caption = field_in) and (campo.SubItems[1] = task_in) then
        begin
          ListView1.Selected := campo;
        end;
        t_variabili_app.Next;
      end;
    end; // ___________________________________________________ End app-vars ___
  end; // _______________________________________________ Close WITH dm_form ___
  // ______________________________________ If no selection select first row ___
  if Listview1.Selected = nil then
  begin
    Listview1.Selected := ListView1.TopItem;
  end;
  ListView1.ItemFocused := ListView1.Selected;
  ListView1.SetFocus;
  // ______________________________________________________ Load expressions ___
  dm_form.t_espressioni.SaveToFile(f_work.tempdir + f_work.progetto + '_' +
                                   f_work.user + '_tmpexp.cds' , dfBinary);
  dm_form.tmp_exp.LoadFromFile(f_work.tempdir + f_work.progetto + '_' +
                               f_work.user + '_tmpexp.cds');
  ListView1.MultiSelect := multiselect; // ________________ NOT USED (FALSE) ___
end;


procedure Tf_sceltacampiprg.Scelta1Click(Sender: TObject);
begin
  // _____________________________________________ Selection fro fields list ___
  if PageControl1.ActivePage = ts_fields then
  begin
    Button1.Click();
  end
  // _______________________________________ Selection from application info ___
  else if PageControl1.ActivePage = ts_appinfo then
  begin
    BitBtn3.Click();
  end
  // _____________________________________________ Selection from views info ___
  else if PageControl1.ActivePage = ts_view then
  begin
    BitBtn2.Click();
  end
  // _______________________________________ Selection from expressions list ___
  else if PageControl1.ActivePage = ts_expression then
  begin
    btn_exp.Click();
  end;
end;


procedure Tf_sceltacampiprg.Esc1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;


procedure Tf_sceltacampiprg.BitBtn1Click(Sender: TObject);
var
  inizio: integer;
begin
  if ListView1.SelCount = 0 then
  begin
    inizio := 0;
  end
  else begin
    inizio := ListView1.Selected.Index + 1;
  end;
  trovaExecute(self, inizio);
end;


procedure Tf_sceltacampiprg.trovaExecute(Sender: TObject; indice: integer);
var
  i: integer;
  trovato: boolean;
begin
  i := indice;
  trovato := False;
  // ____________________________________________________ Loop on items list ___
  while (not (trovato)) and (i < ListView1.Items.Count) do
  begin
    ListView1.ItemIndex := i;
    // ______________________________________ If search text in item caption ___
    if Pos(e_trova.Text, ListView1.Selected.Caption) > 0 then
    begin
      trovato := True;
    end;
    ListView1.ItemFocused := ListView1.Selected;
    Inc(i);
  end; // ___________________________________________ End loop on items list ___
  // ___________________________________________________ If no item selected ___
  if not (trovato) then
  begin
    ListView1.Selected    := ListView1.TopItem;
    ListView1.ItemFocused := ListView1.TopItem;
    ListView1.SetFocus();
    if MessageDlg('No item found. Restart from the beginning?',
                  mtConfirmation,
                  mbOKCancel,
                  1) = mrOk then
    begin
      trovaExecute(self, 0);
    end;
  end;
  ListView1.SetFocus();
end;


procedure Tf_sceltacampiprg.bt_precClick(Sender: TObject);
begin
  if (ListView1.Selected.SubItems.Strings[0] <> 'Parameter') and
     (ListView1.Selected.SubItems.Strings[0] <> 'Session Variable') then
  begin
    varprev := True;
    Button1.Click();
  end
  else
  begin
    ShowMessage('Previous values not permitted on ' +
                'parameters and session variables!')
  end;
end;


procedure Tf_sceltacampiprg.BitBtn2Click(Sender: TObject);
var
  funzione: string;
begin
  if RadioGroup1.ItemIndex = 0 then
  begin
    funzione := 'mod'
  end
  else if RadioGroup1.ItemIndex = 1 then
  begin
    funzione := 'status'
  end
  else if RadioGroup1.ItemIndex = 2 then
  begin
    funzione := 'reqrows'
  end
  else if RadioGroup1.ItemIndex = 3 then
  begin
    funzione := 'retrows'
  end
  else if RadioGroup1.ItemIndex = 4 then
  begin
    funzione := 'start'
  end
  else if RadioGroup1.ItemIndex = 5 then
  begin
    funzione := 'end'
  end
  else if RadioGroup1.ItemIndex = 6 then
  begin
    funzione := 'total'
  end
  else if RadioGroup1.ItemIndex = 7 then
  begin
    funzione := 'select'
  end
  else if RadioGroup1.ItemIndex = 8 then
  begin
    funzione := 'rec'
  end;
  scelta      := 'o2view_'+ funzione +'("' + dm_form.t_tasknome.Value  + '")';
  ModalResult := mrOk;
end;


procedure Tf_sceltacampiprg.FormClose(Sender: TObject;
                                      var Action: TCloseAction);
begin
  singola_view := '';
  multiselect  := false;
  // _____________________________________________________ Relocate datasets ___
  dm_form.t_task.GotoBookmark(pos_view);
  dm_form.t_usa_file.GotoBookmark(pos_usa_file);
  dm_form.t_union.GotoBookmark(pos_union);
  dm_form.t_select.GotoBookmark(pos_select);
  dm_form.t_select.FreeBookmark(pos_select);
  dm_form.t_task.FreeBookmark(pos_view);
  dm_form.t_task.FreeBookmark(pos_usa_file);
end;


procedure Tf_sceltacampiprg.BitBtn3Click(Sender: TObject);
var
  funzione: string;
begin
  // _________________________________________________ Application functions ___
  if RadioGroup2.ItemIndex = 1 then
  begin
    funzione := 'name'
  end
  else if RadioGroup2.ItemIndex = 2 then
  begin
    funzione := 'title'
  end
  else if RadioGroup2.ItemIndex = 3 then
  begin
    funzione := 'alias';
  end
  else if RadioGroup2.ItemIndex = 4 then
  begin
    funzione := 'sid'
  end
  else if RadioGroup2.ItemIndex = 5 then
  begin
    funzione := 'user'
  end
  else if RadioGroup2.ItemIndex = 6 then
  begin
    funzione := 'validate'
  end
  else if RadioGroup2.ItemIndex = 7 then
  begin
    funzione := 'timeout'
  end
  else if RadioGroup2.ItemIndex = 8 then
  begin
    funzione := 'nologin'
  end
  else if RadioGroup2.ItemIndex = 9 then
  begin
    funzione := 'developer'
  end
  else if RadioGroup2.ItemIndex = 10 then
  begin
    funzione := 'runlevel'
  end
  else if RadioGroup2.ItemIndex = 11 then
  begin
    funzione := 'css'
  end
  else if RadioGroup2.ItemIndex = 12 then
  begin
    funzione := 'startprg';
  end
  else if RadioGroup2.ItemIndex = 13 then
  begin
    funzione := 'reqprg';
  end
  else if RadioGroup2.ItemIndex = 14 then
  begin
    funzione := 'prg';
  end
  else if RadioGroup2.ItemIndex = 15 then
  begin
    funzione := 'menu';
  end
  else if RadioGroup2.ItemIndex = 16 then
  begin
    funzione := 'exetime';
  end
  else if RadioGroup2.ItemIndex = 17 then
  begin
    funzione := 'submit';
  end;
  // _________________________________________________ File-system functions ___
  if RadioGroup3.ItemIndex = 1 then
  begin
    funzione := 'dir_data';
  end
  else if RadioGroup3.ItemIndex = 2 then
  begin
    scelta      := 'o2rnt_root()';
    ModalResult := mrOk;
    Exit;
  end
  else if RadioGroup3.ItemIndex = 3 then
  begin
    funzione := 'dir_home';
  end
  else if RadioGroup3.ItemIndex = 4 then
  begin
    funzione := 'dir_htdocs';
  end
  else if RadioGroup3.ItemIndex = 5 then
  begin
    funzione := 'dir_prgs';
  end
  else if RadioGroup3.ItemIndex = 6 then
  begin
    funzione := 'dir_cvsprgs';
  end
  else if RadioGroup3.ItemIndex = 7 then
  begin
    funzione := 'dir_tmp';
  end
  else if RadioGroup3.ItemIndex = 8 then
  begin
    funzione := 'dir_css';
  end
  else if RadioGroup3.ItemIndex = 9 then
  begin
    funzione := 'dir_templates';
  end
  else if RadioGroup3.ItemIndex = 10 then
  begin
    funzione := 'dir_usertemplates';
  end
  else if RadioGroup3.ItemIndex = 11 then
  begin
    funzione := 'dir_img';
  end
  else if RadioGroup3.ItemIndex = 12 then
  begin
    funzione := 'dir_user';
  end
  else if RadioGroup3.ItemIndex = 13 then
  begin
    funzione := 'dir_uploads';
  end;
  // ________________________________________________ Repositories functions ___
  if RadioGroup4.ItemIndex = 1 then
  begin
    funzione := 'menus';
  end
  else if RadioGroup4.ItemIndex = 2 then
  begin
    funzione := 'models';
  end
  else if RadioGroup4.ItemIndex = 3 then
  begin
    funzione := 'servers';
  end
  else if RadioGroup4.ItemIndex = 4 then
  begin
    funzione := 'databases';
  end
  else if RadioGroup4.ItemIndex = 5 then
  begin
    funzione := 'tables';
  end;
  scelta      := 'o2app_' + funzione + '()';
  ModalResult := mrOk;
end;


procedure Tf_sceltacampiprg.azzera_radioExecute(Sender: TObject);
begin
  RadioGroup2.ItemIndex := 0;
  RadioGroup3.ItemIndex := 0;
  RadioGroup4.ItemIndex := 0;
end;


procedure Tf_sceltacampiprg.Button1Click(Sender: TObject);
begin
  scelta := '';
  if (ListView1.Selected <> nil) and (ListView1.Selected.Caption <> '---') then
  begin
    scelta := chr(127) + ListView1.Selected.SubItems.Strings[1] +
              chr(129) + ListView1.Selected.Caption;
    // _________________________________________________ Save last selection ___
    ultima_view  := ListView1.Selected.SubItems.Strings[1];
    ultimo_field := ListView1.Selected.Caption;
    ModalResult  := mrOk;
  end
  else
  begin
    ModalResult := mrCancel;
  end;
end;


procedure Tf_sceltacampiprg.btn_expClick(Sender: TObject);
begin
  scelta      := 'o2exp(' + dm_form.tmp_expidexp.AsString + ')';
  ModalResult := mrOk;
end;


procedure Tf_sceltacampiprg.bt_zeroClick(Sender: TObject);
begin
    // _______________________________________________________ Set ZERO flag ___
    zero := True;
    Button1.Click();
end;


procedure Tf_sceltacampiprg.bt_formatClick(Sender: TObject);
begin
    Button1.Click();
end;


procedure Tf_sceltacampiprg.Zoom1Click(Sender: TObject);
var tipologia: string;
begin
  tipologia := '';
  // ______________________________ Block for empty, formulas and separators ___
  if (ListView1.Selected.Caption <> '') and
     (ListView1.Selected.Caption <> '---') and
     ((ListView1.Selected.SubItems[0] <> '[Calculated]')) then
  begin
    if ListView1.Selected.SubItems[0] = 'Parameter' then
    begin
      tipologia := f_work.decodifica_datatype(dm_form.t_parametri.Lookup(
                                                     'nome',
                                                     ListView1.Selected.Caption,
                                                     'modello'),
                                              '',
                                              '');
    end
    else if ListView1.Selected.SubItems[0] = 'Session Variable' then
    begin
      tipologia := f_work.decodifica_datatype(dm_form.t_variabili_app.Lookup(
                                                     'alias',
                                                     ListView1.Selected.Caption,
                                                     'tipo'),
                                              '',
                                              '');
    end
    else if ListView1.Selected.SubItems[0] = 'Program Variable' then
    begin
      tipologia := f_work.decodifica_datatype(dm_form.t_variabili_prg.Lookup(
                                                     'alias',
                                                     ListView1.Selected.Caption,
                                                     'picture'),
                                              '',
                                              '');
    end
    else begin
      dm_form.t_task.Locate('nome', ListView1.Selected.SubItems[1], []);
      tipologia := f_work.decodifica_datatype('',
                                              ListView1.Selected.SubItems[0],
                                              dm_form.t_select.Lookup(
                                                     'con_nome',
                                                     ListView1.Selected.Caption,
                                                     'campo'));
    end;
    if tipologia <> '' then
    begin
      ShowMessage(tipologia);
    end;
  end;
end;

procedure Tf_sceltacampiprg.FormCreate(Sender: TObject);
begin
  doc_txt                     := TStringList.Create;
  doc_groups                  := TStringList.Create;
  doc_fnxs                    := TStringList.Create;
  DocSearchFile.RootDirectory := ExtractFileDir(f_work.getJanoxRuntime()) +
                                                '\htdocs\doc';
  PreviewBox.Navigate('about:blank');
  FnxGroupsList.OnClick := nil;
  FnxNamesList.OnClick  := nil;
  doc_groups.Add('');
  DocSearchFile.Search;
  FnxGroupsList.Items     := doc_groups;
  FnxGroupsList.ItemIndex := 0;
  FnxGroupsList.OnClick   := FnxGroupsListClick;
  FnxNamesList.OnClick    := FnxNamesListClick;
end;

procedure Tf_sceltacampiprg.DocSearchFileFindFile(Sender: TObject;
                                                  const AName: String);
var
  r:                 TRegExpr;
  FnxName, FnxGroup: String;
begin
  doc_txt.Clear;
  doc_txt.LoadFromFile(AName);
  r            := TRegExpr.Create();
  r.Expression := '<p>\((\w*)\)</p><h3>(\w*)</h3>';
  if r.Exec(doc_txt.GetText) then
  begin
    FnxName  := r.Match[2];
    FnxGroup := r.Match[1];
    if doc_groups.IndexOf(FnxGroup) = -1 then
    begin
      doc_groups.Add(FnxGroup);
    end;
    doc_fnxs.Values[FnxName] := FnxGroup;
    FnxNamesList.Items.Add(FnxName);
  end;
  FreeAndNil(r);
end;


procedure Tf_sceltacampiprg.FnxGroupsListClick(Sender: TObject);
var
  FnxGroup: String;
  i: integer;
begin
  FnxGroup := FnxGroupsList.Items[FnxGroupsList.ItemIndex];
  FnxNamesList.Clear;
  FnxNamesList.OnClick := nil;
  // _________________________________________________ Loop on all functions ___
  for i := 0 to doc_fnxs.Count - 1 do
  begin
    // ________________________________ Add only functions in selected group ___
    if doc_fnxs.Values[doc_fnxs.Names[i]] = FnxGroup then
    begin
      FnxNamesList.Items.Add(doc_fnxs.Names[i]);
    end;
  end;
  FnxNamesList.OnClick := FnxNamesListClick;
end;


procedure Tf_sceltacampiprg.FnxNamesListClick(Sender: TObject);
var
  FnxName: string;
begin
  FnxName := FnxNamesList.Items[FnxNamesList.ItemIndex];
  if FnxName <> '' then
  begin
    PreviewBox.Navigate(DocSearchFile.RootDirectory + '\' + FnxName + '.html');
    Button3.Enabled := true;
  end;

end;


procedure Tf_sceltacampiprg.PreviewBoxDocumentComplete(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
var
  Doc: Variant;
  Code: string;
  r: TRegExpr;
begin
  Doc          := PreviewBox.Document;
  Code         := Doc.Body.OuterHTML;
  r            := TRegExpr.Create;
  r.ModifierI  := true;
  r.Expression := '<center>.*</center>';
  Code         := '<html><base href="' + PreviewBox.LocationURL +
                  '"><link rel="stylesheet" type="text/css" href="jxdoc.css">' +
                  '</head>' + r.Replace(Code, '') + '</html>';
  Doc.Write(Code);
  Doc.Close;
  FreeAndNil(r);

end;


procedure Tf_sceltacampiprg.Button2Click(Sender: TObject);
var
  Needle, FnxName: String;
  i:               integer;
begin
  Needle                  := SearchText.Text;
  FnxGroupsList.ItemIndex := 0;
  FnxNamesList.Clear;
  FnxNamesList.OnClick := nil;
  Button3.Enabled      := false;
  PreviewBox.Navigate('about:blank');
  // _________________________________________________ Loop on all functions ___
  for i := 0 to doc_fnxs.Count - 1 do
  begin
    // ____________________________________ Look for needle in function name ___
    if Pos(Needle, doc_fnxs.Names[i]) > 0 then
    begin
      FnxNamesList.Items.Add(doc_fnxs.Names[i]);
    end
    else
    begin
      FnxName := doc_fnxs.Names[i];
      doc_txt.Clear;
      doc_txt.LoadFromFile(DocSearchFile.RootDirectory + '\' + FnxName +
                           '.html');
      // ____________________ Look for needle in function documentation body ___
      if Pos(Needle, doc_txt.Text) > 0 then
      begin
        FnxNamesList.Items.Add(doc_fnxs.Names[i]);
      end;
    end;
  end;
  FnxNamesList.OnClick := FnxNamesListClick;
end;

procedure Tf_sceltacampiprg.Button3Click(Sender: TObject);
var
  FnxName: String;
begin
  FnxName := FnxNamesList.Items[FnxNamesList.ItemIndex];
  if FnxName <> '' then
  begin
    scelta      := FnxName + '(';
    ModalResult := mrOk;
  end
  else
  begin
    ModalResult := mrCancel;
  end;
end;

end.
