unit crossref;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, DB, DBClient, Grids, DBGrids, SynEdit,
  ComCtrls, SuperObject, ImgList, DosCommand, JclStrings, jbstr;

type
  Tf_crossref = class(TForm)
    Memo1: TMemo;
    Label3: TLabel;
    ResTree: TTreeView;
    ResTreeImages: TImageList;
    cmdObj: TDosCommand;
    procedure Memo1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ResTreeDblClick(Sender: TObject);
    procedure ResTreeGoTo(ItemNode: TTreeNode);
    procedure ResTreeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  posizione :TBookmark;
  elencoprgprocessati : TStringList;
  public
    fromWin: string;
    { Public declarations }
  end;

var
  f_crossref: Tf_crossref;

implementation

uses dm, work, import, Math, StrUtils;
{$R *.dfm}


{*
 * Processes response from PHP-Janox command
 *}
procedure Tf_crossref.Memo1Change(Sender: TObject);
var
  Response  : string;
  ISO       : ISuperObject;
  SONames   : ISuperObject;
  Name      : string;
  SOItems   : ISuperObject;
  SOItem    : ISuperObject;
  RootNode  : TTreeNode;
  curItem   : TTreeNode;
  parItem   : TTreeNode;
  ParentId  : string;
  NodeType  : string;
  NodeText  : string;
  IdsList   : TStringList;
  ParsList  : TStringList;
  ImgIdx, i : Integer;
  ParsObj   : TSuperTableString;
