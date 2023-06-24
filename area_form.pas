unit area_form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DsnUnit, DsnSubMl, DsnSubGr, DsnSubDp, DsnProp, DsnSpctr,
  oggetti_form, StdCtrls, ExtCtrls, JvScrollPanel, JvComponent, DsnSelect,
  JvCaptionPanel, o2label, o2edit, o2image, o2separator, o2groupbox, o2checkbox,
  o2button, o2agente, o2textarea, Menus, o2table, DBCtrls, Math, ActnList,
  XPStyleActnCtrls, ActnMan, o2ListBox, ComCtrls, o2multipage, o2flowbox,
  o2frame, o2file, jclstrings, o2htmlarea, o2tree, o2imglist, o2progress,
  o2document, jpeg, jvgif, ExtDlgs, o2Map, DsnSub8, o2dbnavigator, o2navigator,
  DBClient, DB;

type
  Tf_areaform = class(TForm)
    DsnInspector1: TDsnInspector;
    DsnSwitch1: TDsnSwitch;
    DsnSelect1: TDsnSelect;
    o2label1: To2label;
    o2edit1: To2edit;
    o2textarea1: To2textarea;
    o2agente1: To2agente;
    o2checkbox1: To2checkbox;
    o2groupbox1: To2groupbox;
    o2separator1: To2separator;
    o2image1: To2image;
    PopupMenu1: TPopupMenu;
    back: TMenuItem;
    front: TMenuItem;
    DBNavigator1: TDBNavigator;
    Alignleft1: TMenuItem;
    Rightalign1: TMenuItem;
    Topalign1: TMenuItem;
    Bottomalign1: TMenuItem;
    MaxWidth1: TMenuItem;
    Minwidth1: TMenuItem;
    Maxheight1: TMenuItem;
    Minheight1: TMenuItem;
    o2file1: To2file;
    o2multipage1: To2multipage;
    Nextpage1: TMenuItem;
    Previouspage1: TMenuItem;
    ActionList1: TActionList;
    carica_controlli: TAction;
    salva_form: TAction;
    o2htmlarea1: To2htmlarea;
    o2document1: To2document;
    OpenPictureDialog1: TOpenPictureDialog;
    o2Map1: To2Map;
    o2button1: To2button;
    Dsn8Register1: TDsn8Register;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    unlink_parent: TAction;
    Cut1: TMenuItem;
    o2ListBox1: To2ListBox;
    o2dbnavigator1: To2dbnavigator;
    vertSpace1: TMenuItem;
    horiSpace1: TMenuItem;
    posizioni_in_tabella: TAction;
    o2table1: To2table;
    scrollRight1: TMenuItem;
    scrollLeft1: TMenuItem;
    DesignOFF1: TMenuItem;
    DesignON1: TMenuItem;
    Splitter1: TSplitter;
    ContentDock: TPanel;
    InspectorDock: TPanel;
    PaletteDock: TPanel;
    Splitter2: TSplitter;
    sepmenu1: TMenuItem;
    SaveToFile: TMenuItem;
    sepmenuTab: TMenuItem;
    sepmenuMultipage: TMenuItem;
    sepmenuAlign: TMenuItem;
    sepmenuSize: TMenuItem;
    sepmenuSpace: TMenuItem;
    sepmenuSend: TMenuItem;
    Exit1: TMenuItem;
    sepmenuExit: TMenuItem;
    o2tree1: To2tree;
    o2progress1: To2progress;
    o2imglist1: To2imglist;
    o2flowbox1: To2flowbox;
    o2frame1: To2frame;
    Selectchildren1: TMenuItem;
    Arrangechildren1: TMenuItem;

    procedure FormShow(Sender: TObject);
    procedure DsnInspector1BtnClick(Sender: TObject; Targets: TSelectedComponents;
      PropName: string; var Value: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frontClick(Sender: TObject);
    procedure backClick(Sender: TObject);
    procedure Alignleft1Click(Sender: TObject);
    procedure Rightalign1Click(Sender: TObject);
    procedure Topalign1Click(Sender: TObject);
    procedure Bottomalign1Click(Sender: TObject);
    procedure MaxWidth1Click(Sender: TObject);
    procedure Minwidth1Click(Sender: TObject);
    procedure Maxheight1Click(Sender: TObject);
    procedure Minheight1Click(Sender: TObject);
    procedure nuovo_controllo(Sender: TObject; Component: TComponent);
    procedure Exit1Click(Sender: TObject);
    procedure Exit2Click(Sender: TObject);
    procedure salva_controlliExecute(Sender: TObject; controllo: TWinControl);
    procedure carica_controlliExecute(Sender: TObject);
    procedure salva_formExecute(Sender: TObject);
    procedure attiva_figli_tabsheet(Sender: TObject; controllo: TWinControl;
                                    tab_attivo: integer);
    procedure flowbox_panels(flowbox: To2flowbox);
    procedure Nextpage1Click(Sender: TObject);
    procedure Previouspage1Click(Sender: TObject);
    procedure arrange_tabctrl(form_control: TWinControl);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure unlink_parentExecute(Sender: TObject);
    procedure change_padreExecute(Componente: TControl; Nuovo_parent: TWinControl);
    procedure Cut1Click(Sender: TObject);
    procedure centra_orizzClick(Sender: TObject);
    procedure centra_vertClick(Sender: TObject);
    procedure vertSpace1Click(Sender: TObject);
    procedure horiSpace1Click(Sender: TObject);
    procedure posizioni_in_tabellaExecute(Sender: TObject; tabella : To2table);
    function calcola_parent_info(controllo: TControl ; parentinfo : string): String;
    procedure scrollRight1Click(Sender: TObject);
    procedure scrollLeft1Click(Sender: TObject);
    procedure DesignOFF1Click(Sender: TObject);
    procedure DesignON1Click(Sender: TObject);
    function CercaElementoTree(st: String; Nodo: TTreeNode): Integer;
    procedure Splitter1Moved(Sender: TObject);
    procedure SaveObjectsToFile(Sender: TObject);
    procedure LoadObjectsFromFile(Sender: TObject; TextData: string);
    function ExpandAsString(const Value: TCtrlExpand): String;
    function StringAsExpand(Value: string): TCtrlExpand;
    procedure PopupMenu1Popup(Sender: TObject);
    procedure Selectchildren1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Arrangechildren1Click(Sender: TObject);

  private
    tmp_edit: To2edit;
    tmp_textarea: To2textarea;
    tmp_checkbox: To2checkbox;
    tmp_button: To2button;
    tmp_separator: To2separator;
    tmp_navigatore: To2dbnavigator;
    tmp_agente: To2agente;
    tmp_groupbox: To2groupbox;
    tmp_immagine: To2image;
    tmp_label: To2label;
    tmp_table: To2table;
    tmp_listbox: To2ListBox;
    tmp_file: To2file;
    tmp_multipage: To2multipage;
    tmp_flowbox: To2flowbox;
    tmp_tabctrl: TTabControl; { _______ For Multipage and Flowbox controls ___ }
    tmp_htmlarea: To2htmlarea;
    tmp_tree: To2tree;
    tmp_imglist: To2imglist;
    tmp_progress: To2progress;
    tmp_document: To2document;
    tmp_map: To2Map;
    larghezza_form, altezza_form: integer;
    larghezza_form_parent, altezza_form_parent: integer;
    SidePanelWidth: integer;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_areaform:  Tf_areaform;
  ultima_form: string;

implementation

uses dm, sceltacampiprg, sceltamodello, sceltaespressioni, scelta_css,
  sceltaazione, sceltaview, sceltacampofile, TypInfo, itemslist,
  ValEdit, StrUtils, tabdef, jbstr, work, valori_tstrings,
  scelta_tabsheet, import, Caption, dbnavprop, grid_options;

{$R *.dfm}

procedure Tf_areaform.FormShow(Sender: TObject);
var
  pos_controllo                                : TBookmark;
  xform                                        : TJvCaptionPanel;
  xformarea                                    : TDsnStage;
  i, parent_top, parent_left                   : integer;
  parent_orizzontalAlign, parent_verticalAlign : string;
begin
  DsnSwitch1.DesignOff;
  // ______________________________________________________ Design area size ___
  SidePanelWidth    := ContentDock.Width;
  Self.Width        := StrToInt(f_work.e_res_x.Text) + SidePanelWidth;
  Self.Height       := StrToInt(f_work.e_res_y.Text);
  larghezza_form    := Self.Width;
  altezza_form      := Self.Height;
  // ______________________________________________ Prepare controls palette ___
  f_oggettiForm.ComboBox1.Items.Clear;
  f_oggettiForm.ComboBox1.Text := '';
  f_oggettiForm.ManualDock(f_areaform.PaletteDock);
  DsnInspector1.DockTo(f_areaform.InspectorDock);
  // _________________________________________________ Project images folder ___
  OpenPictureDialog1.InitialDir := f_work.workdir + 'htdocs\img';
  // ____________________________________________________________ Load forms ___
  dm_form.t_form.First;
  repeat
    begin
      xform                 := TJvCaptionPanel.Create(self);
      xform.Parent          := self;
      xform.Name            := dm_form.t_formNomeForm.Value;
      xform.Caption         := '(' + dm_form.t_formNomeForm.Value + ') ' +
                               dm_form.t_formDicitura.Value;
      xform.Tag             := 99;
      parent_top            := 0;
      parent_left           := 0;
      altezza_form_parent   := 0;
      larghezza_form_parent := 0;
      // _____________________ If form is child get parent size and position ___
      if dm_form.t_formParentForm.Value <> '' then
      begin
        parent_top := dm_form.t_form.Lookup('nomeform',
                                            dm_form.t_formParentForm.AsString,
                                            'top');
        parent_left := dm_form.t_form.Lookup('nomeform',
                                             dm_form.t_formParentForm.AsString,
                                             'left');
        parent_orizzontalalign := dm_form.t_form.Lookup('nomeform',
                                              dm_form.t_formParentForm.AsString,
                                                        'orizzalign');
        parent_verticalalign := dm_form.t_form.Lookup('nomeform',
                                              dm_form.t_formParentForm.AsString,
                                                      'vertalign');
        altezza_form_parent   := dm_form.t_form.Lookup('nomeform',
                                              dm_form.t_formParentForm.AsString,
                                                       'altezza');
        larghezza_form_parent := dm_form.t_form.Lookup('nomeform',
                                              dm_form.t_formParentForm.AsString,
                                                       'larghezza');
        if parent_orizzontalAlign = 'Center' then
        begin
          parent_left := ((larghezza_form + SidePanelWidth) div 2) -parent_left;
        end;
        if parent_orizzontalAlign = 'Right' then
        begin
          parent_left := larghezza_form - parent_left - larghezza_form_parent;
        end;
        if parent_verticalAlign = 'Middle' then
        begin
          parent_top := (altezza_form div 2) - parent_top;
        end;
        if parent_verticalAlign = 'Bottom' then
        begin
          parent_top := altezza_form - parent_top - altezza_form_parent;
        end;
      end;
      // _________________________________________________________ Align TOP ___
      if dm_form.t_formVertAlign.Value = 'Top' then
      begin
        xform.Top := dm_form.t_formTop.Value + parent_top;
      end;
      // ______________________________________________________ Align BOTTOM ___
      if dm_form.t_formVertAlign.Value = 'Bottom' then
      begin
        xform.Top := altezza_form -
                     dm_form.t_formtop.Value -
                     dm_form.t_formaltezza.Value
      end;
      // ______________________________________________________ Align MIDDLE ___
      if dm_form.t_formVertAlign.Value = 'Middle' then
      begin
        xform.Top := (altezza_form div 2) - dm_form.t_formTop.Value
      end;
      // ________________________________________________________ Align LEFT ___
      if dm_form.t_formOrizzAlign.Value = 'Left' then
      begin
        if larghezza_form_parent <> 0 then
        begin
          xform.Left := dm_form.t_formLeft.Value + parent_left;
        end
        else
        begin
          xform.Left := dm_form.t_formLeft.Value + SidePanelWidth;
        end;
      end;
      // _______________________________________________________ Align RIGHT ___
      if dm_form.t_formOrizzAlign.Value = 'Right' then
      begin
        xform.Left := larghezza_form -
                      dm_form.t_formLeft.Value -
                      dm_form.t_formLarghezza.Value;
      end;
      // ______________________________________________________ Align CENTER ___
      if dm_form.t_formOrizzAlign.Value = 'Center' then
      begin
        xform.Left := ((larghezza_form + SidePanelWidth) div 2) -
                      dm_form.t_formLeft.Value;
      end;
      xform.Height          := dm_form.t_formAltezza.Value;
      xform.Width           := dm_form.t_formLarghezza.Value;
      xform.CaptionPosition := dpTop;
      // _______________________________________________ Design area in form ___
      xformarea             := TDsnStage.Create(self);
      xformarea.Name        := '_stage_' + dm_form.t_formNomeForm.Value;
      xformarea.Parent      := xform;
      xformarea.Align       := alClient;
      xformarea.Tag         := 99;
      xformarea.Caption     := '';
      xformarea.CoverMenu   := PopupMenu1;
      xformarea.BevelInner  := bvNone;
      xformarea.BevelOuter  := bvNone;
      // __________________________________________ Set design grid snapshot ___
      xformarea.Rubberband.MoveWidth  := 10;
      xformarea.Rubberband.MoveHeight := 10;
      // _____________________________________________ On create new control ___
      xformarea.OnControlCreate := nuovo_controllo;
      // _____________________________________________ Show form if selected ___
      xform.Visible := dm_form.t_formTmpSelez.Value;
      // ____________________________________ Add form to selection combobox ___
      if (dm_form.t_formTmpSelez.Value) then
      begin
        i := f_oggettiForm.ComboBox1.Items.Add(dm_form.t_formNomeForm.Value);
        if (dm_form.t_formNomeForm.Value = ultima_form) then
        begin
          f_oggettiForm.ComboBox1.ItemIndex := i;
          Dsn8Register1.DsnStage            := xformarea;
          xformarea.Color                   := RGB(230, 226, 221);
        end
        else
        begin
          xformarea.Color                   := clWhite;
        end;
        // nel caso non ci sia prende la prima ???
        if (f_oggettiForm.ComboBox1.Text = '') then
        begin
          f_oggettiForm.ComboBox1.ItemIndex := i;
          Dsn8Register1.DsnStage            := xformarea;
          xformarea.Color                   := RGB(230, 226, 221);
        end;
      end;
      // ________________________________________________ Load form controls ___
      dm_form.t_controlliForm.First;
      while not (dm_form.t_controlliForm.EOF) do
      begin
        pos_controllo := dm_form.t_controlliForm.GetBookmark;
        while (FindComponent(dm_form.t_controlliFormNomeControllo.Value) = nil)
        do
        begin
          carica_controlliExecute(self);
//          arrange_tabctrl(xformarea);
          {*
           * If parent control not found then t_controlliForm has been
           * relocated by carica_controlliExecute
           *}
          dm_form.t_controlliForm.GotoBookmark(pos_controllo);
        end;
        dm_form.t_controlliForm.Next;
      end;
    end;
    arrange_tabctrl(xformarea);
    dm_form.t_form.Next;
  until dm_form.t_form.EOF;
  // ____________________________________________________ Enable design mode ___
  DsnSwitch1.DesignOn;
end;


{*
 * Handles click on selection buttons in inspector properties
 *}
procedure Tf_areaform.DsnInspector1BtnClick(Sender: TObject;
                                            Targets: TSelectedComponents;
                                            PropName: string;
                                            var Value: string);
var
  scelte, appoggio,temp, chiave, valore, view, field: string;
  i, expr_tmp: integer;
  tmp_controllo : TWinControl;

begin
  // _______________________________________________________ Field selection ___
  if PropName = 'Field' then
  begin
    // ______________________________________________ Preset to actual value ___
    f_sceltacampiprg.scelta := Value;
    // _______________ If control is in grid show fields from grid view only ___
    if Dsn8Register1.DsnStage.Targets[0].Parent.ClassName = 'To2table' then
    begin
      tmp_table := Dsn8Register1.DsnStage.Targets[0].Parent as To2table;
      view      := tmp_table.View;
    end;
    // ___________ If view is set for control show fields from set view only ___
    if GetPropValue(Dsn8Register1.DsnStage.Targets[0], 'View', True) <> '' then
    begin
      view := GetPropValue(Dsn8Register1.DsnStage.Targets[0], 'View', True);
    end;
    // ______________________________________ Call field selection interface ___
    If (f_work.call_scelta_campoprg(Value,
                                    false,
                                    false,
                                    true,
                                    true,
                                    view)) <> '' then
      begin
        Value := f_sceltacampiprg.ListView1.Selected.Caption;
        view  := StringReplace(ExtractWord(1,
                                           f_sceltacampiprg.scelta,
                                           [chr(129)]),
                               chr(127),
                               '',
                               [rfReplaceAll]);
      // _________ Change controls color and label to indicate field binding ___
      if Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2edit' then
      begin // ________________________________________________________ EDIT ___
        tmp_edit       := findcomponent(Dsn8Register1.DsnStage.Targets[0].Name)
                          as To2edit;
        tmp_edit.Color := clWindow;
        tmp_edit.View  := view;
        tmp_edit.Text  := Value + '(' + view + ')';
      end;
      if Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2textarea' then
      begin // ___________________________________________________ TEXT-AREA ___
        tmp_textarea := findcomponent(Dsn8Register1.DsnStage.Targets[0].Name)
                        as To2textarea;
        tmp_textarea.Color      := clWindow;
        tmp_textarea.View       := view;
        tmp_textarea.Lines.Text := Value + '(' + view + ')';
      end;
      if Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2checkbox' then
      begin // ____________________________________________________ CHECKBOX ___
        tmp_checkbox := findcomponent(Dsn8Register1.DsnStage.Targets[0].Name)
                        as To2checkbox;
        tmp_checkbox.Color := clWindow;
        tmp_checkbox.View  := view;
      end;
      if Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2ListBox' then
      begin // ____________________________________________________ COMBOBOX ___
        tmp_listbox := findcomponent(Dsn8Register1.DsnStage.Targets[0].Name)
                       as To2ListBox;
        tmp_listbox.Color    := clWindow;
        tmp_listbox.Items[0] := Value + '(' + view + ')';
        tmp_listbox.View     := view;
      end;
      if Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2multipage' then
      begin // ___________________________________________________ MULTIPAGE ___
        tmp_multipage := findcomponent(Dsn8Register1.DsnStage.Targets[0].Name)
                         as To2multipage;
        tmp_multipage.View := view;
      end;
      if Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2tree' then
      begin // ____________________________________________________ TREEVIEW ___
        tmp_tree := findcomponent(Dsn8Register1.DsnStage.Targets[0].Name)
                    as To2tree;
        tmp_tree.View := view;
      end;
      if Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2imglist' then
      begin // _____________________________________________________ IMGLIST ___
        tmp_imglist := findcomponent(Dsn8Register1.DsnStage.Targets[0].Name)
                       as To2imglist;
        tmp_imglist.View := view;
      end;
      if Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2file' then
      begin // _________________________________________________ FILE-UPLOAD ___
        tmp_file      := findcomponent(Dsn8Register1.DsnStage.Targets[0].Name)
                         as To2file;
        tmp_file.View := view;
      end;
    end;
  end;
  // ___________________________________________ Properties with expressions ___
  if (PropName = 'Visibile') or
     (PropName = 'Abilitato') or
     (PropName = 'HideIndicator') or
     (PropName = 'File_name') or
     (PropName = 'File_name_rollover') or
     (PropName = 'Submitonchange') or
     (PropName = 'Html') or
     (PropName = 'Nodes') or
     (PropName = 'ImgItems') or
     (PropName = 'Value') or
     (PropName = 'Path') or
     (PropName = 'Save_as') or
     (PropName = 'TooltipExp') or
     (Pos('Visible', PropName) > 0) or
     (Pos('Enable', PropName) > 0) then
  begin
    // ________________________________________________ Preset current value ___
    if Value <> '' then
    begin
      expr_tmp := StrToInt(Value)
    end
    else
    begin
      expr_tmp := 0;
    end;
    // __________________________________ Call expresion selection interface ___
    expr_tmp := f_work.call_scelta_exp(expr_tmp);
    if expr_tmp <> 0 then
    begin
      Value := IntToStr(expr_tmp);
    end;
  end;
  // ________________________________________________________ Picture (mask) ___
  if (PropName = 'Mask') then
  begin
    f_sceltamodel.attiva_espressione := True;
    f_sceltamodel.vreturn            := Value;
    f_sceltamodel.ShowModal;
    if f_sceltamodel.ModalResult = mrOk then
    begin
      Value := f_sceltamodel.vreturn;
    end;
  end;
  // _______________________________________________ Properties with caption ___
  if (PropName = 'o2Label') or
     (PropName = 'Messaggio') or
     (Pos('Message', PropName) > 0) then
  begin
    // _______________________________________________ Caption by expression ___
    if LeftStr(Value, 7) = '[o2exp_' then
    begin
      f_caption.e_exp.Text     := LeftStr(Trim(Copy(Value, 8, 8)),
                                          Length(Trim(Copy(Value, 8, 8))) - 1);
      f_caption.e_caption.Text := '';
    end
    // ___________________________________________________ Caption by string ___
    else
    begin
      f_caption.e_exp.Text     := '';
      f_caption.e_caption.Text := Value;
    end;
    // ______________________________________ Call caption editing interface ___
    f_caption.ShowModal;
    if f_caption.ModalResult = mrOk then
    begin
      // _________________________________________ Caption set by expression ___
      if f_caption.e_exp.Text <> '' then
      begin
        Value := '[o2exp_' + f_caption.e_exp.Text + ']';
      end
      // _____________________________________________ Caption set by string ___
      else
      begin
        Value := f_caption.e_caption.Text;
      end;
    end;
  end;
  // ___________________________________________________ Image file property ___
  if (PropName = 'ImageFile') then
  begin
    if OpenPictureDialog1.Execute then
    begin
      // ________________________________________ Get file name without path ___
      Value := Trim(Copy(OpenPictureDialog1.FileName,
                         Length(OpenPictureDialog1.InitialDir) + 2, 3000))
    end;
  end;
  // ___________________________________________________________ CSS classes ___
  if (PropName = 'Vocecss') or (LeftStr(PropName, 3) = 'Css') then
  begin
    // _______________________________________________ Preset CSS expression ___
    if LeftStr(Value, 7) = '[o2exp_' then
    begin
      f_scelta_css.e_expr.Text := f_import.decodifica_exp(Value,
                                                 dm_form.t_programminome.Value);
    end
    else
    begin
      f_scelta_css.e_expr.Text := '';
    end;
    // ________________________________________ Call CSS selection interface ___
    f_scelta_css.ShowModal;
    if f_scelta_css.ModalResult = mrOk then
    begin
      Value := f_scelta_css.vreturn;
    end;
  end;
  // _________________________________________________________ View selection___
  if (PropName = 'View') then
  begin
    // ____________________ Block view selection for navigator inside a grid ___
    if (Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2dbnavigator') and
       (Dsn8Register1.DsnStage.Targets[0].Parent.ClassName = 'To2table') then
    begin
      ShowMessage('This property is mandatory from parent grid control');
    end
    else
    begin
      // __________________ For navigator and grid hide local variables view ___
      if (Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2dbnavigator') or
         (Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2table')  then
      begin
        f_sceltaview.solo_view := true;
      end
      else
      // ______________________ For other controls show local variables view ___
      begin
        f_sceltaview.solo_view := false;
      end;
      // _______________________________________________ Preset actual value ___
      f_sceltaview.scelta := Value;
      // _____________________________________ Call view selection interface ___
      f_sceltaview.ShowModal;
      if f_sceltaview.ModalResult = mrOk then
      begin
        Value := f_sceltaview.scelta;
        // _____________________________ For containers change children view ___
        tmp_controllo := Dsn8Register1.DsnStage.Targets[0] as TWinControl;
        for i:= 0 to tmp_controllo.ControlCount - 1 do
        begin
          if (tmp_controllo.Controls[i].ClassName = 'To2dbnavigator') or
             (tmp_controllo.Controls[i].ClassName = 'To2edit') or
             (tmp_controllo.Controls[i].ClassName = 'To2listcombo') then
          begin
            SetPropValue(tmp_controllo.Controls[i], 'View', Value);
          end;
        end;
      end;
    end;
  end;
  // ____________________________________ Multipage and Flowbox pages (tabs) ___
  if (Propname = 'Tabs') then
  begin
    tmp_tabctrl := findcomponent(Dsn8Register1.DsnStage.Targets[0].Name)
                   as TTabControl;
    f_tstrings.Memo1.Lines := tmp_tabctrl.Tabs;
    f_tstrings.Caption     := 'List of values';
    f_tstrings.ShowModal;
    if f_tstrings.ModalResult = mrOk then
    begin
      tmp_tabctrl.Tabs := f_tstrings.Memo1.Lines;
      // _______________________ Flowbox: verify each page has its own panel ___
      if Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2flowbox' then
      begin
        flowbox_panels(tmp_tabctrl as To2flowbox);
      end;
      attiva_figli_tabsheet(self, tmp_tabctrl, 0);
    end;
  end;
  // _____________________________________ Multipage and Flowbox active page ___
  if (Propname = 'TabIndex') then
  begin
    tmp_tabctrl := findcomponent(Dsn8Register1.DsnStage.Targets[0].Name)
                   as TTabControl;
    f_scelta_tabsheet.ListBox1.Items := tmp_tabctrl.Tabs;
    if Value = '' then
    begin
      Value := '0';
    end;
    f_scelta_tabsheet.ListBox1.ItemIndex := StrToInt(Value);
    f_scelta_tabsheet.ShowModal;
    if f_scelta_tabsheet.ModalResult = mrOk then
    begin
      Value := IntToStr(f_scelta_tabsheet.ListBox1.ItemIndex);
      attiva_figli_tabsheet(self, tmp_tabctrl, StrToInt(Value));
    end;
  end;
  // __________________________________ Container informations (parent-info) ___
  if (PropName = 'Parentinfo') then
  begin
    // _________________________________________ If control is inside a grid ___
    if Dsn8Register1.DsnStage.Targets[0].Parent.ClassName = 'To2table' then
    begin
      // _______________________________________________________________ Row ___
      f_tabdef.e_line.Text := trim(ExtractWord(1, Value, ['§']));
      f_tabdef.e_line.Text := StringReplace(f_tabdef.e_line.Text,
                                            '"',
                                            '',
                                            [rfReplaceAll]);
      // _______________________________________________________ From column ___
      f_tabdef.e_dacol.Text := trim(ExtractWord(2, Value, ['§']));
      f_tabdef.e_dacol.Text := StringReplace(f_tabdef.e_dacol.Text,
                                             '"',
                                             '',
                                             [rfReplaceAll]);
      // _________________________________________________________ To column ___
      f_tabdef.e_acol.Text := trim(ExtractWord(3, Value, ['§']));
      f_tabdef.e_acol.Text := StringReplace(f_tabdef.e_acol.Text,
                                            '"',
                                            '',
                                            [rfReplaceAll]);
      // ______________________________________________________ Column title ___
      f_tabdef.e_label.Text  := trim(ExtractWord(4, Value, ['§']));
      // ______________________________________________ Column header action ___
      f_tabdef.e_action.Text := trim(ExtractWord(12, Value, ['§']));
      f_tabdef.e_action.Text := Copy(f_tabdef.e_action.Text,
                                     2,
                                     Length(f_tabdef.e_action.Text) - 2);
      // _______________________________________________ Title by expression ___
      if Pos(dm_form.t_programminome.Value + '_exp_',
             f_tabdef.e_label.Text) <> 0 then
      begin
        f_tabdef.e_label.Text := f_import.decodifica_exp_stringa(
                                                 f_tabdef.e_label.Text,
                                                 dm_form.t_programminome.Value);
      end
      // ___________________________________________________ Title by string ___
      else
      begin
        f_tabdef.e_label.Text := Copy(f_tabdef.e_label.Text,
                                      2,
                                      Length(f_tabdef.e_label.Text) - 2)
      end;
      // _____________________________________________________ Column footer ___
      f_tabdef.e_footer.Text := Trim(ExtractWord(9, Value, ['§']));
      // ______________________________________________ Footer by expression ___
      if Pos(dm_form.t_programminome.Value + '_exp_',
             f_tabdef.e_footer.Text) <> 0 then
      begin
        f_tabdef.e_footer.Text := f_import.decodifica_exp_stringa(
                                                 f_tabdef.e_footer.Text,
                                                 dm_form.t_programminome.Value);
      end
      // __________________________________________________ Footer by string ___
      else
      begin
        f_tabdef.e_footer.Text := Copy(f_tabdef.e_footer.Text,
                                       2,
                                       Length(f_tabdef.e_footer.Text) - 2);
      end;
      // __________________________________________________ Hide sort button ___
      f_tabdef.CheckBox1.Checked := Trim(ExtractWord(5, Value, ['§'])) = 'True';
      // ____________________________________ Hide repeated values: NOT USED ___
//    f_tabdef.CheckBox2.Checked := Trim(ExtractWord(7, Value, ['§'])) = 'True';
      // ___________________________________________________________ CSS row ___
      f_tabdef.e_css.Text := Trim(ExtractWord(6, Value, ['§']));
      // _____________________________________________ CSS row by expression ___
      if Pos(dm_form.t_programminome.Value + '_exp_',
             f_tabdef.e_css.Text) <> 0 then
      begin
        f_tabdef.e_css.Text := f_import.decodifica_exp_stringa(
                                                 f_tabdef.e_css.Text,
                                                 dm_form.t_programminome.Value);
      end
      // _________________________________________________ CSS row by string ___
      else
      begin
        f_tabdef.e_css.Text := Copy(f_tabdef.e_css.Text,
                                    2,
                                    Length(f_tabdef.e_css.Text) - 2);
      end;
      // ________________________________________________________ CSS header ___
      f_tabdef.e_cssheader.Text := Trim(ExtractWord(8, Value, ['§']));
      // __________________________________________ CSS header by expression ___
      if Pos(dm_form.t_programminome.Value + '_exp_',
             f_tabdef.e_cssheader.Text) <> 0 then
      begin
        f_tabdef.e_cssheader.Text := f_import.decodifica_exp_stringa(
                                                 f_tabdef.e_cssheader.Text,
                                                 dm_form.t_programminome.Value);
      end
      // ______________________________________________ CSS header by string ___
      else
      begin
        f_tabdef.e_cssheader.Text := Copy(f_tabdef.e_cssheader.Text,
                                          2,
                                         Length(f_tabdef.e_cssheader.Text) - 2);
      end;
      // ________________________________________________________ CSS footer ___
      f_tabdef.ed_cssfooter.Text := trim(ExtractWord(10, Value, ['§']));
      // __________________________________________ CSS footer by espression ___
      if Pos(dm_form.t_programminome.Value + '_exp_',
             f_tabdef.ed_cssfooter.Text) <> 0 then
      begin
        f_tabdef.ed_cssfooter.Text := f_import.decodifica_exp_stringa(
                                                 f_tabdef.ed_cssfooter.Text,
                                                 dm_form.t_programminome.Value);
      end
      // ______________________________________________ CSS footer by string ___
      else
      begin
        f_tabdef.ed_cssfooter.Text := Copy(f_tabdef.ed_cssfooter.Text,
                                           2,
                                        Length(f_tabdef.ed_cssfooter.Text) - 2);
      end;
      // ______________________________________ Column description (tooltip) ___
      f_tabdef.e_tooltip.Text := trim(ExtractWord(11, Value, ['§']));
      // ______________________________________ Column tooltip by espression ___
      if Pos(dm_form.t_programminome.Value + '_exp_',
             f_tabdef.e_tooltip.Text) <> 0 then
      begin
        f_tabdef.e_tooltip.Text := f_import.decodifica_exp_stringa(
                                                        f_tabdef.e_tooltip.Text,
                                                 dm_form.t_programminome.Value);
      end
      // __________________________________________ Column tooltip by string ___
      else
      begin
        f_tabdef.e_tooltip.Text := Copy(f_tabdef.e_tooltip.Text,
                                        2,
                                        Length(f_tabdef.e_tooltip.Text) - 2);
      end;
      // ________________________________________ Show parent-info interface ___
      f_tabdef.ShowModal;
      if f_tabdef.ModalResult = mrOk then
      begin
        Value := f_tabdef.scelta;
      end;
    end;
    // _______________________ If control is inside a multipage or a flowbox ___
    if (Dsn8Register1.DsnStage.Targets[0].Parent.ClassName = 'To2multipage') or
       (Dsn8Register1.DsnStage.Targets[0].Parent.ClassName = 'To2flowbox') then
    begin
      tmp_tabctrl := findcomponent(
                                  Dsn8Register1.DsnStage.Targets[0].Parent.Name)
                     as To2flowbox;
      f_scelta_tabsheet.ListBox1.Items := tmp_tabctrl.Tabs;
      if Value = '' then
      begin
        Value := '0';
      end;
      f_scelta_tabsheet.ListBox1.ItemIndex := StrToInt(Value);
      f_scelta_tabsheet.ShowModal;
      if f_scelta_tabsheet.ModalResult = mrOk then
      begin
        Value := IntToStr(f_scelta_tabsheet.ListBox1.ItemIndex);
      end;
    end;
  end;
  // ________________________________________________________ Combobox items ___
  if (PropName = 'Scelte') then
  begin
    dm_form.t_value_list.EmptyDataSet;
    f_listbox.e_exp.Clear;
    f_listbox.e_view.Clear;
    f_listbox.e_key.Clear;
    f_listbox.e_text.Clear;
    // _____________________________________________________ Items from view ___
    if leftstr(Value, 12) = 'o2_view2list' then
    begin
      temp := trim(StrMid(Value, 13, 3000));
      temp := StrMid(temp, 2, StrLength(temp) - 2);
      temp := StringReplace(temp, '"', '', [rfReplaceAll]);
      f_listbox.e_view.Text := trim(ExtractWord(1, temp, [',']));
      f_listbox.e_key.Text  := trim(ExtractWord(2, temp, [',']));
      f_listbox.e_text.Text := trim(ExtractWord(3, temp, [',']));
      // _____________________ Items added to view with expression (presets) ___
      temp                  := trim(ExtractWord(4, temp, [',']));
      if temp <> '' then
      begin
        temp                 := Trim(Copy(temp,
                                      Length(dm_form.t_programminome.Value) + 6,
                                          10));
        f_listbox.e_exp.Text := Copy(temp, 1, Length(temp) - 2);
      end;
    end
    else
    begin
      // _____________________________________________________ Items by list ___
      if (leftstr(Value, 6) <> '[o2exp') then
      begin
        dm_form.t_value_list.EmptyDataSet;
        temp := Value;
        appoggio := 'start';
        // _________________________ Split string and insert key-value pairs ___
        while appoggio <> '' do
        begin
          appoggio := StrToken(temp, ',');
          appoggio := StringReplace(appoggio, '"', '', [rfReplaceAll]);
          chiave   := trim(ExtractWord(1, appoggio, ['=']));
          valore   := trim(ExtractWord(2, appoggio, ['>']));
          if (chiave <> '') or (valore <> '') then
          begin
            dm_form.t_value_list.InsertRecord([chiave, valore]);
          end;
        end;
      end
      // _______________________________________________ Items by expression ___
      else
      begin
        f_listbox.e_exp.Text := leftstr(trim(copy(Value, 8, 8)),
                                        length(trim(copy(Value, 8, 8))) - 1);
      end
    end;
    // __________________________________________ Show items definition form ___
    f_listbox.ShowModal;
    if f_listbox.ModalResult = mrOk then
    begin
      // ___________________________________________________ Items from list ___
      if (f_listbox.e_exp.Text = '') and
         (f_listbox.e_view.Text = '') and
         (f_listbox.e_key.Text = '') and
         (f_listbox.e_text.Text = '') then
      begin
        dm_form.t_value_list.First;
        // ____________________________________________ Loop on listed items ___
        while not (dm_form.t_value_list.EOF) do
        begin
          scelte := trim(scelte) + '"' + dm_form.t_value_listchiave.Value +
                    '" => "' + dm_form.t_value_listvalore.Value + '", ';
          dm_form.t_value_list.Next;
        end; // __________________________________________ End loop on items ___
        // _________________________________________________ Remove last "," ___
        Value := copy(scelte, 1, length(trim(scelte)) - 1);
      end
      // ___________________________________________________ Items from view ___
      else if (f_listbox.e_view.Text <> '') and
              (f_listbox.e_key.Text <> '') and
              (f_listbox.e_text.Text <> '') then
      begin
        Value := 'o2_view2list("' + f_listbox.e_view.Text + '", "' +
                                    f_listbox.e_key.Text + '", "' +
                                    f_listbox.e_text.Text + '"';
        // ___________________ Items added to view with expression (presets) ___
        if f_listbox.e_exp.Text <> '' then
        begin
          Value := Value + ', ' +
                   dm_form.t_programminome.Value + '_exp_' +
                   f_listbox.e_exp.Text + '()';
        end;
        Value := Value + ')';
      end
      // _______________________________________________ Items by expression ___
      else if f_listbox.e_exp.Text <> '' then
      begin
        Value := '[o2exp_' + f_listbox.e_exp.Text + ']';
      end;
    end;
  end;
  // _______________________________________________ Grid options (GridPlus) ___
  if (PropName = 'Options') then
  begin
    with f_grid_options do
    begin
      if (Value = 'Default') or (Value = '') then
      begin
        f_grid_options.override_defaults.Checked := False;
        f_grid_options.override_defaultsClick(f_grid_options.override_defaults);
        cols_vis.Checked    := False;
        cols_ord.Checked    := False;
        cols_size.Checked   := False;
        recs_filter.Checked := False;
        recs_sort.Checked   := False;
        rows_num.Checked    := False;
        data_export.Checked := False;
        recs_delete.Checked := False;
      end
      else
      begin
        override_defaults.Checked := True;
        override_defaultsClick(f_grid_options.override_defaults);
        temp := Value;
        cols_vis.Checked    := (trim(ExtractWord(1, temp, [','])) = '1');
        cols_ord.Checked    := (trim(ExtractWord(2, temp, [','])) = '1');
        cols_size.Checked   := (trim(ExtractWord(3, temp, [','])) = '1');
        recs_filter.Checked := (trim(ExtractWord(4, temp, [','])) = '1');
        recs_sort.Checked   := (trim(ExtractWord(5, temp, [','])) = '1');
        rows_num.Checked    := (trim(ExtractWord(6, temp, [','])) = '1');
        data_export.Checked := (trim(ExtractWord(7, temp, [','])) = '1');
        recs_delete.Checked := (trim(ExtractWord(8, temp, [','])) = '1');
      end;
    end;
    if f_grid_options.ShowModal = mrOK then
    begin
      with f_grid_options do
      begin
        if override_defaults.Checked then
        begin
          Value := IfThen(cols_vis.Checked, '1', '0')    + ',' +
                  IfThen(cols_ord.Checked, '1', '0')    + ',' +
                  IfThen(cols_size.Checked, '1', '0')   + ',' +
                  IfThen(recs_filter.Checked, '1', '0') + ',' +
                  IfThen(recs_sort.Checked, '1', '0')   + ',' +
                  IfThen(rows_num.Checked, '1', '0')    + ',' +
                  IfThen(data_export.Checked, '1', '0') + ',' +
                  IfThen(recs_delete.Checked, '1', '0');
        end
        else
        begin
          Value := 'Default';
        end;
      end;
    end;
  end;
  // ____________________________________ Submit on change and other actions ___
  if (PropName = 'Azione') or
     (Pos('Action', PropName) > 0) or
     (PropName = 'Delete') or
     (PropName = 'StartAct') or
     (PropName = 'EndAct') then
  begin
    Value:= f_work.call_scelta_azione(Value);
  end;

end;


procedure Tf_areaform.FormClose(Sender: TObject; var Action: TCloseAction);
var
  controllo:  TControl;
  componente: TComponent;
begin
  // riabilita i tasti funzione SEMPRE
  f_work.create.Enabled := True;
  f_work.delete.Enabled := True;
  f_work.cancel.Enabled := True;

  if f_work.mycheck_local then
  begin
    dm_form.tmp_postab.EmptyDataSet;
    salva_form.Execute;
  end;

  //chiude tutto ed esce
  DsnSwitch1.DesignOff;
  dm_form.t_form.First;
  repeat
    //elimina precedente
    controllo := FindChildControl(dm_form.t_formnomeform.Text);
    if (controllo <> nil) then
    begin
      RemoveControl(controllo)
    end;

    componente := FindComponent(dm_form.t_formnomeform.Text);
    if assigned(componente) then
    begin
      RemoveComponent(componente)
    end;

    //elimina precedente
    controllo := FindChildControl('_stage_' + dm_form.t_formnomeform.Text);
    if (controllo <> nil) then
    begin
      RemoveControl(controllo)
    end;

    componente := FindComponent('_stage_' + dm_form.t_formnomeform.Text);
    if assigned(componente) then
    begin
      RemoveComponent(componente)
    end;

    FreeAndNil(controllo);
    FreeAndNil(componente);

    dm_form.t_form.Next;
  until dm_form.t_form.EOF;

  f_oggettiform.Close;
end;


procedure Tf_areaform.frontClick(Sender: TObject);
begin
  Dsn8Register1.DsnStage.Targets[0].BringToFront;
end;

procedure Tf_areaform.backClick(Sender: TObject);
begin
  Dsn8Register1.DsnStage.Targets[0].SendToBack;
end;



procedure Tf_areaform.Alignleft1Click(Sender: TObject);
var
  i, minore: integer;
begin
  //determina il minimo left
  minore := 20000;
  for i := 0 to Dsn8Register1.DsnStage.TargetsCount - 1 do
  begin
    minore := Min(minore, Dsn8Register1.DsnStage.Targets[i].Left);
  end;
  for i := 0 to Dsn8Register1.DsnStage.TargetsCount - 1 do
  begin
    Dsn8Register1.DsnStage.Targets[i].Left := minore;
  end;

  Dsn8Register1.DsnStage.UpdateControl;
end;

procedure Tf_areaform.Rightalign1Click(Sender: TObject);
var
  i, maggiore: integer;
begin
  //determina il max right
  maggiore := 0;
  for i := 0 to Dsn8Register1.DsnStage.TargetsCount - 1 do
  begin
    maggiore := Max(maggiore, Dsn8Register1.DsnStage.Targets[i].Left +
      Dsn8Register1.DsnStage.Targets[i].Width);
  end;
  for i := 0 to Dsn8Register1.DsnStage.TargetsCount - 1 do
  begin
    Dsn8Register1.DsnStage.Targets[i].Left := Dsn8Register1.DsnStage.Targets[i].Left +
      (maggiore - (Dsn8Register1.DsnStage.Targets[i].Left +
      Dsn8Register1.DsnStage.Targets[i].Width));
  end;

  Dsn8Register1.DsnStage.UpdateControl;

end;

procedure Tf_areaform.Topalign1Click(Sender: TObject);
var
  i, minore: integer;
begin
  //determina il minimo top
  minore := 20000;
  for i := 0 to Dsn8Register1.DsnStage.TargetsCount - 1 do
  begin
    minore := Min(minore, Dsn8Register1.DsnStage.Targets[i].Top);
  end;
  for i := 0 to Dsn8Register1.DsnStage.TargetsCount - 1 do
  begin
    Dsn8Register1.DsnStage.Targets[i].Top := minore;
  end;

  Dsn8Register1.DsnStage.UpdateControl;
end;

procedure Tf_areaform.Bottomalign1Click(Sender: TObject);
var
  i, maggiore: integer;
begin
  //determina il max bottom
  maggiore := 0;
  for i := 0 to Dsn8Register1.DsnStage.TargetsCount - 1 do
  begin
    maggiore := Max(maggiore, Dsn8Register1.DsnStage.Targets[i].Top +
      Dsn8Register1.DsnStage.Targets[i].Height);
  end;
  for i := 0 to Dsn8Register1.DsnStage.TargetsCount - 1 do
  begin
    Dsn8Register1.DsnStage.Targets[i].Top := Dsn8Register1.DsnStage.Targets[i].Top +
      (maggiore - (Dsn8Register1.DsnStage.Targets[i].Top +
      Dsn8Register1.DsnStage.Targets[i].Height));
  end;

  Dsn8Register1.DsnStage.UpdateControl;

end;

procedure Tf_areaform.MaxWidth1Click(Sender: TObject);
var
  i, maggiore: integer;
begin
  //determina il max width
  maggiore := 0;
  for i := 0 to Dsn8Register1.DsnStage.TargetsCount - 1 do
  begin
    maggiore := Max(maggiore, Dsn8Register1.DsnStage.Targets[i].Width);
  end;
  for i := 0 to Dsn8Register1.DsnStage.TargetsCount - 1 do
  begin
    Dsn8Register1.DsnStage.Targets[i].Width := maggiore;
  end;

  Dsn8Register1.DsnStage.UpdateControl;

end;

procedure Tf_areaform.Minwidth1Click(Sender: TObject);
var
  i, minore: integer;
begin
  //determina il min width
  minore := 20000;
  for i := 0 to Dsn8Register1.DsnStage.TargetsCount - 1 do
  begin
    minore := Min(minore, Dsn8Register1.DsnStage.Targets[i].Width);
  end;
  for i := 0 to Dsn8Register1.DsnStage.TargetsCount - 1 do
  begin
    Dsn8Register1.DsnStage.Targets[i].Width := minore;
  end;

  Dsn8Register1.DsnStage.UpdateControl;
end;

procedure Tf_areaform.Maxheight1Click(Sender: TObject);
var
  i, maggiore: integer;
begin
  //determina il max height
  maggiore := 0;
  for i := 0 to Dsn8Register1.DsnStage.TargetsCount - 1 do
  begin
    maggiore := Max(maggiore, Dsn8Register1.DsnStage.Targets[i].Height);
  end;
  for i := 0 to Dsn8Register1.DsnStage.TargetsCount - 1 do
  begin
    Dsn8Register1.DsnStage.Targets[i].Height := maggiore;
  end;

  Dsn8Register1.DsnStage.UpdateControl;

end;

procedure Tf_areaform.Minheight1Click(Sender: TObject);
var
  i, minore: integer;
begin
  //determina il min height
  minore := 20000;
  for i := 0 to Dsn8Register1.DsnStage.TargetsCount - 1 do
  begin
    minore := Min(minore, Dsn8Register1.DsnStage.Targets[i].Height);
  end;
  for i := 0 to Dsn8Register1.DsnStage.TargetsCount - 1 do
  begin
    Dsn8Register1.DsnStage.Targets[i].Height := minore;
  end;

  Dsn8Register1.DsnStage.UpdateControl;
end;



procedure Tf_areaform.nuovo_controllo(Sender: TObject; Component: TComponent);
var
  controllo: TControl;
  parent_info, nome_bottone: string;
  i: Integer;
  campo_in_selezione :TListItem;
  panel: To2frame;

begin
  controllo := findcomponent(Component.Name) as TControl;

  //disabilita lo skin
  controllo.Tag := 99;

  if (controllo.Parent.ClassName = 'To2multipage') or
     (controllo.Parent.ClassName = 'To2flowbox') then
  begin
    tmp_tabctrl := findcomponent(controllo.Parent.Name) as TTabControl;
    parent_info := IntToStr(tmp_tabctrl.TabIndex);
    SetPropValue(controllo, 'Parentinfo', parent_info);
    if (controllo.Parent.ClassName = 'To2flowbox') and
       (controllo.ClassName <> 'To2frame') then
    begin
      controllo.Parent := nil;
      panel            := To2frame(tmp_tabctrl.Controls[0]);
      controllo.Parent := panel;
      if controllo.Top > panel.Height then
      begin
        controllo.Top := panel.Height - 20;
      end;
      if controllo.Left > panel.Width - 20 then
      begin
        controllo.Left := panel.Width - 20;
      end;
    end;
  end ;

  if Component.ClassType.ClassName = 'To2multipage' then
  begin
    tmp_multipage := findcomponent(Component.Name) as To2multipage;
    tmp_multipage.Parentname := tmp_multipage.Parent.Name;
    if controllo.Height = 0 then
    begin
      controllo.Height := 200
    end;
    if controllo.Width = 0 then
    begin
      controllo.Width := 300
    end;
    if tmp_multipage.Tabs.Count = 0 then
    begin
      tmp_multipage.Tabs.Add('Page1')
    end;
    tmp_multipage.MultiSelect := True;
  end;

  if Component.ClassType.ClassName = 'To2flowbox' then
  begin
    tmp_flowbox := findcomponent(Component.Name) as To2flowbox;
    tmp_flowbox.Parentname := tmp_flowbox.Parent.Name;
    if controllo.Height = 0 then
    begin
      controllo.Height := 200
    end;
    if controllo.Width = 0 then
    begin
      controllo.Width := 200
    end;
    if tmp_flowbox.Tabs.Count = 0 then
    begin
      tmp_flowbox.Tabs.Add('Panel1')
    end;
    tmp_flowbox.MultiSelect := True;
    flowbox_panels(tmp_flowbox);
  end;

  if Component.ClassType.ClassName = 'To2edit' then
  begin
    tmp_edit := findcomponent(Component.Name) as To2edit;

    tmp_edit.Color := clRed;
    tmp_edit.Parentname := tmp_edit.Parent.Name;
    if controllo.Height = 0 then controllo.Height := 20;
    if controllo.Width = 0 then controllo.Width := 100;

      // assegnazione del campo
      if (tmp_edit.View = '') and (tmp_edit.Parent.ClassName = 'To2table') then tmp_edit.View:= (tmp_edit.Parent as To2table).View;
      if (tmp_edit.Field = '') then
      begin
        If (f_work.call_scelta_campoprg('', false, false, true, true, tmp_edit.View)) <> '' then
        begin
            tmp_edit.View   := f_sceltacampiprg.ListView1.Selected.SubItems[1];
            tmp_edit.Field  := f_sceltacampiprg.ListView1.Selected.Caption;
            tmp_edit.Text := tmp_edit.Field + '(' + tmp_edit.View + ')';
            tmp_edit.Color:= clWindow;
        end;
      end;
  end;


  if Component.ClassType.ClassName = 'To2ListBox' then
  begin
    tmp_listbox := findcomponent(Component.Name) as To2ListBox;
    tmp_listbox.Color := clRed;
    if tmp_listbox.Rows = 0 then tmp_listbox.Rows := 1;
    tmp_listbox.Items.Add('row1');
    tmp_listbox.Items.Add('row2');
    tmp_listbox.Parentname := tmp_listbox.Parent.Name;
    if controllo.Height = 0 then
    begin
      controllo.Height := 20
    end;
    if controllo.Width = 0 then
    begin
      controllo.Width := 100
    end;

    // assegnazione del campo
      if (tmp_listbox.View = '') and (tmp_listbox.Parent.ClassName = 'To2table') then tmp_listbox.View:= (tmp_listbox.Parent as To2table).View;
      if tmp_listbox.Field = '' then
      begin
        If (f_work.call_scelta_campoprg('', false, false, true, true, tmp_listbox.View)) <> '' then
        begin
            tmp_listbox.View   := f_sceltacampiprg.ListView1.Selected.SubItems[1];
            tmp_listbox.Field  := f_sceltacampiprg.ListView1.Selected.Caption;
            tmp_listbox.Items.Text := tmp_listbox.Field + '(' + tmp_listbox.View + ')';
            tmp_listbox.Color:= clWindow;
        end;
      end;


  end;

  if Component.ClassType.ClassName = 'To2checkbox' then
  begin
    tmp_checkbox := findcomponent(Component.Name) as To2checkbox;
    tmp_checkbox.Color := clRed;
    tmp_checkbox.Parentname := tmp_checkbox.Parent.Name;
    if controllo.Height = 0 then
    begin
      controllo.Height := 20
    end;
    if controllo.Width = 0 then
    begin
      controllo.Width := 20
    end;

      // assegnazione del campo
      if (tmp_checkbox.View = '') and (tmp_checkbox.Parent.ClassName = 'To2table') then tmp_checkbox.View:= (tmp_checkbox.Parent as To2table).View;
      if tmp_checkbox.Field = '' then
      begin
      If (f_work.call_scelta_campoprg('', false, false, true, true, tmp_checkbox.View)) <> '' then
      begin
            tmp_checkbox.View   := f_sceltacampiprg.ListView1.Selected.SubItems[1];
            tmp_checkbox.Field  := f_sceltacampiprg.ListView1.Selected.Caption;
            tmp_checkbox.Color:= clWindow;
        end;
      end;

  end;

  if Component.ClassType.ClassName = 'To2textarea' then
  begin
    tmp_textarea := findcomponent(Component.Name) as To2textarea;
    tmp_textarea.Lines.Clear;
    tmp_textarea.Color      := clRed;
    tmp_textarea.Parentname := tmp_textarea.Parent.Name;
    if controllo.Height = 0 then
    begin
      controllo.Height := 40
    end;
    if controllo.Width = 0 then
    begin
      controllo.Width := 400
    end;

      // assegnazione del campo
      if (tmp_textarea.View = '') and (tmp_textarea.Parent.ClassName = 'To2table') then tmp_textarea.View:= (tmp_textarea.Parent as To2table).View;
      if tmp_textarea.Field = '' then
      begin
      If (f_work.call_scelta_campoprg('', false, false, true, true, tmp_textarea.View)) <> '' then
      begin
            tmp_textarea.View   := f_sceltacampiprg.ListView1.Selected.SubItems[1];
            tmp_textarea.Field  := f_sceltacampiprg.ListView1.Selected.Caption;
            tmp_textarea.Text := tmp_textarea.Field + '(' + tmp_textarea.View + ')';
            tmp_textarea.Color:= clWindow;
        end;
      end;

  end;

  if Component.ClassType.ClassName = 'To2button' then
  begin
    tmp_button := findcomponent(Component.Name) as To2button;
    tmp_button.Parentname := tmp_button.Parent.Name;

    if tmp_button.Parent.ClassName = 'To2image' then
      // crea oggetto o2Map e distrugge il bottone
    begin

      nome_bottone := tmp_button.Name;

      tmp_map := To2Map.Create(self);
      tmp_map.Parent := tmp_button.Parent;

      tmp_map.Parentname := tmp_map.Parent.Name;
      tmp_map.Top   := tmp_button.Top;
      tmp_map.Left  := tmp_button.Left;
      tmp_map.Shape := bsFrame;
      if controllo.Height = 0 then
      begin
        controllo.Height := 20
      end;
      if controllo.Width = 0 then
      begin
        controllo.Width := 50
      end;

      tmp_button.Free;

      tmp_map.Name := nome_bottone;
      DsnSelect1.Select(tmp_map);

    end
    else begin
      if controllo.Height = 0 then
      begin
        controllo.Height := 30
      end;
      if controllo.Width = 0 then
      begin
        controllo.Width := 90
      end;
    end;
  end;


  if Component.ClassType.ClassName = 'To2separator' then
  begin
    tmp_separator := findcomponent(Component.Name) as To2separator;
    tmp_separator.Vertical := False;
    tmp_separator.Parentname := tmp_separator.Parent.Name;
    if controllo.Height = 0 then
    begin
      controllo.Height := 10
    end;
    if controllo.Width = 0 then
    begin
      controllo.Width := 200
    end;
  end;

  if Component.ClassType.ClassName = 'To2agente' then
  begin
    tmp_agente := findcomponent(Component.Name) as To2agente;
    tmp_agente.Parentname := tmp_agente.Parent.Name;
    if controllo.Height = 0 then
    begin
      controllo.Height := 200
    end;
    if controllo.Width = 0 then
    begin
      controllo.Width := 500
    end;
  end;

  if Component.ClassType.ClassName = 'To2dbnavigator' then
  begin
    tmp_navigatore := findcomponent(Component.Name) as To2dbnavigator;
    tmp_navigatore.Parentname := tmp_navigatore.Parent.Name;
    if controllo.Height = 0 then
    begin
      controllo.Height := 20
    end;
    if controllo.Width = 0 then
    begin
      controllo.Width := 200
    end;
    // se navigator dentro la tabella imposta la view automaticamente
    if tmp_navigatore.Parent.ClassName = 'To2table' then
    begin
        tmp_table:= findcomponent(tmp_navigatore.Parentname) as To2table;
        tmp_navigatore.View:=tmp_table.View;
        f_dbnavigator.e_view.Text:=tmp_navigatore.View;
        f_dbnavigator.e_view.Enabled:=false;
    end
    else
    begin
     f_dbnavigator.e_view.Enabled:=true;
     f_dbnavigator.e_view.Text:='';
    end;
    begin

      f_dbnavigator.ShowModal;

      if f_dbnavigator.ModalResult = mrOk then
      begin
        with f_dbnavigator do
        begin
           tmp_navigatore.View := e_view.Text;

           // se non esiste e serve crea l'expression 9999 = false
           if (dm_form.t_espressioni.Lookup('idexp', 9999, 'idexp') <> 9999) and
           ((Not(cb_bottoniread.Checked)) or (Not(cb_bottoniwrite.Checked)) or
              (ed_insert.Text = '') or (ed_post.Text = '') or (ed_delete.Text = '') or (ed_undo.Text = '')
              or (not(cb_detail.Checked)) or (not(cb_select.Checked)) or (ed_detail.Text = '') or (ed_select.Text = '')) then
              begin
                 dm_form.t_espressioni.InsertRecord([dm_form.t_programminome.Value, 9999, '' , 'false']);
              end;

           // bottoni navigazione
           if not(cb_bottoniread.Checked) then tmp_navigatore.NavigationBlockVisible:=9999;

           // insert
           if (ed_insert.Text = '') or (not(cb_bottoniwrite.Checked)) then tmp_navigatore.InsertVisible:=9999
               else
               begin
                   tmp_navigatore.InsertAction:=ed_insert.Text;
                   if dm_form.t_azioni.Lookup('azione', ed_insert.Text, 'azione') <> ed_insert.Text then
                         f_work.crea_azioni_default_view(self, e_view.Text, true, false, false, false, true);
               end;

            // post
           if (ed_post.Text = '') or (not(cb_bottoniwrite.Checked)) then tmp_navigatore.PostVisible:=9999
               else
               begin
                   tmp_navigatore.PostAction:=ed_post.Text;
                   if dm_form.t_azioni.Lookup('azione', ed_post.Text, 'azione') <> ed_post.Text then
                         f_work.crea_azioni_default_view(self, e_view.Text, false, true, false, false, true);
               end;

            // delete
            if (ed_delete.Text = '') or (not(cb_bottoniwrite.Checked)) then tmp_navigatore.DeleteVisible:=9999
               else
               begin
                   tmp_navigatore.DeleteAction:=ed_delete.Text;
                   if dm_form.t_azioni.Lookup('azione', ed_delete.Text, 'azione') <> ed_delete.Text then
                         f_work.crea_azioni_default_view(self, e_view.Text, false, false, true, false, true);
               end;

            // undo
            if (ed_undo.Text = '') or (not(cb_bottoniwrite.Checked)) then tmp_navigatore.UndoVisible:=9999
               else
               begin
                   tmp_navigatore.UndoAction:=ed_undo.Text;
                   if dm_form.t_azioni.Lookup('azione', ed_undo.Text, 'azione') <> ed_undo.Text then
                         f_work.crea_azioni_default_view(self, e_view.Text, false, false, false, true, true);
               end;

            // detail
            if (ed_detail.Text = '') or (not(cb_detail.Checked)) then tmp_navigatore.DetailVisible:=9999
               else
               begin
                   tmp_navigatore.DetailAction:=ed_detail.Text;
                   if dm_form.t_azioni.Lookup('azione', ed_detail.Text, 'azione') <> ed_detail.Text then
                         f_work.nuova_azione_prg(ed_detail.Text, true);
               end;

             // select
            if (ed_select.Text = '') or (not(cb_select.Checked)) then tmp_navigatore.SelectVisible:=9999
               else
               begin
                   tmp_navigatore.SelectAction:=ed_select.Text;
                   if dm_form.t_azioni.Lookup('azione', ed_select.Text, 'azione') <> ed_select.Text then
                         f_work.nuova_azione_prg(ed_select.Text, true);
               end;


        end;

      end;
    end;

  end;
  if Component.ClassType.ClassName = 'To2groupbox' then
  begin
    tmp_groupbox := findcomponent(Component.Name) as To2groupbox;
    tmp_groupbox.Parentname := tmp_groupbox.Parent.Name;
    if controllo.Height = 0 then
    begin
      controllo.Height := 200
    end;
    if controllo.Width = 0 then
    begin
      controllo.Width := 200
    end;
  end;

  if Component.ClassType.ClassName = 'To2image' then
  begin
    tmp_immagine := findcomponent(Component.Name) as To2image;
    tmp_immagine.Parentname := tmp_immagine.Parent.Name;
    tmp_immagine.ImageDir := f_work.workdir + 'htdocs\img\';

    if OpenPictureDialog1.Execute then
    begin
      tmp_immagine.ImageFile := ExtractFileName(OpenPictureDialog1.FileName);

    end;
    if controllo.Height = 0 then
    begin
      controllo.Height := 40;
    end;
    if controllo.Width = 0 then
    begin
      controllo.Width := 40;
    end;

  end;

  if Component.ClassType.ClassName = 'To2label' then
  begin
    tmp_label := findcomponent(Component.Name) as To2label;
    tmp_label.Parentname := tmp_label.Parent.Name;
    if controllo.Height = 0 then
    begin
      controllo.Height := 20
    end;
    if controllo.Width = 0 then
    begin
      controllo.Width := 100
    end;
  end;

  if Component.ClassType.ClassName = 'To2table' then
  begin
    tmp_table := findcomponent(Component.Name) as To2table;
    tmp_table.Parentname := tmp_table.Parent.Name;
    if controllo.Height <= 6 then
    begin
      controllo.Height := 200;
    end;
    if controllo.Width <= 6 then
    begin
      controllo.Width := 500;
    end;
    if tmp_table.View = '' then
    begin
      f_sceltaview.ShowModal;
      if f_sceltaview.ModalResult = mrOk then
      begin
        tmp_table.View := f_sceltaview.scelta;

      end;
    end;
  end;

  if Component.ClassType.ClassName = 'To2file' then
  begin
    tmp_file := findcomponent(Component.Name) as To2file;
    tmp_file.Parentname := tmp_file.Parent.Name;
    if controllo.Height = 0 then
    begin
      controllo.Height := 20;
    end;
    if controllo.Width = 0 then
    begin
      controllo.Width := 100;
    end;
  end;



  if Component.ClassType.ClassName = 'To2htmlarea' then
  begin
    tmp_htmlarea := findcomponent(Component.Name) as To2htmlarea;
    tmp_htmlarea.Parentname := tmp_htmlarea.Parent.Name;
    if controllo.Height = 0 then
    begin
      controllo.Height := 100;
    end;
    if controllo.Width = 0 then
    begin
      controllo.Width := 200;
    end;

  end;


  if Component.ClassType.ClassName = 'To2tree' then
  begin
    tmp_tree := findcomponent(Component.Name) as To2tree;
    tmp_tree.Parentname := tmp_tree.Parent.Name;
    if controllo.Height = 0 then
    begin
      controllo.Height := 200;
    end;
    if controllo.Width = 0 then
    begin
      controllo.Width := 100;
    end;

  end;


  if Component.ClassType.ClassName = 'To2imglist' then
  begin
    tmp_imglist            := findcomponent(Component.Name) as To2imglist;
    tmp_imglist.Parentname := tmp_imglist.Parent.Name;
    if controllo.Height = 0 then
    begin
      controllo.Height := 150;
    end;
    if controllo.Width = 0 then
    begin
      controllo.Width := 150;
    end;
  end;


  if Component.ClassType.ClassName = 'To2progress' then
  begin
    tmp_progress            := findcomponent(Component.Name) as To2progress;
    tmp_progress.Parentname := tmp_progress.Parent.Name;
    if controllo.Height = 0 then
    begin
      controllo.Height := 20;
    end;
    if controllo.Width = 0 then
    begin
      controllo.Width := 150;
    end;
  end;


  if Component.ClassType.ClassName = 'To2document' then
  begin
    tmp_document := findcomponent(Component.Name) as To2document;
    tmp_document.Parentname := tmp_document.Parent.Name;
    if controllo.Height = 0 then
    begin
      controllo.Height := 30
    end;
    if controllo.Width = 0 then
    begin
      controllo.Width := 30
    end;
    tmp_document.Picture := o2document1.Picture;
    tmp_document.Stretch := True;
  end;

end;

procedure Tf_areaform.Exit1Click(Sender: TObject);
begin
  f_areaform.Close;
end;

procedure Tf_areaform.Exit2Click(Sender: TObject);
begin
  f_areaform.Close;
end;


procedure Tf_areaform.salva_controlliExecute(Sender: TObject; controllo: TWinControl);
var
  i, n: integer;
  control_label: To2label;
  control_edit: To2edit;
  control_listbox: To2ListBox;
  control_button: To2button;
  control_agente: To2agente;
  control_line: To2separator;
  control_immagine: To2image;
  control_checkbox: To2checkbox;
  control_memo: To2textarea;
  control_groupbox: To2groupbox;
  control_navigator: To2dbnavigator;
  control_table: To2table;
  control_file: To2file;
  control_multipage: To2multipage;
  control_flowbox: To2flowbox;
  control_frame: To2frame;
  control_htmlarea: To2htmlarea;
  control_tree: To2tree;
  control_imglist: To2imglist;
  control_progress: To2progress;
  control_document: To2document;
  control_map: To2Map;
  controllo_corrente: TControl;

  nomecontrollo, tipocontrollo, Caption, riferimento, view, field, azione,
  vocecss, scelte, maschera, parentname, parentinfo, extra1, extra2, extra3,
  filename: string;
  top, left, altezza, larghezza, visibile, abilitato, taborder, submit,
  tooltipexp: integer;
  boolean1: boolean;
  css1, css2, css3, css4, css5, css6, css7, css8, css9, css10, css11, css12,
  css13, css14, css15, Expand: string;
  insert_vis, post_vis, del_vis, undo_vis, detail_vis, select_vis,
  insert_enable, post_enable, del_enable, undo_enable, detail_enable,
  select_enable, navigatorblock_vis, exp1, exp2, pin_cols: integer;
  insert_action, post_action, del_action, undo_action, detail_action,
  select_action, insert_msg, post_msg, del_msg, undo_msg, detail_msg,
  select_msg, norecordmsg, zoomaction, grid_options : string;

begin

  // _______________________________________ Loop on form/container children ___
  for i := 0 to controllo.ControlCount - 1 do
  begin
    controllo_corrente := controllo.Controls[i];
    // ____________________________________________ Reset grids horiz scroll ___
    if controllo.Controls[i].ClassName = 'To2table' then
    begin
        control_table := controllo.Controls[i] as To2table;
        control_table.HorzScrollBar.Position := 0;
    end;
    if controllo_corrente.Name <> '' then
    begin
      top           := controllo.Controls[i].Top;
      left          := controllo.Controls[i].Left;
      altezza       := controllo.Controls[i].Height;
      larghezza     := controllo.Controls[i].Width;
      nomecontrollo := controllo.Controls[i].Name;
      parentname    := controllo.Controls[i].Parent.Name;

      Caption       := '';
      riferimento   := '';
      tipocontrollo := '';
      scelte        := '';
      azione        := '';
      maschera      := '';

      parentinfo    := '';
      extra1        := '';
      extra2        := '';
      extra3        := '';
      taborder      := 0;
      vocecss       := '';
      css1          := '';
      css2          := '';
      css3          := '';
      css4          := '';
      css5          := '';
      css6          := '';
      css7          := '';
      css8          := '';
      css9          := '';
      css10         := '';
      css11         := '';
      css12         := '';
      css13         := '';
      css14         := '';
      css15         := '';
      Expand        := '';

      submit        := 0;
      visibile      := 0;
      abilitato     := 0;
      tooltipexp    := 0;
      exp1          := 0;
      exp2          := 0;

      insert_vis    := 0;
      insert_enable := 0;
      insert_action := '';
      insert_msg    := '';

      del_vis       := 0;
      del_enable    := 0;
      del_action    := '';
      del_msg       := '';

      undo_vis      := 0;
      undo_enable   := 0;
      undo_action   := '';
      undo_msg      := '';

      post_vis      := 0;
      post_enable   := 0;
      post_action   := '';
      post_msg      := '';

      detail_vis    := 0;
      detail_enable := 0;
      detail_action := '';
      detail_msg    := '';

      select_vis    := 0;
      select_enable := 0;
      select_action := '';
      select_msg    := '';

      norecordmsg   := '';
      navigatorblock_vis := 0;

      boolean1      := False;
      grid_options  := '';
      pin_cols      := 0;

      // _____________________________________________________________ LABEL ___
      if controllo.Controls[i].ClassName = 'To2label' then
      begin
        control_label := controllo.Controls[i] as To2label;
        tipocontrollo := 'label';
        Caption       := control_label.o2Label;
        visibile      := control_label.Visibile;
        vocecss       := control_label.Vocecss;
        tooltipexp    := control_label.TooltipExp;
        Expand        := ExpandAsString(control_label.Expand);
        taborder      := i - 10000;
        parentinfo    := control_label.Parentinfo;
        if control_label.Parent.ClassName = 'To2table' then
        begin
          parentinfo := calcola_parent_info(control_label, parentinfo);
        end;
      end
      // ______________________________________________________________ EDIT ___
      else if controllo.Controls[i].ClassName = 'To2edit' then
      begin
        control_edit  := controllo.Controls[i] as To2Edit;
        tipocontrollo := 'edit';
        riferimento   := chr(127) + control_edit.View +
                         chr(129) + control_edit.Field;
        visibile      := control_edit.Visibile;
        abilitato     := control_edit.Abilitato;
        vocecss       := control_edit.Vocecss;
        azione        := control_edit.Azione;
        zoomaction    := control_edit.ZoomAction;
        maschera      := control_edit.Mask;
        taborder      := control_edit.TabOrder;
        submit        := control_edit.Submitonchange;
        boolean1      := control_edit.Password;
        tooltipexp    := control_edit.TooltipExp;
        Expand        := ExpandAsString(control_edit.Expand);
        parentinfo    := control_edit.Parentinfo;
        if control_edit.Parent.ClassName = 'To2table' then
        begin
          parentinfo := calcola_parent_info(control_edit, parentinfo);
        end;
      end
      // _______________________________________________________ FILE UPLOAD ___
      else if controllo.Controls[i].ClassName = 'To2file' then
      begin
        control_file  := controllo.Controls[i] as To2file;
        tipocontrollo := 'file';
        riferimento   := chr(127) + control_file.View +
                         chr(129) + control_file.Field;
        visibile      := control_file.Visibile;
        abilitato     := control_file.Abilitato;
        vocecss       := control_file.Vocecss;
        taborder      := control_file.TabOrder;
        submit        := control_file.Submitonchange;
        extra1        := IntToStr(control_file.Save_as);
        Expand        := ExpandAsString(control_file.Expand);
        parentinfo    := control_file.Parentinfo;
        boolean1      := control_file.Multiple;
        if control_file.Parent.ClassName = 'To2table' then
        begin
          parentinfo := calcola_parent_info(control_file, parentinfo);
        end;
      end
      // _________________________________________________________ MULTIPAGE ___
      else if controllo.Controls[i].ClassName = 'To2multipage' then
      begin
        control_multipage := controllo.Controls[i] as To2multipage;
        tipocontrollo     := 'multipage';
        riferimento       := chr(127) + control_multipage.View +
                             chr(129) + control_multipage.Field;
        visibile          := GetPropValue(controllo_corrente, 'Visibile', True);
        abilitato         := GetPropValue(controllo_corrente, 'Abilitato',True);
        taborder          := control_multipage.TabOrder;
        Expand            := ExpandAsString(control_multipage.Expand);
        parentinfo        := control_multipage.Parentinfo;
        if control_multipage.Parent.ClassName = 'To2table' then
        begin
          parentinfo := calcola_parent_info(control_multipage, parentinfo);
        end;

        extra1 := control_multipage.Tabs.Text;
        extra2 := IntToStr(control_multipage.TabIndex);
        css1   := control_multipage.CssBorder;
        css2   := control_multipage.CssBody;
        css3   := control_multipage.CssLabelOn;
        css4   := control_multipage.CssLabelOff;
        if control_multipage.TabPosition = tpLeft then
        begin
          scelte := 'L';
        end
        else if control_multipage.TabPosition = tpRight then
        begin
          scelte := 'R';
        end
        else if control_multipage.TabPosition = tpBottom then
        begin
          scelte := 'B';
        end
        else
        begin
          scelte := 'T';
        end;
        salva_controlliExecute(self, control_multipage);
      end
      // ___________________________________________________________ FLOWBOX ___
      else if controllo.Controls[i].ClassName = 'To2flowbox' then
      begin
        control_flowbox := controllo.Controls[i] as To2flowbox;
        tipocontrollo   := 'flowbox';
        visibile        := GetPropValue(controllo_corrente, 'Visibile', True);
        taborder        := control_flowbox.TabOrder;
        Expand          := ExpandAsString(control_flowbox.Expand);
        parentinfo      := control_flowbox.Parentinfo;
        if control_flowbox.Parent.ClassName = 'To2table' then
        begin
          parentinfo := calcola_parent_info(control_flowbox, parentinfo);
        end;

        extra1  := control_flowbox.Tabs.Text;
        extra2  := IntToStr(control_flowbox.TabIndex);
        vocecss := control_flowbox.Css;
        salva_controlliExecute(self, control_flowbox);
      end
      // _____________________________________________________________ FRAME ___
      else if controllo.Controls[i].ClassName = 'To2frame' then
      begin
        control_frame   := controllo.Controls[i] as To2frame;
        tipocontrollo   := 'frame';
        visibile        := control_frame.Visibile;
        abilitato       := control_frame.Abilitato;
        taborder        := control_frame.TabOrder;
        Expand          := ExpandAsString(control_frame.Expand);
        parentinfo      := control_frame.Parentinfo;
        vocecss         := control_frame.Css;
        salva_controlliExecute(self, control_frame);
      end
      // ____________________________________________________________ BUTTON ___
      else if controllo.Controls[i].ClassName = 'To2button' then
      begin
        control_button := controllo.Controls[i] as To2button;
        tipocontrollo  := 'button';
        Caption        := control_button.o2Label;
        visibile       := control_button.Visibile;
        abilitato      := control_button.Abilitato;
        vocecss        := control_button.Vocecss;
        azione         := control_button.Azione;
        scelte         := control_button.Messaggio;
        taborder       := control_button.TabOrder;
        Expand         := ExpandAsString(control_button.Expand);
        parentinfo     := control_button.Parentinfo;
        if control_button.Parent.ClassName = 'To2table' then
        begin
          parentinfo := calcola_parent_info(control_button, parentinfo);
        end;

        extra1     := control_button.StyleAsString(control_button.Format);
        extra2     := control_button.ShortcutAsString(control_button.Shortcut);
        tooltipexp := control_button.TooltipExp;
      end
      // _________________________________________________________ IMAGE MAP ___
      else  if controllo.Controls[i].ClassName = 'To2Map' then
      begin
        control_map   := controllo.Controls[i] as To2Map;
        tipocontrollo := 'map';
        visibile      := control_map.Visibile;
        abilitato     := control_map.Abilitato;
        vocecss       := control_map.Vocecss;
        azione        := control_map.Azione;
        scelte        := control_map.Messaggio;
        parentname    := control_map.Parentname;
        parentinfo    := control_map.Parentinfo;
        taborder      := i - 10000;
        Expand        := ExpandAsString(control_map.Expand);
        if control_map.Parent.ClassName = 'To2table' then
        begin
          parentinfo := calcola_parent_info(control_map, parentinfo);
        end;
      end
      // ____________________________________________________ LIST/COMBO-BOX ___
      else if controllo.Controls[i].ClassName = 'To2ListBox' then
      begin
        control_listbox := controllo.Controls[i] as To2ListBox;
        tipocontrollo   := 'listbox';
        riferimento     := chr(127) + control_listbox.View +
                           chr(129) + control_listbox.Field;
        visibile        := control_listbox.Visibile;
        abilitato       := control_listbox.Abilitato;
        vocecss         := control_listbox.Vocecss;
        azione          := control_listbox.Azione;
        scelte          := control_listbox.Scelte;
        taborder        := control_listbox.TabOrder;
        zoomaction      := control_listbox.ZoomAction;
        Expand          := ExpandAsString(control_listbox.Expand);
        parentinfo      := control_listbox.Parentinfo;
        if control_listbox.Parent.ClassName = 'To2table' then
        begin
          parentinfo := calcola_parent_info(control_listbox, parentinfo);
        end;

        extra1     := IntToStr(control_listbox.Rows);
        submit     := control_listbox.Submitonchange;
        tooltipexp := control_listbox.TooltipExp;
      end
      // _________________________________________________________ CHECK-BOX ___
      else if controllo.Controls[i].ClassName = 'To2checkbox' then
      begin
        control_checkbox := controllo.Controls[i] as To2checkbox;
        tipocontrollo    := 'checkbox';
        riferimento      := chr(127) + control_checkbox.View +
                            chr(129) + control_checkbox.Field;
        visibile         := control_checkbox.Visibile;
        abilitato        := control_checkbox.Abilitato;
        vocecss          := control_checkbox.Vocecss;
        azione           := control_checkbox.Azione;
        taborder         := control_checkbox.TabOrder;
        Expand           := ExpandAsString(control_checkbox.Expand);
        parentinfo       := control_checkbox.Parentinfo;
        if control_checkbox.Parent.ClassName = 'To2table' then
        begin
          parentinfo := calcola_parent_info(control_checkbox, parentinfo);
        end;

        submit     := control_checkbox.Submitonchange;
        tooltipexp := control_checkbox.TooltipExp;
      end
      // _________________________________________________________ SEPARATOR ___
      else if controllo.Controls[i].ClassName = 'To2separator' then
      begin
        control_line  := controllo.Controls[i] as To2separator;
        tipocontrollo := 'separator';
        visibile      := control_line.Visibile;
        vocecss       := control_line.Vocecss;
        taborder      := i - 10000;
        Expand        := ExpandAsString(control_line.Expand);
        parentinfo    := control_line.Parentinfo;
        if control_line.Parent.ClassName = 'To2table' then
        begin
          parentinfo := calcola_parent_info(control_line, parentinfo);
        end;
      end
      // __________________________________________________________ TEXTAREA ___
      else if controllo.Controls[i].ClassName = 'To2textarea' then
      begin
        control_memo  := controllo.Controls[i] as To2textarea;
        tipocontrollo := 'textarea';
        riferimento   := chr(127) + control_memo.View +
                         chr(129) + control_memo.Field;
        visibile      := control_memo.Visibile;
        abilitato     := control_memo.Abilitato;
        vocecss       := control_memo.Vocecss;
        azione        := control_memo.Azione;
        zoomaction    := control_memo.ZoomAction;
        maschera      := control_memo.Mask;
        taborder      := control_memo.TabOrder;
        Expand        := ExpandAsString(control_memo.Expand);
        parentinfo    := control_memo.Parentinfo;
        if control_memo.Parent.ClassName = 'To2table' then
        begin
          parentinfo := calcola_parent_info(control_memo, parentinfo);
        end;

        submit     := control_memo.Submitonchange;
        boolean1   := control_memo.Htmlarea;
        tooltipexp := control_memo.TooltipExp;
      end
      // _________________________________________________ AGENTE (NOT USED) ___
      else if controllo.Controls[i].ClassName = 'To2agente' then
      begin
        control_agente := controllo.Controls[i] as To2agente;
        tipocontrollo  := 'agente';
        Caption        := control_agente.Caption;
        visibile       := control_agente.Visibile;
        abilitato      := control_agente.Abilitato;
        riferimento    := control_agente.Rifagente;
        taborder       := control_agente.TabOrder;
        salva_controlliExecute(self, control_agente);
        parentinfo := control_agente.Parentinfo;
        if control_agente.Parent.ClassName = 'To2table' then
        begin
          parentinfo := calcola_parent_info(control_agente, parentinfo);
        end;
      end
      // ______________________________________________________ GRID (TABLE) ___
      else if controllo.Controls[i].ClassName = 'To2table' then
      begin
        control_table := controllo.Controls[i] as To2table;
        // ________________________________________ Set children parent-info ___
        posizioni_in_tabellaExecute(self, control_table);

        tipocontrollo := 'table';
        visibile      := control_table.Visibile;
        abilitato     := control_table.Abilitato;
        riferimento   := chr(127) + control_table.View;
        taborder      := control_table.TabOrder;
        exp1          := control_table.HideIndicator;;
        Expand        := ExpandAsString(control_table.Expand);
        grid_options  := control_table.Options;
        pin_cols      := control_table.PinCols;

        salva_controlliExecute(self, control_table);

        parentinfo := control_table.Parentinfo;
        if control_table.Parent.ClassName = 'To2table' then
        begin
         parentinfo := calcola_parent_info(control_table, parentinfo);
        end;

        css1        := control_table.CssDiv;
        css2        := control_table.CssTab;
        css3        := control_table.CssHead;
        css4        := control_table.CssBody;
        css5        := control_table.CssLine;
        css6        := control_table.CssAlternate;
        css7        := control_table.CssMouseOverLine;
        css8        := control_table.CssCurrentLine;
        css9        := control_table.CssFooter;
        norecordmsg := control_table.NoRecordMessage;
      end
      // _____________________________________________________________ IMAGE ___
      else if controllo.Controls[i].ClassName = 'To2image' then
      begin
        control_immagine := controllo.Controls[i] as To2image;
        tipocontrollo    := 'image';
        visibile         := control_immagine.Visibile;
        abilitato        := control_immagine.Abilitato;
        vocecss          := control_immagine.Vocecss;
        azione           := control_immagine.Azione;
        taborder         := control_immagine.TabOrder;
        Expand           := ExpandAsString(control_immagine.Expand);
        parentinfo       := control_immagine.Parentinfo;
        if control_immagine.Parent.ClassName = 'To2table' then
        begin
          parentinfo := calcola_parent_info(control_immagine, parentinfo);
        end;

        extra1  := IntToStr(control_immagine.File_name);
        extra3  := IntToStr(control_immagine.File_name_rollover);
        submit  := control_immagine.Submitonchange;
        Caption := control_immagine.o2Label;
        extra2  := control_immagine.Messaggio;
        scelte  := control_immagine.ImageFile;
        // _________________________________ MAPs controls are inside images ___
        salva_controlliExecute(self, control_immagine);
      end
      // _______________________________________________ GROUPBOX (NOT USED) ___
      else if controllo.Controls[i].ClassName = 'To2groupbox' then
      begin
        control_groupbox := controllo.Controls[i] as To2groupbox;
        tipocontrollo    := 'groupbox';
        Caption          := control_groupbox.Caption;
        visibile         := control_groupbox.Visibile;
        abilitato        := control_groupbox.Abilitato;
        taborder         := control_groupbox.TabOrder;
        //Expand         := ExpandAsString(control_groupbox.Expand);
        parentinfo       := control_groupbox.Parentinfo;
        if control_groupbox.Parent.ClassName = 'To2table' then
        begin
          parentinfo := calcola_parent_info(control_groupbox, parentinfo);
        end;
        salva_controlliExecute(self, control_groupbox);

      end
      // _________________________________________________________ NAVIGATOR ___
      else if controllo.Controls[i].ClassName = 'To2dbnavigator' then
      begin
        control_navigator := controllo.Controls[i] as To2dbnavigator;
        tipocontrollo     := 'navigator';
        visibile          := control_navigator.Visibile;
        riferimento       := chr(127) + control_navigator.View;
        taborder          := control_navigator.TabOrder;
        Expand            := ExpandAsString(control_navigator.Expand);
        if control_navigator.Parent.ClassName = 'To2table' then
        begin
          parentinfo := calcola_parent_info(control_navigator, parentinfo);
        end
        else
        begin
          parentinfo := control_navigator.Parentinfo;
        end;
        if control_navigator.Kind = sbVertical then
        begin
          extra1 := 'vertical';
        end
        else
        begin
          extra1 := '';
        end;

        css1  := control_navigator.CssSlide;
        css2  := control_navigator.CssNavBar;
        css3  := control_navigator.CssFirst;
        css4  := control_navigator.CssPrevPage;
        css5  := control_navigator.CssPrev;
        css6  := control_navigator.CssNext;
        css7  := control_navigator.CssNextPage;
        css8  := control_navigator.CssLast;
        css9  := control_navigator.CssSpace;
        css10 := control_navigator.CssInsert;
        css11 := control_navigator.CssPost;
        css12 := control_navigator.CssDelete;
        css13 := control_navigator.CssUndo;
        css14 := control_navigator.CssDetail;
        css15 := control_navigator.CssSelect;

        insert_vis    := control_navigator.InsertVisible;
        insert_enable := control_navigator.InsertEnable;
        insert_action := control_navigator.InsertAction;
        insert_msg    := control_navigator.InsertConfirmMessage;

        post_vis      := control_navigator.PostVisible;
        post_enable   := control_navigator.PostEnable;
        post_action   := control_navigator.PostAction;
        post_msg      := control_navigator.PostConfirmMessage;

        del_vis       := control_navigator.DeleteVisible;
        del_enable    := control_navigator.DeleteEnable;
        del_action    := control_navigator.DeleteAction;
        del_msg       := control_navigator.DeleteConfirmMessage;

        undo_vis      := control_navigator.UndoVisible;
        undo_enable   := control_navigator.UndoEnable;
        undo_action   := control_navigator.UndoAction;
        undo_msg      := control_navigator.UndoConfirmMessage;

        detail_vis    := control_navigator.DetailVisible;
        detail_enable := control_navigator.DetailEnable;
        detail_action := control_navigator.DetailAction;
        detail_msg    := control_navigator.DetailConfirmMessage;

        select_vis    := control_navigator.SelectVisible;
        select_enable := control_navigator.SelectEnable;
        select_action := control_navigator.SelectAction;
        select_msg    := control_navigator.SelectConfirmMessage;

        navigatorblock_vis := control_navigator.NavigationBlockVisible;
      end
      // _________________________________________________________ HTML-AREA ___
      else if controllo.Controls[i].ClassName = 'To2htmlarea' then
      begin
        control_htmlarea := controllo.Controls[i] as To2htmlarea;
        tipocontrollo    := 'htmlarea';
        visibile         := control_htmlarea.Visibile;
        vocecss          := control_htmlarea.Vocecss;
        taborder         := control_htmlarea.TabOrder;
        Expand           := ExpandAsString(control_htmlarea.Expand);
        parentinfo       := control_htmlarea.Parentinfo;
        if control_htmlarea.Parent.ClassName = 'To2table' then
        begin
          parentinfo := calcola_parent_info(control_htmlarea, parentinfo);
        end;

        extra1 := IntToStr(control_htmlarea.Html);
      end
      // _________________________________________________________ TREE-VIEW ___
      else if controllo.Controls[i].ClassName = 'To2tree' then
      begin
        control_tree  := controllo.Controls[i] as To2tree;
        tipocontrollo := 'treeview';
        riferimento   := chr(127) + control_tree.View +
                         chr(129) + control_tree.Field;
        visibile      := control_tree.Visibile;
        vocecss       := control_tree.Vocecss;
        azione        := control_tree.Azione;
        taborder      := control_tree.TabOrder;
        Expand        := ExpandAsString(control_tree.Expand);
        parentinfo    := control_tree.Parentinfo;
        if control_tree.Parent.ClassName = 'To2table' then
        begin
          parentinfo := calcola_parent_info(control_tree, parentinfo);
        end;

        extra1 := IntToStr(control_tree.Nodes);
        scelte := control_tree.TreeActAsString(control_tree.Activation);
      end
      // _____________________________________________________ IMAGES-LISTER ___
      else if controllo.Controls[i].ClassName = 'To2imglist' then
      begin
        control_imglist := controllo.Controls[i] as To2imglist;
        tipocontrollo   := 'imglist';
        riferimento     := chr(127) + control_imglist.View +
                           chr(129) + control_imglist.Field;
        visibile        := control_imglist.Visibile;
        vocecss         := control_imglist.Vocecss;
        azione          := control_imglist.Azione;
        taborder        := control_imglist.TabOrder;
        Expand          := ExpandAsString(control_imglist.Expand);
        parentinfo      := control_imglist.Parentinfo;
        if control_imglist.Parent.ClassName = 'To2table' then
        begin
          parentinfo := calcola_parent_info(control_imglist, parentinfo);
        end;

        extra1 := IntToStr(control_imglist.ImgItems);
        extra2 := control_imglist.Delete;
        exp1   := control_imglist.ImgItemWidth;
        exp2   := control_imglist.ImgItemHeight;

      end
      // ______________________________________________________ PROGRESS-BAR ___
      else if controllo.Controls[i].ClassName = 'To2progress' then
      begin
        control_progress := controllo.Controls[i] as To2progress;
        tipocontrollo   := 'progress';
        visibile        := control_progress.Visibile;
        vocecss         := control_progress.Vocecss;
        azione          := control_progress.StartAct;
        Expand          := ExpandAsString(control_progress.Expand);
        parentinfo      := control_progress.Parentinfo;
        if control_progress.Parent.ClassName = 'To2table' then
        begin
          parentinfo := calcola_parent_info(control_progress, parentinfo);
        end;

        extra1 := IntToStr(control_progress.Value);
        extra2 := control_progress.EndAct;

      end
      // __________________________________________________________ DOCUMENT ___
      else if controllo.Controls[i].ClassName = 'To2document' then
      begin
        control_document := controllo.Controls[i] as To2document;
        tipocontrollo    := 'document';
        visibile         := control_document.Visibile;
        vocecss          := control_document.Vocecss;
        Expand           := ExpandAsString(control_document.Expand);
        parentinfo       := control_document.Parentinfo;
        if control_document.Parent.ClassName = 'To2table' then
        begin
          parentinfo := calcola_parent_info(control_document, parentinfo);
        end;

        extra1 := IntToStr(control_document.Path);
      end;

      // in caso di controllo senza parent azzera parentinfo
      if controllo_corrente.Parent.ClassName = 'TDsnStage' then
      begin
        parentinfo := '';
      end;

      dm_form.t_controlliform.InsertRecord([dm_form.t_formprg.Value,
                                            dm_form.t_formnomeform.Value,
                                            nomecontrollo,
                                            tipocontrollo,
                                            top,
                                            left,
                                            altezza,
                                            larghezza,
                                            visibile,
                                            abilitato,
                                            Caption,
                                            riferimento,
                                            azione,
                                            scelte,
                                            vocecss,
                                            maschera,
                                            taborder,
                                            parentname,
                                            parentinfo,
                                            extra1,
                                            extra2,
                                            submit,
                                            boolean1,
                                            css1,
                                            css2,
                                            css3,
                                            css4,
                                            css5,
                                            css6,
                                            css7,
                                            css8,
                                            css9,
                                            css10,
                                            extra3,
                                            css11,
                                            css12,
                                            css13,
                                            css14,
                                            css15,
                                            navigatorblock_vis,
                                            insert_vis,
                                            insert_enable,
                                            insert_action,
                                            insert_msg,
                                            post_vis,
                                            post_enable,
                                            post_action,
                                            post_msg,
                                            del_vis,
                                            del_enable,
                                            del_action,
                                            del_msg,
                                            undo_vis,
                                            undo_enable,
                                            undo_action,
                                            undo_msg,
                                            norecordmsg,
                                            detail_vis,
                                            detail_enable,
                                            detail_action,
                                            detail_msg,
                                            select_vis,
                                            select_enable,
                                            select_action,
                                            select_msg,
                                            exp1,
                                            exp2,
                                            zoomaction,
                                            tooltipexp,
                                            Expand,
                                            grid_options,
                                            pin_cols]);

    end;
  end;

end;

{*
 * Creates single control from CDS
 *}
procedure Tf_areaform.carica_controlliExecute(Sender: TObject);
var
  control_label     : To2label;
  control_edit      : To2edit;
  control_listbox   : To2ListBox;
  control_button    : To2button;
  control_agente    : To2agente;
  control_line      : To2separator;
  control_immagine  : To2image;
  control_checkbox  : To2checkbox;
  control_memo      : To2textarea;
  control_groupbox  : To2groupbox;
  control_navigator : To2dbnavigator;
  control_table     : To2table;
  control_file      : To2file;
  control_multipage : To2multipage;
  control_flowbox   : To2flowbox;
  control_frame     : To2frame;
  control_htmlarea  : To2htmlarea;
  control_tree      : To2tree;
  control_imglist   : To2imglist;
  control_progress  : To2progress;
  control_document  : To2document;
  control_map       : To2Map;
begin
  // _____________________________________________ If parent control is set  ___
  if (FindComponent(dm_form.t_controlliformparent.Value) <> nil) then
  begin
    // _______________________________________________________ Control LABEL ___
    if dm_form.t_controlliformtipo.Value = 'label' then
    begin
      control_label        := To2label.Create(self);
      control_label.Parent := FindComponent(dm_form.t_controlliformparent.Value)
                              as TWinControl;
      control_label.Name       := dm_form.t_controlliformnomecontrollo.Value;
      control_label.AutoSize   := False;
      control_label.Top        := dm_form.t_controlliformtop.Value;
      control_label.Left       := dm_form.t_controlliformleft.Value;
      control_label.Width      := dm_form.t_controlliformlarghezza.Value;
      control_label.Height     := dm_form.t_controlliformaltezza.Value;
      control_label.Visibile   := dm_form.t_controlliformvisibile.Value;
      control_label.o2Label    := dm_form.t_controlliformcaption.Value;
      control_label.Vocecss    := dm_form.t_controlliformvocecss.Value;
      control_label.Parentinfo := dm_form.t_controlliformparent_info.Value;
      control_label.TooltipExp := dm_form.t_controlliformTooltipExp.Value;
      control_label.Expand     :=
                            StringAsExpand(dm_form.t_controlliformExpand.Value);
    end
    // ________________________________________________________ Control EDIT ___
    else if dm_form.t_controlliformtipo.Value = 'edit' then
    begin
      control_edit        := To2edit.Create(self);
      control_edit.Parent := FindComponent(dm_form.t_controlliformparent.Value)
                             as TWinControl;
      control_edit.Name          := dm_form.t_controlliformnomecontrollo.Value;
      control_edit.Top           := dm_form.t_controlliformtop.Value;
      control_edit.Left          := dm_form.t_controlliformleft.Value;
      control_edit.Width         := dm_form.t_controlliformlarghezza.Value;
      control_edit.Height        := dm_form.t_controlliformaltezza.Value;
      control_edit.Abilitato     := dm_form.t_controlliformabilitato.Value;
      control_edit.Visibile      := dm_form.t_controlliformvisibile.Value;
      control_edit.Tag           := 99;
      control_edit.ZoomAction    := dm_form.t_controlliformZoomAction.Value;
      control_edit.Azione        := dm_form.t_controlliformazione.Value;
      control_edit.View          := StringReplace(ExtractWord(1,
                                       dm_form.t_controlliformriferimento.Value,
                                                              [chr(129)]),
                                                  chr(127),
                                                  '',
                                                  [rfReplaceAll]);
      control_edit.Field         := ExtractWord(2,
                                       dm_form.t_controlliformriferimento.Value,
                                                [chr(129)]);
      control_edit.Text          := control_edit.Field + '(' +
                                    control_edit.View + ')';
      control_edit.Vocecss       := dm_form.t_controlliformvocecss.Value;
      control_edit.Mask          := dm_form.t_controlliformmaschera.Value;
      control_edit.TabOrder      := dm_form.t_controlliformtaborder.Value;
      control_edit.Parentinfo    := dm_form.t_controlliformparent_info.Value;
      control_edit.Submitonchange:= dm_form.t_controlliformsubmitonchange.Value;
      control_edit.Password      := dm_form.t_controlliformboolean1.Value;
      control_edit.TooltipExp    := dm_form.t_controlliformTooltipExp.Value;
      control_edit.Expand        :=
                            StringAsExpand(dm_form.t_controlliformExpand.Value);
      // ______________________________ If missing field show control in red ___
      if control_edit.Field = '' then
      begin
        control_edit.Color := clRed;
      end;
    end
    // _________________________________________________ Control FILE UPLOAD ___
    else if dm_form.t_controlliformtipo.Value = 'file' then
    begin
      control_file        := To2file.Create(self);
      control_file.Parent := FindComponent(dm_form.t_controlliformparent.Value)
                             as TWinControl;
      control_file.Name          := dm_form.t_controlliformnomecontrollo.Value;
      control_file.Top           := dm_form.t_controlliformtop.Value;
      control_file.Left          := dm_form.t_controlliformleft.Value;
      control_file.Width         := dm_form.t_controlliformlarghezza.Value;
      control_file.Height        := dm_form.t_controlliformaltezza.Value;
      control_file.Abilitato     := dm_form.t_controlliformabilitato.Value;
      control_file.Visibile      := dm_form.t_controlliformvisibile.Value;
      control_file.Tag           := 99;
      control_file.View          := StringReplace(ExtractWord(1,
                                       dm_form.t_controlliformriferimento.Value,
                                                              [chr(129)]),
                                                  chr(127),
                                                  '',
                                                  [rfReplaceAll]);
      control_file.Field         := ExtractWord(2,
                                       dm_form.t_controlliformriferimento.Value,
                                                [chr(129)]);
      control_file.Vocecss       := dm_form.t_controlliformvocecss.Value;
      control_file.TabOrder      := dm_form.t_controlliformtaborder.Value;
      control_file.Parentinfo    := dm_form.t_controlliformparent_info.Value;
      control_file.Submitonchange:= dm_form.t_controlliformsubmitonchange.Value;
      control_file.Expand        :=
                            StringAsExpand(dm_form.t_controlliformExpand.Value);
      // __________________________ Set "Save as" expression (for file name) ___
      if dm_form.t_controlliformextra1.Value <> '' then
      begin
        control_file.Save_as := dm_form.t_controlliformextra1.AsInteger;
      end;
      control_file.Multiple := dm_form.t_controlliformboolean1.Value;
    end
    // ___________________________________________________ Control MULTIPAGE ___
    else if dm_form.t_controlliformtipo.Value = 'multipage' then
    begin
      control_multipage        := To2multipage.Create(self);
      control_multipage.Parent :=
                              FindComponent(dm_form.t_controlliformparent.Value)
                              as TWinControl;
      control_multipage.Name   := dm_form.t_controlliformnomecontrollo.Value;
      control_multipage.Top         := dm_form.t_controlliformtop.Value;
      control_multipage.Left        := dm_form.t_controlliformleft.Value;
      control_multipage.Width       := dm_form.t_controlliformlarghezza.Value;
      control_multipage.Height      := dm_form.t_controlliformaltezza.Value;
      control_multipage.Abilitato   := dm_form.t_controlliformabilitato.Value;
      control_multipage.Visibile    := dm_form.t_controlliformvisibile.Value;
      control_multipage.Tag := 99;
      control_multipage.View        := StringReplace(ExtractWord(1,
                                       dm_form.t_controlliformriferimento.Value,
                                                                 [chr(129)]),
                                                     chr(127),
                                                     '',
                                                     [rfReplaceAll]);
      control_multipage.Field       := ExtractWord(2,
                                       dm_form.t_controlliformriferimento.Value,
                                                   [chr(129)]);
      control_multipage.TabOrder    := dm_form.t_controlliformtaborder.Value;
      control_multipage.Parentinfo  := dm_form.t_controlliformparent_info.Value;
      control_multipage.Tabs.Text   := dm_form.t_controlliformextra1.Value;
      control_multipage.TabIndex    := dm_form.t_controlliformextra2.AsInteger;
      control_multipage.CssBorder   := dm_form.t_controlliformcss1.Value;
      control_multipage.CssBody     := dm_form.t_controlliformcss2.Value;
      control_multipage.CssLabelOn  := dm_form.t_controlliformcss3.Value;
      control_multipage.CssLabelOff := dm_form.t_controlliformcss4.Value;
      control_multipage.Expand      :=
                            StringAsExpand(dm_form.t_controlliformExpand.Value);
      // ______________________________________ Set tabs position (NOT USED) ___
      if dm_form.t_controlliformscelte_possibili.Value = 'L' then
      begin
        control_multipage.TabPosition := tpLeft;
      end
      else if dm_form.t_controlliformscelte_possibili.Value = 'R' then
      begin
        control_multipage.TabPosition := tpRight;
      end
      else if dm_form.t_controlliformscelte_possibili.Value = 'B' then
      begin
        control_multipage.TabPosition := tpBottom;
      end
      else
      begin
        control_multipage.TabPosition := tpTop;
      end
    end
    // _____________________________________________________ Control FLOWBOX ___
    else if dm_form.t_controlliformtipo.Value = 'flowbox' then
    begin
      control_flowbox             := To2flowbox.Create(self);
      control_flowbox.Parent      :=
                              FindComponent(dm_form.t_controlliformparent.Value)
                              as TWinControl;
      control_flowbox.Name        := dm_form.t_controlliformnomecontrollo.Value;
      control_flowbox.Top         := dm_form.t_controlliformtop.Value;
      control_flowbox.Left        := dm_form.t_controlliformleft.Value;
      control_flowbox.Width       := dm_form.t_controlliformlarghezza.Value;
      control_flowbox.Height      := dm_form.t_controlliformaltezza.Value;
      control_flowbox.Visibile    := dm_form.t_controlliformvisibile.Value;
      control_flowbox.Tag         := 99;
      control_flowbox.TabOrder    := dm_form.t_controlliformtaborder.Value;
      control_flowbox.Parentinfo  := dm_form.t_controlliformparent_info.Value;
      control_flowbox.Tabs.Text   := dm_form.t_controlliformextra1.Value;
      control_flowbox.TabIndex    := dm_form.t_controlliformextra2.AsInteger;
      control_flowbox.Css         := dm_form.t_controlliformvocecss.Value;
      control_flowbox.Expand      :=
                            StringAsExpand(dm_form.t_controlliformExpand.Value);
    end
    // _______________________________________________________ Control FRAME ___
    else if dm_form.t_controlliformtipo.Value = 'frame' then
    begin
      control_frame            := To2frame.Create(self);
      control_frame.Parent     :=
                              FindComponent(dm_form.t_controlliformparent.Value)
                              as TWinControl;
      control_frame.Name       := dm_form.t_controlliformnomecontrollo.Value;
      control_frame.Caption    := '';
//      control_frame.Top      := dm_form.t_controlliformtop.Value;
//      control_frame.Left     := dm_form.t_controlliformleft.Value;
      control_frame.Top        := 22;
      control_frame.Left       := 2;
      control_frame.Width      := dm_form.t_controlliformlarghezza.Value;
      control_frame.Height     := dm_form.t_controlliformaltezza.Value;
      control_frame.Visibile   := dm_form.t_controlliformvisibile.Value;
      control_frame.Tag        := 99;
      control_frame.TabOrder   := dm_form.t_controlliformtaborder.Value;
      control_frame.Parentinfo := dm_form.t_controlliformparent_info.Value;
      control_frame.Css        := dm_form.t_controlliformvocecss.Value;
      control_frame.Expand     :=
                            StringAsExpand(dm_form.t_controlliformExpand.Value);
    end
    // ______________________________________________________ Control BUTTON ___
    else if dm_form.t_controlliformtipo.Value = 'button' then
    begin
      control_button       := To2button.Create(self);
      control_button.Parent:= FindComponent(dm_form.t_controlliformparent.Value)
                              as TWinControl;
      control_button.Name      := dm_form.t_controlliformnomecontrollo.Value;
      control_button.Top       := dm_form.t_controlliformtop.Value;
      control_button.Left      := dm_form.t_controlliformleft.Value;
      control_button.Width     := dm_form.t_controlliformlarghezza.Value;
      control_button.Height    := dm_form.t_controlliformaltezza.Value;
      control_button.Tag       := 99;
      control_button.Abilitato := dm_form.t_controlliformabilitato.Value;
      control_button.Visibile  := dm_form.t_controlliformvisibile.Value;
      control_button.Azione    := dm_form.t_controlliformazione.Value;
      control_button.o2Label   := dm_form.t_controlliformcaption.Value;
      control_button.Vocecss   := dm_form.t_controlliformvocecss.Value;
      control_button.Messaggio := dm_form.t_controlliformscelte_possibili.Value;
      control_button.TabOrder  := dm_form.t_controlliformtaborder.Value;
      control_button.Parentinfo := dm_form.t_controlliformparent_info.Value;
      control_button.Format     := control_button.StringAsStyle(
                                           dm_form.t_controlliformextra1.Value);
      control_button.Shortcut   := control_button.StringAsShortcut(
                                           dm_form.t_controlliformextra2.Value);
      control_button.TooltipExp := dm_form.t_controlliformTooltipExp.Value;
      control_button.Expand     :=
                            StringAsExpand(dm_form.t_controlliformExpand.Value);
    end
    // ___________________________________________________ Control IMAGE MAP ___
    else if dm_form.t_controlliformtipo.Value = 'map' then
    begin
      control_map        := To2Map.Create(self);
      control_map.Parent := FindComponent(dm_form.t_controlliformparent.Value)
                            as TWinControl;
      control_map.Name       := dm_form.t_controlliformnomecontrollo.Value;
      control_map.Top        := dm_form.t_controlliformtop.Value;
      control_map.Left       := dm_form.t_controlliformleft.Value;
      control_map.Width      := dm_form.t_controlliformlarghezza.Value;
      control_map.Height     := dm_form.t_controlliformaltezza.Value;
      control_map.Tag        := 99;
      control_map.Abilitato  := dm_form.t_controlliformabilitato.Value;
      control_map.Visibile   := dm_form.t_controlliformvisibile.Value;
      control_map.Azione     := dm_form.t_controlliformazione.Value;
      control_map.Vocecss    := dm_form.t_controlliformvocecss.Value;
      control_map.Messaggio  := dm_form.t_controlliformscelte_possibili.Value;
      control_map.Parentinfo := dm_form.t_controlliformparent_info.Value;
      control_map.Expand     :=
                            StringAsExpand(dm_form.t_controlliformExpand.Value);
    end
    // ______________________________________________ Control LIST/COMBO-BOX ___
    else if dm_form.t_controlliformtipo.Value = 'listbox' then
    begin
      control_listbox       := To2ListBox.Create(self);
      control_listbox.Parent:=FindComponent(dm_form.t_controlliformparent.Value)
                              as TWinControl;
      control_listbox.Name      := dm_form.t_controlliformnomecontrollo.Value;
      control_listbox.Top       := dm_form.t_controlliformtop.Value;
      control_listbox.Left      := dm_form.t_controlliformleft.Value;
      control_listbox.Width     := dm_form.t_controlliformlarghezza.Value;
      control_listbox.Height    := dm_form.t_controlliformaltezza.Value;
      control_listbox.Tag       := 99;
      control_listbox.Abilitato := dm_form.t_controlliformabilitato.Value;
      control_listbox.Visibile  := dm_form.t_controlliformvisibile.Value;
      control_listbox.Azione    := dm_form.t_controlliformazione.Value;
      control_listbox.View      := StringReplace(ExtractWord(1,
                                       dm_form.t_controlliformriferimento.Value,
                                                             [chr(129)]),
                                                 chr(127),
                                                 '',
                                                 [rfReplaceAll]);
      control_listbox.Field     := ExtractWord(2,
                                       dm_form.t_controlliformriferimento.Value,
                                               [chr(129)]);
      control_listbox.Items.Text := control_listbox.Field + '(' +
                                    control_listbox.View + ')';
      control_listbox.ZoomAction := dm_form.t_controlliformZoomAction.Value;
      control_listbox.Vocecss    := dm_form.t_controlliformvocecss.Value;
      control_listbox.TabOrder   := dm_form.t_controlliformtaborder.Value;
      control_listbox.Parentinfo := dm_form.t_controlliformparent_info.Value;
      control_listbox.Scelte   := dm_form.t_controlliformscelte_possibili.Value;
      control_listbox.Rows     := StrToInt(dm_form.t_controlliformextra1.Value);
      control_listbox.Items.Add(dm_form.t_controlliformriferimento.Value);
      control_listbox.Items.Add('lines...');
      control_listbox.Submitonchange :=
                                    dm_form.t_controlliformsubmitonchange.Value;
      control_listbox.TooltipExp     := dm_form.t_controlliformTooltipExp.Value;
      control_listbox.Expand         :=
                            StringAsExpand(dm_form.t_controlliformExpand.Value);
      // ______________________________ If missing field show control in red ___
      if control_listbox.Field = '' then
      begin
        control_listbox.Color := clRed
      end;
    end
    // ____________________________________________________ Control CHECKBOX ___
    else if dm_form.t_controlliformtipo.Value = 'checkbox' then
    begin
      control_checkbox            := To2checkbox.Create(self);
      control_checkbox.Parent     :=
                              FindComponent(dm_form.t_controlliformparent.Value)
                                    as TWinControl;
      control_checkbox.Name       := dm_form.t_controlliformnomecontrollo.Value;
      control_checkbox.Top        := dm_form.t_controlliformtop.Value;
      control_checkbox.Left       := dm_form.t_controlliformleft.Value;
      control_checkbox.Width      := dm_form.t_controlliformlarghezza.Value;
      control_checkbox.Height     := dm_form.t_controlliformaltezza.Value;
      control_checkbox.Tag        := 99;
      control_checkbox.Abilitato  := dm_form.t_controlliformabilitato.Value;
      control_checkbox.Visibile   := dm_form.t_controlliformvisibile.Value;
      control_checkbox.Azione     := dm_form.t_controlliformazione.Value;
      control_checkbox.View       := StringReplace(ExtractWord(1,
                                       dm_form.t_controlliformriferimento.Value,
                                                               [chr(129)]),
                                                   chr(127),
                                                   '',
                                                   [rfReplaceAll]);
      control_checkbox.Field      := ExtractWord(2,
                                       dm_form.t_controlliformriferimento.Value,
                                                 [chr(129)]);
      control_checkbox.Vocecss    := dm_form.t_controlliformvocecss.Value;
      control_checkbox.TabOrder   := dm_form.t_controlliformtaborder.Value;
      control_checkbox.Parentinfo := dm_form.t_controlliformparent_info.Value;
      control_checkbox.Submitonchange :=
                                    dm_form.t_controlliformsubmitonchange.Value;
      control_checkbox.TooltipExp := dm_form.t_controlliformTooltipExp.Value;
      control_checkbox.Expand     :=
                            StringAsExpand(dm_form.t_controlliformExpand.Value);
      // ______________________________ If missing field show control in red ___
      if control_checkbox.Field = '' then
      begin
        control_checkbox.Color := clRed;
      end;
    end
    // ________________________________________ Control AGENT (??? NOT USED) ___
    else if dm_form.t_controlliformtipo.Value = 'agente' then
    begin
      control_agente       := To2agente.Create(self);
      control_agente.Parent:= FindComponent(dm_form.t_controlliformparent.Value)
                              as TWinControl;
      control_agente.Name       := dm_form.t_controlliformnomecontrollo.Value;
      control_agente.Top        := dm_form.t_controlliformtop.Value;
      control_agente.Left       := dm_form.t_controlliformleft.Value;
      control_agente.Width      := dm_form.t_controlliformlarghezza.Value;
      control_agente.Height     := dm_form.t_controlliformaltezza.Value;
      control_agente.Visibile   := dm_form.t_controlliformvisibile.Value;
      control_agente.Caption    := dm_form.t_controlliformriferimento.Value;
      control_agente.Rifagente  := dm_form.t_controlliformriferimento.Value;
      control_agente.TabOrder   := dm_form.t_controlliformtaborder.Value;
      control_agente.Parentinfo := dm_form.t_controlliformparent_info.Value;
    end
    // ________________________________________________ Control GRID (TABLE) ___
    else if dm_form.t_controlliformtipo.Value = 'table' then
    begin
      control_table        := To2table.Create(self);
      control_table.Parent := FindComponent(dm_form.t_controlliformparent.Value)
                              as TWinControl;
      control_table.Name     := dm_form.t_controlliformnomecontrollo.Value;
      control_table.Top      := dm_form.t_controlliformtop.Value;
      control_table.Left     := dm_form.t_controlliformleft.Value;
      control_table.Width    := dm_form.t_controlliformlarghezza.Value;
      control_table.Height   := dm_form.t_controlliformaltezza.Value;
      control_table.Visibile := dm_form.t_controlliformvisibile.Value;
      control_table.HideIndicator  := dm_form.t_controlliformexp1.Value;
      control_table.Tag            := 99;
      control_table.Abilitato      := dm_form.t_controlliformabilitato.Value;
      control_table.View           := StringReplace(
                                       dm_form.t_controlliformriferimento.Value,
                                        chr(127),
                                        '',
                                        [rfReplaceAll]);
      control_table.TabOrder       := dm_form.t_controlliformtaborder.Value;
      control_table.Parentinfo     := dm_form.t_controlliformparent_info.Value;
      control_table.CssDiv         := dm_form.t_controlliformcss1.Value;
      control_table.CssTab         := dm_form.t_controlliformcss2.Value;
      control_table.CssHead        := dm_form.t_controlliformcss3.Value;
      control_table.CssFooter      := dm_form.t_controlliformcss9.Value;
      control_table.CssBody        := dm_form.t_controlliformcss4.Value;
      control_table.CssLine        := dm_form.t_controlliformcss5.Value;
      control_table.CssAlternate   := dm_form.t_controlliformcss6.Value;
      control_table.CssCurrentLine := dm_form.t_controlliformcss8.Value;
      control_table.CssMouseOverLine := dm_form.t_controlliformcss7.Value;
      control_table.NoRecordMessage  :=
                                   dm_form.t_controlliformNorecordmessage.Value;
      control_table.Expand           :=
                            StringAsExpand(dm_form.t_controlliformExpand.Value);
      control_table.Options         := dm_form.t_controlliformGridOptions.Value;
      control_table.PinCols         := dm_form.t_controlliformPinCols.Value;
    end
    // ___________________________________________________ Control TEXT-AREA ___
    else if dm_form.t_controlliformtipo.Value = 'textarea' then
    begin
      control_memo        := To2textarea.Create(self);
      control_memo.Parent := FindComponent(dm_form.t_controlliformparent.Value)
                             as TWinControl;
      control_memo.Name       := dm_form.t_controlliformnomecontrollo.Value;
      control_memo.Top        := dm_form.t_controlliformtop.Value;
      control_memo.Left       := dm_form.t_controlliformleft.Value;
      control_memo.Width      := dm_form.t_controlliformlarghezza.Value;
      control_memo.Height     := dm_form.t_controlliformaltezza.Value;
      control_memo.Abilitato  := dm_form.t_controlliformabilitato.Value;
      control_memo.Visibile   := dm_form.t_controlliformvisibile.Value;
      control_memo.Azione     := dm_form.t_controlliformazione.Value;
      control_memo.ZoomAction := dm_form.t_controlliformZoomAction.Value;
      control_memo.View       := StringReplace(ExtractWord(1,
                                       dm_form.t_controlliformriferimento.Value,
                                                           [chr(129)]),
                                               chr(127),
                                               '',
                                               [rfReplaceAll]);
      control_memo.Field      := ExtractWord(2,
                                       dm_form.t_controlliformriferimento.Value,
                                             [chr(129)]);
      control_memo.Lines.Text := control_memo.Field + '(' +
                                 control_memo.View + ')';
      control_memo.Vocecss    := dm_form.t_controlliformvocecss.Value;
      control_memo.Mask       := dm_form.t_controlliformmaschera.Value;
      control_memo.Htmlarea   := dm_form.t_controlliformboolean1.Value;
      control_memo.TabOrder   := dm_form.t_controlliformtaborder.Value;
      control_memo.Parentinfo := dm_form.t_controlliformparent_info.Value;
      control_memo.TooltipExp := dm_form.t_controlliformTooltipExp.Value;
      control_memo.Expand     :=
                            StringAsExpand(dm_form.t_controlliformExpand.Value);
      // ______________________________ If missing field show control in red ___
      if control_memo.Field = '' then
      begin
        control_memo.Color := clRed;
      end;
      control_memo.Submitonchange :=dm_form.t_controlliformsubmitonchange.Value;
    end
    // _______________________________________________________ Control IMAGE ___
    else if dm_form.t_controlliformtipo.Value = 'image' then
    begin
      control_immagine          := To2image.Create(self);
      control_immagine.Parent   :=
                              FindComponent(dm_form.t_controlliformparent.Value)
                                   as TWinControl;
      control_immagine.Name     := dm_form.t_controlliformnomecontrollo.Value;
      control_immagine.ImageDir := f_work.workdir + 'htdocs\img\';
      control_immagine.ImageFile:=dm_form.t_controlliformscelte_possibili.Value;
      control_immagine.Top        := dm_form.t_controlliformtop.Value;
      control_immagine.Left       := dm_form.t_controlliformleft.Value;
      control_immagine.Width      := dm_form.t_controlliformlarghezza.Value;
      control_immagine.Height     := dm_form.t_controlliformaltezza.Value;
      control_immagine.Abilitato  := dm_form.t_controlliformabilitato.Value;
      control_immagine.Visibile   := dm_form.t_controlliformvisibile.Value;
      control_immagine.Azione     := dm_form.t_controlliformazione.Value;
      control_immagine.Vocecss    := dm_form.t_controlliformvocecss.Value;
      control_immagine.Parentinfo := dm_form.t_controlliformparent_info.Value;
      control_immagine.o2Label    := dm_form.t_controlliformcaption.Value;
      control_immagine.Messaggio  := dm_form.t_controlliformextra2.Value;
      control_immagine.File_name  := dm_form.t_controlliformextra1.AsInteger;
      control_immagine.File_name_rollover :=
                                        dm_form.t_controlliformextra3.AsInteger;
      control_immagine.Submitonchange :=
                                    dm_form.t_controlliformsubmitonchange.Value;
      control_immagine.TabOrder       := dm_form.t_controlliformtaborder.Value;
      control_immagine.Expand         :=
                            StringAsExpand(dm_form.t_controlliformExpand.Value);
    end
    // ____________________________________________ Control SEPARATOR (LINE) ___
    else if dm_form.t_controlliformtipo.Value = 'separator' then
    begin
      control_line        := To2separator.Create(self);
      control_line.Parent := FindComponent(dm_form.t_controlliformparent.Value)
                             as TWinControl;
      control_line.Name       := dm_form.t_controlliformnomecontrollo.Value;
      control_line.Top        := dm_form.t_controlliformtop.Value;
      control_line.Left       := dm_form.t_controlliformleft.Value;
      control_line.Width      := dm_form.t_controlliformlarghezza.Value;
      control_line.Height     := dm_form.t_controlliformaltezza.Value;
      control_line.Visibile   := dm_form.t_controlliformvisibile.Value;
      control_line.Vocecss    := dm_form.t_controlliformvocecss.Value;
      control_line.Parentinfo := dm_form.t_controlliformparent_info.Value;
      control_line.Expand     :=
                            StringAsExpand(dm_form.t_controlliformExpand.Value);
      // __________________________________________________________ NOT USED ___
      control_line.Vertical:= dm_form.t_controlliformcaption.Value = 'vertical';
    end
    // _____________________________________ Control GROUPBOX (??? NOT USED) ___
    else if dm_form.t_controlliformtipo.Value = 'groupbox' then
    begin
      control_groupbox            := To2groupbox.Create(self);
      control_groupbox.Parent     :=
                              FindComponent(dm_form.t_controlliformparent.Value)
                                     as TWinControl;
      control_groupbox.Name       := dm_form.t_controlliformnomecontrollo.Value;
      control_groupbox.Top        := dm_form.t_controlliformtop.Value;
      control_groupbox.Left       := dm_form.t_controlliformleft.Value;
      control_groupbox.Width      := dm_form.t_controlliformlarghezza.Value;
      control_groupbox.Height     := dm_form.t_controlliformaltezza.Value;
      control_groupbox.Abilitato  := dm_form.t_controlliformabilitato.Value;
      control_groupbox.Visibile   := dm_form.t_controlliformvisibile.Value;
      control_groupbox.Caption    := dm_form.t_controlliformcaption.Value;
      control_groupbox.TabOrder   := dm_form.t_controlliformtaborder.Value;
      control_groupbox.Parentinfo := dm_form.t_controlliformparent_info.Value;
    end
    // ___________________________________________________ Control NAVIGATOR ___
    else if dm_form.t_controlliformtipo.Value = 'navigator' then
    begin
      control_navigator        := To2dbnavigator.Create(self);
      control_navigator.Parent :=
                              FindComponent(dm_form.t_controlliformparent.Value)
                                  as TWinControl;
      control_navigator.Name   := dm_form.t_controlliformnomecontrollo.Value;

      if dm_form.t_controlliformextra1.Value = 'vertical' then
      begin
        control_navigator.Kind := sbVertical;
      end;
      control_navigator.Top         := dm_form.t_controlliformtop.Value;
      control_navigator.Left        := dm_form.t_controlliformleft.Value;
      control_navigator.Width       := dm_form.t_controlliformlarghezza.Value;
      control_navigator.Height      := dm_form.t_controlliformaltezza.Value;
      control_navigator.Visibile    := dm_form.t_controlliformvisibile.Value;
      control_navigator.Tag         := 99;
      control_navigator.View        := StringReplace(
                                       dm_form.t_controlliformriferimento.Value,
                                                     chr(127),
                                                     '',
                                                     [rfReplaceAll]);
      control_navigator.TabOrder    := dm_form.t_controlliformtaborder.Value;
      control_navigator.Parentinfo  := dm_form.t_controlliformparent_info.Value;
      control_navigator.CssSlide    := dm_form.t_controlliformcss1.Value;
      control_navigator.CssNavBar   := dm_form.t_controlliformcss2.Value;
      control_navigator.CssFirst    := dm_form.t_controlliformcss3.Value;
      control_navigator.CssPrevPage := dm_form.t_controlliformcss4.Value;
      control_navigator.CssPrev     := dm_form.t_controlliformcss5.Value;
      control_navigator.CssNext     := dm_form.t_controlliformcss6.Value;
      control_navigator.CssNextPage := dm_form.t_controlliformcss7.Value;
      control_navigator.CssLast     := dm_form.t_controlliformcss8.Value;
      control_navigator.CssSpace    := dm_form.t_controlliformcss9.Value;
      control_navigator.CssInsert   := dm_form.t_controlliformcss10.Value;
      control_navigator.CssPost     := dm_form.t_controlliformcss11.Value;
      control_navigator.CssDelete   := dm_form.t_controlliformcss12.Value;
      control_navigator.CssUndo     := dm_form.t_controlliformcss13.Value;
      control_navigator.CssDetail   := dm_form.t_controlliformcss14.Value;
      control_navigator.CssSelect   := dm_form.t_controlliformcss15.Value;
      // ___________________________________________________ Buttons visible ___
      control_navigator.InsertVisible :=
                                     dm_form.t_controlliformInsertVisible.Value;
      control_navigator.PostVisible   :=
                                       dm_form.t_controlliformPostVisible.Value;
      control_navigator.DeleteVisible :=
                                     dm_form.t_controlliformDeleteVisible.Value;
      control_navigator.UndoVisible   :=
                                       dm_form.t_controlliformUndoVisible.Value;
      control_navigator.DetailVisible :=
                                     dm_form.t_controlliformDetailVisible.Value;
      control_navigator.SelectVisible :=
                                     dm_form.t_controlliformSelectVisible.Value;
      // ___________________________________________________ Buttons enabled ___
      control_navigator.InsertEnable  :=
                                      dm_form.t_controlliformInsertEnable.Value;
      control_navigator.PostEnable    :=
                                        dm_form.t_controlliformPostEnable.Value;
      control_navigator.DeleteEnable  :=
                                      dm_form.t_controlliformDeleteEnable.Value;
      control_navigator.UndoEnable    :=
                                        dm_form.t_controlliformUndoEnable.Value;
      control_navigator.DetailEnable  :=
                                      dm_form.t_controlliformDetailEnable.Value;
      control_navigator.SelectEnable  :=
                                      dm_form.t_controlliformSelectEnable.Value;
      // ___________________________________________________ Buttons actions ___
      control_navigator.InsertAction  :=
                                      dm_form.t_controlliformInsertAction.Value;
      control_navigator.PostAction    :=
                                        dm_form.t_controlliformPostAction.Value;
      control_navigator.DeleteAction  :=
                                      dm_form.t_controlliformDeleteAction.Value;
      control_navigator.UndoAction    :=
                                        dm_form.t_controlliformUndoAction.Value;
      control_navigator.DetailAction  :=
                                      dm_form.t_controlliformDetailAction.Value;
      control_navigator.SelectAction  :=
                                      dm_form.t_controlliformSelectAction.Value;
      // __________________________________________________ Buttons messages ___
      control_navigator.InsertConfirmMessage :=
                              dm_form.t_controlliformInsertConfirmMessage.Value;
      control_navigator.PostConfirmMessage   :=
                                dm_form.t_controlliformPostConfirmMessage.Value;
      control_navigator.DeleteConfirmMessage :=
                              dm_form.t_controlliformDeleteConfirmMessage.Value;
      control_navigator.UndoConfirmMessage   :=
                                dm_form.t_controlliformUndoConfirmMessage.Value;
      control_navigator.DetailConfirmMessage :=
                              dm_form.t_controlliformDetailConfirmMessage.Value;
      control_navigator.SelectConfirmMessage :=
                              dm_form.t_controlliformSelectConfirmMessage.Value;
      // ________________________________________________ Navigation buttons ___
      control_navigator.NavigationBlockVisible :=
                            dm_form.t_controlliformNavigationBlockVisible.Value;
      control_navigator.Expand :=
                            StringAsExpand(dm_form.t_controlliformExpand.Value);
    end
    // ___________________________________________________ Control HTML-AREA ___
    else if dm_form.t_controlliformtipo.Value = 'htmlarea' then
    begin
      control_htmlarea            := To2htmlarea.Create(self);
      control_htmlarea.Parent     :=
                              FindComponent(dm_form.t_controlliformparent.Value)
                                     as TWinControl;
      control_htmlarea.Name       := dm_form.t_controlliformnomecontrollo.Value;
      control_htmlarea.Top        := dm_form.t_controlliformtop.Value;
      control_htmlarea.Left       := dm_form.t_controlliformleft.Value;
      control_htmlarea.Width      := dm_form.t_controlliformlarghezza.Value;
      control_htmlarea.Height     := dm_form.t_controlliformaltezza.Value;
      control_htmlarea.Visibile   := dm_form.t_controlliformvisibile.Value;
      control_htmlarea.Vocecss    := dm_form.t_controlliformvocecss.Value;
      control_htmlarea.Parentinfo := dm_form.t_controlliformparent_info.Value;
      control_htmlarea.Html       := dm_form.t_controlliformextra1.AsInteger;
      control_htmlarea.TabOrder   := dm_form.t_controlliformtaborder.Value;
      control_htmlarea.Expand     :=
                            StringAsExpand(dm_form.t_controlliformExpand.Value);
    end
    // ____________________________________________________ Control TREEVIEW ___
    else if dm_form.t_controlliformtipo.Value = 'treeview' then
    begin
      control_tree            := To2tree.Create(self);
      control_tree.Parent     :=
                              FindComponent(dm_form.t_controlliformparent.Value)
                                     as TWinControl;
      control_tree.Name       := dm_form.t_controlliformnomecontrollo.Value;
      control_tree.Top        := dm_form.t_controlliformtop.Value;
      control_tree.Left       := dm_form.t_controlliformleft.Value;
      control_tree.Width      := dm_form.t_controlliformlarghezza.Value;
      control_tree.Height     := dm_form.t_controlliformaltezza.Value;
      control_tree.Visibile   := dm_form.t_controlliformvisibile.Value;
      control_tree.Vocecss    := dm_form.t_controlliformvocecss.Value;
      control_tree.Nodes      := dm_form.t_controlliformextra1.AsInteger;
      control_tree.Azione     := dm_form.t_controlliformazione.Value;
      control_tree.View       := StringReplace(ExtractWord(1,
                                       dm_form.t_controlliformriferimento.Value,
                                                           [chr(129)]),
                                                chr(127),
                                                '',
                                                [rfReplaceAll]);
      control_tree.Field      := ExtractWord(2,
                                       dm_form.t_controlliformriferimento.Value,
                                             [chr(129)]);
      control_tree.Activation := control_tree.StringAsTreeAct(dm_form.
                                         t_controlliformscelte_possibili.Value);
      control_tree.Parentinfo := dm_form.t_controlliformparent_info.Value;
      control_tree.TabOrder   := dm_form.t_controlliformtaborder.Value;
      control_tree.Expand     :=
                            StringAsExpand(dm_form.t_controlliformExpand.Value);
    end
    // _______________________________________________ Control IMAGES-LISTER ___
    else if dm_form.t_controlliformtipo.Value = 'imglist' then
    begin
      control_imglist         := To2imglist.Create(self);
      control_imglist.Parent  :=
                              FindComponent(dm_form.t_controlliformparent.Value)
                                 as TWinControl;
      control_imglist.Name       := dm_form.t_controlliformnomecontrollo.Value;
      control_imglist.Top        := dm_form.t_controlliformtop.Value;
      control_imglist.Left       := dm_form.t_controlliformleft.Value;
      control_imglist.Width      := dm_form.t_controlliformlarghezza.Value;
      control_imglist.Height     := dm_form.t_controlliformaltezza.Value;
      control_imglist.Visibile   := dm_form.t_controlliformvisibile.Value;
      control_imglist.Vocecss    := dm_form.t_controlliformvocecss.Value;
      control_imglist.ImgItems   := dm_form.t_controlliformextra1.AsInteger;
      control_imglist.Azione     := dm_form.t_controlliformazione.Value;
      control_imglist.Delete     := dm_form.t_controlliformextra2.Value;
      control_imglist.ImgItemWidth  := dm_form.t_controlliformexp1.AsInteger;
      control_imglist.ImgItemHeight := dm_form.t_controlliformexp2.AsInteger;
      control_imglist.View       := StringReplace(ExtractWord(1,
                                       dm_form.t_controlliformriferimento.Value,
                                                              [chr(129)]),
                                                  chr(127),
                                                  '',
                                                  [rfReplaceAll]);
      control_imglist.Field      := ExtractWord(2,
                                       dm_form.t_controlliformriferimento.Value,
                                                [chr(129)]);
      control_imglist.Parentinfo := dm_form.t_controlliformparent_info.Value;
      control_imglist.TabOrder   := dm_form.t_controlliformtaborder.Value;
      control_imglist.Expand     :=
                            StringAsExpand(dm_form.t_controlliformExpand.Value);
    end
    // ________________________________________________ Control PROGRESS-BAR ___
    else if dm_form.t_controlliformtipo.Value = 'progress' then
    begin
      control_progress         := To2progress.Create(self);
      control_progress.Parent  :=
                              FindComponent(dm_form.t_controlliformparent.Value)
                                 as TWinControl;
      control_progress.Name       := dm_form.t_controlliformnomecontrollo.Value;
      control_progress.Top        := dm_form.t_controlliformtop.Value;
      control_progress.Left       := dm_form.t_controlliformleft.Value;
      control_progress.Width      := dm_form.t_controlliformlarghezza.Value;
      control_progress.Height     := dm_form.t_controlliformaltezza.Value;
      control_progress.Visibile   := dm_form.t_controlliformvisibile.Value;
      control_progress.Vocecss    := dm_form.t_controlliformvocecss.Value;
      control_progress.Value      := dm_form.t_controlliformextra1.AsInteger;
      control_progress.StartAct   := dm_form.t_controlliformazione.Value;
      control_progress.EndAct     := dm_form.t_controlliformextra2.Value;
      control_progress.Parentinfo := dm_form.t_controlliformparent_info.Value;
      control_progress.Expand     :=
                            StringAsExpand(dm_form.t_controlliformExpand.Value);
    end
    // ____________________________________________________ Control DOCUMENT ___
    else if dm_form.t_controlliformtipo.Value = 'document' then
    begin
      control_document            := To2document.Create(self);
      control_document.Parent     :=
                              FindComponent(dm_form.t_controlliformparent.Value)
                                     as TWinControl;
      control_document.Name       := dm_form.t_controlliformnomecontrollo.Value;
      control_document.Top        := dm_form.t_controlliformtop.Value;
      control_document.Left       := dm_form.t_controlliformleft.Value;
      control_document.Width      := dm_form.t_controlliformlarghezza.Value;
      control_document.Height     := dm_form.t_controlliformaltezza.Value;
      control_document.Visibile   := dm_form.t_controlliformvisibile.Value;
      control_document.Vocecss    := dm_form.t_controlliformvocecss.Value;
      control_document.Parentinfo := dm_form.t_controlliformparent_info.Value;
      control_document.Path       := dm_form.t_controlliformextra1.AsInteger;
      control_document.Picture    := o2document1.Picture;
      control_document.Stretch    := True;
      control_document.Expand     :=
                            StringAsExpand(dm_form.t_controlliformExpand.Value);
    end;
  end
  // _____________________________________________________________ No parent ___
  else
  begin
    dm_form.t_controlliform.Locate('nomecontrollo',
                                   dm_form.t_controlliformparent.Value,
                                   []);
    carica_controlliExecute(self);
  end;
end;


procedure Tf_areaform.salva_formExecute(Sender: TObject);
var
  xform:      TJvCustomPanel;
  xform_area: TDsnStage;
  parent_top, parent_left : integer;
  parent_orizzontalalign, parent_verticalalign: string;
begin

  if MessageDlg('Save changes?', mtConfirmation, [mbYes, mbNo], 1) = mrYes then
  begin

    // scrive modifiche

    dm_form.t_form.First;
    repeat
      if dm_form.t_formtmpselez.Value then
      begin
        xform      := f_areaform.findcomponent(dm_form.t_formnomeform.Value) as
                      TJvCustomPanel;
        xform_area := f_areaform.findcomponent('_stage_' +
                                               dm_form.t_formnomeform.Value) as
                      TDsnStage;
        parent_top            := 0;
        parent_left           := 0;
        altezza_form_parent   := 0;
        larghezza_form_parent := 0;
        // _____________ Child form -position Top/Left is relative to parent ___
        if dm_form.t_formparentform.Value <> '' then
        begin
          parent_top             := dm_form.t_form.Lookup('nomeform',
                                              dm_form.t_formparentform.AsString,
                                                          'top');
          parent_left            := dm_form.t_form.Lookup('nomeform',
                                              dm_form.t_formparentform.AsString,
                                                          'left');
          parent_orizzontalalign := dm_form.t_form.Lookup('nomeform',
                                              dm_form.t_formparentform.AsString,
                                                          'orizzalign');
          parent_verticalalign   := dm_form.t_form.Lookup('nomeform',
                                              dm_form.t_formparentform.AsString,
                                                          'vertalign');
          altezza_form_parent   := dm_form.t_form.Lookup('nomeform',
                                              dm_form.t_formparentform.AsString,
                                                         'altezza');
          larghezza_form_parent := dm_form.t_form.Lookup('nomeform',
                                              dm_form.t_formparentform.AsString,
                                                         'larghezza');
          if parent_orizzontalalign = 'Center' then
          begin
            parent_left := ((larghezza_form + SidePanelWidth) div 2) -
                           parent_left;
          end
          else if parent_orizzontalalign = 'Right' then
          begin
            parent_left:= larghezza_form - parent_left - SidePanelWidth;
          end;
          if parent_verticalalign = 'Middle' then
          begin
            parent_top := (altezza_form div 2) - parent_top;
          end
          else if parent_verticalalign = 'Bottom' then
          begin
            parent_top := altezza_form - parent_top;
          end;
        end;
        dm_form.t_form.Edit;
        // _________________________ Set form vertical position by alignment ___
        if dm_form.t_formvertalign.Value = 'Top' then
        begin
           dm_form.t_formtop.Value := xform.Top - parent_top;
        end
        else if dm_form.t_formvertalign.Value = 'Bottom' then
        begin
          dm_form.t_formtop.Value := altezza_form -
                                     (xform.Top + xform.Height);
        end
        else if dm_form.t_formvertalign.Value = 'Middle' then
        begin
          dm_form.t_formtop.Value := (altezza_form div 2) - xform.Top;
        end;
        // _____________________________________________ Top < 0 not allowed ___
        dm_form.t_formtop.Value:= max(0, dm_form.t_formtop.Value);
        // _______________________ Set form horizontal position by alignment ___
        if dm_form.t_formorizzalign.Value = 'Left' then
        begin
          if larghezza_form_parent <> 0 then
          begin
            dm_form.t_formleft.Value := xform.Left - parent_left;
          end
          else
          begin
            dm_form.t_formleft.Value := xform.Left - SidePanelWidth;
          end;
        end
        else if dm_form.t_formorizzalign.Value = 'Right' then
        begin
          dm_form.t_formleft.Value := larghezza_form -
                                      (xform.Left + xform.Width);
        end
        else if dm_form.t_formorizzalign.Value = 'Center' then
        begin
          dm_form.t_formleft.Value := ((larghezza_form + SidePanelWidth) div 2)
                                      - xform.Left;
        end;

        dm_form.t_formaltezza.Value   := xform.Height;
        dm_form.t_formlarghezza.Value := xform.Width;

        //controlli figli azzera
        dm_form.t_controlliform.First;
        while not (dm_form.t_controlliform.EOF) do
        begin
          dm_form.t_controlliform.Delete;
        end;
        salva_controlliExecute(self, xform_area);
      end;
      dm_form.t_form.Next;
    until dm_form.t_form.EOF;

  end;

end;


procedure Tf_areaform.Nextpage1Click(Sender: TObject);
begin
  if (Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2multipage') or
     (Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2flowbox') then
  begin
    tmp_tabctrl := Dsn8Register1.DsnStage.Targets[0] as TTabControl;
    tmp_tabctrl.TabIndex := tmp_tabctrl.TabIndex + 1;
    attiva_figli_tabsheet(self, tmp_tabctrl, tmp_tabctrl.TabIndex);
  end;
end;


procedure Tf_areaform.attiva_figli_tabsheet(Sender: TObject;
                                            controllo: TWinControl;
                                            tab_attivo: integer);
var
  i: integer;
begin
  // _____________________________________ Show controls on active page only ___
  for i := 0 to controllo.ControlCount - 1 do
  begin
    if GetPropValue(controllo.Controls[i], 'Parentinfo', True) = tab_attivo then
    begin
      controllo.Controls[i].Visible := True;
    end
    else
    begin
      controllo.Controls[i].Visible := False;
    end;
  end;
end;


procedure Tf_areaform.flowbox_panels(flowbox: To2flowbox);
var
  i, t, ts: integer;
  new_panel: To2frame;
  found: Boolean;
begin
  ts := flowbox.Tabs.Count;
  for t := 0 to ts - 1 do
  begin
    found := False;
    for i := 0 to flowbox.ControlCount - 1 do
    begin
      if StrToInt(GetPropValue(flowbox.Controls[i], 'Parentinfo', True)) = t
      then
      begin
        if flowbox.Controls[i].ClassName = 'To2frame' then
        begin
          found := True;
          Break;
        end;
      end;
    end;
    // ________________________________________________ Add panel if missing ___
    if not found then
    begin
      new_panel            := To2frame.Create(Self);
      new_panel.Tag        := 99; // _____________________ Disable skins ??? ___
      new_panel.Name       := flowbox.Name + '_Panel' + IntToStr(t);
      new_panel.Caption    := '';
      new_panel.Top        := 22;
      new_panel.Left       := 2;
      new_panel.Height     := Min(Trunc((flowbox.Height - 24) / 10) * 10, 100);
      new_panel.Width      := Min(Trunc((flowbox.Width - 4) / 10) * 10, 200);
      new_panel.Parent     := flowbox as TWinControl;
      new_panel.Parentname := flowbox.Name;
      SetPropValue(new_panel, 'Parentinfo', IntToStr(t));
      Dsn8Register1.SetSubClass(TWinControl(new_panel));
    end;
  end;
end;


procedure Tf_areaform.Previouspage1Click(Sender: TObject);
begin
  if (Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2multipage') or
     (Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2flowbox') then
  begin
    tmp_tabctrl := Dsn8Register1.DsnStage.Targets[0] as TTabControl;
    tmp_tabctrl.TabIndex := tmp_tabctrl.TabIndex - 1;
    attiva_figli_tabsheet(self, tmp_tabctrl, tmp_tabctrl.TabIndex);
  end;
end;


procedure Tf_areaform.arrange_tabctrl(form_control: TWinControl);
var
  i: integer;
begin
  for i := 0 to form_control.ControlCount - 1 do
  begin
    if (form_control.Controls[i].ClassName = 'To2multipage') or
       (form_control.Controls[i].ClassName = 'To2flowbox') then
    begin
      tmp_tabctrl := form_control.Controls[i] as TTabControl;
      attiva_figli_tabsheet(self, tmp_tabctrl, tmp_tabctrl.TabIndex);
      // ___________________________ Needed for nested multipage and flowbox ___
      arrange_tabctrl(tmp_tabctrl);
    end;
  end;
end;


procedure Tf_areaform.Copy1Click(Sender: TObject);
begin
  Dsn8Register1.DsnStage.Copy
end;

procedure Tf_areaform.Paste1Click(Sender: TObject);
begin

  Dsn8Register1.DsnStage.Paste;

end;


procedure Tf_areaform.unlink_parentExecute(Sender: TObject);
begin
  change_padreExecute(Dsn8Register1.DsnStage.Targets[0] as
    TControl, Dsn8Register1.DsnStage as TWinControl);
end;


procedure Tf_areaform.change_padreExecute(Componente: TControl; Nuovo_parent: TWinControl);
var vecchiopadre: TWinControl;
begin
   vecchiopadre:=Componente.Parent;

   if vecchiopadre.Name <> Nuovo_parent.Name then
   begin
    Componente.Parent := Nuovo_parent AS TControl;

    // riassegna posizione in base al precedente parent
    Componente.Top:= Componente.Top + vecchiopadre.Top;
    Componente.Left:= Componente.Left + vecchiopadre.Left;
   end;
end;


procedure Tf_areaform.Cut1Click(Sender: TObject);
begin
  Dsn8Register1.DsnStage.Cut;
end;


procedure Tf_areaform.centra_orizzClick(Sender: TObject);
var i : integer;
begin
// loop-pa sui selezionati e  piazza al centro
   for i:= 0 to Dsn8Register1.DsnStage.TargetsCount - 1 do
   begin
    Dsn8Register1.DsnStage.Targets[i].Left:= (Dsn8Register1.DsnStage.Width - Dsn8Register1.DsnStage.Targets[i].Width) div 2;
   end;


end;


procedure Tf_areaform.centra_vertClick(Sender: TObject);
var i : integer;
begin
// loop-pa sui selezionati e  piazza al centro  verticalmente
   for i:= 0 to Dsn8Register1.DsnStage.TargetsCount - 1 do
   begin
    Dsn8Register1.DsnStage.Targets[i].Top:= (Dsn8Register1.DsnStage.Height - Dsn8Register1.DsnStage.Targets[i].Height) div 2;
   end;


end;






procedure Tf_areaform.vertSpace1Click(Sender: TObject);
var gap, i: integer;
begin

  if Dsn8Register1.DsnStage.Targets[1].top > Dsn8Register1.DsnStage.Targets[0].top
  then
  begin
  gap :=
  Dsn8Register1.DsnStage.Targets[1].top -
  (Dsn8Register1.DsnStage.Targets[0].Top + Dsn8Register1.DsnStage.Targets[0].Height);


  for i := 2 to Dsn8Register1.DsnStage.TargetsCount - 1 do
  begin
    Dsn8Register1.DsnStage.Targets[i].top:=
     (Dsn8Register1.DsnStage.Targets[i-1].top + Dsn8Register1.DsnStage.Targets[i-1].height + gap)

   end;

  Dsn8Register1.DsnStage.UpdateControl;
  end;
end;

procedure Tf_areaform.horiSpace1Click(Sender: TObject);
var gap, i: integer;
begin

  if Dsn8Register1.DsnStage.Targets[1].Left > Dsn8Register1.DsnStage.Targets[0].left
  then

  begin
  gap :=
  Dsn8Register1.DsnStage.Targets[1].left -
  (Dsn8Register1.DsnStage.Targets[0].left + Dsn8Register1.DsnStage.Targets[0].Width);


   for i := 2 to Dsn8Register1.DsnStage.TargetsCount - 1 do
   begin
    Dsn8Register1.DsnStage.Targets[i].Left:=
     (Dsn8Register1.DsnStage.Targets[i-1].Left + Dsn8Register1.DsnStage.Targets[i-1].Width + gap)

   end;

   Dsn8Register1.DsnStage.UpdateControl;
  end;
end;

procedure Tf_areaform.posizioni_in_tabellaExecute(Sender: TObject; tabella : To2table);
var i,n,linea_corrente, linea_prec, ingombro_vert, prec_right : integer;
incrementato: Boolean;
begin

  // calcola parent options
 for i:=0 to tabella.ControlCount -1 do
 begin

   if  (tabella.Controls[i].ClassName <> 'To2dbnavigator') and (tabella.Controls[i].Name <> '') then
   begin
     dm_form.tmp_postab.InsertRecord([
     tabella.Name,
     tabella.Controls[i].Name,
     tabella.Controls[i].Left,
     tabella.Controls[i].Top,
     tabella.Controls[i].Width,
     tabella.Controls[i].Height,0,0,0, tabella.Controls[i].Left + tabella.Controls[i].Width
    ]);

   end;
 end;

 dm_form.tmp_postab.Filter:= 'nomepadre =' + chr(39) + tabella.Name + chr(39) ;
 dm_form.tmp_postab.Filtered:= true;

 // determina line
 dm_form.tmp_postab.IndexFieldNames:='top';
 dm_form.tmp_postab.First;
 linea_corrente:=1;
 ingombro_vert:=10000;
 while not(dm_form.tmp_postab.Eof) do
 begin
   if dm_form.tmp_postabtop.Value >= ingombro_vert then
   begin
    ingombro_vert:=10000;
    inc(linea_corrente);
   end;
   ingombro_vert:=min(ingombro_vert,dm_form.tmp_postabtop.Value + dm_form.tmp_postabaltezza.Value);

   dm_form.tmp_postab.Edit;
   dm_form.tmp_postabline.Value:=linea_corrente;
   dm_form.tmp_postab.Post;

   dm_form.tmp_postab.Next;
 end;


   //determina DACOLONNA
   n:=0;
   linea_prec:=0;
   incrementato:=false;
   prec_right:=0;
   dm_form.tmp_postab.IndexFieldNames:='left';
   dm_form.tmp_postab.First;
   while not (dm_form.tmp_postab.Eof) do
   begin


       if dm_form.tmp_postabline.Value = linea_prec then
       begin
        inc(n);
        incrementato:=true;
       end
       else

         if (dm_form.tmp_postableft.Value >= prec_right) or
            ((dm_form.tmp_postableft.Value + dm_form.tmp_postabwidth.Value) <= prec_right) and (not (incrementato))
         then
         begin
          inc(n);
          incrementato:=true;
         end
         else incrementato:= false;


       dm_form.tmp_postab.Edit;
       dm_form.tmp_postabdacol.Value:=n;
       dm_form.tmp_postab.Post;

       prec_right:= dm_form.tmp_postableft.Value + dm_form.tmp_postabwidth.Value;
       linea_prec:= dm_form.tmp_postabline.Value;

       dm_form.tmp_postab.Next
   end;


    //determina ACOLONNA
   n:=0;
   prec_right:=0;
   dm_form.tmp_postab.IndexFieldNames:='left+width';
   dm_form.tmp_postab.First;
   while not (dm_form.tmp_postab.Eof) do
   begin

       if dm_form.tmp_postableftwidth.Value > prec_right then inc(n);

       dm_form.tmp_postab.Edit;
       dm_form.tmp_postabacol.Value:=n;
       dm_form.tmp_postab.Post;

       prec_right:= dm_form.tmp_postableftwidth.Value;

       dm_form.tmp_postab.Next
   end;

  dm_form.tmp_postab.Filtered:= false;

end;


{*
 * Reset column position informations in parent-info  
 *}
function Tf_areaform.calcola_parent_info(controllo: TControl;
                                         parentinfo: string): String;
var
  tmp : string;
begin
   // ______________________________________________ Read positions TMP file ___
   if dm_form.tmp_postab.Locate('nomecontrollo', controllo.Name, []) then
   begin
     parentinfo := StringReplace(StringReplace(parentinfo,
                                               '§ ',
                                               '§',
                                               [rfReplaceAll]),
                                 ' §',
                                 '§',
                                 [rfReplaceAll]);
     tmp := '"' + LeftPadCh(dm_form.tmp_postabline.AsString, chr(48), 2) +
            '"§"' + LeftPadCh(dm_form.tmp_postabdacol.AsString, chr(48), 2) +
            '"§"' + LeftPadCh(dm_form.tmp_postabacol.AsString, chr(48), 2) +
            '"';
     Result := tmp + StrMid(parentinfo, 15, 300);
   end;
end;



procedure Tf_areaform.scrollRight1Click(Sender: TObject);
begin

    if Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2table' then
    begin
      tmp_table := Dsn8Register1.DsnStage.Targets[0] as To2table;
      tmp_table.HorzScrollBar.Position:=tmp_table.HorzScrollBar.Position + 500;
    end;

end;



procedure Tf_areaform.scrollLeft1Click(Sender: TObject);
begin
    if Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2table' then
    begin
      tmp_table := Dsn8Register1.DsnStage.Targets[0] as To2table;
      tmp_table.HorzScrollBar.Position:=tmp_table.HorzScrollBar.Position - 500;
    end;
end;

procedure Tf_areaform.DesignOFF1Click(Sender: TObject);
begin
  DsnSwitch1.DesignOff;
end;

procedure Tf_areaform.DesignON1Click(Sender: TObject);
begin
  DsnSwitch1.DesignOn;
end;

function Tf_areaform.CercaElementoTree(st: String;
  Nodo: TTreeNode): Integer;

var n: Integer;
begin
Result:=-1;
if Nodo.HasChildren then
for n:=0 to Nodo.Count-1 do
  begin
   // ShowMessage(Nodo[n].Text);
    if Nodo[n].Text=st then
    begin
      Result:=n;
      break;
    end
  end;  ;
end;

procedure Tf_areaform.Splitter1Moved(Sender: TObject);
var
  i, delta : integer;
begin
  delta            := ContentDock.Width - SidePanelWidth;
  SidePanelWidth   := ContentDock.Width;
  f_areaform.Width := f_areaform.Width + delta;
  larghezza_form   := f_areaform.Width;
  for i := 0 to f_areaform.ControlCount - 1 do
  begin
    if f_areaform.Controls[i].ClassName = 'TJvCaptionPanel' then
    begin
      f_areaform.Controls[i].Left := f_areaform.Controls[i].Left + delta;
    end;
  end;
end;


procedure Tf_areaform.SaveObjectsToFile(Sender: TObject);
var
  i: integer;
  StrStream: TStringStream;
  BinStream: TMemoryStream;
  s: string;
  FullData: string;
begin
  // ________________________________________ Create full data string stream ___
  StrStream := TStringStream.Create(s);
  for i := 0 to Dsn8Register1.DsnStage.TargetsCount - 1 do
  begin
    // _____________________________ Create binary stream for single control ___
    BinStream := TMemoryStream.Create;
    BinStream.WriteComponent(Dsn8Register1.DsnStage.Targets[i] as TControl);
    BinStream.Seek(0, soFromBeginning);
    // _____________________________ Add from binary stream to string stream ___
    ObjectBinaryToText(BinStream, StrStream);
    // __________________________________________________ Free binary stream ___
    BinStream.Free;
  end;
  // __________________________________________ Read full data string stream ___
  StrStream.Seek(0, soFromBeginning);
  FullData := StrStream.DataString;
  // ____________________________________________________ Free string stream ___
  StrStream.Free;

//  for i := 0 to Dsn8Register1.DsnStage.TargetsCount - 1 do
//  begin
//    Dsn8Register1.DsnStage.Targets[i].Free;
//  end;
//  LoadObjectsFromFile(Sender, FullData);
ShowMessage(FullData);

end;


procedure Tf_areaform.LoadObjectsFromFile(Sender: TObject; TextData: string);
var
  StrStream: TStringStream;
  BinStream: TMemoryStream;
begin
  StrStream := TStringStream.Create(TextData);
  BinStream := TMemoryStream.Create;
  ObjectTextToBinary(StrStream, BinStream);
  BinStream.Seek(0, soFromBeginning);
  BinStream.ReadComponent(nil);
  BinStream.Free;
  StrStream.Free;
end;


function Tf_areaform.StringAsExpand(Value: string): TCtrlExpand;
begin
  if Value = 'H' then
  begin
    Result := HorizontalExpand;
  end
  else if Value = 'V' then
  begin
    Result := VerticalExpand;
  end
  else if Value = 'B' then
  begin
    Result := BothExpand;
  end
  else
  begin
    Result := NoExpand;
  end;
end;


function Tf_areaform.ExpandAsString(const Value: TCtrlExpand): String;
begin
  if Value = HorizontalExpand then
  begin
    Result := 'H';
  end
  else if Value = VerticalExpand then
  begin
    Result := 'V';
  end
  else if Value = BothExpand then
  begin
    Result := 'B';
  end
  else
  begin
    Result := '';
  end
end;


{*
 * Define context menu depending on selected controls
 *}
procedure Tf_areaform.PopupMenu1Popup(Sender: TObject);
begin
  // _____________________________________________________________ Design ON ___
  if DsnSwitch1.Down then
  begin
    Copy1.Visible            := True;
    Cut1.Visible             := True;
    Paste1.Visible           := True;
    DesignON1.Visible        := False;
    Arrangechildren1.Visible := False;
    // ____________________________________ At least one control is selected ___
    if Dsn8Register1.DsnStage.TargetsCount > 0 then
    begin
      sepmenuSend.Visible := True;
      back.Visible        := True;
      front.Visible       := True;
      // _____________________________________________ Multipage and Flowbox ___
      if (Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2multipage') or
         (Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2flowbox') then
      begin
        sepmenuMultipage.Visible := True;
        Nextpage1.Visible        := True;
        Previouspage1.Visible    := True;
        Selectchildren1.Visible  := True;
      end
      else
      begin
        sepmenuMultipage.Visible := False;
        Nextpage1.Visible        := False;
        Previouspage1.Visible    := False;
        Selectchildren1.Visible  := False;
      end;
      // _____________________________________________________________ Frame ___
      if Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2frame' then
      begin
        Selectchildren1.Visible := True;
      end;
      // ______________________________________________________________ Grid ___
      if Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2table' then
      begin
        Selectchildren1.Visible  := True;
        Arrangechildren1.Visible := True;
        sepmenuTab.Visible       := True;
        if To2table(Dsn8Register1.DsnStage.Targets[0]).HorzScrollBar.IsScrollBarVisible then
        begin
          scrollLeft1.Visible  := True;
          scrollRight1.Visible := True;
          DesignOFF1.Visible   := True;
        end;
      end
      else
      begin
        sepmenuTab.Visible   := False;
        scrollLeft1.Visible  := False;
        scrollRight1.Visible := False;
        DesignOFF1.Visible   := False;
      end;
      // __________________________________________ Items for multiselection ___
      if Dsn8Register1.DsnStage.TargetsCount > 1 then
      begin
        sepmenuAlign.Visible    := True;
        Alignleft1.Visible      := True;
        Rightalign1.Visible     := True;
        Topalign1.Visible       := True;
        Bottomalign1.Visible    := True;
        sepmenuSize.Visible     := True;
        MaxWidth1.Visible       := True;
        Minwidth1.Visible       := True;
        Maxheight1.Visible      := True;
        Minheight1.Visible      := True;
        Selectchildren1.Visible := False;
        // _________________________________________ Items for equal spacing ___
        {
        if Dsn8Register1.DsnStage.TargetsCount > 2 then
        begin
          sepmenuSpace.Visible := True;
          vertSpace1.Visible   := True;
          horiSpace1.Visible   := True;
        end
        else
        begin
          sepmenuSpace.Visible := False;
          vertSpace1.Visible   := False;
          horiSpace1.Visible   := False;
        end;
        }
      end
      else
      begin
        sepmenuAlign.Visible := False;
        Alignleft1.Visible   := False;
        Rightalign1.Visible  := False;
        Topalign1.Visible    := False;
        Bottomalign1.Visible := False;
        sepmenuSize.Visible  := False;
        MaxWidth1.Visible    := False;
        Minwidth1.Visible    := False;
        Maxheight1.Visible   := False;
        Minheight1.Visible   := False;
        sepmenuSpace.Visible := False;
        vertSpace1.Visible   := False;
        horiSpace1.Visible   := False;
      end;
    end
    else
    begin
      sepmenuSend.Visible      := False;
      back.Visible             := False;
      front.Visible            := False;
      sepmenuMultipage.Visible := False;
      Nextpage1.Visible        := False;
      Previouspage1.Visible    := False;
      sepmenuTab.Visible       := False;
      scrollLeft1.Visible      := False;
      scrollRight1.Visible     := False;
      sepmenuAlign.Visible     := False;
      Alignleft1.Visible       := False;
      Rightalign1.Visible      := False;
      Topalign1.Visible        := False;
      Bottomalign1.Visible     := False;
      sepmenuSize.Visible      := False;
      MaxWidth1.Visible        := False;
      Minwidth1.Visible        := False;
      Maxheight1.Visible       := False;
      Minheight1.Visible       := False;
      sepmenuSpace.Visible     := False;
      vertSpace1.Visible       := False;
      horiSpace1.Visible       := False;
      Selectchildren1.Visible  := True;
    end
  end
  // ____________________________________ Design OFF - Return to design mode ___
  else
  begin
    Copy1.Visible            := False;
    Cut1.Visible             := False;
    Paste1.Visible           := False;
    sepmenuSend.Visible      := False;
    back.Visible             := False;
    front.Visible            := False;
    sepmenuMultipage.Visible := False;
    Nextpage1.Visible        := False;
    Previouspage1.Visible    := False;
    sepmenuTab.Visible       := False;
    scrollLeft1.Visible      := False;
    scrollRight1.Visible     := False;
    sepmenuAlign.Visible     := False;
    Alignleft1.Visible       := False;
    Rightalign1.Visible      := False;
    Topalign1.Visible        := False;
    Bottomalign1.Visible     := False;
    sepmenuSize.Visible      := False;
    MaxWidth1.Visible        := False;
    Minwidth1.Visible        := False;
    Maxheight1.Visible       := False;
    Minheight1.Visible       := False;
    sepmenuSpace.Visible     := False;
    vertSpace1.Visible       := False;
    horiSpace1.Visible       := False;
    DesignON1.Visible        := True;
    DesignOFF1.Visible       := False;
  end;
end;

procedure Tf_areaform.Selectchildren1Click(Sender: TObject);
var
  i: Integer;
  ctrlObj: TControl;
  ctrlCont: TWinControl;
  List: TList;
begin
  if Dsn8Register1.DsnStage.TargetsCount > 0 then
  begin
    ctrlCont := Dsn8Register1.DsnStage.Targets[0] as TWinControl;
    List     := TList.Create;
    // ______________________ Multipage: select controls on active page only ___
    if ctrlCont.ClassName = 'To2multipage' then
    begin
      for i := 0 to ctrlCont.ControlCount - 1 do
      begin
        if GetPropValue(ctrlCont.Controls[i], 'Parentinfo', True) =
           (ctrlCont as TTabControl).TabIndex then
        begin
          ctrlObj := ctrlCont.Controls[i];
          List.Add(ctrlObj);
        end;
      end;
      DsnSelect1.MultipleSelect(List);
    end
    // ________________________ Flowbox: select controls inside active frame ___
    else if ctrlCont.ClassName = 'To2flowbox' then
    begin
      for i := 0 to ctrlCont.ControlCount - 1 do
      begin
        if GetPropValue(ctrlCont.Controls[i], 'Parentinfo', True) =
           (ctrlCont as TTabControl).TabIndex then
        begin
          ctrlObj := ctrlCont.Controls[i];
          Break;
        end;
      end;
      Dsn8Register1.DsnInspector.ChangeTarget(ctrlObj);
      Selectchildren1Click(Self);
    end
    // ________________________ Grid and Frame: select all children controls ___
    else
    begin
      for i := 0 to ctrlCont.ControlCount - 1 do
      begin
        ctrlObj := ctrlCont.Controls[i];
        List.Add(ctrlObj);
      end;
      DsnSelect1.MultipleSelect(List);
    end;
  end
  // ____________________________ Window: select all controls in active form ___
  else
  begin
    ctrlCont := Dsn8Register1.DsnStage as TWinControl;
    List     := TList.Create;
    for i := 0 to ctrlCont.ControlCount - 1 do
    begin
      ctrlObj := ctrlCont.Controls[i];
      List.Add(ctrlObj);
    end;
    DsnSelect1.MultipleSelect(List);
  end;

end;

procedure Tf_areaform.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // ___________________________________ CTRL + A to select control children ___
  if (ssCtrl in Shift) and (Key = 65) then
  begin
    // _____________________________________ If fired on a container or form ___
    if ((Dsn8Register1.DsnStage.TargetsCount < 1) or
        (Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2multipage') or
        (Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2flowbox') or
        (Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2table') or
        (Dsn8Register1.DsnStage.Targets[0].ClassName = 'To2frame')) then
    begin
      Selectchildren1Click(Self);
    end;
  end;
end;

procedure Tf_areaform.Arrangechildren1Click(Sender: TObject);
var
  i: Integer;
  ctrlCont: TWinControl;
  ctrlObj, ctrlAdd: TControl;
  uList, oList: TList;
  lineX : Integer;
  nav : To2dbnavigator;
begin
  if Dsn8Register1.DsnStage.TargetsCount > 0 then
  begin
    ctrlCont := Dsn8Register1.DsnStage.Targets[0] as TWinControl;
    // __________________________________ Grid: select all children controls ___
    if ctrlCont.ClassName = 'To2table' then
    begin
      uList := TList.Create;
      oList := TList.Create;
      for i := 0 to ctrlCont.ControlCount - 1 do
      begin
        ctrlObj := ctrlCont.Controls[i];
        // ______ Navigator: manage position and size according to container ___
        if ctrlObj.ClassName = 'To2dbnavigator' then
        begin
          nav := ctrlObj as To2dbnavigator;
          if (nav.Kind = sbHorizontal) then
          begin
            if nav.Width > (ctrlCont.Width - 10) then
            begin
              nav.Width := ctrlCont.Width - 10;
            end;
          ctrlObj.Top  := ctrlCont.Height - 30 - nav.Height;
          ctrlObj.Left := 0;
          end
          else
          begin
            if nav.Height > (ctrlCont.Height - 70) then
            begin
              nav.Height := ctrlCont.Height - 70;
            end;
          ctrlObj.Top  := 40;
          ctrlObj.Left := ctrlCont.Width - ctrlObj.Width - 10;
          end;
        end
        // ______________________ Add other controls to list to be processed ___
        else
        begin
          uList.Add(ctrlObj);
        end;
      end;
      // ____________________ Sort controls in a new list from left to right ___
      while uList.Count > 0 do
      begin
        ctrlAdd := nil;
        for i := 0 to uList.Count - 1 do
        begin
          ctrlObj := uList[i];
          if (ctrlAdd = nil) or (ctrlObj.Left < ctrlAdd.Left) then
          begin
            ctrlAdd := ctrlObj;
          end;
        end;
        oList.Add(ctrlAdd);
        uList.Remove(ctrlAdd);
      end;
      // ______________________________________ Move controls in sorted list ___
      lineX := 0;
      for i := 0 to oList.Count - 1 do
      begin
        ctrlObj      := oList[i];
        ctrlObj.Top  := 10;
        ctrlObj.Left := lineX;
        lineX        := lineX + ctrlObj.Width;
      end;
      // _________________________________ Select all controls but navigator ___
      DsnSelect1.MultipleSelect(oList);
    end;
  end;

end;

end.