begin
  IdsList  := TStringList.Create;
  ParsList := TStringList.Create;
  Response := Trim(Memo1.Text);
  if RightStr(Response, 1) <> '}' then
  begin
    ShowMessage('Unterminated JSON:' + RightStr(Response, 1));
    Exit;
  end;
  {*
   * PATCH: Text in response may be duplicated (DosCommand fault..?).
   *        Last occurrence should be complete...
   *        Look for {" repetition in text to get last complete part.
   *}
  if StrStrCount(Response, '{"') > 1 then
  begin
    Response := Copy(Response, JclStrings.StrILastPos('{"', Response), MaxInt);
  end;
  // __________________________________ Parse whole result text as an object ___
  ISO     := SO(Response);
  ParsObj := ISO.AsObject;
  SONames := ParsObj.GetNames;
  SOItems := ParsObj.GetValues;
  // _________________________________________________________ Add root node ___
  RootNode := ResTree.Items.AddChild(nil,
                                     SOItems.AsArray[0].AsArray[1].AsString);
  // _________________________________________________ No results in dataset ___
  if SameText(Copy(SOItems.AsArray[0].AsArray[2].AsString,
                   Length(SOItems.AsArray[0].AsArray[2].AsString) - 15,
                   16),
              'folder_error.png') then
  begin
    RootNode.ImageIndex    := 8;
    RootNode.SelectedIndex := 8;
    curItem                := ResTree.Items.AddChild(RootNode,
                                                     'No matches found');
    curItem.ImageIndex     := -1;
    curItem.SelectedIndex  := -1;
    RootNode.Expand(false);
    Exit;
  end;
  RootNode.ImageIndex    := 7;
  RootNode.SelectedIndex := 7;
  // _________________________ Loop on nodes: all nodes are added under root ___
  for i := 0 to SOItems.AsArray.Length - 1 do
  begin
    // _______________________________________________________ Get node info ___
    SOItem   := SOItems.AsArray[i];
    ParentId := SOItem.AsArray[0].AsString;
    NodeText := SOItem.AsArray[1].AsString;
    NodeType := SOItem.AsArray[3].AsString;
    // ______________________ Patch root node name ("[" and "]" not allowed) ___
    if SameText(ParentId, '0') then
    begin
      // ______________________________________ Skip root item already added ___
      Continue;
    end
    else
    begin
      Name := SONames.AsArray[i].AsString;
    end;
    if SameText(ParentId, '[root]') then
    begin
      ParentId := '_root_';
    end;
    // ____________________________________________________ Add node to tree ___
    curItem := ResTree.Items.AddChild(RootNode, NodeText);
    // ______________________________________________________ Set item image ___
    ImgIdx := -1;
    if NodeType = 'table'          then ImgIdx := 16
    else if NodeType = 'prg'       then ImgIdx := 14
    else if NodeType = 'view'      then ImgIdx := 0
    else if NodeType = 'field'     then ImgIdx := 6
    else if NodeType = 'menu'      then ImgIdx := 12
    else if NodeType = 'var'       then ImgIdx := 17
    else if NodeType = 'par'       then ImgIdx := 13
    else if NodeType = 'form'      then ImgIdx := 9
    else if NodeType = 'ctrl'      then ImgIdx := 3
    else if NodeType = 'exp'       then ImgIdx := 18
    else if NodeType = 'act'       then ImgIdx := 1
    else if NodeType = 'aggregate' then ImgIdx := 2
    else if NodeType = 'step'      then ImgIdx := 15
    else if NodeType = 'io'        then ImgIdx := 10;
    curItem.ImageIndex    := ImgIdx;
    curItem.SelectedIndex := ImgIdx;
    // ______________________________________________ Add node to list by ID ___
    IdsList.AddObject(Name, curItem);
    // _______________________________________ Add node to list by Parent ID ___
    ParsList.Add(Name + '=' + ParentId);
  end;
  // _____________________________________________ Loop on nodes to reparent ___
  for i := 0 to ParsList.Count - 1 do
  begin
    Name     := ParsList.Names[i];
    ParentId := ParsList.Values[Name];
    if IdsList.IndexOf(Name) < 0 then
    begin
      // ________________________________ Skip nodes missing in list (never) ___
      Continue;
    end
    else if IdsList.IndexOf(ParentId) < 0 then
    begin
      // ____________________________________ Children of root are not moved ___
      Continue;
    end;
    curItem  := IdsList.Objects[IdsList.IndexOf(Name)] as TTreeNode;
    parItem  := IdsList.Objects[IdsList.IndexOf(ParentId)] as TTreeNode;
    curItem.MoveTo(parItem, naAddChild);
  end;
  IdsList.Free;
  ParsList.Free;
  Screen.Cursor := crDefault;
  ResTree.Select(RootNode);
end;


procedure Tf_crossref.FormShow(Sender: TObject);
var
  cmdTxt, jxrnt : String;
begin
  Screen.Cursor := crHourGlass;
  Memo1.Clear;
  // ================================== Cross reference by runtime Inspector ===
  ResTree.Items.Clear;
  // ___________________________________ Set STDOUT to Memo control on form  ___
  Memo1.Clear;
  cmdObj.OutputLines := Memo1.Lines;
  // _____________________________________________________ Get janox runtime ___
  jxrnt := f_work.getJanoxRuntime();
  if jxrnt = '' then
  begin
    Exit;
  end;
  cmdTxt := '';
  try
    // ________ Not from fWork (from other windows, like selections, ecc...) ___
    if (fromWin <> '') then
    begin
      // ______________________________________ Expressions selection window ___
      if (fromWin = 'exps') then
      begin
        // ____________________________________________ Compose command text ___
        cmdTxt := ' prg_exp ' + dm_form.t_programminome.Value + ' ' +
                  dm_form.t_espressioniidexp.AsString;
      end;
      fromWin := '';
    end
    // __________________________________________________________ Data model ___
    else if f_work.dbnav.DataSource = dm_form.ds_modelli then
    begin
      cmdTxt := ' model ' + dm_form.t_modelliidmodello.Value;
    end
    // _______________________________________________________________ Table ___
    else if f_work.dbnav.DataSource = dm_form.ds_tabelle then
    begin
      cmdTxt := ' table ' + dm_form.t_tabelleNome.Value;
    end
    // _________________________________________________________ Table Index ___
    else if f_work.dbnav.DataSource = dm_form.ds_indicitesta then
    begin
      cmdTxt := ' table_key ' + dm_form.t_tabelleNome.Value +
                ' ' + dm_form.t_indicitestanomekey.Value;
    end
    // _________________________________________________________ Table Field ___
    else if f_work.dbnav.DataSource = dm_form.ds_campi then
    begin
      cmdTxt := ' table_field ' + dm_form.t_tabelleNome.Value +
                ' ' + dm_form.t_campinomecampo.Value;
    end
    // _______________________________________________ Application Variables ___
    else if f_work.dbnav.DataSource = dm_form.ds_variabili_app then
    begin
      cmdTxt := ' app_var ' + dm_form.t_variabili_appalias.Value;
    end
    // _____________________________________________________________ Program ___
    else if f_work.PageControl1.ActivePage = f_work.ts_programs then
    begin
      cmdTxt := ' prg ' + dm_form.elenco_prgnome.Value;
    end
    // _____________________________________________________ Menu (NOT USED) ___
    else if f_work.PageControl1.ActivePage = f_work.ts_menu then
    begin
    end
    // _________________________________________________ From within program ___
    else if f_work.PageControl1.ActivePage = f_work.ts_programmi then
    begin
      // ______________________________________________________ Field select ___
      if f_work.dbnav.DataSource = dm_form.ds_select then
      begin
        // ____________________________________________ Compose command text ___
        cmdTxt := ' prg_field ' + dm_form.t_programminome.Value + ' ' +
                  dm_form.t_task.Lookup('Id',
                                        dm_form.t_selectidtask.Value,
                                        'nome') + ' ' +
                  dm_form.t_selectcon_nome.Value;
      end
      // _________________________________________________________ Parameter ___
      else if f_work.dbnav.DataSource = dm_form.ds_parametri then
      begin
        // ____________________________________________ Compose command text ___
        cmdTxt := ' prg_par ' + dm_form.t_programminome.Value + ' ' +
                  dm_form.t_parametriid.AsString;
      end
      // __________________________________________________________ Variable ___
      else if f_work.dbnav.DataSource = dm_form.ds_variabili_prg then
      begin
        // ____________________________________________ Compose command text ___
        cmdTxt := ' prg_field ' + dm_form.t_programminome.Value +
                  ' prg§_§var ' + dm_form.t_variabili_prgalias.Value;
      end
      // __________________________________________________ Action from menu ___
      else if (f_work.dbnav.DataSource = dm_form.ds_azioni) then
      begin
        // ____________________________________________ Compose command text ___
        cmdTxt := ' prg_act ' + dm_form.t_programminome.Value + ' ' +
                  dm_form.t_azioniazione.Value;
      end
      // ____________________________________ Action from operations (steps) ___
      else if (f_work.dbnav.DataSource = dm_form.ds_operazioni) then
      begin
        // ____________________________________________ Compose command text ___
        cmdTxt := ' prg_act ' + dm_form.t_programminome.Value + ' ' +
                  dm_form.t_operazioniazione.Value;
      end
      // _______________________________________________________ Expressions ___
      else if (f_work.dbnav.DataSource = dm_form.ds_espressioni) then
      begin
        // ____________________________________________ Compose command text ___
        cmdTxt := ' prg_exp ' + dm_form.t_programminome.Value + ' ' +
                  dm_form.t_espressioniidexp.AsString;
      end
      // ___________________________________________________________ Program ___
      else if (dm_form.t_programminome.Value <> '') then
      begin
        cmdTxt := ' prg ' + dm_form.t_programminome.Value;
      end
      else
      begin
        ShowMessage('Cross reference not implemented for selected item');
        Screen.Cursor := crDefault;
      end
    end
    else
    begin
      ShowMessage('Cross reference not implemented for selected item');
      Screen.Cursor := crDefault;
    end;
    // __________________________________________ Call runtime for Inspector ___
    if cmdTxt <> '' then
    begin
      // ______________________________________________ Compose command text ___
      cmdTxt := '"' + ExtractFileDir(Application.ExeName) + '\php.exe" "' +
                jxrnt + '" inspect "' +
                StrReplaceChar(f_work.workdir + 'htdocs\' +
                               f_work.progetto + '.php', '\', '/') + '" ' +
                f_work.user + cmdTxt;
      // ___________________________________________________ Execute command ___
      cmdObj.CommandLine := cmdTxt;
      cmdObj.Execute;
    end;
  except on E : Exception do
    Screen.Cursor := crDefault;
  end;
end;


procedure Tf_crossref.ResTreeDblClick(Sender: TObject);
begin
  ResTreeGoTo(ResTree.Selected);
end;


procedure Tf_crossref.ResTreeKeyPress(Sender: TObject; var Key: Char);
begin
  if (Ord(Key) = 13) then
  begin
    ResTreeGoTo(ResTree.Selected);
  end;
end;


procedure Tf_crossref.ResTreeGoTo(ItemNode: TTreeNode);
var
 a: Boolean;
begin
  with f_work do
  begin
    if (nodo_prg_attivo <> nil) and (nodo_prg_attivo.HasChildren) then
    begin
      salva_prg.Execute;
      nodo_prg_attivo.DeleteChildren();
    end;
    // _______________________________________________________________ Table ___
    if ItemNode.ImageIndex = 16 then
    begin
      // _____________________________________________________ Table in view ___
      if ItemNode.Parent.ImageIndex = 0 then
      begin
        dm_form.elenco_prg.Locate('nome', ItemNode.Parent.Parent.Text, []);
        f_work.carica_singolo_prg(Self);
        dm_form.t_task.Locate('Nome', ItemNode.Parent.Text, []);
        PageControl2.ActivePage := ts_main;
        dm_form.t_usa_file.Locate('con_nome', ItemNode.Text, []);
        DBGrid_dbfile.SetFocus;
      end
      // _______________________________________________ Table in repository ___
      else
      begin
        dm_form.t_tabelle.Locate('Nome', ItemNode.Text, []);
        PageControl1.ActivePage := ts_tabelle;
      end;
    end
    // _____________________________________________________________ Program ___
    else if ItemNode.ImageIndex = 14 then
    begin
      dm_form.elenco_prg.Locate('nome', ItemNode.Text, []);
      f_work.carica_singolo_prg(Self);
    end
    // ________________________________________________________________ View ___
    else if ItemNode.ImageIndex = 0 then
    begin
      dm_form.elenco_prg.Locate('nome', ItemNode.Parent.Text, []);
      f_work.carica_singolo_prg(Self);
      dm_form.t_task.Locate('Nome', ItemNode.Text, []);
      PageControl2.ActivePage := ts_main;
    end
    // _______________________________________________________________ Field ___
    else if ItemNode.ImageIndex = 6 then
    begin
      // ____________________________________ Field in table from repository ___
      if ItemNode.Parent.ImageIndex = 16 then
      begin
        dm_form.t_tabelle.Locate('Nome', ItemNode.Parent.Text, []);
        dm_form.t_campi.Locate('nomecampo', ItemNode.Text, []);
        PageControl1.ActivePage := ts_tabelle;
      end
      // _____________________________________________________ Filed in view ___
      else if ItemNode.Parent.ImageIndex = 0 then
      begin
        dm_form.elenco_prg.Locate('nome', ItemNode.Parent.Parent.Text, []);
        f_work.carica_singolo_prg(Self);
        dm_form.t_task.Locate('Nome', ItemNode.Parent.Text, []);
        PageControl2.ActivePage := ts_main;
        dm_form.t_select.Locate('con_nome',
                                Trim(ExtractWord(1, ItemNode.Text, ['('])),
                                []);
        DBGrid_select.SetFocus;
      end
      else
      begin
        ShowMessage('Field from unknown');
      end;
    end
    // _______________________________________________________ Menu (unused) ___
    else if ItemNode.ImageIndex = 12 then
    begin
    end
    // ____________________________________________________________ Variable ___
    else if ItemNode.ImageIndex = 17 then
    begin
      // ______________________________________________ Application variable ___
      if ItemNode.Parent.ImageIndex = 7 then
      begin
        dm_form.t_variabili_app.Locate('alias', ItemNode.Text, []);
        PageControl1.ActivePage := ts_appvars;
      end
      // __________________________________________________ Program variable ___
      else if ItemNode.Parent.ImageIndex = 14 then
      begin
        dm_form.elenco_prg.Locate('nome', ItemNode.Parent.Text, []);
        f_work.carica_singolo_prg(Self);
        PageControl2.ActivePage := ts_variabili_prg;
        dm_form.t_variabili_prg.Locate('alias', ItemNode.Text, []);
      end
      else
      begin
        ShowMessage('Variable from unknown');
      end;
    end
    // ___________________________________________________________ Parameter ___
    else if ItemNode.ImageIndex = 13 then
    begin
        dm_form.elenco_prg.Locate('nome', ItemNode.Parent.Text, []);
        f_work.carica_singolo_prg(Self);
        PageControl2.ActivePage := ts_parametri;
        dm_form.t_parametri.Locate('nome', ItemNode.Text, []);
    end
    // _______________________________________________________ Window (Form) ___
    else if ItemNode.ImageIndex = 9 then
    begin
      dm_form.elenco_prg.Locate('nome', ItemNode.Parent.Text, []);
      f_work.carica_singolo_prg(Self);
      PageControl2.ActivePage := ts_form;
      dm_form.t_form.Locate('nomeform', ItemNode.Text, []);
    end
    // ______________________________________________________ Control (TODO) ___
    else if ItemNode.ImageIndex = 3 then
    begin
      dm_form.elenco_prg.Locate('nome', ItemNode.Parent.Parent.Text, []);
      f_work.carica_singolo_prg(Self);
      PageControl2.ActivePage := ts_form;
      dm_form.t_form.Locate('nomeform', ItemNode.Parent.Text, []);
    end
    // __________________________________________________________ Expression ___
    else if ItemNode.ImageIndex = 18 then
    begin
      dm_form.elenco_prg.Locate('nome', ItemNode.Parent.Text, []);
      f_work.carica_singolo_prg(Self);
      PageControl2.ActivePage := ts_espressioni;
      dm_form.t_espressioni.Locate('idexp', StrToInt(ItemNode.Text), []);
    end
    // ______________________________________________________________ Action ___
    else if ItemNode.ImageIndex = 1 then
    begin
      dm_form.elenco_prg.Locate('nome', ItemNode.Parent.Text, []);
      f_work.carica_singolo_prg(Self);
      PageControl2.ActivePage := ts_azioni;
      dm_form.t_azioni.Locate('azione', ItemNode.Text, []);
    end
    // _________________________________________________________ Action step ___
    else if ItemNode.ImageIndex = 15 then
    begin
      dm_form.elenco_prg.Locate('nome', ItemNode.Parent.Parent.Text, []);
      f_work.carica_singolo_prg(Self);
      PageControl2.ActivePage := ts_azioni;
      dm_form.t_azioni.Locate('azione', ItemNode.Parent.Text, []);
      dm_form.t_operazioni.Locate('id',
                                 StrToInt(ExtractWord(1, ItemNode.Text, [' '])),
                                  []);
    end
    // ___________________________________________________________ Aggregate ___
    else if ItemNode.ImageIndex = 2 then
    begin
      dm_form.elenco_prg.Locate('nome', ItemNode.Parent.Parent.Text, []);
      f_work.carica_singolo_prg(Self);
      dm_form.t_task.Locate('Nome', ItemNode.Parent.Text, []);
      PageControl2.ActivePage := ts_taskprop;
      dbgrid_aggreg.SetFocus;
    end
    // IO
    else if ItemNode.ImageIndex = 10 then
    begin
    end;
  end;
end;

end.
