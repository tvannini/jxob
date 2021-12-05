unit work;

interface

uses regexpr, DB, jbstr, inifiles,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, JvSearchFiles, Menus, StdActns, ActnList,
  ActnMan, ImgList, ComCtrls, StdCtrls, StrUtils, DBCtrls,
  dbcgrids, Grids, DBGrids, ExtCtrls, Mask,
  ActnCtrls, JclStrings, DBClient, ToolWin, XPStyleActnCtrls, jpeg,
  JvComponent, DosCommand, Math, JvGIF, ToolsAPI,
  MTDBGrid, WinSkinData, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, WinSkinStore, VolDBGrid, JvBaseDlg,
  JvSHFileOp, JvPlacemnt, JvMemo, IdHashMessageDigest, idHash;

type
  Tf_work = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Apri1: TMenuItem;
    Chiudi2: TMenuItem;
    Edit1: TMenuItem;
    cancel: TMenuItem;
    delete: TMenuItem;
    create: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    MVCS1: TMenuItem;
    Checkout1: TMenuItem;
    Checkin1: TMenuItem;
    Oggettiiincheck1: TMenuItem;
    N5: TMenuItem;
    OpenDialog1: TOpenDialog;
    chiudi1: TMenuItem;
    PopupMenu_init: TPopupMenu;
    Zoom1: TMenuItem;
    PopupMenu_rangemin: TPopupMenu;
    MenuItem1: TMenuItem;
    PopupMenu_rangemax: TPopupMenu;
    MenuItem2: TMenuItem;
    PopupMenu_not: TPopupMenu;
    MenuItem3: TMenuItem;
    PopupMenu_like: TPopupMenu;
    MenuItem4: TMenuItem;
    Pop_ref_azioni: TPopupMenu;
    Zoom2: TMenuItem;
    ts_applicazione: TTabSheet;
    ts_database: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    dbgrid_server: TDBGrid;
    ts_tabelle: TTabSheet;
    DBNavigator_tabelle: TDBNavigator;
    ts_programmi: TTabSheet;
    BitBtn1: TBitBtn;
    ts_taskprop: TTabSheet;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    ts_main: TTabSheet;
    ts_azioni: TTabSheet;
    ts_espressioni: TTabSheet;
    DBGrid10: TDBGrid;
    TabSheet4: TTabSheet;
    ts_menu: TTabSheet;
    pop_ope_exp1: TPopupMenu;
    Zoom3: TMenuItem;
    pop_ope_exp2: TPopupMenu;
    Zoom4: TMenuItem;
    DBGrid2: TDBGrid;
    ts_form: TTabSheet;
    DBGrid8: TDBGrid;
    StatusBar1: TStatusBar;
    pop_db: TPopupMenu;
    zoom_db: TMenuItem;
    pop_defkey: TPopupMenu;
    zoom_defkey: TMenuItem;
    pop_azioni: TPopupMenu;
    Zoom5: TMenuItem;
    Label40: TLabel;
    ts_prove: TTabSheet;
    Newproject1: TMenuItem;
    ts_prg_prop: TTabSheet;
    Label44: TLabel;
    DBEdit_prg_name: TDBEdit;
    Panel4: TPanel;
    btn_design_form: TBitBtn;
    Label46: TLabel;
    DBGrid3: TDBGrid;
    pop_grid_servers: TPopupMenu;
    Zoom8: TMenuItem;
    pop_grid_databases: TPopupMenu;
    MenuItem5: TMenuItem;
    pop_grid_tabelle: TPopupMenu;
    zoom_tabelle: TMenuItem;
    pop_grid_segmenti: TPopupMenu;
    Zoom_segmenti: TMenuItem;
    pop_grid_campi: TPopupMenu;
    Zoom_campi: TMenuItem;
    pop_grid_indici: TPopupMenu;
    Zoom_indici: TMenuItem;
    Esc_indici: TMenuItem;
    Esc_segmenti: TMenuItem;
    pop_grid_dbfile: TPopupMenu;
    Zoom_dbfile: TMenuItem;
    pop_grid_select: TPopupMenu;
    Zoom_select: TMenuItem;
    db_espressione: TDBMemo;
    Splitter1: TSplitter;
    panel_expression_view: TPanel;
    Esc1: TMenuItem;
    Viewfield1: TMenuItem;
    Pop_istruzioni: TPopupMenu;
    Up1: TMenuItem;
    Down1: TMenuItem;
    pop_elencoprg: TPopupMenu;
    Load1: TMenuItem;
    dbe_init_act: TDBEdit;
    Refresh1: TMenuItem;
    ts_variabili_prg: TTabSheet;
    dbgrid_varprg: TDBGrid;
    Newprogram1: TMenuItem;
    ts_login: TTabSheet;
    e_user: TEdit;
    Button3: TButton;
    pop_dbgrid_varprg: TPopupMenu;
    Zoom_dbgrid_prgvar: TMenuItem;
    pop_dbgrid_union: TPopupMenu;
    zoom_union: TMenuItem;
    supertree: TTreeView;
    JvSearchFile1: TJvSearchFiles;
    PopupMenu1: TPopupMenu;
    zoom7: TMenuItem;
    ts_models: TTabSheet;
    work1: TMenuItem;
    Exit1: TMenuItem;
    pop_models: TPopupMenu;
    Zoom9: TMenuItem;
    pop_pagecontrol1: TPopupMenu;
    Menu2: TMenuItem;
    Delete1: TMenuItem;
    pop_num_param: TPopupMenu;
    Zoom10: TMenuItem;
    ts_parametri: TTabSheet;
    dbgrid_parametri: TDBGrid;
    Image_supertree: TImageList;
    BitBtn5: TBitBtn;
    pop_prg_property: TPopupMenu;
    Zoom11: TMenuItem;
    BitBtn6: TBitBtn;
    Checkprogram1: TMenuItem;
    ts_report: TTabSheet;
    dbgrid_reports: TDBGrid;
    Splitter4: TSplitter;
    dbgrid_reportfields: TDBGrid;
    pop_reportdbgrid: TPopupMenu;
    Zoom12: TMenuItem;
    pop_dbgridrepfield: TPopupMenu;
    Zoom13: TMenuItem;
    ts_io: TTabSheet;
    dbgrid_io: TDBGrid;
    pop_grid_io: TPopupMenu;
    Zoom14: TMenuItem;
    PageControl4: TPageControl;
    ts_form_prop: TTabSheet;
    ts_controlprop: TTabSheet;
    db_css_form: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    db_css_title: TDBEdit;
    Label9: TLabel;
    db_css_title_no: TDBEdit;
    Label10: TLabel;
    db_css_body: TDBEdit;
    Label11: TLabel;
    db_css_status: TDBEdit;
    GroupBox2: TGroupBox;
    pop_css_form: TPopupMenu;
    Zoom15: TMenuItem;
    Label12: TLabel;
    ts_cvs: TTabSheet;
    checked_list: TListView;
    search_dir: TJvSearchFiles;
    search_checked_files: TJvSearchFiles;
    BitBtn2: TBitBtn;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    Label15: TLabel;
    DBEdit5: TDBEdit;
    Label16: TLabel;
    DBEdit6: TDBEdit;
    Label17: TLabel;
    Memo2: TMemo;
    programma: TMemo;
    ActionList1: TActionList;
    creazione: TAction;
    eliminazione: TAction;
    annullamento: TAction;
    nuovoprogetto: TAction;
    apri_progetto: TAction;
    chiusuraprogetto: TAction;
    sceltaserver: TAction;
    prg_sceltachiave: TAction;
    prg_sceltafiletask: TAction;
    prg_sceltacampofile: TAction;
    next_row: TAction;
    prev_row: TAction;
    check: TAction;
    carica_supertree: TAction;
    new_view: TAction;
    prg_copia: TAction;
    view_copia: TAction;
    tree_new_folder: TAction;
    tree_new_prg: TAction;
    check_out: TAction;
    check_in: TAction;
    un_check: TAction;
    PageControl2: TPageControl;
    PageControl1: TPageControl;
    uncheck1: TMenuItem;
    HeaderControl1: THeaderControl;
    inizializza_tabelle: TAction;
    Panel3: TPanel;
    Label23: TLabel;
    pop_menu: TPopupMenu;
    Zoom6: TMenuItem;
    Exit2: TMenuItem;
    dbe_recprefix: TDBEdit;
    Label27: TLabel;
    dbe_recsufix: TDBEdit;
    Label28: TLabel;
    cerca_sottoversioni: TJvSearchFiles;
    pop_gridform: TPopupMenu;
    Zoom16: TMenuItem;
    Label29: TLabel;
    db_css_doc: TDBEdit;
    Label30: TLabel;
    db_css_close: TDBEdit;
    Label31: TLabel;
    db_css_open: TDBEdit;
    Label32: TLabel;
    db_css_exit: TDBEdit;
    Label33: TLabel;
    db_css_resize: TDBEdit;
    GroupBox4: TGroupBox;
    db_visible_form: TDBEdit;
    Label34: TLabel;
    db_url_form: TDBEdit;
    Label35: TLabel;
    pop_form_other: TPopupMenu;
    Zoom17: TMenuItem;
    pop_parameter: TPopupMenu;
    Zoom18: TMenuItem;
    Label37: TLabel;
    e_password: TEdit;
    Label38: TLabel;
    DBEdit3: TDBEdit;
    Label41: TLabel;
    DBEdit7: TDBEdit;
    Label42: TLabel;
    DBEdit14: TDBEdit;
    Label52: TLabel;
    DBEdit15: TDBEdit;
    Label53: TLabel;
    DBEdit16: TDBEdit;
    Label54: TLabel;
    DBEdit17: TDBEdit;
    Label55: TLabel;
    Label65: TLabel;
    DBEdit26: TDBEdit;
    Label57: TLabel;
    DBEdit27: TDBEdit;
    ts_appvars: TTabSheet;
    dbgrid_appvars: TDBGrid;
    GroupBox5: TGroupBox;
    Crossreference1: TMenuItem;
    pop_vars: TPopupMenu;
    Zoom19: TMenuItem;
    Label60: TLabel;
    DBEdit21: TDBEdit;
    new_viewmodel: TAction;
    pop_dbgridoperazioni: TPopupMenu;
    Zoom20: TMenuItem;
    operazioni_open: TAction;
    Splitter5: TSplitter;
    Label18: TLabel;
    dbe_startprg: TDBEdit;
    dbe_reqprg: TDBEdit;
    Label19: TLabel;
    ts_openapp: TTabSheet;
    GroupBox6: TGroupBox;
    pop_recent: TPopupMenu;
    Select1: TMenuItem;
    New2: TMenuItem;
    dbcombo_vertalign: TDBComboBox;
    Label20: TLabel;
    DBComboBox1: TDBComboBox;
    Label21: TLabel;
    assegna_alias_select: TAction;
    Label22: TLabel;
    db_title: TDBEdit;
    Label61: TLabel;
    db_status: TDBEdit;
    dbgrid_aggreg: TDBGrid;
    Label63: TLabel;
    pop_aggreg: TPopupMenu;
    Zoom21: TMenuItem;
    Gettablesdefinition1: TMenuItem;
    tree_menu: TTreeView;
    btn_nuova_voce_menu: TBitBtn;
    GroupBox8: TGroupBox;
    carica_treemenu: TAction;
    scarica_treemenu: TAction;
    db_menulabel: TDBEdit;
    db_menuvalore: TDBEdit;
    db_menutipo: TDBComboBox;
    Label64: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    del_vocetreemenu: TBitBtn;
    refresh_expr: TAction;
    refresh_exp_join: TAction;
    Image1: TImage;
    db_top_exp: TDBEdit;
    db_left_exp: TDBEdit;
    db_altezza_exp: TDBEdit;
    db_largh_exp: TDBEdit;
    pop_form_position: TPopupMenu;
    Zoom22: TMenuItem;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    start_webserver: TAction;
    stop_webserver: TAction;
    Label74: TLabel;
    Preferences1: TMenuItem;
    DBGrid_dbfile: TVolgaDBGrid;
    dbgrid_union: TVolgaDBGrid;
    DBGrid_select: TVolgaDBGrid;
    Panel1: TPanel;
    lab_nomeview: TLabel;
    Label25: TLabel;
    pop_appevent: TPopupMenu;
    Zoom23: TMenuItem;
    pop_defmenu: TPopupMenu;
    Zoom24: TMenuItem;
    moverow: TMenuItem;
    salva_prg: TAction;
    Save1: TMenuItem;
    salva_db: TAction;
    salva: TAction;
    salva_type: TAction;
    salva_menu: TAction;
    salva_table: TAction;
    salva_appvars: TAction;
    salva_labels: TAction;
    Filter1: TMenuItem;
    dbgrid_form: TMTDBGrid;
    filtro: TAction;
    SkinData1: TSkinData;
    DBGrid_databases: TMTDBGrid;
    dbgrid_models: TcxGrid;
    dbgrid_modelsDBTableView1: TcxGridDBTableView;
    dbgrid_modelsDBTableView1idmodello: TcxGridDBColumn;
    dbgrid_modelsDBTableView1tipo_dato: TcxGridDBColumn;
    dbgrid_modelsDBTableView1maschera: TcxGridDBColumn;
    dbgrid_modelsLevel1: TcxGridLevel;
    ts_programs: TTabSheet;
    Panel2: TPanel;
    btn_opn_rec: TBitBtn;
    Goup1: TMenuItem;
    dbgrid_tabelleDBTableView1: TcxGridDBTableView;
    dbgrid_tabelleLevel1: TcxGridLevel;
    dbgrid_tabelle: TcxGrid;
    dbgrid_tabelleDBTableView1Id: TcxGridDBColumn;
    dbgrid_tabelleDBTableView1Nome: TcxGridDBColumn;
    dbgrid_tabelleDBTableView1Nome_fisico: TcxGridDBColumn;
    dbgrid_tabelleDBTableView1database: TcxGridDBColumn;
    dbgrid_tabelleDBTableView1chiaveprimaria: TcxGridDBColumn;
    dbgrid_tabelleDBTableView1folder: TcxGridDBColumn;
    dbgrid_programmiDBTableView1: TcxGridDBTableView;
    dbgrid_programmiLevel1: TcxGridLevel;
    dbgrid_programmi: TcxGrid;
    carica_prg: TAction;
    pop_gridprogrammi: TPopupMenu;
    Zoom25: TMenuItem;
    dbgrid_programmiDBTableView1nome: TcxGridDBColumn;
    dbgrid_programmiDBTableView1folder: TcxGridDBColumn;
    dbgrid_programmiDBTableView1modulo: TcxGridDBColumn;
    dbgrid_programmiDBTableView1data_modifica: TcxGridDBColumn;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Label26: TLabel;
    dbgrid_programmiDBTableView1DBColumn1: TcxGridDBColumn;
    Panel_tab_indici: TPanel;
    Splitter3: TSplitter;
    Splitter6: TSplitter;
    DBMemo3: TDBMemo;
    Label72: TLabel;
    Panel5: TPanel;
    Label36: TLabel;
    db_nomeazione: TDBEdit;
    DBEdit24: TDBEdit;
    Label24: TLabel;
    DBCheckBox1: TDBCheckBox;
    ts_running: TTabSheet;
    Label73: TLabel;
    abilitatablerep: TAction;
    disabilitatablerep: TAction;
    bt_copyact: TButton;
    abilitaprgtab: TAction;
    disabilitaprgtab: TAction;
    GroupBox1: TGroupBox;
    DBEdit9: TDBEdit;
    dbe_righevisexp: TDBEdit;
    Label75: TLabel;
    Label45: TLabel;
    Jvfileopera: TJvSHFileOperation;
    DBEdit28: TDBEdit;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    db_timer: TDBEdit;
    Panel6: TPanel;
    bt_refresh: TButton;
    db_closeclickact: TDBEdit;
    db_refreshact: TDBEdit;
    Move1: TMenuItem;
    DEBUG1: TMenuItem;
    Memo1: TJvMemo;
    db_css_corner: TDBEdit;
    Label91: TLabel;
    dbgrid_modelsDBTableView1prgselect: TcxGridDBColumn;
    pop_vars_action: TPopupMenu;
    Zoom27: TMenuItem;
    DBRadio_validate: TDBRadioGroup;
    Openproject1: TMenuItem;
    GroupBox10: TGroupBox;
    DBMemo1: TDBMemo;
    Splitter7: TSplitter;
    DBCheckBox5: TDBCheckBox;
    dbnav: TDBNavigator;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    CVSImages: TImageList;
    Panel7: TPanel;
    btn_checked_refresh: TBitBtn;
    Remove1: TMenuItem;
    db_parametri: TDBMemo;
    MenuImgs: TImageList;
    GroupBox7: TGroupBox;
    Label88: TLabel;
    Label62: TLabel;
    e_res_x: TEdit;
    e_res_y: TEdit;
    Panel8: TPanel;
    list_recent: TListView;
    LogPanel: TPanel;
    LoadingLog: TLabel;
    dbgrid_operazioni: TVolgaDBGrid;
    Panel_expression: TPanel;
    Label7: TLabel;
    DB_espress: TDBMemo;
    IndexesPages: TPageControl;
    pageUnique: TTabSheet;
    dbgrid_indici: TDBGrid;
    dbgrid_segmenti: TDBGrid;
    pageNotUnique: TTabSheet;
    dbgrid_notunique: TDBGrid;
    dbgrid_segmentinu: TDBGrid;
    DBGrid_campi: TDBGrid;
    N1: TMenuItem;
    edit_obj: TMenuItem;
    Label6: TLabel;
    dbe_CustomWhereExp: TDBEdit;
    procedure dbgrid_tabelle_savEnter(Sender: TObject);
    procedure DBGrid_campiEnter(Sender: TObject);
    procedure dbgrid_indiciEnter(Sender: TObject);
    procedure dbgrid_segmentiEnter(Sender: TObject);
    procedure annullamentoExecute(Sender: TObject);
    procedure eliminazioneExecute(Sender: TObject);
    procedure creazioneExecute(Sender: TObject);
    procedure apri_progettoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chiusuraprogettoExecute(Sender: TObject);
    procedure DBGrid_databases_savEditButtonClick(Sender: TObject);
    procedure sceltaserverExecute(Sender: TObject);
    procedure prg_sceltachiaveExecute(Sender: TObject);
    procedure prg_sceltafiletaskExecute(Sender: TObject);
    procedure up1Click(Sender: TObject);
    procedure DB_exp1operazDblClick(Sender: TObject);
    procedure DB_exp2operazDblClick(Sender: TObject);
    procedure bt_salvaapplicazClick(Sender: TObject);
    procedure DBGrid10Enter(Sender: TObject);
    procedure DBCtrlGrid_mainEnter(Sender: TObject);
    procedure DBCtrlGrid_operazioniEnter(Sender: TObject);
    procedure DBCtrlGrid_risorsedbEnter(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure zoom_dbClick(Sender: TObject);
    procedure DBCtrlGrid_tabelleEnter(Sender: TObject);
    procedure NextClick(Sender: TObject);
    procedure PreviousClick(Sender: TObject);
    procedure zoom_defkeyClick(Sender: TObject);
    procedure next_rowExecute(Sender: TObject);
    procedure prev_rowExecute(Sender: TObject);
    procedure dbgrid_serverEnter(Sender: TObject);
    procedure DBGrid_databases_savEnter(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid8Enter(Sender: TObject);
    procedure Zoom5Click(Sender: TObject);
    procedure Memo1Enter(Sender: TObject);
    procedure nuovoprogettoExecute(Sender: TObject);
    procedure Zoom_dbgrid_prgvarClick(Sender: TObject);
    procedure DBGrid3ColEnter(Sender: TObject);
    procedure dbgrid_serverColEnter(Sender: TObject);
    procedure Zoom8Click(Sender: TObject);
    procedure DBGrid_databases_savColEnter(Sender: TObject);
    procedure zoom_tabelleClick(Sender: TObject);
    procedure Zoom_segmentiClick(Sender: TObject);
    procedure Zoom_campiClick(Sender: TObject);
    procedure Zoom_indiciClick(Sender: TObject);
    procedure Esc_indiciClick(Sender: TObject);
    procedure Esc_segmentiClick(Sender: TObject);
    procedure DBGrid_campiColEnter(Sender: TObject);
    procedure DBGrid_dbfilesavColEnter(Sender: TObject);
    procedure DBGrid_dbfilesavEnter(Sender: TObject);
    procedure DBGrid_dbfileCellSelect();
    procedure Zoom_dbfileClick(Sender: TObject);
    procedure DBGrid_selectsavColEnter(Sender: TObject);
    procedure DBGrid_selectsavEnter(Sender: TObject);
    procedure Zoom_selectClick(Sender: TObject);
    procedure Esc1Click(Sender: TObject);
    procedure Viewfield1Click(Sender: TObject);
    procedure DBGrid_selectDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBGrid_selectsavKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure Down1Click(Sender: TObject);
    procedure btn_expressionsClick(Sender: TObject);
    procedure btn_publish_prgClick(Sender: TObject);
    procedure btn_publish_appClick(Sender: TObject);
    procedure btn_publish_dbClick(Sender: TObject);
    procedure btn_publish_tableClick(Sender: TObject);
    procedure btn_variabili_prgClick(Sender: TObject);
    procedure app_loginExecute(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Oggettiiincheck1Click(Sender: TObject);
    procedure dbgrid_varprgEnter(Sender: TObject);
    procedure dbgrid_appvarsEnter(Sender: TObject);
    procedure dbgrid_unionsavEnter(Sender: TObject);
    procedure zoom_unionClick(Sender: TObject);
    procedure dbgrid_unionsavColEnter(Sender: TObject);
    procedure DB_operazChange(Sender: TObject);
    procedure checkExecute(Sender: TObject);
    procedure ListView1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure carica_supertreeExecute(Sender: TObject);
    procedure JvSearchFile1FindFile(Sender: TObject; const AName: string);
    procedure zoom7Click(Sender: TObject);
    procedure work1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Zoom9Click(Sender: TObject);
    procedure dbgrid_modelssavEnter(Sender: TObject);
    procedure dbgrid_menuEnter(Sender: TObject);
    procedure Menu2Click(Sender: TObject);
    procedure new_viewExecute(Sender: TObject);
    function new_actionExecute(Sender: TObject): string;
    procedure Delete1Click(Sender: TObject);
    procedure dbgrid_parametriEnter(Sender: TObject);
    procedure prg_copiaExecute(Sender: TObject);
    procedure Zoom11Click(Sender: TObject);
    procedure view_copiaExecute(Sender: TObject);
    procedure dbgrid_reportfieldsEnter(Sender: TObject);
    procedure dbgrid_reportsEnter(Sender: TObject);
    procedure Zoom12Click(Sender: TObject);
    procedure Zoom13Click(Sender: TObject);
    procedure dbgrid_ioEnter(Sender: TObject);
    procedure Zoom14Click(Sender: TObject);
    procedure Zoom15Click(Sender: TObject);
    procedure tree_new_folderExecute(Sender: TObject);
    procedure tree_new_prgExecute(Sender: TObject);
    function albero_folder(nodo: TTreeNode): string;

    procedure checkout(Sender: TObject; oggetto: string);
    procedure checkin(Sender: TObject; const oggetti: array of string; cvsSet: Boolean);
    procedure uncheck(Sender: TObject; oggetto: string);
    procedure copia_file(Sender: TObject; origine, destinazione: string);

    function determina_alias_select(nomecampo: string): string;

    function mycheck(oggetto: string): boolean;
    function whocheck(oggetto: string): string;

    function trova_nodo(tree: TTreeView; idmenu: string): TTreeNode;
    function trova_sottonodo(tree: TTreeNode; idmenu: string): TTreeNode;
    function decodifica_datatype(datatype : string ; tabella : string ; field: string): string;

    procedure btn_checked_refreshClick(Sender: TObject);
    procedure search_dirFindDirectory(Sender: TObject; const AName: string);
    procedure search_checked_filesFindFile(Sender: TObject; const AName: string);
    procedure check_outExecute(Sender: TObject);
    procedure check_inExecute(Sender: TObject);
    procedure un_checkExecute(Sender: TObject);
    procedure cancella_versioni(oggetto: string);
    procedure refresh_bottoni_check(Sender: TObject);
    procedure usersClick(Sender: TObject);
    procedure ts_modelsExit(Sender: TObject);
    procedure ts_menuExit(Sender: TObject);
    procedure ts_databaseExit(Sender: TObject);
    procedure ts_tabelleExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dbgrid_form_savEnter(Sender: TObject);
    procedure supertreeEnter(Sender: TObject);
    procedure HeaderControl1SectionClick(HeaderControl: THeaderControl;
      Section: THeaderSection);
    procedure inizializza_tabelleExecute(Sender: TObject);
    procedure preset_table(tabObj: TClientDataSet; fileName: String);
    procedure Chiudi2Click(Sender: TObject);
    procedure Zoom6Click(Sender: TObject);
    procedure Exit2Click(Sender: TObject);
    procedure supertreeChanging(Sender: TObject; Node: TTreeNode;
      var AllowChange: boolean);
    procedure cerca_sottoversioniFindFile(Sender: TObject; const AName: string);
    procedure dbgrid_operazioni_savDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: integer; Column: TColumn; State: TGridDrawState);
    procedure Zoom17Click(Sender: TObject);
    procedure db_nomeazioneChange(Sender: TObject);
    procedure Zoom18Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure Zoom19Click(Sender: TObject);
    procedure dbgrid_operazioni_savKeyUp(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure dbgrid_operazioni_savColExit(Sender: TObject);
    procedure operazioni_openExecute(Sender: TObject);
    procedure Apri1Click(Sender: TObject);
    procedure btn_opn_recClick(Sender: TObject);
    procedure New2Click(Sender: TObject);
    procedure Zoom21Click(Sender: TObject);
    procedure Gettablesdefinition1Click(Sender: TObject);
    procedure dbgrid_aggregEnter(Sender: TObject);
    procedure btn_nuova_voce_menuClick(Sender: TObject);
    procedure tree_menuChange(Sender: TObject; Node: TTreeNode);
    procedure tree_menuEdited(Sender: TObject; Node: TTreeNode; var S: string);
    procedure tree_menuAddition(Sender: TObject; Node: TTreeNode);
    procedure carica_treemenuExecute(Sender: TObject);
    procedure scarica_treemenuExecute(Sender: TObject);
    procedure del_vocetreemenuClick(Sender: TObject);
    procedure tree_menuDragDrop(Sender, Source: TObject; X, Y: integer);
    procedure tree_menuDragOver(Sender, Source: TObject; X, Y: integer;
      State: TDragState; var Accept: boolean);
    procedure tree_menuDeletion(Sender: TObject; Node: TTreeNode);
    procedure db_nomeazioneExit(Sender: TObject);
    procedure ts_labelsExit(Sender: TObject);
    procedure db_menutipoChange(Sender: TObject);
    procedure refresh_exprExecute(Sender: TObject);
    procedure DBGrid_selectsavCellClick(Column: TColumn);
    procedure refresh_exp_joinExecute(Sender: TObject);
    procedure Zoom22Click(Sender: TObject);
    procedure muovi_istruzione(posizione_inizio, muovi_da, muovi_a: integer);
    procedure muovi_tabella(posizione_inizio, muovi_da, muovi_a: integer);
    procedure selezione_cella_operazioniExecute(grid: TVolgaDBGrid);
    procedure selezione_cella_joinExecute(grid: TVolgaDBGrid);

    procedure Zoom16Click(Sender: TObject);
    procedure dbgrid_operazioniEnter(Sender: TObject);
    procedure dbgrid_operazioniDrawCellAttr(Sender: TObject;
      Column: TVolgaColumn; AFont: TFont; var AColor: TColor;
      State: TGridDrawState);
    procedure dbgrid_operazioniCellClick(Sender: TObject; Column: TVolgaColumn);
    procedure dbgrid_operazioniDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: integer; Column: TVolgaColumn;
      State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ts_appvarsExit(Sender: TObject);
    procedure ts_applicazioneExit(Sender: TObject);
    procedure dbgrid_operazioniColEnter(Sender: TObject);
    procedure ts_operazioninewEnter(Sender: TObject);
    procedure Next1Click(Sender: TObject);
    procedure Preferences1Click(Sender: TObject);
    procedure dbgrid_unionCellClick(Sender: TObject; Column: TVolgaColumn);
    procedure dbgrid_unionKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_selectKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_selectCellClick(Sender: TObject;
      Column: TVolgaColumn);
    procedure Zoom23Click(Sender: TObject);
    procedure Zoom24Click(Sender: TObject);
    procedure moverowClick(Sender: TObject);
    procedure salva_prgExecute(Sender: TObject);
    procedure salva_dbExecute(Sender: TObject);
    procedure salvaExecute(Sender: TObject);
    procedure salva_typeExecute(Sender: TObject);
    procedure salva_menuExecute(Sender: TObject);
    procedure salva_tableExecute(Sender: TObject);
    procedure salva_appvarsExecute(Sender: TObject);
    procedure salva_labelsExecute(Sender: TObject);
    procedure filtroExecute(Sender: TObject);
    procedure crea_azioni_default_view(Sender: TObject; vista: string; insert: Boolean = true; post: Boolean = true; delete : Boolean = true; undo : Boolean = true; livello1 : Boolean = false);
    procedure nuova_azione_prg(nome: string; livello1: Boolean);
    procedure Crossreference1Click(Sender: TObject);
    procedure Goup1Click(Sender: TObject);
    procedure dbgrid_tabelleDBTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure Filter1Click(Sender: TObject);
    procedure carica_prgExecute(Sender: TObject ; soloincheck : boolean = false);
    procedure carica_singolo_prg(Sender: TObject; nomeprg : string = '');
    procedure Zoom25Click(Sender: TObject);
    procedure dbgrid_programmiEnter(Sender: TObject);
    procedure creatreesubaction(nodosel: TTreeNode; azione: string; elenco_azioni:TStringList);
    procedure call_mask_def(tipodato: string);
    function call_scelta_azione(azione: string; nome_task : string = ''; dir_task : string = ''; expfine: string = '0'; abilita_esegui_in_batch: boolean = false): String;
    function call_scelta_modello(modello: string=''): String;
    function call_scelta_campoprg(valore: string; appvars: boolean=true; params: boolean=true; prgvars: boolean=true; selects: boolean=true; singolaview: string=''): String;
    function azionediprimolivello(azione: string): Boolean;
    function call_scelta_exp(idexp: integer = 0): Integer;
    procedure supertreeChange(Sender: TObject; Node: TTreeNode);
    procedure eliminasubitemtree(Nodo: TTreeNode; Nododaaliminare: string);
    procedure abilitatablerepExecute(Sender: TObject);
    procedure disabilitatablerepExecute(Sender: TObject);
    procedure bt_copyactClick(Sender: TObject);
    procedure abilitaprgtabExecute(Sender: TObject);
    procedure disabilitaprgtabExecute(Sender: TObject);
    procedure dbgrid_operazioniKeyPress(Sender: TObject; var Key: Char);
    procedure ts_tabelleEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt_refreshClick(Sender: TObject);
    procedure Moverow1Click(Sender: TObject);
    procedure DEBUG1Click(Sender: TObject);
    procedure Openproject1Click(Sender: TObject);
    procedure dbgrid_varprgExit(Sender: TObject);
    function getJanoxRuntime(): String;
    procedure FormResize(Sender: TObject);
    procedure Remove1Click(Sender: TObject);
    function cvs_checkout(ObjFile: String): Boolean;
    function cvs_checkin(ObjFile, TmpFile: String): Boolean;
    function ExecAndWait(const CommandLine: string) : Boolean;
    procedure Zoom20Click(Sender: TObject);
    procedure tree_menuExpanded(Sender: TObject; Node: TTreeNode);
    procedure tree_menuCollapsed(Sender: TObject; Node: TTreeNode);
    procedure DBGrid_dbfileCellClick(Sender: TObject;
      Column: TVolgaColumn);
    procedure DBGrid_dbfileKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LogProjectLoad(LoadItem: String = ''; Progress: Integer = 0);
    procedure dbgrid_formCellClick(Column: TColumn);
    procedure dbgrid_formColEnter(Sender: TObject);
    procedure dbgrid_notuniqueEnter(Sender: TObject);
    procedure dbgrid_segmentinuEnter(Sender: TObject);
    function FileToMD5(FName: String): String;
    function CheckCache(FName: String; RepName: String; userVersion: Boolean): Boolean;
    procedure WriteFileMD5(FName: String; RepName: String; userVersion: Boolean);

  private
    { Private declarations }
    r: TRegExpr;
    pos_select: TBookmark;
    nodo_prg: TTreeNode;
    nodo_temp1: TTreeNode;
    treemenu_incarica: boolean;
    elenco_prg_caricato: Boolean;
  public
    { Public declarations }
    settings: TIniFile;

    build_1, build_2, build_3: integer;
    build, workdir, prgdir, userdir: string;
    tempdir: string;
    user: string;
    progetto: string;
    memophp: TMemoField;
    campo_in_grid_operazioni, campo_in_grid_azioni, campo_in_grid_programmi,
    campo_in_grid_server, campo_in_grid_databases, campo_in_grid_tabelle,
    campo_in_grid_campi, campo_in_grid_union, campo_in_grid_indici,
    campo_in_grid_dbfile, campo_in_grid_select,
    campo_in_grid_espressioni, campo_in_grid_agentitab: string;
    ultimo_field: TField;
    crea_con_F4 : Boolean;
    nodo_prg_attivo, nodo_azioni, nodo_azioni_all: TTreeNode;
    mycheck_local, incheck_local : Boolean;
    campi_prg : TListItems;
    nodo_ultimo_selezionato: TTreeNode;
    ultimo_tabsheet : TTabSheet;
    CVSCheckInData : string;

  end;

var
  f_work:     Tf_work;
  navigatore: TDBNavigator;

const  TIPO: string = 'FULL';
//const TIPO: String = 'DEMO';

implementation

uses dm, area_form, start, sceltacampofile, sceltaprogramma,
  sceltaazione, copymove, sceltarecordset, sceltaform, sceltadb,
  sceltacampiprg, sceltatipodato, sceltachiavefile, scelta_tipo_select,
  sceltaserver, sceltadbengine, sceltaespressioni, sceltatabella, sceltafiletask,
  formula_sql_concat, formula_sql, oggetti_form, parametri_call, parametri, editorphp, checkprg,
  nuovoprogetto, scelta_css, import, export, cvs, cvsinfo, scelta_message, sceltamodello,
  sceltaio, sceltamenu, print, preferences, users,
  locate, go_to, about, conversioni, sceltacampiview, getdef,
  JvColorCombo, find,sceltacampotab, TypInfo, crossref, wizmask, DateUtils, debug,
  JvTypedEdit;

{$R *.dfm}


procedure Tf_work.dbgrid_tabelle_savEnter(Sender: TObject);
begin

//  campo_in_grid_tabelle := dbgrid_tabelle.SelectedField.FieldName;

  dbnav.DataSource      := dm_form.ds_tabelle;
end;

procedure Tf_work.DBGrid_campiEnter(Sender: TObject);
begin
  campo_in_grid_campi := DBGrid_campi.SelectedField.FieldName;
  dbnav.DataSource    := dm_form.ds_campi;
end;

procedure Tf_work.dbgrid_indiciEnter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_indicitesta;
end;

procedure Tf_work.dbgrid_segmentiEnter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_indici;
end;


procedure Tf_work.annullamentoExecute(Sender: TObject);
begin
  dbnav.BtnClick(nbCancel)
end;

procedure Tf_work.eliminazioneExecute(Sender: TObject);
begin
  dbnav.BtnClick(nbDelete)
end;

procedure Tf_work.creazioneExecute(Sender: TObject);
begin
  crea_con_F4 := true;
  // ____________________________________________________ Create new program ___
  if dbnav.DataSource = dm_form.ds_programmi then
  begin
    tree_new_prg.Execute;
  end
  // _______________________________________________________ Create new view ___
  else if dbnav.DataSource = dm_form.ds_task then
  begin
    new_viewExecute(self);
  end
  // _____________________________________________________ Create new action ___
  else if dbnav.DataSource = dm_form.ds_azioni then
  begin
    new_actionExecute(self);
  end
  else
  begin
    dbnav.BtnClick(nbInsert);
  end;
end;


procedure Tf_work.apri_progettoExecute(Sender: TObject);
var
 i, panel              : integer;
 strRecent, recentName : string;
begin
  if progetto = '' then
  begin
    Screen.Cursor    := crHourGlass;
    LogProjectLoad('Starting up');
    try
      // __________________________________________________ Logged developer ___
      user     := e_user.Text;
      // ___________________________________ Get project name from file name ___
      progetto := StrReverse(OpenDialog1.FileName);
      progetto := strreverse(StrToken(progetto, '\'));
      progetto := strtoken(progetto, '.');
      // _____________________________________ Manage recent opened projects ___
      for i := 1 to 50 do
      begin
        settings.DeleteKey('Recent', 'app' + inttostr(i));
      end;
      settings.WriteString('Recent', 'app1', OpenDialog1.FileName);
      strRecent := '|' + OpenDialog1.FileName;
      // __________________________________ Loop on existing recent projects ___
      for i := 0 to list_recent.Items.Count - 1 do
      begin
        recentName := list_recent.Items[i].SubItems[0];
        if PosEx(recentName, strRecent) = 0 then
        begin
          settings.WriteString('Recent', 'app' + IntToStr(i + 2), recentName);
          strRecent := trim(strRecent) + '|' + recentName;
        end;
      end;
      // ______________________________________________________ Load project ___
      workdir := ExtractFileDir(ExtractFileDir(f_work.OpenDialog1.FileName));
      if RightStr(trim(workdir), 1) <> '\' then
      begin
        workdir := trim(workdir) + '\';
      end;
      prgdir  := workdir + 'prgs\';
      userdir := prgdir + user + '\';
      // ________________________ Load colors from INI file to configuration ___
      f_config.carica_ini.Execute();
      // _________________________________________________ Update status bar ___
      StatusBar1.Panels[0].Text := '   Project: ' + progetto;
      StatusBar1.Panels[1].Text := '|   Home dir: ' + workdir +
                                   '     |   Temp dir: ' + tempdir;
      StatusBar1.Panels[2].Text := '|   Developer: ' + user;
      FormResize(self);
      // _________________________________________________________ Set menus ___
      Newproject1.Enabled      := False;
      Openproject1.Enabled     := False;
      Apri1.Enabled            := False;
      chiudi1.Enabled          := True;
      Oggettiiincheck1.Enabled := True;
      // _________________________________________________ Preset CDS tables ___
      LogProjectLoad('Creating local storage');
      inizializza_tabelle.Execute;
      // _________________________________________ Import needed repsitories ___
      LogProjectLoad('Project properties');
      f_import.app_import.Execute;
      LogProjectLoad('Project variables');
      f_import.vars_import.Execute;
      LogProjectLoad('Project tables');
      f_import.dbtab_import.Execute;
      // _____________________________________________________ Set interface ___
      LogProjectLoad('Project programs');
      carica_supertree.Execute;
      PageControl1.Visible    := True;
      HeaderControl1.Visible  := True;
      supertree.Visible       := True;
      Splitter5.Visible       := True;
    finally
    LogProjectLoad();
    Screen.Cursor         := crDefault;
    f_work.create.Enabled := True;
    f_work.delete.Enabled := True;
    f_work.cancel.Enabled := True;
  end;

end;

end;



procedure Tf_work.FormShow(Sender: TObject);
var
  i:    integer;
begin
  if TIPO = 'DEMO' then
  begin
    Self.Caption := Self.Caption + ' - Demo Edition'
  end;
  // _______________________________________________________________ Version ___
  build_1 := 2;
  // _______________________________________________________________ Release ___
  build_2 := 7;
  // ______________________________________________ Build release - NOT USED ___
  build_3 := 0;
  build   := IntToStr(build_1) + '.' + IntToStr(build_2);
  // il primo identifica la release commerciale
  // il secondo identifica necessità di conversione sintassi
  // il terzo è un progressivo di versione all'interno degli altri due per
  // identificare correzione bugs

  //disabilita tabbed
  for i := 0 to PageControl1.PageCount - 1 do
  begin
    PageControl1.Pages[i].TabVisible := False;
  end;
  for i := 0 to PageControl2.PageCount - 1 do
  begin
    PageControl2.Pages[i].TabVisible := False;
  end;

  PageControl1.ActivePage := ts_openapp;
  PageControl1.Visible   := False;
  supertree.Visible      := False;
  Splitter5.Visible      := False;
  HeaderControl1.Visible := False;

  chiudi1.Enabled := False;

  // _____________________________________________________ Update status bar ___
  StatusBar1.Panels[0].Text := '';
  StatusBar1.Panels[1].Text := '';
  StatusBar1.Panels[2].Text := '|   Developer: ' + e_user.Text;
  FormResize(self);
end;

procedure Tf_work.chiusuraprogettoExecute(Sender: TObject);
begin

  // chiude tutte le tabelle
  with dm_form do
  begin

    t_applicazione.EmptyDataSet;
    t_servers.EmptyDataSet;
    t_databases.EmptyDataSet;
    t_tabelle.EmptyDataSet;
    t_campi.EmptyDataSet;
    t_indicitesta.EmptyDataSet;
    t_indici.EmptyDataSet;
    t_programmi.EmptyDataSet;
    t_task.EmptyDataSet;
    t_aggreg.EmptyDataSet;
    t_usa_file.EmptyDataSet;
    t_select.EmptyDataSet;
    t_espressioni.EmptyDataSet;
    t_form.EmptyDataSet;
    t_controlliform.EmptyDataSet;
    t_azioni.EmptyDataSet;
    t_operazioni.EmptyDataSet;
    t_menu.EmptyDataSet;
    t_variabili_prg.EmptyDataSet;
    t_variabili_app.EmptyDataSet;
    t_modelli.EmptyDataSet;
    t_parametri.EmptyDataSet;
    t_report.EmptyDataSet;
    t_reportfield.EmptyDataSet;
    t_input_output.EmptyDataSet;
    t_printdef.EmptyDataSet;
    t_value_list.EmptyDataSet;
    tmp_postab.EmptyDataSet;
  end;

  progetto := '';
  PageControl1.Visible := False;
  supertree.Items.Clear;
  HeaderControl1.Visible := false;
  supertree.Visible      := false;
  Splitter5.Visible      := false;
  chiudi1.Enabled := False;
  Apri1.Enabled   := True;
  Openproject1.Enabled   := True;
  Newproject1.Enabled    := True;

end;

procedure Tf_work.DBGrid_databases_savEditButtonClick(Sender: TObject);
begin
  sceltaserver.Execute

end;

procedure Tf_work.sceltaserverExecute(Sender: TObject);
begin
  f_sceltaserver.ShowModal;
  if f_sceltaserver.ModalResult = mrOk then
  begin
    dm_form.t_databases.Edit;
    dm_form.t_databasesserver.Value := dm_form.t_serversnomeserver.Value;
  end;
end;


procedure Tf_work.prg_sceltachiaveExecute(Sender: TObject);
begin
  dm_form.t_tabelle.Locate('nome', dm_form.t_usa_filetabella.Value, []);
  f_sceltachiave.ActualKey := dm_form.t_usa_filechiave.Value;
  f_sceltachiave.showModal;
  if f_sceltachiave.ModalResult = mrOk then
  begin
    dm_form.t_usa_file.Edit;
    dm_form.t_usa_filechiave.Value := f_sceltachiave.ResultKey;
  end;
end;


procedure Tf_work.prg_sceltafiletaskExecute(Sender: TObject);
begin
  f_sceltafiletask.ShowModal;
  if f_sceltafiletask.ModalResult = mrOk then
  begin
    dm_form.t_select.Edit;
    dm_form.t_selecttabella.Value := dm_form.t_usa_filecon_nome.Value;
  end;
end;




procedure Tf_work.up1Click(Sender: TObject);
begin
  dbnav.BtnClick(nbPrior);
end;


procedure Tf_work.DB_exp1operazDblClick(Sender: TObject);
var exp_local : integer;
begin
  exp_local:= call_scelta_exp(dm_form.t_operazioniexp1.Value);
  if exp_local <> 0 then
  begin
    dm_form.t_operazioni.Edit;
    dm_form.t_operazioniexp1.Value := exp_local;
  end;
end;

procedure Tf_work.DB_exp2operazDblClick(Sender: TObject);
var exp_local: integer;
begin
  exp_local:= call_scelta_exp(dm_form.t_operazioniexp2.Value);
  if exp_local <> 0 then
  begin
    dm_form.t_operazioni.Edit;
    dm_form.t_operazioniexp2.Value := exp_local;
  end;
end;


procedure Tf_work.bt_salvaapplicazClick(Sender: TObject);
begin
  dm_form.t_applicazione.Post;
end;



procedure Tf_work.DBGrid10Enter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_programmi;
  PageControl1.ActivePage := ts_programmi;
  PageControl2.ActivePage := ts_prg_prop;
end;

procedure Tf_work.DBCtrlGrid_mainEnter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_select;
end;

procedure Tf_work.DBCtrlGrid_operazioniEnter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_operazioni;
end;


procedure Tf_work.DBCtrlGrid_risorsedbEnter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_usa_file
end;

procedure Tf_work.MenuItem5Click(Sender: TObject);
begin
  if campo_in_grid_databases = 'server' then
  begin
    f_sceltaserver.ShowModal;
    if f_sceltaserver.ModalResult = mrOk then
    begin
      dm_form.t_databases.Edit;
      dm_form.t_databasesserver.Value := dm_form.t_serversnomeserver.Value;
    end;
  end;

end;

procedure Tf_work.MenuItem6Click(Sender: TObject);
begin
  dm_form.t_usa_file.Next;
end;


procedure Tf_work.Button8Click(Sender: TObject);
begin
  // navigatore
  create.Enabled := False;
  delete.Enabled := False;
  cancel.Enabled := False;
  if not (mycheck_local) then
  begin
    ShowMessage('Read Only' + chr(13) + chr(10) + 'The program is not checked')
  end;
  f_areaform.Show;
  f_oggettiform.Show;
end;


procedure Tf_work.zoom_dbClick(Sender: TObject);
begin
  with f_sceltadb do
  begin
    ShowModal;
    if modalresult = mrOk then
    begin
      dm_form.t_tabelle.Edit;
      dm_form.t_tabelledatabase.Value := dm_form.t_databasesnomedb.Value;
    end;
  end;

end;

procedure Tf_work.DBCtrlGrid_tabelleEnter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_tabelle
end;

procedure Tf_work.NextClick(Sender: TObject);
begin
  DBNavigator_tabelle.BtnClick(nbNext)
end;

procedure Tf_work.PreviousClick(Sender: TObject);
begin
  DBNavigator_tabelle.BtnClick(nbPrior)
end;

procedure Tf_work.zoom_defkeyClick(Sender: TObject);
begin
  f_sceltachiave.ActualKey := dm_form.t_tabellechiaveprimaria.Value;
  f_sceltachiave.ShowModal;
  if f_sceltachiave.ModalResult = mrOk then
  begin
    dm_form.t_tabelle.Edit;
    dm_form.t_tabellechiaveprimaria.Value := f_sceltachiave.ResultKey;
  end;
end;




procedure Tf_work.next_rowExecute(Sender: TObject);
begin

  if dbnav.DataSource <> nil then
  begin
    dbnav.BtnClick(nbEdit);
    dbnav.BtnClick(nbPost);
    dbnav.BtnClick(nbNext);
  end;
end;

procedure Tf_work.prev_rowExecute(Sender: TObject);
begin
  if dbnav.DataSource <> nil then
  begin
    dbnav.BtnClick(nbEdit);
    dbnav.BtnClick(nbPost);
    dbnav.BtnClick(nbPrior);
  end;
end;

procedure Tf_work.dbgrid_serverEnter(Sender: TObject);
begin
  campo_in_grid_server := dbgrid_server.SelectedField.FieldName;
  dbnav.DataSource     := dm_form.ds_servers
end;

procedure Tf_work.DBGrid_databases_savEnter(Sender: TObject);
begin
  campo_in_grid_databases := DBGrid_databases.SelectedField.FieldName;
  dbnav.DataSource := dm_form.ds_databases
end;


procedure Tf_work.DBGrid1Enter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_task;
  PageControl1.ActivePage := ts_programmi;
  PageControl2.ActivePage := ts_main;
end;

procedure Tf_work.DBGrid2Enter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_espressioni;
end;

procedure Tf_work.DBGrid8Enter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_controlliform
end;


procedure Tf_work.Zoom5Click(Sender: TObject);
var exp_local: integer;
begin
  if campo_in_grid_azioni = 't_azioniexp_fine' then
  begin
    if dm_form.t_azioniexp_fine.Value <> 0 then
    begin
      dm_form.t_espressioni.Locate('idexp', dm_form.t_azioniexp_fine.Value, [])
    end;

    exp_local:=call_scelta_exp(dm_form.t_azioniexp_fine.Value);
    if exp_local <> 0 then
    begin
      dm_form.t_azioni.Edit;
      dm_form.t_azioniexp_fine.Value := exp_local;
    end;

  end;
end;



procedure Tf_work.Memo1Enter(Sender: TObject);
begin
  memo1.Clear;
  memo1.Lines.Append(dm_form.t_operazionicallparam.Value);
end;


procedure Tf_work.nuovoprogettoExecute(Sender: TObject);
begin
  f_nuovoprogetto.ShowModal;
  if f_nuovoprogetto.ModalResult = mrOk then
  begin
    progetto := '';
    apri_progetto.Execute;
  end;
end;




procedure Tf_work.Zoom_dbgrid_prgvarClick(Sender: TObject);
begin

  //campo picture
  if dbgrid_varprg.SelectedField.DisplayName = 'picture' then
  begin
    dm_form.t_modelli.Locate('idmodello', dm_form.t_variabili_prgpicture.Value, []);

    f_sceltamodel.ShowModal;
    if f_sceltamodel.ModalResult = mrOk then
    begin
      dm_form.t_variabili_prg.Edit;
      dm_form.t_variabili_prgpicture.Value := dm_form.t_modelliidmodello.Value;
    end;
  end;

end;


procedure Tf_work.DBGrid3ColEnter(Sender: TObject);
begin
  LABEL46.Caption := (dbgrid3.SelectedField.FieldName);
end;

procedure Tf_work.dbgrid_serverColEnter(Sender: TObject);
begin
  campo_in_grid_server := dbgrid_server.SelectedField.FieldName;
end;

procedure Tf_work.Zoom8Click(Sender: TObject);
begin
  if campo_in_grid_server = 'tiposerver' then
  begin
    f_sceltadbengine.ShowModal;
    if f_sceltadbengine.ModalResult = mrOk then
    begin
      dm_form.t_servers.Edit;
      dm_form.t_serverstiposerver.Value :=
        f_sceltadbengine.ListBox1.Items.Strings[f_sceltadbengine.Listbox1.ItemIndex];
    end;
  end;
end;

procedure Tf_work.DBGrid_databases_savColEnter(Sender: TObject);
begin
  campo_in_grid_databases := DBGrid_databases.SelectedField.FieldName;
end;


procedure Tf_work.zoom_tabelleClick(Sender: TObject);
begin
  if campo_in_grid_tabelle = 'database' then
  begin
    with f_sceltadb do
    begin
      ShowModal;
      if modalresult = mrOk then
      begin
        dm_form.t_tabelle.Edit;
        dm_form.t_tabelledatabase.Value := dm_form.t_databasesnomedb.Value;
      end;
    end;
  end; //fine database

  if campo_in_grid_tabelle = 'chiaveprimaria' then
  begin
    f_sceltachiave.ActualKey := dm_form.t_tabellechiaveprimaria.Value;
    f_sceltachiave.ShowModal;
    if f_sceltachiave.ModalResult = mrOk then
    begin
      dm_form.t_tabelle.Edit;
      dm_form.t_tabellechiaveprimaria.Value := f_sceltachiave.ResultKey;
    end;

  end; //fine chiave primaria


  if campo_in_grid_tabelle = 'Id' then
  begin
    DBGrid_campi.SetFocus;
  end;

end;

procedure Tf_work.Zoom_segmentiClick(Sender: TObject);
var n : integer;
begin

  // ________________________________________________ Work on unique indexes ___
  if IndexesPages.ActivePageIndex = 0 then
  begin
    if dbgrid_segmenti.SelectedField.FieldName = 'segmento' then
    begin
      f_sceltacampotab.ShowModal;
      if f_sceltacampotab.ModalResult = mrOk then
      begin
        // ______________________________________________ Multiple selection ___
        if f_sceltacampotab.cxGrid1DBTableView1.Controller.SelectedRowCount > 1
        then begin
          // _________________________________________ Cancel current insert ___
          dm_form.t_indici.Cancel;
          // ________________________________________ Work on selection list ___
          for n:= 0 to
          f_sceltacampotab.cxGrid1DBTableView1.Controller.SelectedRowCount -1 do
          begin
            dm_form.t_indici.Insert;
            dm_form.t_indiciSegmento.Value :=
   f_sceltacampotab.cxGrid1DBTableView1.Controller.SelectedRecords[n].Values[1];
            dm_form.t_indici.Post;
          end;
        end
        // ________________________________________________ Single selection ___
        else
        begin
          dm_form.t_indici.Edit;
          dm_form.t_indiciSegmento.Value := dm_form.t_campinomecampo.Value;
        end;
      end;
    end;
  end
  // __________________________________________ Work on not unique indexes ___
  else
  begin
    if dbgrid_segmentinu.SelectedField.FieldName = 'segmento' then
    begin
      f_sceltacampotab.ShowModal;
      if f_sceltacampotab.ModalResult = mrOk then
      begin
        // ______________________________________________ Multiple selection ___
        if f_sceltacampotab.cxGrid1DBTableView1.Controller.SelectedRowCount > 1
        then begin
          // _________________________________________ Cancel current insert ___
          dm_form.t_indicinu.Cancel;
          // ________________________________________ Work on selection list ___
          for n:= 0 to
          f_sceltacampotab.cxGrid1DBTableView1.Controller.SelectedRowCount -1 do
          begin
            dm_form.t_indicinu.Insert;
            dm_form.t_indicinusegmento.Value :=
   f_sceltacampotab.cxGrid1DBTableView1.Controller.SelectedRecords[n].Values[1];
            dm_form.t_indicinu.Post;
          end;
        end
        // ________________________________________________ Single selection ___
        else
          begin
            dm_form.t_indicinu.Edit;
            dm_form.t_indicinusegmento.Value := dm_form.t_campinomecampo.Value;
          end;
        end;
      end;
    end;

end;

procedure Tf_work.Zoom_campiClick(Sender: TObject);
begin

  // _____________________________________________________ Select data model ___
  if DBGrid_campi.SelectedField.DisplayName = 'picture' then
  begin
    dm_form.t_modelli.Locate('idmodello', dm_form.t_campipicture.Value, []);
    f_sceltamodel.ShowModal;
    if f_sceltamodel.ModalResult = mrOk then
    begin
      dm_form.t_campi.Edit;
      dm_form.t_campipicture.Value := dm_form.t_modelliidmodello.Value;
    end;
  end;
  // ____________________________________________ Jump to indexes definition ___
  if (DBGrid_campi.SelectedField.DisplayName <> 'picture') then
  begin
    if IndexesPages.ActivePageIndex = 0 then
    begin
      dbgrid_indici.SetFocus;
    end
    else
    begin
      DBGrid_notunique.SetFocus;
    end;
  end;

end;

procedure Tf_work.Zoom_indiciClick(Sender: TObject);
begin

  if IndexesPages.ActivePageIndex = 0 then
  begin
    dbgrid_segmenti.SetFocus;
  end
  else
  begin
    dbgrid_segmentinu.SetFocus;
  end;

end;

procedure Tf_work.Esc_indiciClick(Sender: TObject);
begin
  dbgrid_tabelle.SetFocus;
end;

procedure Tf_work.Esc_segmentiClick(Sender: TObject);
begin
  if IndexesPages.ActivePageIndex = 0 then
  begin
    dbgrid_indici.SetFocus;
  end
  else
  begin
    dbgrid_notunique.SetFocus;
  end;
end;


procedure Tf_work.DBGrid_campiColEnter(Sender: TObject);
begin
  campo_in_grid_campi := DBGrid_campi.SelectedField.FieldName;
end;

procedure Tf_work.DBGrid_dbfilesavColEnter(Sender: TObject);
begin
  campo_in_grid_dbfile := DBGrid_dbfile.SelectedField.FieldName;
end;

procedure Tf_work.DBGrid_dbfilesavEnter(Sender: TObject);
begin
  campo_in_grid_dbfile := DBGrid_dbfile.SelectedField.FieldName;
  dbnav.DataSource     := dm_form.ds_usa_file
end;

procedure Tf_work.Zoom_dbfileClick(Sender: TObject);
var
  alias_trovato, alias_assegnato, selezione: string;
  progr,exp_local: integer;
  r10:   TRegExpr;
begin
  if campo_in_grid_dbfile = 'tabella' then
  begin
    if dm_form.t_usa_filetipo.Value <> 'View' then
    begin
      f_sceltatabella.ShowModal;
      if f_sceltatabella.ModalResult = mrOk then
      begin
        dm_form.t_usa_file.Edit;
        dm_form.t_usa_filetabella.Value := dm_form.t_tabelleNome.Value;
      end;
    end;
    if dm_form.t_usa_filetipo.Value = 'View' then
    begin
      f_scelta_campiview.cosa_cerco := 'elenco_view';
      f_scelta_campiview.ShowModal;
      if f_scelta_campiview.ModalResult = mrOk then
      begin
        dm_form.t_usa_file.Edit;
        dm_form.t_usa_filetabella.Value :=
       f_scelta_campiview.ListBox1.Items[f_scelta_campiview.ListBox1.ItemIndex];
      end;
    end;

    if dm_form.t_usa_filechiave.Value = '' then
    begin
        dm_form.t_usa_file.Edit;
        dm_form.t_usa_filechiave.Value:= dm_form.t_tabelle.Lookup('Nome',dm_form.t_usa_filetabella.Value,'chiaveprimaria');
    end;

    if dm_form.t_usa_filecon_nome.Value = '' then
    begin
      //assegnazione alias
      alias_assegnato := dm_form.t_usa_filetabella.Value;
      alias_trovato := '';
      progr := 0;

      repeat
        if dm_form.t_usa_file.Lookup('con_nome', alias_assegnato, 'con_nome') =
          null then
        begin
          alias_trovato := 'S'
        end
        else
        begin
          Inc(progr);
          alias_assegnato := dm_form.t_usa_filetabella.Value + IntToStr(progr);
        end;
      until alias_trovato = 'S';

      dm_form.t_usa_file.Edit;
      dm_form.t_usa_filecon_nome.Value := alias_assegnato;
    end;

  end;

  //scelta indici
  if campo_in_grid_dbfile = 'chiave' then
  begin
    if LeftStr(dm_form.t_usa_filechiave.Value,7)='[o2exp_' then
    begin
        f_sceltachiave.e_expr.Text:=leftstr(trim(copy(dm_form.t_usa_filechiave.Value, 8, 8)), length(trim(copy(dm_form.t_usa_filechiave.Value, 8, 8))) - 1);
    end;

    if dm_form.t_usa_filetipo.Value = 'View' then
    begin

      r10 := TRegExpr.Create;

      // in caso di View cerca gli indici della tabella main della view selezionata
      if FileExists(f_work.userdir + dm_form.t_applicazioneviews.Value) then
      begin
        Memo1.Lines.LoadFromFile(f_work.userdir + dm_form.t_applicazioneviews.Value)
      end
      else
      begin
        Memo1.Lines.LoadFromFile(f_work.prgdir + dm_form.t_applicazioneviews.Value)
      end;

      r10.Expression := 'task_' + dm_form.t_usa_filetabella.Value + '->usa_file(.*?);';
      if r10.exec(Memo1.Lines.Text) then
      begin
        Memo1.SelStart := r10.MatchPos[0] - 1;
        Memo1.SelLength := r10.MatchLen[0];
        selezione := Memo1.SelText;
        selezione := ExtractWord(2, selezione, ['(']);
        selezione := ExtractWord(1, selezione, [',']);
        selezione := copy(selezione, 2, length(selezione) - 2);

        dm_form.t_tabelle.Locate('nome', selezione, []);
      end;
    end
    else
    begin
      if dm_form.t_usa_filetipo.Value = 'Main' then
       f_sceltachiave.abilita_expression:=true
       else
       f_sceltachiave.abilita_expression:=false;
      dm_form.t_tabelle.Locate('nome', dm_form.t_usa_filetabella.Value, [])
    end;

    f_sceltachiave.ActualKey := dm_form.t_usa_filechiave.Value;
    f_sceltachiave.showModal;
    if f_sceltachiave.ModalResult = mrOk then
    begin
      dm_form.t_usa_file.Edit;
      if f_sceltachiave.e_expr.Text <> '' then
      dm_form.t_usa_filechiave.Value := '[o2exp_'+trim(f_sceltachiave.e_expr.Text)+']'
      else
      dm_form.t_usa_filechiave.Value := f_sceltachiave.ResultKey;
    end;

  end;

  if (campo_in_grid_dbfile = 'dbname_exp') or (campo_in_grid_dbfile = 'tablename_exp') then
  begin

    if DBGrid_dbfile.SelectedField.Text <> '' then exp_local:=strtoint(DBGrid_dbfile.SelectedField.Text) else exp_local:= 0;
    exp_local:=call_scelta_exp(exp_local);

    if exp_local <> 0 then
    begin
      dm_form.t_usa_file.Edit;
      DBGrid_dbfile.SelectedField.Text := inttostr(exp_local);
    end;

  end;

end;

procedure Tf_work.DBGrid_selectsavColEnter(Sender: TObject);
begin

  // ___________________________________________ In SELECTS skip INIT column ___
  if (dm_form.t_selecttipo.Value = 'Select') and
     (DBGrid_select.SelectedField = dm_form.t_selectinit) then
  begin
    if campo_in_grid_select = 'rangemin' then
    begin
      DBGrid_select.SelectedField := dm_form.t_selectcon_nome;
    end
    else
    begin
      DBGrid_select.SelectedField := dm_form.t_selectrangemin;
    end;
  end
  // ________________________ In FORMULAS and SQL-FORMULAS skip TABLE column ___
  else if ((dm_form.t_selecttipo.Value = 'Calculated') or
           (dm_form.t_selecttipo.Value = 'SQL')) and
          (DBGrid_select.SelectedField = dm_form.t_selecttabella) then
  begin
    if campo_in_grid_select = 'campo' then
    begin
      DBGrid_select.SelectedField := dm_form.t_selecttipo;
    end
    else
    begin
      DBGrid_select.SelectedField := dm_form.t_selectcampo;
    end;
  end;
  // _______________________________________ Set field name selected in grid ___
  campo_in_grid_select := DBGrid_select.SelectedField.FieldName;

end;

procedure Tf_work.DBGrid_selectsavEnter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_select;
end;

procedure Tf_work.Zoom_selectClick(Sender: TObject);
var
  alias_assegnato, alias_trovato, alias_tabella:      string;
  n, progr, exp_local: integer;
begin

  //TABELLA
  if campo_in_grid_select = 'tabella' then
  begin
    f_sceltafiletask.ShowModal;
    if f_sceltafiletask.ModalResult = mrOk then
    begin
      dm_form.t_select.Edit;
      dm_form.t_selecttabella.Value := dm_form.t_usa_filecon_nome.Value;

    end;
  end;

  //CAMPO
  if campo_in_grid_select = 'campo' then
  begin

    // __________________________ If standard select (no formula and no SQL) ___
    if dm_form.t_selecttipo.AsString = 'Select' then
    begin

      if dm_form.t_usa_file.Lookup('con_nome', dm_form.t_selecttabella.Value, 'tipo') <>
        'View' then
      begin

        //si posiziona sulla tabella selezionata
        dm_form.t_tabelle.Locate('Nome', dm_form.t_usa_file.Lookup(
          'con_nome', dm_form.t_selecttabella.Value, 'tabella'), []);

        // si posiziona sul campo in questione
        dm_form.t_campi.Locate('nomecampo', dm_form.t_selectcampo.Value, []);
        f_sceltacampotab.ShowModal;
        if f_sceltacampotab.ModalResult = mrOk then
        begin

          // in caso di selezione multipla
          if f_sceltacampotab.cxGrid1DBTableView1.Controller.SelectedRowCount > 1 then
          begin
            // annulla la insert corrente
            alias_tabella := dm_form.t_selecttabella.Value;
            dm_form.t_select.Cancel;
            // lavora sulla selezione
            for n:= 0 to  f_sceltacampotab.cxGrid1DBTableView1.Controller.SelectedRowCount - 1 do
            begin
              // cerca univocita
              // assegnazione alias campo
              alias_assegnato := f_sceltacampotab.cxGrid1DBTableView1.Controller.SelectedRecords[n].Values[1];
              alias_trovato := '';
              progr := 0;
              repeat
                if dm_form.t_select.Lookup('con_nome', alias_assegnato, 'con_nome') =
                 null then alias_trovato := 'S' ;

                //trovato copia
                if dm_form.t_select.Lookup('con_nome', alias_assegnato, 'con_nome') <>
                 null then
                begin
                  Inc(progr);
                  alias_assegnato := f_sceltacampotab.cxGrid1DBTableView1.Controller.SelectedRecords[n].Values[1]  + IntToStr(progr);
                end;
              until alias_trovato = 'S';

              dm_form.t_select.Insert;
              dm_form.t_selecttabella.Value:= alias_tabella;
              dm_form.t_selectcampo.Value:= f_sceltacampotab.cxGrid1DBTableView1.Controller.SelectedRecords[n].Values[1];
              dm_form.t_selecttipo.Value:= 'Select';
              dm_form.t_selectcon_nome.Value:= alias_assegnato;
              dm_form.t_select.Post;
            end;
          end
          else
          //singola selezione aggiorna
          begin
            dm_form.t_select.Edit;
            dm_form.t_selectcampo.Value:= dm_form.t_campinomecampo.Value;
          end;
        end;
      end
      else begin
        f_scelta_campiview.cosa_cerco  := '';
        f_scelta_campiview.nomemodello :=
         dm_form.t_usa_file.Lookup('con_nome', dm_form.t_selecttabella.Value, 'tabella');
        f_scelta_campiview.ShowModal;
        if f_scelta_campiview.ModalResult = mrOk then
        begin
          dm_form.t_select.Edit;
          dm_form.t_selectcampo.Value :=
           f_scelta_campiview.ListBox1.Items[f_scelta_campiview.ListBox1.ItemIndex];
        end;
      end;
    end
    // ___________________________________________________ If formula or SQL ___
    else
    begin
      // ___________________________________ Position on selected data-model ___
      dm_form.t_modelli.Locate('idmodello', dm_form.t_selectcampo.Value, []);
      f_sceltamodel.ShowModal;
      if f_sceltamodel.ModalResult = mrOk then
      begin
        dm_form.t_select.Edit;
        dm_form.t_selectcampo.Value := dm_form.t_modelliidmodello.Value;
      end;
    end;
  end;

  // __________________________________________________________ SQL formulas ___
  if (campo_in_grid_select = 'init') and
     (dm_form.t_selecttipo.Text = 'SQL') then
  begin
    if (dm_form.t_select.State = dsEdit) or
       (dm_form.t_select.State = dsInsert) then
    begin
      dm_form.t_select.Post
    end;
    if f_formula_sql.ShowModal() = mrOk then
    begin
      if (dm_form.t_select.State = dsEdit) or
         (dm_form.t_select.State = dsInsert) then
      begin
        dm_form.t_select.Post
      end;
      dm_form.t_select.Edit;
      // _______________________________________________________ Type CONCAT ___
      if f_formula_sql.ResType = 'C' then
      begin
        dm_form.t_selectsql.Value := f_formula_sql.ResParsText.Text;
      end
      // _____________________________________________________ Type SQL code ___
      else
      begin
        dm_form.t_selectsql.Value := '';
      end;
      dm_form.t_selectinit.Value := f_formula_sql.ResParsCount;
    end;
  end
  // ___________________________________________________________ Expressions ___
  else if (campo_in_grid_select = 'init') or
    (campo_in_grid_select = 'rangemin') or
    (campo_in_grid_select = 'rangemax') or
    (campo_in_grid_select = 'not') or
    (campo_in_grid_select = 'like') then
  begin
    if (dm_form.t_select.State = dsEdit) or
       (dm_form.t_select.State = dsInsert) then
    begin
      dm_form.t_select.Post
    end;
    if DBGrid_select.SelectedField.Text <> '' then
    begin
      dm_form.t_espressioni.Locate('idexp', DBGrid_select.SelectedField.Text, [])
    end;
    pos_select := dm_form.t_select.GetBookmark;
    if DBGrid_select.SelectedField.Text <> '' then exp_local:=strtoint(DBGrid_select.SelectedField.Text) else exp_local:= 0;
    exp_local := call_scelta_exp(exp_local);
    dm_form.t_select.GotoBookmark(pos_select);
    dm_form.t_select.FreeBookmark(pos_select);
    if exp_local <> 0 then
    begin
      dm_form.t_select.Edit;
      DBGrid_select.SelectedField.Text := inttostr(exp_local);
    end;

  end;

end;




procedure Tf_work.Esc1Click(Sender: TObject);
begin
  DBGrid_dbfile.SetFocus;
end;

procedure Tf_work.Viewfield1Click(Sender: TObject);
begin
  DBGrid_select.SetFocus;
end;

procedure Tf_work.DBGrid_selectDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if (DBGrid_select.SelectedField.Text <> '') and (campo_in_grid_select = 'init') then
  begin
    dm_form.t_espressioni.Locate('idexp', DBGrid_select.SelectedField.Text, [])
  end;

end;

procedure Tf_work.DBGrid_selectsavKeyUp(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  refresh_expr.Execute;

end;


procedure Tf_work.Down1Click(Sender: TObject);
begin
  dbnav.BtnClick(nbNext);
end;

procedure Tf_work.btn_expressionsClick(Sender: TObject);
begin
  PageControl1.ActivePage := ts_programmi;
  PageControl2.ActivePage := ts_espressioni;
end;


procedure Tf_work.btn_publish_prgClick(Sender: TObject);
begin
  f_export.prg_exportExecute(self, '');
end;

procedure Tf_work.btn_publish_appClick(Sender: TObject);
begin
  f_export.app_export.Execute;
end;

procedure Tf_work.btn_publish_dbClick(Sender: TObject);
begin
  f_export.db_export.Execute;
end;

procedure Tf_work.btn_publish_tableClick(Sender: TObject);
begin
  f_export.tables_export.Execute;
end;


procedure Tf_work.btn_variabili_prgClick(Sender: TObject);
begin
  PageControl1.ActivePage := ts_programmi;
  PageControl2.ActivePage := ts_variabili_prg;
end;


procedure Tf_work.app_loginExecute(Sender: TObject);
begin
  f_start.ShowModal;
end;

procedure Tf_work.Button3Click(Sender: TObject);
var
  i: integer;
begin
    // ______________________________ Load PHP functions for editor proposal ___
    f_editorphp.item_funzioni.LoadFromFile(ExtractFileDir(Application.ExeName) +
                                           '\itemlist_php.txt');
    f_editorphp.insert_funzioni.LoadFromFile(ExtractFileDir(Application.ExeName)
                                             + '\insertlist_php.txt');
    // ________________________________________________________ Open project ___
    Apri1Click(self);
end;


procedure Tf_work.Oggettiiincheck1Click(Sender: TObject);
begin
  PageControl1.ActivePage := ts_cvs;
end;

procedure Tf_work.dbgrid_varprgEnter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_variabili_prg;
end;

procedure Tf_work.dbgrid_appvarsEnter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_variabili_app;
end;



procedure Tf_work.dbgrid_unionsavEnter(Sender: TObject);
begin
  if dm_form.t_usa_filetipo.Value <> 'Main' then
  begin
    dm_form.t_tabelle.Locate('nome', dm_form.t_usa_filetabella.Value, []);
    campo_in_grid_union := dbgrid_union.SelectedField.FieldName;
    dbnav.DataSource    := dm_form.ds_union;

    //se view abilita solo la init

    if dm_form.t_usa_filetipo.Value = 'View' then
    begin
      dbgrid_union.Columns[2].Visible := False;
      dbgrid_union.Columns[3].Visible := False;
      dbgrid_union.Columns[4].Visible := False;
      dbgrid_union.Columns[5].Visible := False;
      dbgrid_union.Columns[6].Visible := True;
    end
    else //altrimenti abilita i range e non la init (link)
    begin
      dbgrid_union.Columns[2].Visible := True;
      dbgrid_union.Columns[3].Visible := True;
      dbgrid_union.Columns[4].Visible := True;
      dbgrid_union.Columns[5].Visible := True;
      dbgrid_union.Columns[6].Visible := False;

    end;

  end;


  if dm_form.t_usa_filetipo.Value = 'Main' then
  begin
    ShowMessage('Only from Link or View!');
    DBGrid_dbfile.SetFocus;
  end;

end;

procedure Tf_work.zoom_unionClick(Sender: TObject);
var n, exp_local : integer;
begin

  if campo_in_grid_union = 'campo' then
  begin

    if dm_form.t_usa_filetipo.Value = 'Link' then
    begin

      f_sceltacampotab.ShowModal;
      if f_sceltacampotab.ModalResult = mrOk then
      begin

        // in caso di selezione multipla
        if f_sceltacampotab.cxGrid1DBTableView1.Controller.SelectedRowCount > 1 then
        begin
         // annulla la insert corrente
          dm_form.t_union.Cancel;

        // lavora sulla selezione
       for n:= 0 to  f_sceltacampotab.cxGrid1DBTableView1.Controller.SelectedRowCount - 1 do
        begin
          dm_form.t_union.Insert;
          dm_form.t_unioncampo.Value := f_sceltacampotab.cxGrid1DBTableView1.Controller.SelectedRecords[n].Values[1];
          dm_form.t_union.Post;
        end;
      end
      else
      begin
          dm_form.t_union.Edit;
          dm_form.t_unioncampo.Value := dm_form.t_campinomecampo.Value;
      end;

     end;
    end;

    if dm_form.t_usa_filetipo.Value = 'View' then
    begin
      f_scelta_campiview.cosa_cerco  := 'parametri';
      f_scelta_campiview.nomemodello := dm_form.t_usa_filetabella.Value;
      f_scelta_campiview.ShowModal;
      if f_scelta_campiview.ModalResult = mrOk then
      begin
        dm_form.t_union.Edit;

        dm_form.t_unioncampo.Value :=
          f_scelta_campiview.ListBox1.Items[f_scelta_campiview.ListBox1.ItemIndex];
      end;
    end;
  end;


  if (campo_in_grid_union = 'rangemin') or
    (campo_in_grid_union = 'rangemax') or
    (campo_in_grid_union = 'not') or
    (campo_in_grid_union = 'like') or
    (campo_in_grid_union = 'init') then
  begin
    if dbgrid_union.SelectedField.DisplayText <> '' then exp_local:= strtoint(dbgrid_union.SelectedField.DisplayText) ;
    exp_local:=call_scelta_exp(exp_local);
    if exp_local <> 0 then
    begin
      dm_form.t_union.Edit;
      dbgrid_union.SelectedField.Value := exp_local;
    end;

  end;

end;

procedure Tf_work.dbgrid_unionsavColEnter(Sender: TObject);
begin
  campo_in_grid_union := dbgrid_union.SelectedField.FieldName;
end;

procedure Tf_work.DB_operazChange(Sender: TObject);
begin
  dm_form.t_operazionio2ref.Value := '';
end;



procedure Tf_work.checkExecute(Sender: TObject);
begin

  f_checkprg.check_globale.Execute;
  f_checkprg.ripristina_posizioni.Execute;
  if MessageDlg('Ignore unused expression?',
                mtConfirmation,
                [mbYes, mbNo],
                0) = mrNo then
  begin
   f_checkprg.CheckExpNotUsed.Execute;
   f_checkprg.btn_elimina_expnotused.Visible := True;
  end
  else
  begin
    f_checkprg.btn_elimina_expnotused.Visible := False;
  end;
  f_checkprg.ShowModal;

end;


procedure Tf_work.ListView1Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  if item.Caption = 'Tables' then
  begin
    PageControl1.ActivePage := ts_tabelle
  end;
  if item.Caption = 'Server/Database' then
  begin
    PageControl1.ActivePage := ts_database
  end;

end;


procedure Tf_work.carica_supertreeExecute(Sender: TObject);
var
  temp, temp2, temp3: TTreeNode;
begin
  supertree.Items.Clear;

  temp := supertree.Items.add(supertree.TopItem, 'Application');
  temp.ImageIndex := 0;
  temp.SelectedIndex := 0;

  temp2 := supertree.Items.AddChild(temp, 'Properties');
  temp2.ImageIndex := 1;
  temp2.SelectedIndex := 1;

  temp2 := supertree.Items.AddChild(temp, 'Data models');
  temp2.ImageIndex := 9;
  temp2.SelectedIndex := 9;

  temp2 := supertree.Items.AddChild(temp, 'Variables');
  temp2.ImageIndex := 14;
  temp2.SelectedIndex := 14;

  temp2 := supertree.Items.AddChild(temp, 'Menus');
  temp2.ImageIndex := 12;
  temp2.SelectedIndex := 12;

  temp := supertree.Items.add(supertree.TopItem, 'Connectivity');
  temp.ImageIndex := 27;
  temp.SelectedIndex := 27;

  temp2 := supertree.Items.AddChild(temp, 'Servers/Databases');
  temp2.ImageIndex := 11;
  temp2.SelectedIndex := 11;

  temp2 := supertree.Items.AddChild(temp, 'Tables');
  temp2.ImageIndex := 10;
  temp2.SelectedIndex := 10;

  nodo_prg := supertree.Items.add(supertree.TopItem, 'Programs');
  nodo_prg.ImageIndex := 4;
  nodo_prg.SelectedIndex := 4;
  //carica solo i programmi in check da me
  carica_prgExecute(self, false);

end;


procedure Tf_work.JvSearchFile1FindFile(Sender: TObject; const AName: string);
var
  nomeprg, folder, modulo, selezione, data_local: string;
  temp:     TTreeNode;
  tipo_prg: string;

begin
  nomeprg := ExtractFileName(AName);
  nomeprg := strtoken(nomeprg, '.');

  if ((JvSearchFile1.RootDirectory = userdir) or
      (not (FileExists(userdir + nomeprg + '.prg'))) and
      FileExists(AName)) then
  begin
    // ____________________________________ Check prg for BATCH or INTERFACE ___
    Memo1.Lines.LoadFromFile(AName);
    if Pos('o2def::form', Memo1.Lines.Text) > 0 then
    begin
      tipo_prg := 'Interface';
    end
    else
    begin
      tipo_prg := 'Batch';
    end;
    // ________________________________________________________ Logic folder ___
    r            := TRegExpr.Create;
    r.ModifierI  := True;
    r.expression := 'o2def::folder\(\"(.*?)\"\)';
    if r.exec(Memo1.Lines.Text) then
    begin
      folder := r.Match[1];
    end;
    // ______________________________________________________________ Module ___
    r.expression := 'o2def::module\(\"(.*?)\"\)';
    if r.exec(Memo1.Lines.Text) then
    begin
      modulo := r.Match[1];
    end;
    FreeAndNil(r);
    // in tabella tutti
    if (FileAge(AName) > -1) then
    begin
      data_local := FormatDateTime('yyyy-mm-dd hh:mm:ss',
                                   FileDateToDateTime(FileAge(AName)));
    end
    else
    begin
      data_local := '---';
    end;
    dm_form.elenco_prg.InsertRecord([nomeprg,
                                     '',
                                     folder,
                                     modulo,
                                     tipo_prg,
                                     data_local]);
    // _______________________________________ List checked-out prgs in tree ___
    if userdir = JvSearchFile1.RootDirectory then
    begin
     temp := supertree.Items.AddChild(nodo_prg, nomeprg);
     if tipo_prg = 'Batch' then
     begin
       temp.ImageIndex    := 21;
       temp.SelectedIndex := 21;
     end
     else
     begin
       temp.ImageIndex    := 17;
       temp.SelectedIndex := 17;
     end;
    end;
  end;
end;


{*
 * Handle selection (Enter or DblClick) on main tree-view
 *}
procedure Tf_work.zoom7Click(Sender: TObject);
var
  temp, temp2, temp3: TTreeNode;
begin
  Screen.Cursor := crHourGlass;
  try
    // _______________________________________________ Something is selected ___
    if supertree.Selected <> nil then
    begin
      nodo_ultimo_selezionato := supertree.Selected;
      // ___________________________________________ Close active prg if any ___
      if (nodo_prg_attivo <> nil) and
         (nodo_prg_attivo.Parent <> nil) and
         (not (supertree.Selected.HasAsParent(nodo_prg_attivo))) and
         nodo_prg_attivo.HasChildren then
      begin
        nodo_prg_attivo.DeleteChildren();
      end;
      // ___________________________________________ Selection on main nodes ___
      if supertree.Selected.Parent = nil then
      begin
        // __________________ Selection on "Programs" node: reload prgs list ___
        if (supertree.Selected.Text = 'Programs') then
        begin
          if not(elenco_prg_caricato) then
          begin
            // ______________________________________________ Load prgs list ___
            carica_prgExecute(self, false);
          end;
          // _______________________________________ Show programs tab-sheet ___
          PageControl1.ActivePage := ts_programs;
          refresh_bottoni_check(self);
        end; // ___________________________ End selection on "Programs" node ___
      end
      // _________________________________ Selection on an action inside prg ___
      else if (nodo_azioni <> nil) and
              supertree.Selected.HasAsParent(nodo_azioni) and
              ((supertree.Selected.Text <> 'all') or
               (supertree.Selected.Parent <> nodo_azioni)) then
      begin
        dm_form.t_azioni.Locate('azione', supertree.Selected.Text, []);
        dbnav.DataSource         := dm_form.ds_azioni;
        Pagecontrol2.ActivePage  := ts_azioni;
        Panel_expression.Visible := False;
      end
      // ______________ Selection inside active program (3 sub-nodes levels) ___
      {*
       * Image indexes 17 and 21 are relative to batch and on-line program
       * icons, used for programs listed in workset
       *}
      else if (supertree.Selected.Parent.ImageIndex = 17) or
              (supertree.Selected.Parent.ImageIndex = 21) or
              ((supertree.Selected.Parent.Parent <> nil) and
               ((supertree.Selected.Parent.Parent.ImageIndex = 17) or
                (supertree.Selected.Parent.Parent.ImageIndex = 21) or
                ((supertree.Selected.Parent.Parent.Parent <> nil) and
                 ((supertree.Selected.Parent.Parent.Parent.ImageIndex = 17) or
                  (supertree.Selected.Parent.Parent.Parent.ImageIndex = 21)))))
              then
      begin
        // __________________________________ Selection on a view definition ___
        if (supertree.Selected.Parent.Text = 'Views') then
        begin
          dm_form.t_task.Locate('nome', supertree.Selected.Text, []);
          lab_nomeview.Caption    := 'Tables in view ' +
                                     supertree.Selected.Text;
          dbnav.DataSource        := dm_form.ds_task;
          Pagecontrol2.ActivePage := ts_main;
        end
        // __________________________________ Selection on a view properties ___
        else if supertree.Selected.Text = 'View properties' then
        begin
          dm_form.t_task.Locate('nome', supertree.Selected.Parent.Text, []);
          dbnav.DataSource        := dm_form.ds_task;
          PageControl2.ActivePage := ts_taskprop;
        end
        else if supertree.Selected.Text = 'Program properties' then
        begin
          Pagecontrol2.ActivePage := ts_prg_prop;
        end
        else if supertree.Selected.Text = 'Parameters' then
        begin
          Pagecontrol2.ActivePage := ts_parametri;
        end
        else if supertree.Selected.Text = 'Variables' then
        begin
          Pagecontrol2.ActivePage := ts_variabili_prg;
        end
        else if supertree.Selected.Text = 'I/O Files' then
        begin
          Pagecontrol2.ActivePage := ts_io;
        end
        else if supertree.Selected.Text = 'Forms' then
        begin
          Pagecontrol2.ActivePage := ts_form;
        end
        else if supertree.Selected.Text = 'Protocols' then
        begin
          Pagecontrol2.ActivePage := ts_report;
        end
        else if supertree.Selected.Text = 'Expressions' then
        begin
          Pagecontrol2.ActivePage := ts_espressioni;
        end
        // ________________________ Selection on "Views" and "Actions" nodes ___
        else if (supertree.Selected.Text = 'Views') or
                (supertree.Selected.Text = 'Actions') then
        begin
          // ___________________________________________ Fired from keyboard ___
          if Sender.ClassName = 'TMenuItem' then
          begin
            if supertree.Selected.Expanded then
            begin
              supertree.Selected.Collapse(True);
            end
            else
            begin
              supertree.Selected.Expand(False);
            end;
          end;
          if supertree.Selected.Text = 'Views' then
          begin
            dbnav.DataSource := dm_form.ds_task;
          end
          else
          begin
            dbnav.DataSource := dm_form.ds_azioni;
          end;
        end;
        PageControl1.ActivePage := ts_programmi;
        refresh_bottoni_check(self);
      end // _______________________________ End selection inside active prg ___
      // __________________________ Selection on subnodes outside active prg ___
      else
      begin
        // _______________________ Selection on prg in workset: activate prg ___
        {*
         * Image indexes 17 and 21 are relative to batch and on-line program
         * icons, used for programs listed in workset
         *}
        if (supertree.Selected.ImageIndex = 17) or
           (supertree.Selected.ImageIndex = 21) then
        begin
          carica_singolo_prg(self, supertree.Selected.Text);
        end
        // ______________________________ Selection on Application sub-nodes ___
        else if (supertree.Selected.Parent.Text = 'Application') then
        begin
          // ___________________________ Selection on Application Properties ___
          if supertree.Selected.Text = 'Properties' then
          begin
            Pagecontrol1.ActivePage := ts_applicazione;
            f_import.appini_import.Execute();
          end
          // _______________________________ Selection on Application Models ___
          else if (supertree.Selected.Text = 'Data models') then
          begin
            Pagecontrol1.ActivePage := ts_models;
            dm_form.attiva_disattiva_models(true);
            f_import.models_import.Execute();
          end
          // ____________________________ Selection on Application Variables ___
          else if supertree.Selected.Text = 'Variables' then
          begin
            Pagecontrol1.ActivePage := ts_appvars;
            dm_form.attiva_disattiva_appvars(true);
            f_import.vars_import.Execute();
          end
          // ________________________________ Selection on Application Menus ___
          else if supertree.Selected.Text = 'Menus' then
          begin
            Pagecontrol1.ActivePage := ts_menu;
            dm_form.attiva_disattiva_menu(true);
            f_import.menu_import.Execute();
            carica_treemenu.Execute();
          end;
        end // _____________________________________________ End Application ___
        // _____________________________ Selection on Connectivity sub-nodes ___
        else if (supertree.Selected.Parent.Text = 'Connectivity') then
        begin
          // ________________________________ Selection on Servers/Databases ___
          if supertree.Selected.Text = 'Servers/Databases' then
          begin
            // ____________________________ Show Servers/databases tab-sheet ___
            Pagecontrol1.ActivePage := ts_database;
            dm_form.attiva_disattiva_dbrep(true);
            // ________________________________________ Read servers and dbs ___
            f_import.db_import.Execute();
          end
          // ___________________________________________ Selection on Tables ___
          else if supertree.Selected.Text = 'Tables' then
          begin
            // _______________________________________ Show tables tab-sheet ___
            Pagecontrol1.ActivePage := ts_tabelle;
            disabilitatablerep.Execute();
            // _________________________________________________ Read tables ___
            f_import.tables_import.Execute();
            abilitatablerep.Execute();
          end;
        end; // ___________________________________________ End Connectivity ___
        refresh_bottoni_check(self);
      end; // _______________________________________ End "other" selections ___
    end; // _________________________________________ End something selected ___
    if (PageControl1.ActivePage = ts_programmi) or
       (PageControl1.ActivePage = ts_prg_prop) or
       (PageControl1.ActivePage = ts_variabili_prg) or
       (PageControl1.ActivePage = ts_parametri) or
       (PageControl1.ActivePage = ts_main) or
       (PageControl1.ActivePage = ts_taskprop) or
       (PageControl1.ActivePage = ts_io) or
       (PageControl1.ActivePage = ts_report) then
    begin
      HeaderControl1.Sections[1].Text := 'Program: ' +
                                         dm_form.t_programminome.Value;
      if PageControl2.ActivePage <> nil then
      begin
        HeaderControl1.Sections[1].Text := HeaderControl1.Sections[1].Text +
                                           '   |   ' +
                                           PageControl2.ActivePage.Caption;
      end;
    end
    else
    begin
      HeaderControl1.Sections[1].Text := PageControl1.ActivePage.Caption;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end; // ____________________________________ End selection on main tree-view ___


procedure Tf_work.work1Click(Sender: TObject);
begin
  PageControl1.ActivePage.SetFocus;
  if PageControl1.ActivePage = ts_programmi then
  begin
    PageControl2.ActivePage.SetFocus;
  end;
  if PageControl1.ActivePage <> ts_tabelle then
  begin
    SelectNext(Screen.ActiveControl, true, true);
  end;
end;

procedure Tf_work.Exit1Click(Sender: TObject);
begin
  PageControl1.ActivePage.SetFocus;

end;

procedure Tf_work.Zoom9Click(Sender: TObject);
begin
  // __________________________________________ Modify only when checked-out ___
  if (mycheck('mod_repository.inc')) then
  begin
    // _________________________________________________ Zoom from data type ___
    if dbgrid_modelsDBTableView1tipo_dato.Focused then
    begin
      f_selecttype.ShowModal;
      if f_selecttype.ModalResult = mrOk then
      begin
        dm_form.t_modelli.Edit;
        dm_form.t_modellitipo_dato.Value := f_selecttype.scelta;
      end;
    end;
    // ______________________________________________ Zoom from zoom program ___
    if dbgrid_modelsDBTableView1prgselect.Focused then
    begin
      f_sceltaprogramma.ShowModal;
      if f_sceltaprogramma.ModalResult = mrOk then
      begin
        dm_form.t_modelli.Edit;
        dm_form.t_modellinomeprgscelta.Value := f_sceltaprogramma.scelta;
      end;
    end;
    // ___________________________________________________ Zoom from picture ___
    if dbgrid_modelsDBTableView1maschera.Focused then
    begin
      call_mask_def(dm_form.t_modellitipo_dato.Value);
    end;
  end;
end;


procedure Tf_work.dbgrid_modelssavEnter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_modelli;
end;

procedure Tf_work.dbgrid_menuEnter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_menu;
end;

procedure Tf_work.Menu2Click(Sender: TObject);
begin
  if supertree.Visible then
  begin
    supertree.SetFocus;
  end;
end;


procedure Tf_work.new_viewExecute(Sender: TObject);
var
  nome_view: string;
  nodotemp, nodotemp2 :  TTreeNode;
begin
  if InputQuery('New view name', 'Name', nome_view) then
  begin
    nome_view := dm_form.formatName(nome_view);
    // ____________________________________________ View name already exists ___
    if dm_form.t_task.Locate('nome', nome_view, [loCaseInsensitive]) then
    begin
      ShowMessage('View ' + nome_view + ' already exists!');
    end
    else
    begin
      dm_form.t_task.Insert;
      dm_form.t_tasknome.Value := nome_view;
      dm_form.t_taskautoaggregate.Value := False;
      dm_form.t_task.Post;
      nodotemp := supertree.Items.AddChild(supertree.Selected, nome_view);
      nodotemp.ImageIndex := 2;
      nodotemp.SelectedIndex := 2;
      nodotemp2:=supertree.Items.AddChild(nodotemp, 'View properties');
      nodotemp2.ImageIndex := 1;
      nodotemp2.SelectedIndex := 1;
      supertree.Selected := nodotemp;
      dm_form.t_task.Locate('nome', supertree.Selected.Text, []);
      lab_nomeview.Caption    := 'Tables in view ' + supertree.Selected.Text;
      Pagecontrol2.ActivePage := ts_main;
    end;
  end;
end;


procedure Tf_work.Delete1Click(Sender: TObject);
begin
  if MessageDlg('Confirm delete?', mtConfirmation, mbOKCancel, 1) = mrOk then
  begin
    // ____________________________________________ If a program is selected ___
    if (supertree.Selected.ImageIndex = 17) or
       (supertree.Selected.ImageIndex = 21) then
    begin
      Screen.Cursor := crHourGlass;
      // ______________________________________ Delete PRG file if it exists ___
      if FileExists(prgdir + supertree.Selected.Text + '.prg') then
      begin
        DeleteFile(prgdir + supertree.Selected.Text + '.prg');
      end;
      // ______________________________________ Delete PRF file if it exists ___
      if FileExists(prgdir + supertree.Selected.Text + '.prf') then
      begin
        DeleteFile(prgdir + supertree.Selected.Text + '.prf');
      end;
      // ______________________________ Remove "__source__" dir if it exists ___
      if DirectoryExists(prgdir + '__source__\' + supertree.Selected.Text) then
      begin
        Jvfileopera.Operation := foDelete;
        Jvfileopera.SourceFiles.Clear;
        Jvfileopera.SourceFiles.Append(prgdir + '__source__\' +
                                       supertree.Selected.Text);
        Jvfileopera.Execute;
      end;
      // ________________________ Delete PRG file from user dir if it exists ___
      if FileExists(userdir + supertree.Selected.Text + '.prg') then
      begin
        DeleteFile(userdir + supertree.Selected.Text + '.prg');
      end;
      // ________________________ Delete PRF file from user dir if it exists ___
      if FileExists(userdir + supertree.Selected.Text + '.prf') then
      begin
        DeleteFile(userdir + supertree.Selected.Text + '.prf');
      end;
      // ________________ Remove "__source__" dir from user dir if it exists ___
      if DirectoryExists(userdir + '__source__\' + supertree.Selected.Text) then
      begin
        Jvfileopera.Operation := foDelete;
        Jvfileopera.SourceFiles.Clear;
        Jvfileopera.SourceFiles.Append(userdir + '__source__\' +
                                       supertree.Selected.Text);
        Jvfileopera.Execute;
      end;
      // ______________________________________________ Remove treeview item ___
      supertree.Selected.Delete;
      // ____________________________________________________ Load prgs list ___
      carica_prgExecute(self, false);
      // ___________________________________________ Show programs tab-sheet ___
      PageControl1.ActivePage := ts_programs;
      refresh_bottoni_check(self);
      nodo_prg.Expand(false);
      nodo_prg_attivo := nil;
      Screen.Cursor := crDefault;
      Exit;
    end // ______________________________________________ End program delete ___
    // _______________________________________________ If a view is selected ___
    else if supertree.Selected.Parent.Text = 'Views' then
    begin
      dm_form.t_task.Locate('nome', supertree.Selected.Text, []);
      dm_form.t_task.Delete;
    end
    // ____________________________________________ If an action is selected ___
    else if supertree.Selected.Parent = nodo_azioni_all then
    begin
      dm_form.t_azioni.Locate('azione', supertree.Selected.Text, []);
      dm_form.t_azioni.Delete;
    end;
    // ________________________________________________ Remove treeview item ___
    supertree.Selected.Delete;
  end;
end;


procedure Tf_work.dbgrid_parametriEnter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_parametri;
end;

procedure Tf_work.prg_copiaExecute(Sender: TObject);
var
  nomenewprg: string;
begin
  //richiede nome programma
  if InputQuery('New Program name', 'Name', nomenewprg) then
  begin
    f_export.prg_exportExecute(f_work, nomenewprg);
    nodo_temp1 := supertree.Items.AddChild(nodo_prg, nomenewprg);
    nodo_temp1.ImageIndex := 21;
    nodo_temp1.SelectedIndex := 21;
  end;
end;


procedure Tf_work.Zoom11Click(Sender: TObject);
var
 azione_local : string;
 expr_local : integer;
begin
  // ______________________________________________ View righe-vis expresion ___
  if dbe_righevisexp.Focused then
  begin
    expr_local := call_scelta_exp(dbe_righevisexp.Field.AsInteger);
    if expr_local > 0 then
    begin
      dm_form.t_task.Edit;
      dm_form.t_taskrighevisexp.Value := expr_local;
      dm_form.t_task.post;
    end;
  end
  // ___________________________________________ View custom-where expresion ___
  else if dbe_CustomWhereExp.Focused then
  begin
    expr_local := call_scelta_exp(dbe_CustomWhereExp.Field.AsInteger);
    if expr_local > 0 then
    begin
      dm_form.t_task.Edit;
      dm_form.t_taskcustomwhereexp.Value := expr_local;
      dm_form.t_task.post;
    end;
  end
  else
  begin
    // ________________________________________________ Program start action ___
    if dbe_init_act.Focused then
    begin
      azione_local := dm_form.t_programmiref.Value
    end;
    // ___________________________________________ View record prefix action ___
    if dbe_recprefix.Focused then
    begin
      azione_local := dm_form.t_taskrecordprefix.Value
    end;
    // ___________________________________________ View record suffix action ___
    if dbe_recsufix.Focused then
    begin
      azione_local := dm_form.t_taskrecordsufix.Value
    end;
    // _______________________________________________________ Select action ___
    azione_local := call_scelta_azione(azione_local);
    if azione_local <> '' then
    begin
      // ______________________________________________ Program start action ___
      if dbe_init_act.Focused then
      begin
        dm_form.t_programmi.Edit;
        dm_form.t_programmiref.Value := azione_local
      end;
      // _________________________________________ View record prefix action ___
      if dbe_recprefix.Focused then
      begin
        dm_form.t_task.Edit;
        dm_form.t_taskrecordprefix.Value := azione_local;
        dm_form.t_task.Post;
      end;
      // _________________________________________ View record suffix action ___
      if dbe_recsufix.Focused then
      begin
        dm_form.t_task.Edit;
        dm_form.t_taskrecordsufix.Value := azione_local;
        dm_form.t_task.Post;
      end;
    end;
  end;
end;


procedure Tf_work.view_copiaExecute(Sender: TObject);
var
  nomenewview: string;
  temp_table, temp_table2:  TClientDataSet;
  nodotemp, nodotemp2 : TTreeNode;
begin
  // _______________________________________________ Ask for a new view name ___
  if InputQuery('New view name', 'Name', nomenewview) then
  begin
    with dm_form do
    begin
      Inc(id_ultima_view);
      //usa_file
      temp_table := TClientDataSet.Create(nil);
      temp_table.CloneCursor(t_usa_file, True, False);
      //union
      t_union.MasterSource := nil;
      t_union.SaveToFile(tempdir + 'tmpclone');
      temp_table2 := TClientDataSet.Create(nil);
      temp_table2.LoadFromFile(tempdir + 'tmpclone');
      t_union.MasterSource := ds_usa_file;
      temp_table.First;
      while not temp_table.EOF do
      begin
        t_usa_file.InsertRecord([t_programminome.Value,
                                 id_ultima_view,
                                 temp_table.FieldValues['idriga'],
                                 temp_table.FieldValues['tipo'],
                                 temp_table.FieldValues['con_nome'],
                                 temp_table.FieldValues['tabella'],
                                 temp_table.FieldValues['chiave'],
                                 temp_table.FieldValues['chiave_exp'],
                                 temp_table.FieldValues['dbname_exp'],
                                 temp_table.FieldValues['tablename_exp']]);
        temp_table.Next;
      end;
      temp_table.Free;   //fine usafile
      //select
      temp_table := TClientDataSet.Create(nil);
      temp_table.CloneCursor(t_select, True, False);
      temp_table.First;
      while not temp_table.EOF do
      begin
        t_select.InsertRecord([t_programminome.Value,
                               id_ultima_view,
                               temp_table.FieldValues['idcampo'],
                               temp_table.FieldValues['tipo'],
                               temp_table.FieldValues['con_nome'],
                               temp_table.FieldValues['tabella'],
                               temp_table.FieldValues['campo'],
                               temp_table.FieldValues['init'],
                               temp_table.FieldValues['rangemin'],
                               temp_table.FieldValues['rangemax'],
                               temp_table.FieldValues['not'],
                               temp_table.FieldValues['like'],
                               temp_table.FieldValues['sql']]);
        temp_table.Next;
      end;
      temp_table.Free;   //fine select
      //union
      temp_table2.Filter := 'idtask = ' + t_taskid.AsString;
      temp_table2.Filtered := true;
      temp_table2.First;
      while not temp_table2.eof do
      begin
        t_union.InsertRecord([t_programminome.Value,
                              id_ultima_view,
                              temp_table2.FieldValues['idrigatab'],
                              temp_table2.FieldValues['idcampo'],
                              temp_table2.FieldValues['campo'],
                              temp_table2.FieldValues['rangemin'],
                              temp_table2.FieldValues['rangemax'],
                              temp_table2.FieldValues['not'],
                              temp_table2.FieldValues['like'],
                              temp_table2.FieldValues['sql']]);
        temp_table2.Next;
      end;
      temp_table2.Free;   //fine union
      //aggregate
      temp_table := TClientDataSet.Create(nil);
      temp_table.CloneCursor(t_aggreg, True, False);
      temp_table.First;
      while not temp_table.EOF do
      begin
        t_aggreg.InsertRecord([t_programminome.Value,
                               id_ultima_view,
                               temp_table.FieldValues['operatore'],
                               temp_table.FieldValues['campo_view'],
                               temp_table.FieldValues['result_view'],
                               temp_table.FieldValues['result_var']]);
        temp_table.Next;
      end;
      temp_table.Free;   //fine aggregate
      t_task.InsertRecord([t_programminome.Value,
                           id_ultima_view,
                           nomenewview,
                           t_taskrighevis.Value,
                           t_taskmodo.Value,
                           t_tasktipo.Value,
                           t_taskmatchpos.Value,
                           t_taskrecordprefix.Value,
                           t_taskrecordsufix.Value,
                           t_taskpost_auto.Value,
                           t_taskrighevisexp.Value,
                           t_taskautoaggregate.Value]);
    end;
    // _______________________________________ Add view to program tree-view ___
    nodotemp                := supertree.Items.Add(supertree.Selected.Parent,
                                                   nomenewview);
    nodotemp.ImageIndex     := 2;
    nodotemp.SelectedIndex  := 2;
    nodotemp2               := supertree.Items.AddChild(nodotemp,
                                                        'View properties');
    nodotemp2.ImageIndex    := 1;
    nodotemp2.SelectedIndex := 1;

  end;
end;


procedure Tf_work.dbgrid_reportfieldsEnter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_reportfield;
end;

procedure Tf_work.dbgrid_reportsEnter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_report;
end;

procedure Tf_work.Zoom12Click(Sender: TObject);
begin

  // CHIAMA SCELTA TIPO
  if dbgrid_reports.SelectedField.DisplayName = 'tipo' then
  begin

  end;

end;

procedure Tf_work.Zoom13Click(Sender: TObject);
begin

  //modello
  if dbgrid_reportfields.SelectedField.DisplayName = 'model' then
  begin
    f_sceltamodel.ShowModal;
    if f_sceltamodel.ModalResult = mrOk then
    begin
      dm_form.t_reportfield.Edit;
      dm_form.t_reportfieldmodel.Value := dm_form.t_modelliidmodello.Value;
    end;
  end;

  //campo
  if dbgrid_reportfields.SelectedField.DisplayName = 'shown_field' then
  begin

    if (call_scelta_campoprg(dm_form.t_reportfieldcampo.Value, false, false, True, true)) <> '' then
    begin
      dm_form.t_reportfield.Edit;
      dm_form.t_reportfieldcampo.Value := f_sceltacampiprg.scelta;
      if dm_form.t_reportfieldalias.Value = '' then
      begin
        dm_form.t_reportfieldalias.Value :=
          f_sceltacampiprg.ListView1.Selected.Caption
      end;

    end;
  end;

end;

procedure Tf_work.dbgrid_ioEnter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_input_output;
end;

procedure Tf_work.Zoom14Click(Sender: TObject);
var exp_local: integer;
begin

  if dbgrid_io.SelectedField.DisplayName = 'outputfile' then
  begin
    exp_local := call_scelta_exp(dm_form.t_input_outputoutputfile.Value);

    if exp_local <> 0 then
    begin
      dm_form.t_input_output.Edit;
      dm_form.t_input_outputoutputfile.Value := exp_local;
    end;
  end;

end;

procedure Tf_work.Zoom15Click(Sender: TObject);
var str_local: string;
begin

  if db_css_form.Focused then
    begin
     str_local:= dm_form.t_formcss_finestra.Value;
    end;
    if db_css_title.Focused then
    begin
     str_local:=dm_form.t_formcss_title.Value;
    end;
    if db_css_title_no.Focused then
    begin
      str_local:=dm_form.t_formcss_title_no.Value;
    end;
    if db_css_body.Focused then
    begin
      str_local:=dm_form.t_formcss_body.Value
    end;
    if db_css_status.Focused then
    begin
      str_local:=dm_form.t_formcss_status_bar.Value
    end;
    if db_css_doc.Focused then
    begin
      str_local:=dm_form.t_formcss_doc.Value
    end;
    if db_css_close.Focused then
    begin
      str_local:=dm_form.t_formcss_close.Value
    end;
    if db_css_open.Focused then
    begin
      str_local:=dm_form.t_formcss_open.Value
    end;
    if db_css_exit.Focused then
    begin
      str_local:=dm_form.t_formcss_exit.Value
    end;
    if db_css_resize.Focused then
    begin
      str_local:=dm_form.t_formcss_resize.Value
    end;
    if db_css_corner.Focused then
    begin
      str_local:=dm_form.t_formcss_corner.Value
    end;

  if LeftStr(str_local, 7) = '[o2exp_' then
     f_scelta_css.e_expr.Text:= f_import.decodifica_exp(str_local,dm_form.t_programminome.Value)
     else f_scelta_css.e_expr.Text:='';


  f_scelta_css.ShowModal;

  if f_scelta_css.ModalResult = mrOk then
  begin
    dm_form.t_form.Edit;
    if db_css_form.Focused then
    begin
      dm_form.t_formcss_finestra.Value := f_scelta_css.vreturn
    end;
    if db_css_title.Focused then
    begin
      dm_form.t_formcss_title.Value := f_scelta_css.vreturn
    end;
    if db_css_title_no.Focused then
    begin
      dm_form.t_formcss_title_no.Value := f_scelta_css.vreturn
    end;
    if db_css_body.Focused then
    begin
      dm_form.t_formcss_body.Value := f_scelta_css.vreturn
    end;
    if db_css_status.Focused then
    begin
      dm_form.t_formcss_status_bar.Value := f_scelta_css.vreturn
    end;
    if db_css_doc.Focused then
    begin
      dm_form.t_formcss_doc.Value := f_scelta_css.vreturn
    end;
    if db_css_close.Focused then
    begin
      dm_form.t_formcss_close.Value := f_scelta_css.vreturn
    end;
    if db_css_open.Focused then
    begin
      dm_form.t_formcss_open.Value := f_scelta_css.vreturn
    end;
    if db_css_exit.Focused then
    begin
      dm_form.t_formcss_exit.Value := f_scelta_css.vreturn
    end;
    if db_css_resize.Focused then
    begin
      dm_form.t_formcss_resize.Value := f_scelta_css.vreturn
    end;
    if db_css_corner.Focused then
    begin
      dm_form.t_formcss_corner.Value := f_scelta_css.vreturn
    end;
  end;
end;

procedure Tf_work.tree_new_folderExecute(Sender: TObject);
var
  nomenew: string;
begin

  if (supertree.Selected.ImageIndex <> 17) and (supertree.Selected.ImageIndex <> 21) then
  begin
    nomenew := 'Newfolder';
    if InputQuery('New folder', 'Folder name', nomenew) then

    begin
      if (nomenew <> '') then
      begin
        nodo_temp1 := supertree.Items.AddChild(supertree.Selected, nomenew);
        nodo_temp1.ImageIndex := 19;
        nodo_temp1.SelectedIndex := 19;
      end;
    end;
  end;
end;

procedure Tf_work.tree_new_prgExecute(Sender: TObject);
var
  trovato: boolean;
  nomenew: string;

begin

  if (supertree.Selected = nil) or
      ((supertree.Selected.ImageIndex <> 17) and
       (supertree.Selected.ImageIndex <> 21)) then
  begin
    nomenew := 'Newprogram';
    if InputQuery('New program', 'Program name', nomenew) then
    begin
      nomenew := dm_form.formatName(nomenew);
      trovato := FileExists(prgdir + nomenew + '.prg');
      if trovato then
      begin
        ShowMessage('File already exists');
      end;

      if (nomenew <> '') and (not (trovato)) then
      begin
        f_import.svuota_tab_prg.Execute;

        with dm_form do
        begin
          attiva_disattiva_prg(True);
          t_programmi.Edit;
          t_programmi.InsertRecord([nomenew, '', albero_folder(supertree.Selected)]);
          t_programmi.First;
          f_export.prg_exportExecute(self, nomenew);
          nodo_temp1 := supertree.Items.AddChild(supertree.Selected, nomenew);
          nodo_temp1.ImageIndex := 17;
          nodo_temp1.SelectedIndex := 17;
          carica_supertree.Execute;
          nodo_prg.Expand(False);
          nodo_prg_attivo    := nil;
          supertree.Selected := nodo_prg;
        end;

      end;
    end;
  end;
end;

function Tf_work.albero_folder(nodo: TTreeNode): string;
var
  tmp: string;
begin
  Result := '';
  //se non arriva imposta il selezionato
  if nodo = nil then
  begin
    if supertree.Selected <> nil then
    begin
      nodo := supertree.Selected;
    end
    else
    begin
      Exit;
    end;
  end;

  while nodo.Text <> 'Programs' do
  begin
    tmp  := nodo.Text + '/' + trim(tmp);
    nodo := nodo.Parent;
  end;
  Result := tmp;

end;


function Tf_work.ExecAndWait(const CommandLine: string) : Boolean;
var
  StartupInfo : TStartupInfo;
  ProcessInfo : TProcessInformation;
  lpExitCode  : DWord;
  Res : boolean;
begin
  Result := False;
  // _____________ Initialise startup info structure to 0, and record length ___
  FillChar(StartupInfo, SizeOf(StartupInfo), 0);
  with StartupInfo do
  begin
    cb          := SizeOf(TStartupInfo);
    lpReserved  := nil;
    lpDesktop   := nil;
    lpTitle     := nil;
    dwFlags     := STARTF_USESHOWWINDOW;
    wShowWindow := SW_SHOWNORMAL;
    cbReserved2 := 0;
    lpReserved2 := nil;
  end;
  // ___________________________________________________ Execute commandline ___
  Res := CreateProcess(nil,
                       PChar(CommandLine),
                       nil,
                       nil,
                       True,
                       CREATE_NEW_CONSOLE,
                       nil,
                       nil,
                       StartupInfo,
                       ProcessInfo);
  // __________________________________________________ Wait for process end ___
  while True do
  begin
    GetExitCodeProcess(ProcessInfo.hProcess, lpExitCode);
    if lpExitCode <> STILL_ACTIVE then
    begin
      Break;
    end;
    Application.ProcessMessages;
  end;
  CloseHandle(ProcessInfo.hProcess);
  CloseHandle(ProcessInfo.hThread);
  Result := Integer(lpExitCode) = 0;
end;


function Tf_work.cvs_checkout(ObjFile: String): Boolean;
var
  checkoutBat, Params: string;
  ResCode: Boolean;
begin
  checkoutBat := 'check-out.bat';
  Params      := f_work.user +
                 ' ' + f_work.prgdir +
                 ' ' + ObjFile;
  ResCode := ExecAndWait(checkoutBat + ' ' + Params);
  if ResCode then
  begin
    Result := true;
  end
  else
  begin
    ShowMessage('Error from external CVS.' + chr(10) +
                'Can' + chr(39) + 't check-out element.');
    Result := false;
  end;
end;


function Tf_work.cvs_checkin(ObjFile, TmpFile: String): Boolean;
var
  checkinBat, Params: string;
  ResCode: Boolean;
begin
  checkinBat := 'check-in.bat';
  Params     := f_work.user +
                ' ' + f_work.prgdir +
                ' ' + ObjFile +
                ' ' + TmpFile;
  ResCode    := ExecAndWait(checkinBat + ' ' + Params);
  if ResCode then
  begin
    Result := true;
  end
  else
  begin
    ShowMessage('Error from external CVS.' + chr(10) +
                'Can' + chr(39) + 't check-in element.');
    Result := false;
  end;
end;


{**
 * Check out a file, coping it from prgs to developer folder.
 *
 * @param String oggetto   File name to copy
 *}
procedure Tf_work.checkOut(Sender: TObject; oggetto: string);
var
  srcFile, targetFile: TFileStream;
begin
 // _________________________________ Verify object is not checked by anyone ___
 if (whocheck(oggetto)<> '') then
 begin
   refresh_bottoni_check(self);
 end
 else
 begin
  // ____________________________________________________ Start checking out ___
  if not (DirectoryExists(userdir)) then
  begin
    // ________________________________ Ensure developer directory existance ___
    CreateDir(userdir);
  end;
  if not (DirectoryExists(userdir + '__source__\')) then
  begin
    // _______________ Ensure __source__ existance under developer directory ___
    CreateDir(userdir + '__source__\');
  end;
  if FileExists(prgdir + oggetto) then
  begin
    try
      srcFile    := TFileStream.Create(prgdir + oggetto,
                                       fmOpenRead or fmShareDenyWrite);
      targetFile := TFileStream.Create(userdir + oggetto, fmCreate);
      targetFile.CopyFrom(srcFile, srcFile.Size);
    finally
      FreeAndNil(srcFile);
      FreeAndNil(targetFile);
    end;
  end;
 end;
end;


procedure Tf_work.checkin(Sender: TObject;
                          const oggetti: array of string;
                          cvsSet: Boolean);
var
  ori, nuovo: TFileStream;
  anyError: Boolean;
  TmpFile, oggetto: String;
  i: integer;
begin
  anyError := False;
  TmpFile  := f_work.tempdir + 'jxcvs' + f_work.user + '.tmp';
  for i := 0 to High(oggetti) do
  begin
    oggetto := oggetti[i];
    {con l'azione di checkin viene spostato il file dalla cartella dell'user a
     quella dei prgs}
    try
      nuovo := TFileStream.Create(userdir + oggetto,
                                  fmOpenRead or fmShareDenyWrite);
      try
        ori := TFileStream.Create(prgdir + oggetto, fmCreate);
        ori.CopyFrom(nuovo, nuovo.Size);
        FreeAndNil(ori);
        if (cvsSet and (not(cvs_checkin(oggetto, TmpFile)))) then
        begin
          anyError := True;
        end;
      except
        anyError := True;
      end;
    finally
      FreeAndNil(ori);
      FreeAndNil(nuovo);
    end;
  end;
  // _______________________________ If not error delete files from user dir ___
  if not(anyError) then
  begin
    for i := 0 to High(oggetti) do
    begin
      oggetto := oggetti[i];
      DeleteFile(userdir + oggetto);
      cancella_versioni(strtoken(oggetto, '.'));
    end;
    mycheck_local := false;
  end;

end;


procedure Tf_work.btn_checked_refreshClick(Sender: TObject);
begin

  Screen.Cursor := crHourGlass;
  try
  checked_list.Clear;

  search_dir.RootDirectory := prgdir;
  search_dir.Search;
  finally
   Screen.Cursor := crDefault;
  end;
  
end;

procedure Tf_work.search_dirFindDirectory(Sender: TObject; const AName: string);
begin
  search_checked_files.RootDirectory := AName;
  search_checked_files.Search;
end;

procedure Tf_work.search_checked_filesFindFile(Sender: TObject; const AName: string);
var
  temp: TListItem;
  nome_oggetto, userid: string;
begin
  nome_oggetto := ExtractFileName(AName);
  userid := StrReverse(ExtractFileDir(AName));
  userid := StrReverse(ExtractWord(1, userid, ['\']));

  temp := checked_list.Items.Add;
  temp.Caption := nome_oggetto;
  temp.SubItems.Add(userid)
end;


procedure Tf_work.check_outExecute(Sender: TObject);
var
  dircds, dircds_user, nomeprg : string;
  cvsSet : Boolean;
begin
  cvsSet := f_work.settings.ReadBool('O2_ENV', 'cvs_versioning', false);
  if PageControl1.ActivePage = ts_appvars then
  begin
    if (not cvsSet) or cvs_checkout(dm_form.t_applicazioneappvars.Value) then
    begin
      checkout(self, dm_form.t_applicazioneappvars.Value);
      dm_form.attiva_disattiva_appvars(true);
      f_import.vars_import.Execute;
    end;
  end
  else if PageControl1.ActivePage = ts_models then
  begin
    if (not cvsSet) or
       (cvs_checkout(dm_form.t_applicazionemodels.Value) and
        cvs_checkout('__source__\models.cache')) then
    begin
      checkout(self, dm_form.t_applicazionemodels.Value);
      checkout(self, '__source__\models.cache');
      checkout(self, '__source__\models.md5');
      dm_form.attiva_disattiva_models(true);
      f_import.models_import.Execute;
    end;
  end
  else if PageControl1.ActivePage = ts_menu then
  begin
    if (not cvsSet) or cvs_checkout(dm_form.t_applicazionemenus.Value) then
    begin
      checkout(self, dm_form.t_applicazionemenus.Value);
      dm_form.attiva_disattiva_menu(true);
      f_import.menu_import.Execute;
    end;
  end
  else if PageControl1.ActivePage = ts_database then
  begin
    if (not cvsSet) or cvs_checkout(dm_form.t_applicazionedbs.Value) then
    begin
      checkout(self, dm_form.t_applicazionedbs.Value);
      dm_form.attiva_disattiva_dbrep(true);
      f_import.db_import.Execute;
    end;
  end
  else if PageControl1.ActivePage = ts_tabelle then
  begin
    if (not cvsSet) or
       (cvs_checkout(dm_form.t_applicazionetables.Value) and
        cvs_checkout('__source__\tables.cache') and
        cvs_checkout('__source__\fields.cache') and
        cvs_checkout('__source__\indexes.cache') and
        cvs_checkout('__source__\segments.cache') and
        cvs_checkout('__source__\nuindexes.cache') and
        cvs_checkout('__source__\nusegments.cache')) then
    begin
      checkout(self, dm_form.t_applicazionetables.Value);
      checkout(self, '__source__\tables.cache');
      checkout(self, '__source__\fields.cache');
      checkout(self, '__source__\indexes.cache');
      checkout(self, '__source__\segments.cache');
      checkout(self, '__source__\nuindexes.cache');
      checkout(self, '__source__\nusegments.cache');
      checkout(self, '__source__\tables.md5');
      dm_form.attiva_disattiva_tables(true);
      f_import.tables_import.Execute;
    end;
  end
  else if PageControl1.ActivePage = ts_programmi then
  begin
    if (not cvsSet) or
       (cvs_checkout(dm_form.t_programminome.Value + '.prg') and
        cvs_checkout(dm_form.t_programminome.Value + '.prf')) then
    begin
      checkout(self, dm_form.t_programminome.Value + '.prg');
      if dm_form.t_programminome.Value = '_o2viewmodels' then
      begin
        checkout(self, dm_form.t_applicazioneviews.Value);
      end
      else
      begin
        checkout(self, dm_form.t_programminome.Value + '.prf')
      end;
      dm_form.attiva_disattiva_prg(true);
      f_import.prg_importExecute(self, dm_form.t_programminome.Value);
      // copia i files sources (cds)
      nomeprg               := dm_form.t_programminome.Value;
      dircds                := f_work.prgdir + '__source__\' + nomeprg + '\';
      dircds_user           := f_work.userdir + '__source__\' + nomeprg + '\';
      Jvfileopera.Operation := foCopy;
      Jvfileopera.SourceFiles.Clear;
      Jvfileopera.SourceFiles.Append(dircds + 'program.md5');
      Jvfileopera.SourceFiles.Append(dircds + 'program.cds');
      Jvfileopera.SourceFiles.Append(dircds + 'view.cds');
      Jvfileopera.SourceFiles.Append(dircds + 'select.cds');
      Jvfileopera.SourceFiles.Append(dircds + 'tab.cds');
      Jvfileopera.SourceFiles.Append(dircds + 'link.cds');
      Jvfileopera.SourceFiles.Append(dircds + 'action.cds');
      Jvfileopera.SourceFiles.Append(dircds + 'operation.cds');
      Jvfileopera.SourceFiles.Append(dircds + 'expression.cds');
      Jvfileopera.SourceFiles.Append(dircds + 'aggregation.cds');
      Jvfileopera.SourceFiles.Append(dircds + 'prgvar.cds');
      Jvfileopera.SourceFiles.Append(dircds + 'parameter.cds');
      Jvfileopera.SourceFiles.Append(dircds + 'form.cds');
      Jvfileopera.SourceFiles.Append(dircds + 'control.cds');
      Jvfileopera.SourceFiles.Append(dircds + 'io.cds');
      Jvfileopera.SourceFiles.Append(dircds + 'report.cds');
      Jvfileopera.SourceFiles.Append(dircds + 'reportfield.cds');
      Jvfileopera.DestFiles.Clear;
      Jvfileopera.DestFiles.Append(dircds_user + 'program.md5');
      Jvfileopera.DestFiles.Append(dircds_user + 'program.cds');
      Jvfileopera.DestFiles.Append(dircds_user + 'view.cds');
      Jvfileopera.DestFiles.Append(dircds_user + 'select.cds');
      Jvfileopera.DestFiles.Append(dircds_user + 'tab.cds');
      Jvfileopera.DestFiles.Append(dircds_user + 'link.cds');
      Jvfileopera.DestFiles.Append(dircds_user + 'action.cds');
      Jvfileopera.DestFiles.Append(dircds_user + 'operation.cds');
      Jvfileopera.DestFiles.Append(dircds_user + 'expression.cds');
      Jvfileopera.DestFiles.Append(dircds_user + 'aggregation.cds');
      Jvfileopera.DestFiles.Append(dircds_user + 'prgvar.cds');
      Jvfileopera.DestFiles.Append(dircds_user + 'parameter.cds');
      Jvfileopera.DestFiles.Append(dircds_user + 'form.cds');
      Jvfileopera.DestFiles.Append(dircds_user + 'control.cds');
      Jvfileopera.DestFiles.Append(dircds_user + 'io.cds');
      Jvfileopera.DestFiles.Append(dircds_user + 'report.cds');
      Jvfileopera.DestFiles.Append(dircds_user + 'reportfield.cds');
      Jvfileopera.Execute;
    end;
  end;
  mycheck_local := true;
  refresh_bottoni_check(self);
end;


procedure Tf_work.check_inExecute(Sender: TObject);
var
  dircds, dircds_user, nomeprg, TmpFile: string;
  cvsSet, forzacheckin: Boolean;
  CVSTempTxt: TStringList;
begin
  cvsSet := f_work.settings.ReadBool('O2_ENV', 'cvs_versioning', false);
  if (MessageDlg('Confirm object check-in?',
                 mtConfirmation,
                 mbOKCancel,
                 1) = mrOk) then
  begin
    if cvsSet then
    begin
      CVSCheckInData := '';
      f_CVSInfo.ShowModal;
      if f_CVSInfo.ModalResult = mrOk then
      begin
        CVSTempTxt := TStringList.Create;
        CVSTempTxt.Add(CVSCheckInData);
        TmpFile := f_work.tempdir + 'jxcvs' + f_work.user + '.tmp';
        CVSTempTxt.SaveToFile(TmpFile);
      end
      else
      begin
        Exit;
      end;
    end;
    // _______________________________________________ Application variables ___
    if PageControl1.ActivePage = ts_appvars then
    begin
      f_export.appvars_export.Execute;
      checkin(self, [dm_form.t_applicazioneappvars.Value], cvsSet);
      dm_form.appvar_modificato := false;
    end
    // ______________________________________________________________ Models ___
    else if PageControl1.ActivePage = ts_models then
    begin
      f_export.models_export.Execute;
      checkin(self,
              [dm_form.t_applicazionemodels.Value,
               '__source__\models.cache',
               '__source__\models.md5'],
              cvsSet);
      dm_form.datatypes_modificato := false;
    end
    // ________________________________________________________________ Menu ___
    else if PageControl1.ActivePage = ts_menu then
    begin
      f_export.menu_export.Execute;
      checkin(self, [dm_form.t_applicazionemenus.Value], cvsSet);
      dm_form.menu_modificato := false;
    end
    // _______________________________________________ Servers and databases ___
    else if PageControl1.ActivePage = ts_database then
    begin
      f_export.db_export.Execute;
      checkin(self, [dm_form.t_applicazionedbs.Value], cvsSet);
      dm_form.database_modificato := false;
    end
    // ______________________________________________________________ Tables ___
    else if PageControl1.ActivePage = ts_tabelle then
    begin
      f_export.tables_export.Execute;
      checkin(self,
              [dm_form.t_applicazionetables.Value,
               '__source__\tables.cache',
               '__source__\fields.cache',
               '__source__\indexes.cache',
               '__source__\segments.cache',
               '__source__\nuindexes.cache',
               '__source__\nusegments.cache',
               '__source__\tables.md5'],
              cvsSet);
      dm_form.tables_modificato := false;
    end
    // _____________________________________________________________ Program ___
    else if PageControl1.ActivePage = ts_programmi then
    begin
      // fa sempre il controllo sintattico del programma e se ci sono problemi
      // apre la form per evidenziare i problemi e non fa il checkin !!!)
      f_checkprg.check_globale.Execute;
      if f_checkprg.ErrorsFound then
      begin
        f_checkprg.ShowModal;
        forzacheckin := MessageDlg('Do you want check-in the program anyway?',
                                   mtConfirmation,
                                   [mbYes, mbNo],
                                   1) = mrYes;
      end;
      if (not (f_checkprg.ErrorsFound)) or (forzacheckin) then
      begin
        f_export.prg_exportExecute(self, dm_form.t_programminome.Value);
        // f_checkprg.ripristina_posizioni.Execute;
        if dm_form.t_programminome.Value <> '_o2viewmodels' then
        begin
          nomeprg := dm_form.t_programminome.Value;
          checkin(self, [nomeprg + '.prg', nomeprg + '.prf'], cvsSet);
          // muove i files cds
          // copia i files sources (cds)
          dircds      := f_work.prgdir + '__source__\' + nomeprg + '\';
          dircds_user := f_work.userdir + '__source__\' + nomeprg + '\';
          Jvfileopera.Operation := foMove;
          Jvfileopera.SourceFiles.Clear;
          Jvfileopera.SourceFiles.Append(dircds_user + 'program.md5');
          Jvfileopera.SourceFiles.Append(dircds_user + 'program.cds');
          Jvfileopera.SourceFiles.Append(dircds_user + 'view.cds');
          Jvfileopera.SourceFiles.Append(dircds_user + 'select.cds');
          Jvfileopera.SourceFiles.Append(dircds_user + 'tab.cds');
          Jvfileopera.SourceFiles.Append(dircds_user + 'link.cds');
          Jvfileopera.SourceFiles.Append(dircds_user + 'action.cds');
          Jvfileopera.SourceFiles.Append(dircds_user + 'operation.cds');
          Jvfileopera.SourceFiles.Append(dircds_user + 'expression.cds');
          Jvfileopera.SourceFiles.Append(dircds_user + 'aggregation.cds');
          Jvfileopera.SourceFiles.Append(dircds_user + 'prgvar.cds');
          Jvfileopera.SourceFiles.Append(dircds_user + 'parameter.cds');
          Jvfileopera.SourceFiles.Append(dircds_user + 'form.cds');
          Jvfileopera.SourceFiles.Append(dircds_user + 'control.cds');
          Jvfileopera.SourceFiles.Append(dircds_user + 'io.cds');
          Jvfileopera.SourceFiles.Append(dircds_user + 'report.cds');
          Jvfileopera.SourceFiles.Append(dircds_user + 'reportfield.cds');
          Jvfileopera.DestFiles.Clear;
          Jvfileopera.DestFiles.Append(dircds + 'program.md5');
          Jvfileopera.DestFiles.Append(dircds + 'program.cds');
          Jvfileopera.DestFiles.Append(dircds + 'view.cds');
          Jvfileopera.DestFiles.Append(dircds + 'select.cds');
          Jvfileopera.DestFiles.Append(dircds + 'tab.cds');
          Jvfileopera.DestFiles.Append(dircds + 'link.cds');
          Jvfileopera.DestFiles.Append(dircds + 'action.cds');
          Jvfileopera.DestFiles.Append(dircds + 'operation.cds');
          Jvfileopera.DestFiles.Append(dircds + 'expression.cds');
          Jvfileopera.DestFiles.Append(dircds + 'aggregation.cds');
          Jvfileopera.DestFiles.Append(dircds + 'prgvar.cds');
          Jvfileopera.DestFiles.Append(dircds + 'parameter.cds');
          Jvfileopera.DestFiles.Append(dircds + 'form.cds');
          Jvfileopera.DestFiles.Append(dircds + 'control.cds');
          Jvfileopera.DestFiles.Append(dircds + 'io.cds');
          Jvfileopera.DestFiles.Append(dircds + 'report.cds');
          Jvfileopera.DestFiles.Append(dircds + 'reportfield.cds');
          Jvfileopera.Execute;
          RmDir(dircds_user);
        end
        else
        begin
          checkin(self,
                  [dm_form.t_programminome.Value + '.prg',
                   dm_form.t_applicazioneviews.Value],
                  cvsSet);
        end;
        dm_form.program_modificato := false;
      end;
    end;
    refresh_bottoni_check(self);
    dm_form.program_modificato := false;
  end;
end;


procedure Tf_work.un_checkExecute(Sender: TObject);
var dircds_user, nomeprg : string;
begin
  if (MessageDlg('Confirm object un-check?',
                 mtConfirmation,
                 mbOKCancel,
                 1) = mrOk) then
  begin
    if PageControl1.ActivePage = ts_appvars then
    begin
      uncheck(self, dm_form.t_applicazioneappvars.Value);
      f_import.vars_import.Execute;
    end
    else if PageControl1.ActivePage = ts_models then
    begin
      uncheck(self, dm_form.t_applicazionemodels.Value);
      uncheck(self, '__source__\models.cache');
      uncheck(self, '__source__\models.md5');
      f_import.models_import.Execute;
    end
    else if PageControl1.ActivePage = ts_menu then
    begin
      uncheck(self, dm_form.t_applicazionemenus.Value);
      f_import.menu_import.Execute;
      carica_treemenu.Execute;
    end
    else if PageControl1.ActivePage = ts_database then
    begin
      uncheck(self, dm_form.t_applicazionedbs.Value);
      f_import.db_import.Execute;
    end
    else if PageControl1.ActivePage = ts_tabelle then
    begin
      uncheck(self, dm_form.t_applicazionetables.Value);
      uncheck(self, '__source__\tables.cache');
      uncheck(self, '__source__\fields.cache');
      uncheck(self, '__source__\indexes.cache');
      uncheck(self, '__source__\segments.cache');
      uncheck(self, '__source__\nuindexes.cache');
      uncheck(self, '__source__\nusegments.cache');
      uncheck(self, '__source__\tables.md5');
      f_import.tables_import.Execute;
    end
    else if PageControl1.ActivePage = ts_programmi then
    begin
      uncheck(self, dm_form.t_programminome.Value + '.prg');
      if dm_form.t_programminome.Value = '_o2viewmodels' then
      begin
        uncheck(self, dm_form.t_applicazioneviews.Value);
      end
      else
      begin
        uncheck(self, dm_form.t_programminome.Value + '.prf');
        //elimina la directory cds
        nomeprg               := dm_form.t_programminome.Value;
        dircds_user           := f_work.userdir + '__source__\' + nomeprg + '\';
        Jvfileopera.Operation := foDelete;
        Jvfileopera.SourceFiles.Clear;
        Jvfileopera.SourceFiles.Append(dircds_user + 'program.md5');
        Jvfileopera.SourceFiles.Append(dircds_user + 'program.cds');
        Jvfileopera.SourceFiles.Append(dircds_user + 'view.cds');
        Jvfileopera.SourceFiles.Append(dircds_user + 'select.cds');
        Jvfileopera.SourceFiles.Append(dircds_user + 'tab.cds');
        Jvfileopera.SourceFiles.Append(dircds_user + 'link.cds');
        Jvfileopera.SourceFiles.Append(dircds_user + 'action.cds');
        Jvfileopera.SourceFiles.Append(dircds_user + 'operation.cds');
        Jvfileopera.SourceFiles.Append(dircds_user + 'expression.cds');
        Jvfileopera.SourceFiles.Append(dircds_user + 'aggregation.cds');
        Jvfileopera.SourceFiles.Append(dircds_user + 'prgvar.cds');
        Jvfileopera.SourceFiles.Append(dircds_user + 'parameter.cds');
        Jvfileopera.SourceFiles.Append(dircds_user + 'form.cds');
        Jvfileopera.SourceFiles.Append(dircds_user + 'control.cds');
        Jvfileopera.SourceFiles.Append(dircds_user + 'io.cds');
        Jvfileopera.SourceFiles.Append(dircds_user + 'report.cds');
        Jvfileopera.SourceFiles.Append(dircds_user + 'reportfield.cds');
        Jvfileopera.Execute;
        RmDir(userdir + '__source__\' + dm_form.t_programminome.Value);
      end;
      dm_form.attiva_disattiva_prg(true);
      f_import.prg_importExecute(self, dm_form.t_programminome.Value);
    end;
    mycheck_local := false;
    refresh_bottoni_check(self);
  end; //end confirmation
end;


procedure Tf_work.uncheck(Sender: TObject; oggetto: string);
begin
  if FileExists(userdir + oggetto) then
  begin
    DeleteFile(userdir + oggetto);
  end;
  // cancella anche sottoversioni
  cancella_versioni(strtoken(oggetto, '.'));
end;


function Tf_work.mycheck(oggetto: string): boolean;
begin
  if FileExists(userdir + oggetto) then
  begin
    mycheck_local := true;
    Result        := true;
  end
  else
  begin
    mycheck_local := false;
    Result        := false
  end;
end;


procedure Tf_work.refresh_bottoni_check(Sender: TObject);
var
  oggetto, Page, WhoCheckLocal: string;
begin
  // _______________________________________________ Check selected tabsheet ___
  if (PageControl1.ActivePage = ts_applicazione) or
     (PageControl1.ActivePage = ts_programs) then
  begin
    HeaderControl1.Sections[2].Text       := '';
    HeaderControl1.Sections[2].ImageIndex := -1;
    check_in.Enabled  := false;
    un_check.Enabled  := false;
    check_out.Enabled := false;
    Exit;
  end
  else if PageControl1.ActivePage = ts_appvars then
  begin
    // ____________________________________ Application variables repository ___
    oggetto := dm_form.t_applicazioneappvars.Value;
    dm_form.attiva_disattiva_appvars(mycheck(oggetto));
  end
  else if PageControl1.ActivePage = ts_models then
  begin
    // ___________________________________________________ Models repository ___
    oggetto := dm_form.t_applicazionemodels.Value;
    dm_form.attiva_disattiva_models(mycheck(oggetto));
  end
  else if PageControl1.ActivePage = ts_menu then
  begin
    // ____________________________________________________ Menus repository ___
    oggetto := dm_form.t_applicazionemenus.Value;
    dm_form.attiva_disattiva_menu(mycheck(oggetto));
  end
  else if PageControl1.ActivePage = ts_database then
  begin
    // ____________________________________ Servers and databases repository ___
    oggetto := dm_form.t_applicazionedbs.Value;
    dm_form.attiva_disattiva_dbrep(mycheck(oggetto));
  end
  else if PageControl1.ActivePage = ts_tabelle then
  begin
    // ___________________________________________________ Tables repository ___
    oggetto := dm_form.t_applicazionetables.Value;
    dm_form.attiva_disattiva_tables(mycheck(oggetto));
  end
  else if PageControl1.ActivePage = ts_programmi then
  begin
    // _____________________________________________________________ Program ___
    oggetto := dm_form.t_programminome.Value + '.prg';
    dm_form.attiva_disattiva_prg(mycheck_local);
  end;
  // ________________________________________________ Outer check (not mine) ___
  WhoCheckLocal := whocheck(oggetto);
  incheck_local := WhoCheckLocal <> '';
  // _______________________________________________________________ CVS bar ___
  if not (incheck_local) then
  begin
    HeaderControl1.Sections[2].Text       := 'Unchecked';
    HeaderControl1.Sections[2].ImageIndex := 0;
  end
  else if mycheck_local then
  begin
    HeaderControl1.Sections[2].Text       := 'Checked by me';
    HeaderControl1.Sections[2].ImageIndex := 1;
  end
  else if incheck_local then
  begin
   HeaderControl1.Sections[2].Text       := 'Checked by another user : ' +
                                            WhoCheckLocal;
   HeaderControl1.Sections[2].ImageIndex := 2;
  end;
  // ______________________________ Set CHECK-IN / CHECK-OUT function status ___
  check_out.Enabled := not incheck_local;
  check_in.Enabled  := mycheck_local;
  un_check.Enabled  := mycheck_local;
  salva.Enabled     := mycheck_local;
  // _____________________________________________________________ Set menus ___
  if mycheck_local then
  begin
    Checkout1.Enabled     := false;
    Save1.Enabled         := true;
    Checkin1.Enabled      := true;
    uncheck1.Enabled      := true;
  end
  else if incheck_local then
  begin
    Checkout1.Enabled     := false;
    Save1.Enabled         := false;
    Checkin1.Enabled      := false;
    uncheck1.Enabled      := false;
  end
  else
  begin
    Checkout1.Enabled     := true;
    Save1.Enabled         := false;
    Checkin1.Enabled      := false;
    uncheck1.Enabled      := false;
  end
end;    //fine refresh bottoni del cvs


procedure Tf_work.usersClick(Sender: TObject);
begin
  f_users.ShowModal;
end;

procedure Tf_work.ts_modelsExit(Sender: TObject);
begin
  salva_type.Execute;
end;

procedure Tf_work.ts_menuExit(Sender: TObject);
begin
  salva_menu.Execute;
end;


procedure Tf_work.ts_databaseExit(Sender: TObject);
begin
  salva_db.Execute;
end;


procedure Tf_work.ts_tabelleExit(Sender: TObject);
begin
  salva_table.Execute;
end;



procedure Tf_work.BitBtn2Click(Sender: TObject);
begin

  f_export.app_exportExecute(self);
  dm_form.appprop_modificato := False;
  ShowMessage('Export terminated');
end;

procedure Tf_work.dbgrid_form_savEnter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_form
end;



procedure Tf_work.supertreeEnter(Sender: TObject);
begin
  dbnav.DataSource := nil;
end;




procedure Tf_work.HeaderControl1SectionClick(HeaderControl: THeaderControl;
  Section: THeaderSection);
begin
  if Section.Text = 'Navigator' then
  begin
    supertree.Visible := not (supertree.Visible);
    Splitter5.Visible := not (Splitter5.Visible);
  end
  else  // status dell'oggetto per saltare in checked object
  if Section.ID = 2 then
  begin
    HeaderControl1.Sections[1].Text       := 'Checked objects';
    HeaderControl1.Sections[2].ImageIndex := -1;
    HeaderControl1.Sections[2].Text       := '';
    Oggettiiincheck1Click(self);
  end;

end;

procedure Tf_work.inizializza_tabelleExecute(Sender: TObject);
var namePart : String;
begin

  with dm_form do
  begin
    preset_table(t_applicazione, 'application');
    preset_table(t_modelli, 'models');
    preset_table(t_variabili_app, 'var_app');
    preset_table(t_servers, 'servers');
    preset_table(t_databases, 'databases');
    preset_table(t_tabelle, 'tables');
    preset_table(t_campi, 'fields');
    preset_table(t_indicitesta, 'indexh');
    preset_table(t_indici, 'indexd');
    preset_table(t_indicitestanu, 'indexnuh');
    preset_table(t_indicinu, 'indexnud');
    preset_table(t_menu, 'menu');
    preset_table(t_programmi, 'programs');
    preset_table(elenco_prg, 'programslist');
    preset_table(t_task, 'tasks');
    preset_table(t_aggreg, 'aggreg');
    preset_table(t_usa_file, 'dbtables');
    preset_table(t_union, 'unions');
    preset_table(t_select, 'views');
    preset_table(t_formulas_sql, 'tmp_sql_formulas');
    preset_table(t_espressioni, 'expressions');
    preset_table(t_form, 'forms');
    preset_table(t_controlliform, 'controls');
    preset_table(t_azioni, 'actions');
    preset_table(t_operazioni, 'operations');
    preset_table(t_variabili_prg, 'var_prg');
    preset_table(t_parametri, 'parameters');
    preset_table(t_report, 'reports');
    preset_table(t_reportfield, 'reportfields');
    preset_table(t_input_output, 'iofiles');
    preset_table(t_printdef, 'printdef');
    preset_table(t_value_list, 'valuelist');
    preset_table(tab_ope, 'tabope');
    preset_table(tab_tipi_file, 'tabfile');
    preset_table(t_ope_x_copia, 'opecopy');
    preset_table(tmp_postab, 'tmp_postab');
    preset_table(tmp_parametri, 'tmp_parameters');
    preset_table(tmp_callparams, 'tmp_callparams');
    // ___________________________________________ Preset operations records ___
    tab_ope.InsertRecord(['Call program']);
    tab_ope.InsertRecord(['Close program']);
    tab_ope.InsertRecord(['Confirm']);
    tab_ope.InsertRecord(['Execute action']);
    tab_ope.InsertRecord(['Execute script']);
    tab_ope.InsertRecord(['Go to']);
    tab_ope.InsertRecord(['I/O']);
    tab_ope.InsertRecord(['Message']);
    tab_ope.InsertRecord(['Print']);
    tab_ope.InsertRecord(['Recordset']);
    tab_ope.InsertRecord(['Remark']);
    tab_ope.InsertRecord(['Return parameter']);
    tab_ope.InsertRecord(['Set menu']);
    tab_ope.InsertRecord(['Update']);
    // __________________________________________ Preset tables type records ___
    tab_tipi_file.InsertRecord(['Main']);
    tab_tipi_file.InsertRecord(['Link']);
    tab_tipi_file.InsertRecord(['View']);
  end;

end;

procedure Tf_work.preset_table(tabObj: TClientDataSet; fileName: String);
var namePart : String;
begin

  namePart := tempdir + progetto + '_' + user + '_';
  // ___________________________________________________________ Close table ___
  tabObj.Close;
  // ________________________________________________ Delete user's tmp file ___
  if FileExists(namePart + fileName + '.cds') then
  begin
    DeleteFile(namePart + fileName + '.cds')
  end;
  // ___________________________________________________ Set table file name ___
  tabObj.FileName := namePart + fileName + '.cds';
  // ______________________________________________ Recreate user's tmp file ___
  tabObj.CreateDataSet;
  // ____________________________________________________ Set table readable ___
  tabObj.ReadOnly := False;

end;

procedure Tf_work.Chiudi2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tf_work.copia_file(Sender: TObject; origine, destinazione: string);
var
  ori, dest: TFileStream;
begin

  ori := TFileStream.Create(origine, fmOpenRead or fmShareDenyWrite);
  try
    dest := TFileStream.Create(destinazione, fmCreate);
    try
      dest.CopyFrom(ori, ori.Size);
    finally
      FreeAndNil(dest);

    end;
  finally

    FreeAndNil(ori);
  end;

end;

procedure Tf_work.Zoom6Click(Sender: TObject);
begin
  //programma
  if LeftStr(dm_form.t_menutipo.Value, 1) = 'P' then
  begin
    f_sceltaprogramma.e_expr.Text := '';

    if PosEx('[o2exp_', dm_form.t_menuvalore.Value, 1) <> 0 then
    begin
      f_sceltaprogramma.e_expr.Text := trim(copy(dm_form.t_menuvalore.Value, 8, 8));
      f_sceltaprogramma.e_expr.Text :=
        copy(f_sceltaprogramma.e_expr.Text, 1, length(f_sceltaprogramma.e_expr.Text) - 1);
    end;

    f_sceltaprogramma.scelta:= dm_form.t_menuvalore.Value;
    f_sceltaprogramma.cb_persistent.Checked:=false;
    f_sceltaprogramma.cb_persistent.Visible:=false;
    f_sceltaprogramma.ShowModal;
    if f_sceltaprogramma.ModalResult = mrOk then
    begin
      dm_form.t_menu.Edit;
      dm_form.t_menuvalore.Value := f_sceltaprogramma.scelta;

    end;
  end;

end;

procedure Tf_work.Exit2Click(Sender: TObject);
var
  appoggia_id_padre: string;
begin
  // ______________________________ A CHE SERVE ??? ____________________________
  appoggia_id_padre       := dm_form.t_menuid_padre.Value;
  dm_form.t_menu.Filtered := False;
  dm_form.t_menu.Locate('id', appoggia_id_padre, []);
  dm_form.t_menu.Filter     := 'id_padre = ' + #39 +
                               dm_form.t_menuid_padre.Value + #39;
  dm_form.t_menu.Filtered   := True;
  dm_form.id_padre_per_menu := dm_form.t_menuid_padre.Value;
end;


procedure Tf_work.supertreeChanging(Sender: TObject; Node: TTreeNode;
  var AllowChange: boolean);
begin
  if supertree.Selected <> nil then
  begin
    // in caso di uscita da programma in check chiede salvataggio di versione
    if (supertree.Selected.HasAsParent(nodo_prg_attivo)) and
       (PageControl1.ActivePage = ts_programmi) and
       (supertree.Selected.HasAsParent(nodo_prg)) and not
       (Node.HasAsParent(nodo_prg_attivo)) and
        mycheck_local then
    begin
      salva_prg.Execute;
    end;
  end;
end;


procedure Tf_work.cancella_versioni(oggetto: string);
begin
  cerca_sottoversioni.RootDirectory := userdir + '\bak';
  cerca_sottoversioni.FileParams.FileMask := oggetto + '*.o2bak';
  cerca_sottoversioni.Search;
end;

procedure Tf_work.cerca_sottoversioniFindFile(Sender: TObject; const AName: string);
begin
  DeleteFile(AName);
end;

function Tf_work.whocheck(oggetto: string): string;
begin
  incheck_local := false;
  btn_checked_refreshClick(self);
  if  checked_list.FindCaption(-1, oggetto, False, False, False) <> nil then
  begin
    Result := checked_list.FindCaption(-1,
                                       oggetto,
                                       False,
                                       False,
                                       False).SubItems.Strings[0];
  end
  else
  begin
   Result := '';
  end;
  if StrLower(Result) = StrLower(user) then
  begin
    mycheck_local := true
  end
  else
  begin
    mycheck_local := false;
  end;
end;


function Tf_work.new_actionExecute(Sender: TObject): string;
var
  nome_azione: string;
  nodotemp:    TTreeNode;
  azionepos, ope_pos: TBookmark;
begin
  if InputQuery('New action', 'Action name', nome_azione) and
     (nome_azione <> '') then
  begin
    nome_azione := dm_form.formatName(nome_azione);
    if dm_form.ds_operazioni.State = dsInsert then
    begin
      dm_form.t_operazioni.Post;
    end;
    azionepos := dm_form.t_azioni.GetBookmark;
    ope_pos   := dm_form.t_operazioni.GetBookmark;
    // __________________________________________ Action name already exists ___
    if dm_form.t_azioni.Locate('azione', nome_azione, [loCaseInsensitive]) then
    begin
      ShowMessage('Action ' + nome_azione + ' already exists!');
      Result := '';
    end
    else
    begin
      dm_form.t_azioni.Insert;
      dm_form.t_azioni.Edit;
      dm_form.t_azioniazione.Value := nome_azione;
      dm_form.t_azioni.Post;
      // ____________________________________________ Add new action to tree ___
      nodotemp := supertree.Items.AddChild(nodo_azioni_all, nome_azione);
      nodotemp.ImageIndex    := 29;
      nodotemp.SelectedIndex := 29;
      if supertree.Selected.Text = 'Actions' then
      begin
        dm_form.t_azioni.Locate('azione', nome_azione, []);
        supertree.Selected       := nodotemp;
        Pagecontrol2.ActivePage  := ts_azioni;
        Panel_expression.Visible := False;
      end
      // ____________________________________________________ Reset datasets ___
      else
      begin
        dm_form.t_azioni.GotoBookmark(azionepos);
        dm_form.t_operazioni.GotoBookmark(ope_pos);
      end;
      Result := nome_azione;
    end;
  end;
end;


procedure Tf_work.dbgrid_operazioni_savDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: integer; Column: TColumn; State: TGridDrawState);
var
  disegna: boolean;
begin

  if (Column.FieldName = 'prg') or (Column.FieldName = 'callparam') or
    (Column.FieldName = 'o2ref') or (Column.FieldName = 'deferred') or
    (Column.FieldName = 'callwait') or (Column.FieldName = 'azione') or
    (Column.FieldName = 'exp3') or (Column.FieldName = 'tipologia') or
    (Column.FieldName = 'service') then
  begin
    disegna := False
  end
  else begin
    disegna := True
  end;


  if Column.FieldName = 'operazione_look' then
  begin
    Column.Title.Caption := 'Operator';
    Column.DropDownRows  := 14;
  end;

  if Column.FieldName = 'id' then
  begin
    Column.Title.Caption := '#'
  end;
  if Column.FieldName = 'exp1' then
  begin
    Column.Title.Caption := 'Arguments'
  end;
  if Column.FieldName = 'exp2' then
  begin
    Column.Title.Caption := 'Condition'
  end;
  if Column.FieldName = 'o2ref_wide' then
  begin
    Column.Title.Caption := 'Object'
  end;


  if not (disegna) then
  begin
    Column.Visible := False
  end;

end;




procedure Tf_work.Zoom17Click(Sender: TObject);
var
 exp_local: integer;
 act_local:string;
begin

   if db_closeclickact.Focused then
   begin
        act_local := call_scelta_azione(dm_form.t_formcloseclick_action.Value);
        if act_local<>'' then
        begin
          dm_form.t_form.Edit;
          dm_form.t_formcloseclick_action.Value:=act_local;
        end;
   end;

   if db_refreshact.Focused then
   begin
        act_local := call_scelta_azione(dm_form.t_formrefresh_action.Value);
        if act_local<>'' then
        begin
          dm_form.t_form.Edit;
          dm_form.t_formrefresh_action.Value:=act_local;
        end;
   end;


  if (db_visible_form.Focused) or (db_url_form.Focused) or
     (db_title.Focused) or (db_status.Focused) or (db_timer.Focused) then
  begin

    if db_visible_form.Focused then
    begin
      exp_local := dm_form.t_formvisibile.Value
    end;
    if db_url_form.Focused then
    begin
      exp_local := dm_form.t_formurl.Value
    end;
    if db_title.Focused then
    begin
      exp_local := dm_form.t_formbarra_titolo.Value
    end;
    if db_status.Focused then
    begin
      exp_local := dm_form.t_formbarra_stato.Value
    end;

    if db_timer.Focused then
    begin
      exp_local := dm_form.t_formtimer_refresh.Value
    end;

    exp_local := call_scelta_exp(exp_local);
    if exp_local <> 0 then
    begin
      dm_form.t_form.Edit;
      if db_visible_form.Focused then
      begin
        dm_form.t_formvisibile.Value := exp_local
      end;
      if db_url_form.Focused then
      begin
        dm_form.t_formurl.Value := exp_local
      end;
      if db_title.Focused then
      begin
        dm_form.t_formbarra_titolo.Value := exp_local
      end;
      if db_status.Focused then
      begin
        dm_form.t_formbarra_stato.Value := exp_local
      end;

      if db_timer.Focused then
      begin
        dm_form.t_formtimer_refresh.Value := exp_local
      end;


    end;
  end;

end;

procedure Tf_work.db_nomeazioneChange(Sender: TObject);
begin
  if db_nomeazione.Focused then
  begin
    nodo_ultimo_selezionato.Text := db_nomeazione.Text;
  end;
end;

procedure Tf_work.Zoom18Click(Sender: TObject);
begin
  //campo picture
  if dbgrid_parametri.SelectedField.DisplayName = 'modello' then
  begin
    dm_form.t_modelli.Locate('idmodello', dm_form.t_parametrimodello.Value, []);

    f_sceltamodel.ShowModal;
    if f_sceltamodel.ModalResult = mrOk then
    begin
      dm_form.t_parametri.Edit;
      dm_form.t_parametrimodello.Value := dm_form.t_modelliidmodello.Value;
    end;
  end;

end;

procedure Tf_work.About1Click(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure Tf_work.Zoom19Click(Sender: TObject);
begin
  f_sceltamodel.ShowModal;
  if f_sceltamodel.ModalResult = mrOk then
  begin
    dm_form.t_variabili_app.Edit;
    dm_form.t_variabili_apptipo.Value := dm_form.t_modelliidmodello.Value;

  end;
end;


procedure Tf_work.dbgrid_operazioni_savKeyUp(Sender: TObject;
  var Key: word; Shift: TShiftState);
begin
  selezione_cella_operazioniExecute(dbgrid_operazioni);
end;

procedure Tf_work.dbgrid_operazioni_savColExit(Sender: TObject);
begin
  if (dbgrid_operazioni.SelectedField.FieldName = 'operazione') and
    (dm_form.t_operazioni.State = dsInsert) then
  begin
    operazioni_open.Execute
  end;

end;

procedure Tf_work.operazioni_openExecute(Sender: TObject);
var
  appoggio, tmp1, tmp2, azione_local, view_local, direction_local, exp_fine_local:      string;
var
  posiz1, posiz2, posiz3: integer;
begin

  // IMPOSTA
  if (dm_form.t_operazionioperazione.Value = 'Update') or (dm_form.t_operazionioperazione.Value = 'Confirm') then
  begin

    if call_scelta_campoprg(dm_form.t_operazionio2ref.Value, true, false, true, true) <> '' then
    begin
      dm_form.t_operazioni.Edit;
      dm_form.t_operazionio2ref.Value := f_sceltacampiprg.scelta;
      // reimposta mastersource
      dm_form.t_select.MasterSource   := dm_form.ds_task;

    end;
  end;


  // remark
  if dm_form.t_operazionioperazione.Value = 'Remark' then
  begin
    appoggio := dm_form.t_operazionio2ref.Value;
    if (InputQuery('Remark', 'Insert text', appoggio)) then
    begin
      dm_form.t_operazioni.Edit;
      dm_form.t_operazionio2ref.Value := appoggio;
    end;
  end;

  // CHIAMA
  if (dm_form.t_operazionioperazione.Value = 'Call program') or
    (dm_form.t_operazionioperazione.Value = 'Go to') then
  begin

    //    in creazione di goto chiede se program o url
    if (dm_form.t_operazionioperazione.Value = 'Go to') and
      (dm_form.t_operazionitipologia.Value = '') then
    begin
      f_goto.ShowModal;
      if f_goto.ModalResult = mrOk then
      begin
        dm_form.t_operazioni.Edit;
        if f_goto.scelta = 0 then
        begin
          dm_form.t_operazionitipologia.Value := 'program'
        end
        else begin
          dm_form.t_operazionitipologia.Value := 'url'
        end;
      end;
    end;

    if (dm_form.t_operazionitipologia.Value = 'program') or
      (dm_form.t_operazionioperazione.Value = 'Call program') then
    begin
      f_sceltaprogramma.e_expr.Text := '';
      if PosEx('[o2exp_', dm_form.t_operazionio2ref.Value, 1) <> 0 then
      begin
        f_sceltaprogramma.e_expr.Text := trim(copy(dm_form.t_operazionio2ref.Value, 8, 8));
        f_sceltaprogramma.e_expr.Text :=
          copy(f_sceltaprogramma.e_expr.Text, 1, length(f_sceltaprogramma.e_expr.Text) - 1);
      end;
      f_sceltaprogramma.scelta:=dm_form.t_operazionio2ref.Value;

      if dm_form.t_operazionioperazione.Value = 'Call program' then
      begin
       if (dm_form.t_operazioniservice.Value = 'Cached') then f_sceltaprogramma.cb_persistent.Checked:=True else f_sceltaprogramma.cb_persistent.Checked:=False;
       f_sceltaprogramma.cb_persistent.Visible := True;
      end
      else
      begin
        f_sceltaprogramma.cb_persistent.Checked:=false;
        f_sceltaprogramma.cb_persistent.Visible:=false;

      end;
      f_sceltaprogramma.ShowModal;
      if f_sceltaprogramma.ModalResult = mrOk then
      begin
        dm_form.t_operazioni.Edit;
        dm_form.t_operazionio2ref.Value := f_sceltaprogramma.scelta;
        if f_sceltaprogramma.cb_persistent.Checked then dm_form.t_operazioniservice.Value := 'Cached' else dm_form.t_operazioniservice.Value := '';

        dbgrid_operazioni.SelectedIndex:=3;
      end;
    end;

  end;


  // RETURN PARAMETER
  if (dm_form.t_operazionioperazione.Value = 'Return parameter') then
  begin
    f_parametri_in.ShowModal;
    if f_parametri_in.ModalResult = mrOk then
    begin
      dm_form.t_operazioni.Edit;
      dm_form.t_operazionio2ref.Value :=
        dm_form.t_parametriid.AsString + '::' + dm_form.t_parametrinome.Value;

    end;
  end;


  // scelta I/O
  if (dm_form.t_operazionioperazione.Value = 'I/O') then
  begin

    //inizializza finestra I/O
    tmp2 := ExtractWord(2, dm_form.t_operazionio2ref.Value, [chr(144)]);
    tmp1 := Smash(chr(143), ExtractWord(1, dm_form.t_operazionio2ref.Value, [chr(144)]));

    f_scelta_output.tipo_io := dm_form.t_operazioniexp3.Value;
    dm_form.t_report.Locate('alias', tmp1, []);
    dm_form.t_input_output.Locate('nome', tmp2, []);

    f_scelta_output.ShowModal;
    if f_scelta_output.ModalResult = mrOk then
    begin
      dm_form.t_operazioni.Edit;
      dm_form.t_operazionio2ref.Value := f_scelta_output.scelta;
      dm_form.t_operazioniexp3.Value  := f_scelta_output.tipo_io;
    end;
  end;

  // scelta print
  if (dm_form.t_operazionioperazione.Value = 'Print') then
  begin
    f_print.e_modello.Text := extractword(1, dm_form.t_operazionio2ref.Value, [':']);
    f_print.e_pdf.Text     := extractword(2, dm_form.t_operazionio2ref.Value, [':']);
    f_print.ed_printer.Text     := extractword(3, dm_form.t_operazionio2ref.Value, [':']);
    f_print.ShowModal;
    if f_print.ModalResult = mrOk then
    begin
      dm_form.t_operazioni.Edit;
      dm_form.t_operazionio2ref.Value := f_print.scelta;

      dm_form.t_operazioniexp4.Value:=f_print.e_modello.Value;
      dm_form.t_operazioniexp5.Value:=f_print.e_pdf.Value;
      dm_form.t_operazioniexp6.Value:=f_print.ed_printer.Value;

      dm_form.t_operazionicallparam.Value := '';
      dm_form.t_printdef.First;
      while not (dm_form.t_printdef.EOF) do
      begin
        dm_form.t_operazionicallparam.Value :=
          trim(dm_form.t_operazionicallparam.Value) +
          dm_form.t_printdefid.Value + '|' +
          dm_form.t_printdefid_padre.Value + ' |' +
          dm_form.t_printdefprg_ref.Value + '|' +
          dm_form.t_printdefrisorsa_ref.Value + '|' +
          dm_form.t_printdefmaster_fields.Value + '|' +
          dm_form.t_printdefindex_fields.Value + '|§';

        dm_form.t_printdef.Next;
      end;

    end;

  end;



  // ESEGUI AZIONE
  if dm_form.t_operazionioperazione.Value = 'Execute action' then
  begin
    if dm_form.t_operazionio2ref.Value <> '' then
    begin
      posiz1 := PosEx('::', dm_form.t_operazionio2ref.Value, 1);
      posiz2 := PosEx('::', dm_form.t_operazionio2ref.Value, posiz1 + 2);
      posiz3 := PosEx('::', dm_form.t_operazionio2ref.Value, posiz2 + 2);

      azione_local := copy(dm_form.t_operazionio2ref.Value, 1, posiz1 - 1);
      if (posiz2 > 0) then exp_fine_local := copy(dm_form.t_operazionio2ref.Value, posiz1 + 2, posiz2 - posiz1 - 2);
      if (posiz3 > 0) then view_local := copy(dm_form.t_operazionio2ref.Value, posiz2 + 3, posiz3 - posiz2 - 3);
      if (posiz3 > 0) then direction_local :=  TRIM(copy(dm_form.t_operazionio2ref.Value, posiz3 + 2, 30));

      if (exp_fine_local = '0') then exp_fine_local:='True';

    end
    else
    begin
      azione_local    := '';
      view_local := '';
      direction_local  := '';
      exp_fine_local   := 'True';
    end;


    azione_local:= call_scelta_azione(azione_local, view_local, direction_local ,exp_fine_local, True);

    if azione_local <> '' then
    begin
      if f_sceltaazione.ListView1.Selected <> nil then
      begin
        appoggio := f_sceltaazione.ListView1.Selected.Caption +
          '::' + f_sceltaazione.end_expr.Text + '::' + chr(127)+ f_sceltaazione.loop_task.Text +
          '::' + 'Ascending';
        dm_form.t_operazioni.Edit;
        dm_form.t_operazionio2ref.Value := appoggio;
      end;
    end;
  end;


  // TIPO MESSAGGIO
  if (dm_form.t_operazionioperazione.Value = 'Message') then
  begin

    f_message.ShowModal;
    if f_message.ModalResult = mrOk then
    begin
      dm_form.t_operazioni.Edit;
      dm_form.t_operazionio2ref.Value :=
        f_message.scelta;
    end;
  end;

  // recordset
  if (dm_form.t_operazionioperazione.Value = 'Recordset') then
  begin
    //inizializza le variabili
    f_sceltarecordset.scelta := dm_form.t_operazionio2ref.Value;
    f_sceltarecordset.ShowModal;
    if f_sceltarecordset.ModalResult = mrOk then
    begin
      dm_form.t_operazioni.Edit;
      dm_form.t_operazionio2ref.Value := f_sceltarecordset.scelta;

    end;
  end;

  // set menu
  if (dm_form.t_operazionioperazione.Value = 'Set menu') then
  begin
    f_sceltamenu.ShowModal;
    if f_sceltamenu.ModalResult = mrOk then
    begin
      dm_form.t_operazioni.Edit;
      dm_form.t_operazionio2ref.Value := f_sceltamenu.scelta;

    end;
  end;
end;  //fine o2ref


procedure Tf_work.Apri1Click(Sender: TObject);
var
  i: integer;
  tmp1: string;
  itemlist, itemselect: TListItem;
begin
  //carica recent
  list_recent.Items.Clear;

  for i:=1 to 50 do
  begin

  if settings.ReadString('Recent', 'app' + inttostr(i), '') <> '' then
  begin
    tmp1 := StrReverse(settings.ReadString('Recent', 'app' + inttostr(i), ''));
    tmp1 := strreverse(StrToken(tmp1, '\'));
    tmp1 := strtoken(tmp1, '.');

    itemlist := list_recent.Items.Add;
    itemlist.Caption := tmp1;
    itemlist.SubItems.Add(settings.ReadString('Recent', 'app' + inttostr(i), ''));

    itemselect := itemlist;
  end;

  end;

  PageControl1.ActivePage := ts_openapp;
  PageControl1.Visible    := True;
  if list_recent.Items.Count > 0 then
  begin
    list_recent.ItemIndex := 0
  end;
  create.Enabled := false;
  delete.Enabled := false;
  cancel.Enabled := false;
  list_recent.SetFocus;

end;


procedure Tf_work.btn_opn_recClick(Sender: TObject);
begin
  if list_recent.Selected <> nil then
  begin
    OpenDialog1.FileName := list_recent.Selected.SubItems[0];
    apri_progettoExecute(Self);
  end;
end;

procedure Tf_work.New2Click(Sender: TObject);
begin
  //new program da program o qualsiasi folder
  if (supertree.Selected.Text = 'Programs') or
    (supertree.Selected.ImageIndex = 19) then
  begin
    tree_new_prg.Execute
  end;


  if supertree.Selected.Text = 'Views' then
  begin
    new_view.Execute
  end;

  if supertree.Selected.Text = 'Actions' then
  begin
    new_actionExecute(self)
  end;

end;

{*
 * Zoom action on view aggregations.
 * Selects aggregated field from view and aggregation target variable
 *}
procedure Tf_work.Zoom21Click(Sender: TObject);
begin
  // ____________________________________________ Aggregated field from view ___
  if dbgrid_aggreg.SelectedField.FieldName = 'campo_view' then
  begin
    if (call_scelta_campoprg(dm_form.t_aggregcampo_view.Value,
                             false,
                             false,
                             false,
                             true,
                             dm_form.t_tasknome.Value)) <> '' then
    begin
      dm_form.t_aggreg.Edit;
      dm_form.t_aggregcampo_view.Value :=
                                    f_sceltacampiprg.ListView1.Selected.Caption;
    end;
  end;
  // ___________________________________________ Aggregation target variable ___
  if dbgrid_aggreg.SelectedField.FieldName = 'result_var' then
  begin
    if (call_scelta_campoprg(dm_form.t_aggregcampo_view.Value,
                             false,
                             false,
                             true,
                             false)) <> '' then
    begin
      dm_form.t_aggreg.Edit;
      dm_form.t_aggregresult_view.Value :=
                                f_sceltacampiprg.ListView1.Selected.SubItems[1];
      dm_form.t_aggregresult_var.Value  :=
                                    f_sceltacampiprg.ListView1.Selected.Caption;
    end;
  end;
end;


procedure Tf_work.Gettablesdefinition1Click(Sender: TObject);
begin
  f_getdef.ShowModal;
end;

procedure Tf_work.dbgrid_aggregEnter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_aggreg;
end;


procedure Tf_work.btn_nuova_voce_menuClick(Sender: TObject);
var
  NewID: string;
  ParentNode, NewNode: TTreeNode;
begin
  if InputQuery('New child', 'Name', NewID) then
  begin
    NewID := dm_form.formatName(NewID);
    if tree_menu.Selected = nil then
    begin
      ParentNode := tree_menu.TopItem;
    end
    else
    begin
      ParentNode := tree_menu.Selected;
    end;
    NewNode := tree_menu.Items.AddChild(ParentNode, NewID);
    NewNode.ImageIndex    := 2;
    NewNode.SelectedIndex := 2;
    tree_menu.SetFocus;
    tree_menu.Select(NewNode, []);
  end;
end;


procedure Tf_work.tree_menuChange(Sender: TObject; Node: TTreeNode);
begin
  // _______________________________________ Locate selected menu in dataset ___
  dm_form.t_menu.Locate('id', tree_menu.Selected.Text, []);
  if Node.HasChildren then
  begin
    // ___________________ If item has children then type is fixed to "Menu" ___
    db_menutipo.Enabled := false
  end
  else
  begin
    // ______________________ If menu has no children then enable type combo ___
    db_menutipo.Enabled := true;
  end;
  // ______________ If item is a menu then enable button to create sub-items ___
  if dm_form.t_menutipo.Value = 'Menu' then
  begin
    btn_nuova_voce_menu.Enabled := True
  end
  else begin
    btn_nuova_voce_menu.Enabled := False
  end;
  // _________ If item is not menu neither separator then enable value field ___
  if (dm_form.t_menutipo.Value = 'Menu') or
     (dm_form.t_menutipo.Value = 'Separator') then
  begin
    db_menuvalore.Enabled := False
  end
  else begin
    db_menuvalore.Enabled := True
  end;
end;


procedure Tf_work.tree_menuEdited(Sender: TObject;
                                  Node: TTreeNode;
                                  var S: string);
begin
 if mycheck_local then
 begin
  dm_form.t_menu.Edit;
  dm_form.t_menuid.Value := S;
 end;
end;


procedure Tf_work.tree_menuAddition(Sender: TObject; Node: TTreeNode);
var
  parent, tipo: string;
begin
  if not (treemenu_incarica) then
  begin
    if Node.Parent = nil then
    begin
      parent := '';
      tipo   := 'Menu';
    end
    else
    begin
      parent := Node.Parent.Text;
      tipo   := 'Program';
    end;
    dm_form.t_menu.InsertRecord([Node.Text,
                                 parent,
                                 Node.AbsoluteIndex,
                                 '',
                                 tipo]);
  end;

end;


function Tf_work.trova_nodo(tree: TTreeView; idmenu: string): TTreeNode;
var
  i: integer;
begin
  for i := 0 to tree.Items.Count - 1 do
  begin
    if tree.Items.Item[i].Text = idmenu then
    begin
      Result := tree.Items.Item[i];
      Break;
    end;
  end;
end;


function Tf_work.trova_sottonodo(tree: TTreeNode; idmenu: string): TTreeNode;
var
  i: integer;
begin
  for i := 0 to tree.Count - 1 do
  begin
    if tree.Item[i].Text = idmenu then
    begin
      Result := tree.Item[i];
      Break;
    end;
  end;
end;



procedure Tf_work.carica_treemenuExecute(Sender: TObject);
var
  ParentNode, NewNode: TTreeNode;
  ImgIdx: Integer;
begin
  tree_menu.Items.BeginUpdate;
  with dm_form do
  begin
    if t_menu.RecordCount = 0 then
    begin
      t_menu.InsertRecord(['base', '', 0, '', 'Menu']);
    end;
    treemenu_incarica := True;
    tree_menu.Items.Clear;
    t_menu.First;
    while not t_menu.EOF do
    begin
      // __________________________________________________ Find parent node ___
      if (t_menuid_padre.Value = '') then
      begin
        ParentNode := tree_menu.TopItem;
      end
      else
      begin
        ParentNode := trova_nodo(tree_menu, t_menuid_padre.Value);
      end;
      // _____________________________________________________ Set type icon ___
      if t_menutipo.Value = 'Menu' then
      begin
         ImgIdx := 1;
      end
      else if t_menutipo.Value = 'Program' then
      begin
         ImgIdx := 2;
      end
      else if t_menutipo.Value = 'Url' then
      begin
         ImgIdx := 3;
      end
      else if t_menutipo.Value = 'Separator' then
      begin
         ImgIdx := 4;
      end
      else
      begin
         ImgIdx := -1;
      end;
      NewNode               := tree_menu.Items.AddChild(ParentNode,
                                                        t_menuid.Value);
      NewNode.ImageIndex    := ImgIdx;
      NewNode.SelectedIndex := ImgIdx;
      t_menu.Next;
    end;
  end;
  tree_menu.Items.EndUpdate;
  treemenu_incarica := False;
//  tree_menu.FullExpand;
end;


procedure Tf_work.scarica_treemenuExecute(Sender: TObject);
var
  i: integer;
  tmpnodo: TTreeNode;
begin
  for i := 0 to tree_menu.Items.Count - 1 do
  begin
    tmpnodo := tree_menu.Items.Item[i];
    dm_form.t_menu.Locate('id', tree_menu.Items.Item[i].Text, []);
    dm_form.t_menu.Edit;
    dm_form.t_menuposizione.Value := i;
    if tmpnodo.Parent <> nil then
    begin
      dm_form.t_menuid_padre.Value := tmpnodo.Parent.Text
    end;
  end;

  //elimina i cancellati
  dm_form.t_menu.First;
  while not dm_form.t_menu.EOF do
  begin
    if trova_nodo(tree_menu, dm_form.t_menuid.Value) = nil then
    begin
      dm_form.t_menu.Delete
    end;
    dm_form.t_menu.Next;
  end;
end;


procedure Tf_work.del_vocetreemenuClick(Sender: TObject);
begin
  tree_menu.Selected.Delete;
  tree_menu.Selected := tree_menu.TopItem;
  tree_menu.Repaint;

end;

procedure Tf_work.tree_menuDragDrop(Sender, Source: TObject; X, Y: integer);
var
  AttachMode: TNodeAttachMode;
  TargetNode, SourceNode: TTreeNode;
begin
  SourceNode := tree_menu.Selected;
  TargetNode := tree_menu.GetNodeAt(X, Y);
  with dm_form do
  begin
    if (not t_menu.ReadOnly) and
       (SourceNode <> nil) and
       (TargetNode <> nil) and
       (SourceNode <> TargetNode) then
    begin
      t_menu.Locate('id', TargetNode.Text, []);
      if t_menutipo.Value = 'Menu' then
      begin
        AttachMode := naAddChild;
      end
      else
      begin
        AttachMode := naInsert;
      end;
      SourceNode.MoveTo(TargetNode, AttachMode);
      // __________________________________________ Chenge parent in dataset ___
      t_menu.Locate('id', SourceNode.Text, []);
      t_menu.Edit;
      t_menuid_padre.Value := TargetNode.Text;
      t_menu.Post;
    end;
  end;
end;


procedure Tf_work.tree_menuDragOver(Sender, Source: TObject;
                                    X, Y: integer;
                                    State: TDragState;
                                    var Accept: boolean);
var
  TargetNode, SourceNode: TTreeNode;
begin
  SourceNode := tree_menu.Selected;
  TargetNode := tree_menu.GetNodeAt(X, Y);
  if (not dm_form.t_menu.ReadOnly) and
     (Source = Sender) and
     (SourceNode <> nil) and
     (TargetNode <> nil) and
     (SourceNode <> TargetNode) then
  begin
    Accept := True;
  end
  else
  begin
    Accept := False;
  end;
end;


procedure Tf_work.tree_menuDeletion(Sender: TObject; Node: TTreeNode);
begin
  if (not (treemenu_incarica)) and (not(dm_form.t_menu.IsEmpty)) then
  begin
    if dm_form.t_menu.Locate('id', Node.Text, []) then
    begin
      dm_form.t_menu.ReadOnly := false;
      dm_form.t_menu.Delete
    end;
  end;
end;


procedure Tf_work.db_nomeazioneExit(Sender: TObject);
begin
  supertree.Selected := trova_sottonodo(nodo_prg_attivo, db_nomeazione.Text);
end;


procedure Tf_work.ts_labelsExit(Sender: TObject);
begin
  salva_labels.Execute;
end;


procedure Tf_work.db_menutipoChange(Sender: TObject);
var
  ImgIdx: Integer;
begin
  tree_menu.Items.BeginUpdate;
  // _____________________________________________________ Set type icon ___
  if db_menutipo.Text = 'Menu' then
  begin
    btn_nuova_voce_menu.Enabled := True;
    ImgIdx                      := 1;
  end
  else if db_menutipo.Text = 'Program' then
  begin
    btn_nuova_voce_menu.Enabled := False;
    ImgIdx                      := 2;
  end
  else if db_menutipo.Text = 'Url' then
  begin
    btn_nuova_voce_menu.Enabled := False;
    ImgIdx                      := 3;
  end
  else if db_menutipo.Text = 'Separator' then
  begin
    btn_nuova_voce_menu.Enabled := False;
    ImgIdx                      := 4;
  end
  else
  begin
    btn_nuova_voce_menu.Enabled := False;
    ImgIdx                      := -1;
  end;
  tree_menu.Selected.ImageIndex    := ImgIdx;
  tree_menu.Selected.SelectedIndex := ImgIdx;
  tree_menu.Items.EndUpdate;
end;

procedure Tf_work.refresh_exprExecute(Sender: TObject);
begin

  if (DBGrid_select.SelectedField.Text <> '') and
    (DBGrid_select.SelectedField.Text <> '0') and
    (((campo_in_grid_select = 'init') and
      (dm_form.t_selecttipo.Text <> 'SQL')) or
     (campo_in_grid_select = 'rangemin') or
     (campo_in_grid_select = 'rangemax') or
     (campo_in_grid_select = 'not') or
     (campo_in_grid_select = 'like')) then
  begin
    dm_form.t_espressioni.Locate('idexp', DBGrid_select.SelectedField.Text, []);
    panel_expression_view.Visible := true;
  end
  else
    panel_expression_view.Visible := false;

end;


procedure Tf_work.DBGrid_selectsavCellClick(Column: TColumn);
begin
  refresh_expr.Execute;
end;

procedure Tf_work.refresh_exp_joinExecute(Sender: TObject);
var
  tmp_grid: TDBGrid;
begin

  tmp_grid := Sender as TDBGrid;

  if (tmp_grid.SelectedField.Text <> '') and
    ((tmp_grid.SelectedField.FieldName = 'init') or
    (tmp_grid.SelectedField.FieldName = 'rangemin') or
    (tmp_grid.SelectedField.FieldName = 'rangemax') or
    (tmp_grid.SelectedField.FieldName = 'not') or
    (tmp_grid.SelectedField.FieldName = 'like')) then
  begin
    dm_form.t_espressioni.Locate('idexp', tmp_grid.SelectedField.Text, []);
    panel_expression_view.Visible:=true;
  end
   else
    panel_expression_view.Visible:=false;

end;


procedure Tf_work.Zoom22Click(Sender: TObject);
var exp_local:  integer;
begin
  if (db_top_exp.Focused) or (db_left_exp.Focused) or
    (db_altezza_exp.Focused) or (db_largh_exp.Focused) then
  begin

    if db_top_exp.Focused then
    begin
      exp_local:=call_scelta_exp(dm_form.t_formtop_exp.Value)
    end;
    if db_left_exp.Focused then
    begin
      exp_local:=call_scelta_exp(dm_form.t_formleft_exp.Value)
    end;
    if db_altezza_exp.Focused then
    begin
      exp_local:=call_scelta_exp(dm_form.t_formaltezza_exp.Value)
    end;
    if db_largh_exp.Focused then
    begin
     exp_local:=call_scelta_exp(dm_form.t_formlarghezza_exp.Value)
    end;

    if exp_local <> 0 then
    begin
      dm_form.t_form.Edit;
      if db_top_exp.Focused then
      begin
        dm_form.t_formtop_exp.Value := exp_local
      end;
      if db_left_exp.Focused then
      begin
        dm_form.t_formleft_exp.Value := exp_local
      end;
      if db_altezza_exp.Focused then
      begin
        dm_form.t_formaltezza_exp.Value := exp_local
      end;
      if db_largh_exp.Focused then
      begin
        dm_form.t_formlarghezza_exp.Value := exp_local
      end;

    end;
  end;

end;

procedure Tf_work.muovi_istruzione(posizione_inizio, muovi_da, muovi_a: integer);

var
  i, n, start: integer;

begin
  // le righe da muovere le sposto a prg temp


  for i := muovi_da to muovi_a do
  begin
    //sfilo i record
    dm_form.t_operazioni.Locate('id', i, []);
    dm_form.t_operazioni.Edit;
    dm_form.t_operazioniid.Value := 10000 + i;
  end;

  if posizione_inizio < muovi_da then
  begin
    //faccio scalare tutti i successivi alla posizione del gap
    dm_form.t_operazioni.Filter   := 'id < 10000';
    dm_form.t_operazioni.Filtered := True;
    dm_form.t_operazioni.Locate('id', muovi_da - 1, []);

    for i := 1 to (Abs(muovi_da - posizione_inizio) - 1) do
    begin
      dm_form.t_operazioni.Edit;
      dm_form.t_operazioniid.Value := dm_form.t_operazioniid.Value +
        Abs(muovi_da - muovi_a) + 1;

      dm_form.t_operazioni.Prior;
    end;
  end
  else begin
    dm_form.t_operazioni.Locate('id', muovi_a + 1, []);
    while dm_form.t_operazioniid.Value <= posizione_inizio do
    begin
      dm_form.t_operazioni.Edit;
      dm_form.t_operazioniid.Value := dm_form.t_operazioniid.Value -
        Abs(muovi_da - muovi_a) - 1;
      dm_form.t_operazioni.Next;
    end;

  end;

  // rimetto i records in pista
  dm_form.t_operazioni.Filter := 'id > 10000';
  if posizione_inizio > muovi_da then
  begin
    start := posizione_inizio - Abs(muovi_da - muovi_a)
  end
  else begin
    start := posizione_inizio + 1
  end;
  n := 0;
  for i := muovi_da to muovi_a do
  begin

    dm_form.t_operazioni.Locate('id', 10000 + i, []);
    dm_form.t_operazioni.Edit;
    dm_form.t_operazioniid.Value := start + n;
    Inc(n);
  end;

  dm_form.t_operazioni.Filtered := False;

end;


procedure Tf_work.selezione_cella_operazioniExecute(grid: TVolgaDBGrid);
begin
  grid.SelectedField.ReadOnly := false;
  if (grid.SelectedField.FieldName = 'exp1') or
     (grid.SelectedField.FieldName = 'exp2') then
  begin
    if (grid.SelectedField.Value > 0) and
       (((grid.SelectedField.FieldName = 'exp1') and
         (dm_form.t_operazionioperazione.Value <> 'Call program') and
         (dm_form.t_operazionioperazione.Value <> 'Go to program')) or
        (grid.SelectedField.FieldName = 'exp2')) then
    begin
      dm_form.t_espressioni.Locate('idexp', grid.SelectedField.Value, []);
      Panel_expression.Visible := True;
    end
    else
    begin
      Panel_expression.Visible := False
    end;
  end
  else
  begin
    Panel_expression.Visible := False;
  end;
end;


procedure Tf_work.Zoom16Click(Sender: TObject);
var exp_local: integer;
begin
  if (dbgrid_form.SelectedField.FieldName = 'dicitura_exp') then
  begin

    exp_local := dm_form.t_formdicitura_exp.AsInteger;
    exp_local:=call_scelta_exp(exp_local);
    if exp_local <> 0 then
    begin
      dm_form.t_form.Edit;
      if dbgrid_form.SelectedField.FieldName = 'dicitura_exp' then
      begin
        dm_form.t_formdicitura_exp.Value := exp_local
      end;
    end;
  end;
end;

procedure Tf_work.dbgrid_operazioniEnter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_operazioni;
  dbgrid_operazioni.SelectedIndex := 0;
end;

procedure Tf_work.dbgrid_operazioniDrawCellAttr(Sender: TObject;
                                                Column: TVolgaColumn;
                                                AFont: TFont;
                                                var AColor: TColor;
                                                State: TGridDrawState);
begin
  dbgrid_operazioni.Canvas.Font.Color := clBlack;

  if dm_form.t_operazionioperazione.Value = 'Recordset' then
  begin
    dbgrid_operazioni.Canvas.Font.Color := f_config.cl_box_rec.ColorValue
  end
  else if dm_form.t_operazionioperazione.Value = 'Execute action' then
  begin
    dbgrid_operazioni.Canvas.Font.Color := f_config.cl_box_exeact.ColorValue
  end
  else if dm_form.t_operazionioperazione.Value = 'Update' then
  begin
    dbgrid_operazioni.Canvas.Font.Color := f_config.cl_box_update.ColorValue
  end
  else if dm_form.t_operazionioperazione.Value = 'Confirm' then
  begin
    dbgrid_operazioni.Canvas.Font.Color := f_config.cl_box_update.ColorValue
  end
  else if dm_form.t_operazionioperazione.Value = 'Remark' then
  begin
    dbgrid_operazioni.Canvas.Font.Color := f_config.cl_box_rem.ColorValue
  end
  else if dm_form.t_operazionioperazione.Value = 'Call program' then
  begin
    dbgrid_operazioni.Canvas.Font.Color := f_config.cl_box_call.ColorValue;
  end
  else if dm_form.t_operazionioperazione.Value = 'Go to' then
  begin
    dbgrid_operazioni.Canvas.Font.Color := f_config.cl_box_goto.ColorValue;
  end
  else if dm_form.t_operazionioperazione.Value = 'Message' then
  begin
    dbgrid_operazioni.Canvas.Font.Color := f_config.cl_box_msg.ColorValue
  end
  else if dm_form.t_operazionioperazione.Value = 'Set menu' then
  begin
    dbgrid_operazioni.Canvas.Font.Color := f_config.cl_box_setmenu.ColorValue
  end
  else if dm_form.t_operazionioperazione.Value = 'Return parameter' then
  begin
    dbgrid_operazioni.Canvas.Font.Color := f_config.cl_box_ret.ColorValue
  end
  else if dm_form.t_operazionioperazione.Value = 'I/O' then
  begin
    dbgrid_operazioni.Canvas.Font.Color := f_config.cl_box_io.ColorValue
  end
  else  if dm_form.t_operazionioperazione.Value = 'Print' then
  begin
    dbgrid_operazioni.Canvas.Font.Color := f_config.cl_box_print.ColorValue
  end
  else if dm_form.t_operazionioperazione.Value = 'Execute script' then
  begin
    dbgrid_operazioni.Canvas.Font.Color := f_config.cl_box_exescr.ColorValue
  end
  else if dm_form.t_operazionioperazione.Value = 'Debugger' then
  begin
    dbgrid_operazioni.Canvas.Font.Color := f_config.cl_box_dbg.ColorValue
  end
  else if dm_form.t_operazionioperazione.Value = 'Close program' then
  begin
    dbgrid_operazioni.Canvas.Font.Color := f_config.cl_box_close.ColorValue
  end;

  //  dbgrid_operazioni.DefaultDrawColumnCell(Rect,Column.Index,Column,State);
end;


procedure Tf_work.dbgrid_operazioniCellClick(Sender: TObject; Column: TVolgaColumn);
begin
  selezione_cella_operazioniExecute(dbgrid_operazioni);
end;


procedure Tf_work.dbgrid_operazioniDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: integer; Column: TVolgaColumn; State: TGridDrawState);
var
  disegna: boolean;
begin

  if (Column.FieldName = 'prg') or (Column.FieldName = 'callparam') or
    (Column.FieldName = 'o2ref') or (Column.FieldName = 'deferred') or
    (Column.FieldName = 'callwait') or (Column.FieldName = 'azione') or
    (Column.FieldName = 'exp3') or (Column.FieldName = 'tipologia') or
    (Column.FieldName = 'service') then
  begin
    disegna := False
  end
  else begin
    disegna := True
  end;


  if Column.FieldName = 'operazione' then
  begin
    Column.Title.Caption := 'Operator';
    Column.DropDownRows  := 14;
  end;

  if Column.FieldName = 'id' then
  begin
    Column.Title.Caption := '#'
  end;
  if Column.FieldName = 'exp1' then
  begin
    Column.Title.Caption := 'Arguments'
  end;
  if Column.FieldName = 'exp2' then
  begin
    Column.Title.Caption := 'Condition'
  end;
  if Column.FieldName = 'o2ref_wide' then
  begin
    Column.Title.Caption := 'Object'
  end;


  if not (disegna) then
  begin
    Column.Visible := False
  end;

end;

procedure Tf_work.SpeedButton1Click(Sender: TObject);
var azione_local : string;
begin
  if dbe_init_act.Focused then
  begin
    azione_local := dm_form.t_programmiref.Value
  end;

  azione_local:= call_scelta_azione(azione_local);
  if azione_local <> '' then
  begin
    dm_form.t_programmi.Edit;
    dm_form.t_programmiref.Value := azione_local;

  end;
end;

procedure Tf_work.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // verifica le cose rimaste da salvare
  if dm_form.menu_modificato then
  begin
    ts_menuExit(Self)
  end;
  if dm_form.datatypes_modificato then
  begin
    ts_modelsExit(Self)
  end;
  if dm_form.database_modificato then
  begin
    ts_databaseExit(Self)
  end;
  if dm_form.tables_modificato then
  begin
    ts_tabelleExit(Self)
  end;
  if dm_form.appvar_modificato then
  begin
    ts_appvarsExit(Self)
  end;

  if dm_form.appprop_modificato then
  begin
    ts_applicazioneExit(Self)
  end;

  if dm_form.labels_modificato then
  begin
    ts_labelsExit(Self)
  end;

  if (dm_form.program_modificato and mycheck_local) then
  begin
    salva_prg.Execute;
  end;

end;

procedure Tf_work.ts_appvarsExit(Sender: TObject);
begin
  salva_appvars.Execute;

end;

procedure Tf_work.ts_applicazioneExit(Sender: TObject);
begin
  if dm_form.appprop_modificato then
  begin
    if MessageDlg('Save Application properties changes', mtConfirmation,
      mbOKCancel, 1) = mrOk then
    begin
      BitBtn2Click(self)
    end
  end;

end;

procedure Tf_work.dbgrid_operazioniColEnter(Sender: TObject);
var
  operazione, nomecampo: string;
begin
  operazione := dm_form.t_operazionioperazione.Value;
  nomecampo  := dbgrid_operazioni.SelectedField.FieldName;

  // oggetto
  if (nomecampo = 'o2ref_wide') and ((operazione = 'Close program') or
    (operazione = 'Debugger')) then
  begin
    dbgrid_operazioni.SelectedField :=dbgrid_operazioni.Fields[4];
//    ShowMessage('checifaccio1');
    Exit;
  end;
  //exp1
  if (nomecampo = 'exp1') and ((operazione = 'Execute action') or
    (operazione = 'I/O') or (operazione = 'Print') or
    ((operazione = 'Recordset') and
    (posEx('Locate', dm_form.t_operazionicallparam.Value, 1) > 0)) or
    (operazione = 'Set menu') or (operazione = 'Close program') or (operazione = 'Debugger'))
  then
  begin
//    ShowMessage('checifaccio2');
      dbgrid_operazioni.SelectedField :=dbgrid_operazioni.Fields[4];
  end;
 
end;

procedure Tf_work.ts_operazioninewEnter(Sender: TObject);
begin
  dbgrid_operazioni.SetFocus;
end;


procedure Tf_work.Next1Click(Sender: TObject);
begin
  dbgrid_operazioni.SelectedIndex := 3
end;

procedure Tf_work.Preferences1Click(Sender: TObject);
begin
  f_config.ShowModal;
end;

procedure Tf_work.selezione_cella_joinExecute(grid: TVolgaDBGrid);
begin
 if (grid.SelectedField.FieldName = 'rangemin') or
    (grid.SelectedField.FieldName = 'rangemax') or
    (grid.SelectedField.FieldName = 'not') or
    (grid.SelectedField.FieldName = 'like') or
    (grid.SelectedField.FieldName = 'init') then

  begin

    if grid.SelectedField.Value > 0 then
    begin
      dm_form.t_espressioni.Locate('idexp', grid.SelectedField.Value, []);
      panel_expression_view.Visible := True;
    end
    else begin
      panel_expression_view.Visible := False
    end;
  end
  else begin
    panel_expression_view.Visible := False;
  end;
end;

procedure Tf_work.dbgrid_unionCellClick(Sender: TObject;
  Column: TVolgaColumn);
begin
  selezione_cella_joinExecute(dbgrid_union);
end;

procedure Tf_work.dbgrid_unionKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     selezione_cella_joinExecute(dbgrid_union);
end;

procedure Tf_work.DBGrid_selectKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  refresh_expr.Execute;
end;

procedure Tf_work.DBGrid_selectCellClick(Sender: TObject;
  Column: TVolgaColumn);
begin
  refresh_expr.Execute;
end;

procedure Tf_work.Zoom23Click(Sender: TObject);
begin
// SCELTA PROGRAMMI

if dbe_startprg.Focused then f_sceltaprogramma.scelta:=dbe_startprg.Text;
if dbe_reqprg.Focused then f_sceltaprogramma.scelta:=dbe_reqprg.Text;

f_sceltaprogramma.cb_persistent.Checked:=false;
f_sceltaprogramma.cb_persistent.Visible:=false;

f_sceltaprogramma.ShowModal;
if f_sceltaprogramma.ModalResult = mrOk then
begin
  dm_form.t_applicazione.Edit;
  if dbe_startprg.Focused then dbe_startprg.Text:= f_sceltaprogramma.scelta;
  if dbe_reqprg.Focused then dbe_reqprg.Text:= f_sceltaprogramma.scelta;
end;


end;

procedure Tf_work.Zoom24Click(Sender: TObject);
begin
    f_sceltamenu.ShowModal;
    if f_sceltamenu.ModalResult = mrOk then
    begin
      dm_form.t_applicazione.Edit;
      dm_form.t_applicazionedefault_menu.Value := f_sceltamenu.scelta;

    end;
end;


procedure Tf_work.moverowClick(Sender: TObject);
begin
    f_copymove.Caption:='Select row to move';
    f_copymove.ShowModal;

    if (f_copymove.ModalResult=mrOk) and (f_copymove.move_da.Text <> '') and (f_copymove.move_a.Text <> '') and (strtoint(f_copymove.move_da.Text) <= strtoint(f_copymove.move_a.Text))
     then
     begin
    // in caso di riga in inserimento scrive il record e procede
    if dm_form.t_operazioni.State = dsInsert then dm_form.t_operazioni.Post;

      muovi_istruzione(dm_form.t_operazioniid.Value, StrToInt(f_copymove.move_da.Text),
      StrToInt(f_copymove.move_a.Text));
      f_copymove.move_da.Text := '';
      f_copymove.move_a.Text  := '';
  end;



end;


procedure Tf_work.salva_prgExecute(Sender: TObject);
var
  aMsgdlg: TForm;
  Dlgbutton: Tbutton;
  Captionindex, Result, i: Integer;
begin
  if dm_form.program_modificato then
  begin
    // _______________________________________________ Prepare custom dialog ___
    aMsgdlg          := createMessageDialog('Save program changes?',
                                            mtConfirmation,
                                            [mbOk, mbCancel, mbAbort]);
    aMsgdlg.Caption  := 'Program has been modified';
    aMsgdlg.BiDiMode := bdRightToLeft;
    aMsgdlg.Width    := 350;
    Captionindex     := 0;
    for i := 0 to aMsgdlg.componentcount - 1 Do
    begin
      if (aMsgdlg.components[i] is Tbutton) then
      Begin
        Dlgbutton := Tbutton(aMsgdlg.components[i]);
        // _________________________________ Customize "Check & save" button ___
        if Dlgbutton.ModalResult = mrOk then
        begin
          Dlgbutton.Caption := '&Check and save';
          Dlgbutton.Width   := 100;
        end
        // _________________________________________ Customize "Save" button ___
        else if Dlgbutton.ModalResult = mrCancel then
        begin
          Dlgbutton.Caption := '&Save (no check)';
          Dlgbutton.Width   := 100;
          Dlgbutton.Left    := 120;
        end
        // ___________________________________ Customize "Don't save" button ___
        else if Dlgbutton.ModalResult = mrAbort then
        begin
          Dlgbutton.Caption := 'Do&n' + #39 + 't save';
          Dlgbutton.Width   := 100;
          Dlgbutton.Left    := 230;
        end;
        inc(Captionindex);
      end;
    end;
    // __________________________________________ Get result and evaluate it ___
    Result := aMsgdlg.Showmodal;
    // _______________________________________________ mrAll: Check and save ___
    if Result = mrOk then
    begin
      // ________________ Check syntax and open result if errors are present ___
      f_checkprg.check_globale.Execute;
      if f_checkprg.ErrorsFound then
      begin
        f_checkprg.ShowModal;
      end;
      f_export.prg_exportExecute(self, dm_form.t_programminome.Value);
    end
    // ____________________________________________________ mrYes: Save only ___
    else if Result = mrCancel then
    begin
      f_export.prg_exportExecute(self, dm_form.t_programminome.Value);
    end;
    dm_form.program_modificato := false;
  end;
end;


procedure Tf_work.salva_dbExecute(Sender: TObject);
begin
 if mycheck_local and (dm_form.database_modificato) then
  begin
     if MessageDlg('Save Databases changes?',
       mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          f_export.db_exportExecute(self)
        end;
     dm_form.database_modificato := False;
  end
end;

procedure Tf_work.salvaExecute(Sender: TObject);
begin
  ultimo_tabsheet         := PageControl1.ActivePage;
  PageControl1.ActivePage := ts_running;
//  f_checkprg.memo_posizioni.Execute;
  if ultimo_tabsheet = ts_appvars then salva_appvars.Execute;
  if ultimo_tabsheet = ts_menu then salva_menu.Execute;
  if ultimo_tabsheet = ts_models then salva_type.Execute;
  if ultimo_tabsheet = ts_database then salva_db.Execute;
  if ultimo_tabsheet = ts_tabelle then salva_table.Execute;
  if ultimo_tabsheet = ts_programmi then salva_prg.Execute;
  // avendo disabilitato i controlli non funzionerebbe più;
 // f_checkprg.ripristina_posizioni.Execute;
  PageControl1.ActivePage := ultimo_tabsheet;
end;

procedure Tf_work.salva_typeExecute(Sender: TObject);
begin
 if mycheck_local and (dm_form.datatypes_modificato) then
  begin
    if MessageDlg('Save data models changes?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      f_export.models_export.Execute
    end;
    dm_form.datatypes_modificato := False;
  end
end;

procedure Tf_work.salva_menuExecute(Sender: TObject);
begin
 if mycheck_local and (dm_form.menu_modificato) then
  begin

    if MessageDlg('Save Menu changes?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      scarica_treemenu.Execute;
      f_export.menu_exportExecute(self);
    end;
    dm_form.menu_modificato := False;
  end
end;

procedure Tf_work.salva_tableExecute(Sender: TObject);
begin

  if mycheck_local and (dm_form.tables_modificato) then
  begin
    if MessageDlg('Save Tables changes?', mtConfirmation, [mbYes, mbNo], 0) =
       mrYes then
    begin
      With dm_form do
      begin
        if (ds_tabelle.State=dsInsert) or (ds_tabelle.State=dsEdit) then
        begin
          t_tabelle.Post;
        end;
        if (ds_campi.State=dsInsert) or (ds_campi.State=dsEdit) then
        begin
          t_campi.Post;
        end;
        if (ds_indicitesta.State=dsInsert) or (ds_indicitesta.State=dsEdit) then
        begin
          t_indicitesta.Post;
        end;
        if (ds_indici.State=dsInsert) or (ds_indici.State=dsEdit) then
        begin
          t_indici.Post;
        end;
        if (ds_indicitestanu.State=dsInsert) or
           (ds_indicitestanu.State=dsEdit) then
        begin
          t_indicitestanu.Post;
        end;
        if (ds_indicinu.State=dsInsert) or (ds_indicinu.State=dsEdit) then
        begin
          t_indicinu.Post;
        end;
      end;
      f_export.tables_exportExecute(self);
    end;
    dm_form.tables_modificato := False;
  end;

end;

procedure Tf_work.salva_appvarsExecute(Sender: TObject);
begin
 if mycheck_local and (dm_form.appvar_modificato) then
  begin
    if MessageDlg('Save Application variables changes', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      f_export.appvars_exportExecute(self);
    end;
    dm_form.appvar_modificato := False;
  end
end;

procedure Tf_work.salva_labelsExecute(Sender: TObject);
begin

  if mycheck_local then
  begin
    if MessageDlg('Save Labels changes?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      f_export.labels_export.Execute
    end;
    dm_form.labels_modificato := False;
  end
end;


procedure Tf_work.filtroExecute(Sender: TObject);
begin
  f_find.ShowModal;
//  panel_filtro_table.Visible:=True
end;


procedure Tf_work.crea_azioni_default_view(Sender: TObject; vista: string;
  insert, post, delete, undo, livello1: Boolean);
begin
  //
  with dm_form do
  begin
     if (insert) and (t_azioni.Lookup('azione', vista + '_insert', 'azione')= null) then
     begin
      t_azioni.Insert;
      t_azioniazione.Value:= vista + '_insert';
      t_azioni.Post;
      t_operazioni.Insert;
      t_operazionioperazione.Value:='Recordset';
      t_operazionio2ref.Value:=chr(127) + vista + '::Prepare insert';
      t_operazioni.Post ;

      // aggiorna supertree

      nodo_temp1 := supertree.Items.AddChild(nodo_azioni_all, t_azioniazione.Value);
      nodo_temp1.ImageIndex := 29;
      nodo_temp1.SelectedIndex := 29;
      if livello1 then
      begin
        nodo_temp1 := supertree.Items.AddChild(nodo_azioni, t_azioniazione.Value);
        nodo_temp1.ImageIndex := 29;
        nodo_temp1.SelectedIndex := 29;
      end;
     end;

     if (post) and (t_azioni.Lookup('azione', vista + '_post', 'azione')= null) then
     begin

      t_azioni.Insert;
      t_azioniazione.Value:=vista + '_post';
      t_azioni.Post;
      t_operazioni.Insert;
      t_operazionioperazione.Value:='Recordset';
      t_operazionio2ref.Value:=chr(127) + vista + '::Post row';
      t_operazioni.Post ;

      // aggiorna supertree

      nodo_temp1 := supertree.Items.AddChild(nodo_azioni_all, t_azioniazione.Value);
      nodo_temp1.ImageIndex := 29;
      nodo_temp1.SelectedIndex := 29;
      if livello1 then
      begin
        nodo_temp1 := supertree.Items.AddChild(nodo_azioni, t_azioniazione.Value);
        nodo_temp1.ImageIndex := 29;
        nodo_temp1.SelectedIndex := 29;
      end;

     end;

     if (delete) and (t_azioni.Lookup('azione', vista + '_delete', 'azione')= null) then
     begin
      t_azioni.Insert;
      t_azioniazione.Value := vista + '_delete';
      t_azioni.Post;
      t_operazioni.Insert;
      t_operazionioperazione.Value:='Recordset';
      t_operazionio2ref.Value:=chr(127) + vista + '::Delete row';
      t_operazioni.Post ;

      // aggiorna supertree

      nodo_temp1 := supertree.Items.AddChild(nodo_azioni_all, t_azioniazione.Value);
      nodo_temp1.ImageIndex := 29;
      nodo_temp1.SelectedIndex := 29;
      if livello1 then
      begin
        nodo_temp1 := supertree.Items.AddChild(nodo_azioni, t_azioniazione.Value);
        nodo_temp1.ImageIndex := 29;
        nodo_temp1.SelectedIndex := 29;
      end;

     end;


     if (undo) and (t_azioni.Lookup('azione', vista + '_undo', 'azione')= null) then
     begin
      t_azioni.Insert;
      t_azioniazione.Value := vista + '_undo';
      t_azioni.Post;
      t_operazioni.Insert;
      t_operazionioperazione.Value:='Recordset';
      t_operazionio2ref.Value:=chr(127) + vista + '::Undo';
      t_operazioni.Post ;

      // aggiorna supertree

      nodo_temp1 := supertree.Items.AddChild(nodo_azioni_all, t_azioniazione.Value);
      nodo_temp1.ImageIndex := 29;
      nodo_temp1.SelectedIndex := 29;
      if livello1 then
      begin
        nodo_temp1 := supertree.Items.AddChild(nodo_azioni, t_azioniazione.Value);
        nodo_temp1.ImageIndex := 29;
        nodo_temp1.SelectedIndex := 29;
      end;

     end;

  end; //with dmform
end;


{*
 * Try to get a valid Janox runtime path
 *}
function Tf_work.getJanoxRuntime(): String;
var
  jxrnt: String;
begin
  // _____________________________________________ From Builder INI settings ___
  jxrnt := f_work.settings.ReadString('O2_ENV', 'jxrnt', '');
  if (jxrnt <> '') and (not FileExists(jxrnt)) then
  begin
    jxrnt := '';
  end;
  // _____________________________________________ From application settings ___
  if jxrnt = '' then
  begin
    jxrnt := f_work.DBEdit7.Text + '\jxrnt.php';
    jxrnt := stringreplace(jxrnt, '/', '\', [rfReplaceAll]);
    jxrnt := stringreplace(jxrnt, '\\', '\', [rfReplaceAll]);
    if not FileExists(jxrnt) then
    begin
      jxrnt := '';
    end;
  end;
  // _____________________________________ From standard installation folder ___
  if jxrnt = '' then
  begin
    jxrnt := ExtractFileDir(Application.ExeName) + '\..\jxrnt\jxrnt.php';
    if not FileExists(jxrnt) then
    begin
      jxrnt := '';
    end;
  end;
  // ______________________________________________ Can't find Janox runtime ___
  if jxrnt = '' then
  begin
    ShowMessage('Missing Janox runtime: set it in Builder .INI settings.');
  end;
  Result := jxrnt;
end;


{*
 * Executes cross reference for requested element
 *}
procedure Tf_work.Crossreference1Click(Sender: TObject);
begin
  if f_crossref.Showing then
  begin
    f_crossref.Close;
  end;
  f_crossref.Show();
end;


procedure Tf_work.Goup1Click(Sender: TObject);
begin
  dbgrid_modelsDBTableView1.OptionsView.GroupByBox:=
    not(dbgrid_modelsDBTableView1.OptionsView.GroupByBox);
end;


procedure Tf_work.dbgrid_tabelleDBTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  campo_in_grid_tabelle:=(dbgrid_tabelleDBTableView1.Columns[dbgrid_tabelleDBTableView1.Controller.FocusedColumnIndex].DataBinding.FieldName);
end;


procedure Tf_work.Filter1Click(Sender: TObject);
begin
    dbgrid_tabelleDBTableView1.OptionsView.GroupByBox:=
    not(dbgrid_tabelleDBTableView1.OptionsView.GroupByBox);
end;

procedure Tf_work.carica_prgExecute(Sender: TObject; soloincheck : boolean = false);
begin

  dm_form.elenco_prg.EmptyDataSet;
  dm_form.elenco_prg.DisableControls;

  nodo_prg.DeleteChildren;

  //aggiunge eventuali programmi in check mai checkinati
  dm_form.attiva_disattiva_prg(true);

  JvSearchFile1.RootDirectory := userdir;
  JvSearchFile1.Search;

  if not (soloincheck) then
  begin
   //crea i programmi dalla directory globale
   JvSearchFile1.RootDirectory := prgdir;
   JvSearchFile1.Search;
   PageControl1.ActivePage := ts_programs;
  end;
  dm_form.elenco_prg.EnableControls;
  nodo_prg.Expand(false);
  elenco_prg_caricato := true;

end;


procedure Tf_work.carica_singolo_prg(Sender: TObject; nomeprg: string);
var
 nomeprg_local : string;
 id_immagine : integer;
 temp, temp2, temp3 : TTreeNode;
 pos_action:TBookmark;
 elenco_subactions: TStringList;
begin

  // ESPLODE PRG
    //carica il programma selezionato
        //programmi
      if nomeprg <> '' then
      begin
       nomeprg_local:=nomeprg;
       id_immagine:=supertree.Selected.SelectedIndex;
      end
      else
      begin
      // nomeprg_local:=dm_form.t_programminome.Value;
       nomeprg_local:=dm_form.elenco_prgnome.Value;
       if dm_form.t_programmitipo.Value = 'Interface' then id_immagine:=17 else id_immagine:=21;
      end;

      dm_form.attiva_disattiva_prg(True);
      f_import.prg_importExecute(self, nomeprg_local);

      mycheck_local := mycheck(nomeprg_local + '.prg');

      if ( trova_sottonodo(nodo_prg, nomeprg_local) = nil) then
      begin
       nodo_prg_attivo:=supertree.Items.AddChildFirst(nodo_prg, nomeprg_local);
       nodo_prg_attivo.ImageIndex:=id_immagine;
       nodo_prg_attivo.SelectedIndex:=id_immagine;
      end
      else
        nodo_prg_attivo := trova_sottonodo(nodo_prg, nomeprg_local);

      supertree.Selected:=nodo_prg_attivo;

      if supertree.Selected.Text <> '_o2viewmodels' then
      begin
        temp := supertree.Items.AddChild(supertree.Selected, 'Program properties');
        temp.ImageIndex := 1;
        temp.SelectedIndex := 1;

        temp := supertree.Items.AddChild(supertree.Selected, 'Parameters');
        temp.ImageIndex := 13;
        temp.SelectedIndex := 13;

        temp := supertree.Items.AddChild(supertree.Selected, 'Variables');
        temp.ImageIndex := 14;
        temp.SelectedIndex := 14;
      end;

      temp := supertree.Items.AddChild(supertree.Selected, 'Views');
      temp.ImageIndex := 8;
      temp.SelectedIndex := 8;


      //loop sui task
      dm_form.t_task.First;
      while not dm_form.t_task.EOF do
      begin
        temp2 := supertree.Items.AddChild(temp, dm_form.t_tasknome.Value);
        temp2.ImageIndex := 2;
        temp2.SelectedIndex := 2;
        temp3:=supertree.Items.AddChild(temp2, 'View properties');
        temp3.ImageIndex := 1;
        temp3.SelectedIndex := 1;

        dm_form.t_task.Next
      end;


      if supertree.Selected.Text <> '_o2viewmodels' then
      begin
        temp := supertree.Items.AddChild(supertree.Selected, 'Forms');
        temp.ImageIndex := 6;
        temp.SelectedIndex := 6;

        temp := supertree.Items.AddChild(supertree.Selected, 'I/O Files');
        temp.ImageIndex := 22;
        temp.SelectedIndex := 22;


        temp := supertree.Items.AddChild(supertree.Selected, 'Protocols');
        temp.ImageIndex := 18;
        temp.SelectedIndex := 18;



        nodo_azioni := supertree.Items.AddChild(supertree.Selected, 'Actions');
        nodo_azioni.ImageIndex := 5;
        nodo_azioni.SelectedIndex := 5;

        nodo_azioni_all := supertree.Items.AddChild(nodo_azioni, 'all');
        nodo_azioni_all.ImageIndex := 5;
        nodo_azioni_all.SelectedIndex := 5;


        // carica le azioni
        elenco_subactions:=TStringList.Create;
        with dm_form do
        begin
          t_azioni.First;
          while not (t_azioni.EOF) do
          begin
            if (azionediprimolivello(t_azioniazione.Value)) then
            begin
               temp2 := supertree.Items.AddChild(nodo_azioni, t_azioniazione.AsString);
               temp2.ImageIndex := 29;
               temp2.SelectedIndex := 29;

               // genera albero delle subaction
              try
               dm_form.t_operazioni.Filter:='operazione = '+chr(39)+'Execute action'+chr(39);
               dm_form.t_operazioni.Filtered:=true;

               elenco_subactions.Clear;
               pos_action:=t_azioni.GetBookmark;

               creatreesubaction(temp2, t_azioniazione.Value, elenco_subactions);
               finally
                dm_form.t_operazioni.Filter := '';
                dm_form.t_operazioni.Filtered := false;
                t_azioni.GotoBookmark(pos_action);
               end;
            end ;

               temp2 := supertree.Items.AddChild(nodo_azioni_all, t_azioniazione.AsString);
               temp2.ImageIndex:=29;
               temp2.SelectedIndex:=29;
            t_azioni.Next
          end;

        end;
      end;
      temp := supertree.Items.AddChild(supertree.Selected, 'Expressions');
      temp.ImageIndex := 16;
      temp.SelectedIndex := 16;

      //apre il ramo del programma
      supertree.Selected.Expand(False);

      //azzera variabili del programma
      ultima_form := '';
      PageControl1.ActivePage := ts_programmi;
      PageControl2.ActivePage := ts_prg_prop;

      // _________________________________________________________ Set menus ___
      Checkprogram1.Enabled := true;
      refresh_bottoni_check(self);


end;


procedure Tf_work.Zoom25Click(Sender: TObject);
begin
  carica_singolo_prg(Self);
end;


function Tf_work.decodifica_datatype(datatype, tabella,
  field: string): string;
var
 tabella_local_id : integer;
begin

if (datatype = '') then
  begin
    // variabile di applicazione
    if tabella = '_o2SESSION' then datatype:=dm_form.t_variabili_app.Lookup('alias', field, 'tipo')
    else
      // variabile di programma
      if tabella = 'prg§_§var' then datatype:=dm_form.t_variabili_prg.Lookup('alias', field, 'picture')
      else
        // variabile di view
        begin

          dm_form.t_tabelle.Locate('Nome', tabella, []);
          tabella_local_id:= dm_form.t_tabelleId.Value;
          datatype:= dm_form.t_campi.Lookup('id_tabella;nomecampo', VarArrayOf([tabella_local_id, field]),'picture');

        end;

   end;
 Result:= datatype +' - ' + dm_form.t_modelli.Lookup('idmodello', datatype, 'tipo_dato') + '(' + dm_form.t_modelli.Lookup('idmodello', datatype, 'maschera') +')'

end;

procedure Tf_work.dbgrid_programmiEnter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_programmi;
end;



function Tf_work.determina_alias_select(nomecampo: string): string;
var
 alias_assegnato, alias_trovato: string;
 progr : integer;
begin

 // assegnazione alias campo
          alias_assegnato := nomecampo;
          alias_trovato := '';
          progr := 0;

          repeat

            if dm_form.t_select.Lookup('con_nome', alias_assegnato, 'con_nome') =
              null then alias_trovato := 'S'
              else
              //trovato copia
              begin
               Inc(progr);
               alias_assegnato := nomecampo  + IntToStr(progr);
              end;

          until alias_trovato = 'S';

          Result:=alias_assegnato;

end;

procedure Tf_work.nuova_azione_prg(nome: string; livello1: Boolean);
begin
    //
    with dm_form do
    begin
        t_azioni.Insert;
        t_azioniprg.Value:=t_programminome.Value;
        t_azioniazione.Value:=nome;
        t_azioni.Post;

         // aggiorna supertree
        nodo_temp1 := supertree.Items.AddChild(nodo_azioni_all, nome);
        nodo_temp1.ImageIndex := 29;
        nodo_temp1.SelectedIndex := 29;

        if livello1 then
        begin
          // aggiorna supertree
          nodo_temp1 := supertree.Items.AddChild(nodo_azioni, nome);
          nodo_temp1.ImageIndex := 29;
          nodo_temp1.SelectedIndex := 29;
        end

    end;
end;


procedure Tf_work.creatreesubaction(nodosel: TTreeNode; azione: string; elenco_azioni:TStringList);
var
 temp, CurItem : TTreeNode;
 nomesubaction :  string;
 i, n : integer;
 trovato_azione_in_parent:Boolean;
 pos_action, pos_operation:TBookmark;

begin

    // va a ricercare eventuali subaction
    dm_form.t_azioni.Locate('azione', azione,[]);
 //   ShowMessage('Azione:'+azione);
//    ShowMessage('Subactions:'+elenco_azioni.Text);
    dm_form.t_operazioni.First;
    while not (dm_form.t_operazioni.Eof) do
    begin
        nomesubaction := ExtractWord(1, dm_form.t_operazionio2ref.Value, [':']);

        if (elenco_azioni.IndexOf(nomesubaction)= -1 ) then
        begin

        temp := supertree.Items.AddChild(nodosel, nomesubaction);
        temp.ImageIndex := 29;
        temp.SelectedIndex := 29;
        elenco_azioni.Append(nomesubaction);
        pos_action:=dm_form.t_azioni.GetBookmark;
        pos_operation:=dm_form.t_operazioni.GetBookmark;

        creatreesubaction(temp, nomesubaction, elenco_azioni);
        dm_form.t_azioni.GotoBookmark(pos_action);
        dm_form.t_operazioni.GotoBookmark(pos_operation);
        end;

         dm_form.t_operazioni.Next;
  end;
end;

procedure Tf_work.call_mask_def(tipodato: string);
begin
   f_wizmask.alpha.Visible      := (tipodato = 'Alpha');
   f_wizmask.number.Visible     := (tipodato = 'Number');
   f_wizmask.date.Visible       := (tipodato = 'Date');
   f_wizmask.time.Visible       := (tipodato = 'Time');
   f_wizmask.structured.Visible := (tipodato = 'Structured');
   f_wizmask.logical.Visible    := (tipodato = 'Logical');
   f_wizmask.ShowModal;
end;


function Tf_work.call_scelta_azione(azione, nome_task, dir_task,
  expfine: string; abilita_esegui_in_batch: boolean): String;
begin
   f_sceltaazione.p_azione:=azione;
   f_sceltaazione.p_nome_task:=nome_task;
   f_sceltaazione.p_dir_task:=dir_task;
   f_sceltaazione.p_expfine:=expfine;
   f_sceltaazione.abilita_esegui_in_batch:=abilita_esegui_in_batch;


   f_sceltaazione.ShowModal;

   if f_sceltaazione.ModalResult = mrOk then
    begin
      if f_sceltaazione.ListView1.Selected = nil then
      begin
        Result := ''
      end
      else
      begin
        Result := f_sceltaazione.ListView1.Selected.Caption
      end;

    end;
end;

function Tf_work.call_scelta_exp(idexp: integer): Integer;
begin
  dm_form.t_espressioni.Locate('idexp', idexp, []);
  f_sceltaexpr.ShowModal;
  if f_sceltaexpr.ModalResult = mrOk then
   Result:=dm_form.t_espressioniidexp.Value
    else Result:=0;

end;

procedure Tf_work.supertreeChange(Sender: TObject; Node: TTreeNode);
begin
  if supertree.Selected <> nil then
  begin
    // abilita la cancellazione DAL supertree (F3) solo in alcuni casi
    if (supertree.Selected.Parent = nodo_prg) or
       (supertree.Selected.HasAsParent(nodo_prg) and
       ((supertree.Selected.Parent.Text = 'Views') or
        (supertree.Selected.Parent = nodo_azioni_all))) then
    begin
      Delete1.Enabled := true;
    end
    else
    begin
      Delete1.Enabled := false;
    end;
  end;
end;

procedure Tf_work.eliminasubitemtree(Nodo: TTreeNode;
  Nododaaliminare: string);
var
  i: integer;
  tmp_nodo: TTreeNode;
begin
  try
  if (Nodo.HasChildren) then
  begin
    for i:= 1 to Nodo.Count do
     begin
       if (i = 1) then
       tmp_nodo:= Nodo.getFirstChild()
       else
       tmp_nodo:= Nodo.GetNextChild(tmp_nodo);

       if (tmp_nodo <> nil) and (tmp_nodo.Text = Nododaaliminare) then
        begin
            tmp_nodo.Delete;
            Break;
        end;

     end;
   end;
   finally
   end;
end;

function Tf_work.call_scelta_modello(modello: string): String;
begin
    f_sceltamodel.vreturn:=modello;
    f_sceltamodel.ShowModal;
    if f_sceltamodel.ModalResult = mrOk then
    begin
      Result:=dm_form.t_modelliidmodello.Value;
    end
    else
      Result:=modello;
end;


{**
 * Method used to call the selection interface from within the program (fields,
 * views, parameters, ...).
 *}
function Tf_work.call_scelta_campoprg(valore : string;
                                      appvars,
                                      params,
                                      prgvars,
                                      selects: boolean;
                                      singolaview: string) : String;
begin
  f_sceltacampiprg.scelta           := valore;
  f_sceltacampiprg.appvars          := appvars;
  f_sceltacampiprg.params           := params;
  f_sceltacampiprg.singola_view     := singolaview;
  f_sceltacampiprg.prgvars          := prgvars;
  f_sceltacampiprg.selects          := selects;
  f_sceltacampiprg.ShowModal;
  // ___________________________________________________ Process form result ___
  if f_sceltacampiprg.ModalResult = mrOk then
  begin
    Result := f_sceltacampiprg.scelta;
  end;
end;


{**
 * Reset upgrading of controls related to dataset.
 * Method is called to reset dataset related controls after calling
 * disabilitaTableRepExecute.
 *}
procedure Tf_work.abilitaTableRepExecute(Sender: TObject);
begin
  dm_form.t_tabelle.BlockReadSize       := 0;
  dm_form.t_campi.BlockReadSize         := 0;
  dm_form.t_indicitesta.BlockReadSize   := 0;
  dm_form.t_indici.BlockReadSize        := 0;
  dm_form.t_indicitestanu.BlockReadSize := 0;
  dm_form.t_indicinu.BlockReadSize      := 0;
end;


{**
 * Disables upgrading of controls related to dataset.
 * Useful to process dataset quickly, without upgrading related dbgrid.
 *}
procedure Tf_work.disabilitaTableRepExecute(Sender: TObject);
begin
  dm_form.t_tabelle.BlockReadSize       := 999999;
  dm_form.t_campi.BlockReadSize         := 99999999;
  dm_form.t_indicitesta.BlockReadSize   := 999999;
  dm_form.t_indici.BlockReadSize        := 999999;
  dm_form.t_indicitestanu.BlockReadSize := 999999;
  dm_form.t_indicinu.BlockReadSize      := 999999;
end;


procedure Tf_work.bt_copyactClick(Sender: TObject);
var
  nomenewaction: string;
begin

       with dm_form do
       try
          da_Refresh:=True;
          t_operazioni.DisableControls;
          t_ope_x_copia.EmptyDataSet;
          nomenewaction:=new_actionExecute(self);
          if nomenewaction <> '' then
          begin
            t_operazioni.First;
            while not t_operazioni.Eof do
            begin
                t_ope_x_copia.Insert;
                t_ope_x_copiaprg.Value:=t_programminome.Value;
                t_ope_x_copiaazione.Value:=nomenewaction;
                t_ope_x_copiaid.Value:=t_operazioniid.Value;
                t_ope_x_copiaoperazione.Value:=t_operazionioperazione.Value;
                t_ope_x_copiacallparam.Value:=t_operazionicallparam.Value;
                t_ope_x_copiaexp1.Value:=t_operazioniexp1.Value;
                t_ope_x_copiaexp2.Value:=t_operazioniexp2.Value;
                t_ope_x_copiaexp3.Value:=t_operazioniexp3.Value;
                t_ope_x_copiao2ref.Value:=t_operazionio2ref.Value;
                t_ope_x_copiadeferred.Value:=t_operazionideferred.Value;
                t_ope_x_copiatipologia.Value:=t_operazionitipologia.Value;
                t_ope_x_copiaservice.Value:=t_operazioniservice.Value;
                t_ope_x_copia.Post;

                t_operazioni.Next;
            end;

            // ora ricopia su effettiva
            t_operazioni.Locate('azione',nomenewaction,[]);
            t_ope_x_copia.First;
            while not t_ope_x_copia.Eof do
            begin
                t_operazioni.Insert;
                t_operazioniprg.Value:=t_programminome.Value;
                t_operazioniazione.Value:=t_ope_x_copiaazione.Value;
                t_operazioniid.Value:=t_ope_x_copiaid.Value;
                t_operazionioperazione.Value:=t_ope_x_copiaoperazione.Value;
                t_operazionicallparam.Value:=t_ope_x_copiacallparam.Value;
                t_operazioniexp1.Value:=t_ope_x_copiaexp1.Value;
                t_operazioniexp2.Value:=t_ope_x_copiaexp2.Value;
                t_operazioniexp3.Value:=t_ope_x_copiaexp3.Value;
                t_operazionio2ref.Value:=t_ope_x_copiao2ref.Value;
                t_operazionideferred.Value:=t_ope_x_copiadeferred.Value;
                t_operazionitipologia.Value:=t_ope_x_copiatipologia.Value;
                t_operazioniservice.Value:=t_ope_x_copiaservice.Value;
                t_operazioni.Post;

                t_ope_x_copia.Next;
            end;

         end;
       finally
       t_operazioni.EnableControls;
       da_Refresh:=false;
       end;

end;

procedure Tf_work.abilitaprgtabExecute(Sender: TObject);
begin
      with dm_form do
      begin
  {    t_programmi.BlockReadSize:=0;
      t_task.BlockReadSize:=0;
      t_select.BlockReadSize:=0;
      t_usa_file.BlockReadSize:=0;
      t_union.BlockReadSize:=0;
      t_azioni.BlockReadSize:=0;
      t_operazioni.BlockReadSize:=0;
      t_espressioni.BlockReadSize:=0;
      t_aggreg.BlockReadSize:=0;
      t_variabili_prg.BlockReadSize:=0;
      t_parametri.BlockReadSize:=0;
      t_form.BlockReadSize:=0;
      t_controlliform.BlockReadSize:=0;
      t_input_output.BlockReadSize:=0;
      t_report.BlockReadSize:=0;
      t_reportfield.BlockReadSize:=0;

      t_task.enablecontrols;
      t_select.enablecontrols;
      t_usa_file.enablecontrols;
      t_union.enablecontrols;
      t_azioni.enablecontrols;
      t_operazioni.enablecontrols;
      t_espressioni.enablecontrols;
      t_aggreg.enablecontrols;
      t_variabili_prg.enablecontrols;
      t_parametri.enablecontrols;
      t_form.enablecontrols;
      t_controlliform.enablecontrols;
      t_input_output.enablecontrols;
      t_report.enablecontrols;
      t_reportfield.enablecontrols;
                                    }

      end;
end;

procedure Tf_work.disabilitaprgtabExecute(Sender: TObject);
begin
 with dm_form do
      begin
{      t_programmi.BlockReadSize:=999999;
      t_task.BlockReadSize:=999999;
      t_select.BlockReadSize:=999999;
      t_usa_file.BlockReadSize:=999999;
      t_union.BlockReadSize:=999999;
      t_azioni.BlockReadSize:=999999;
      t_operazioni.BlockReadSize:=999999;
      t_espressioni.BlockReadSize:=999999;
      t_aggreg.BlockReadSize:=999999;
      t_variabili_prg.BlockReadSize:=999999;
      t_parametri.BlockReadSize:=999999;
      t_form.BlockReadSize:=999999;
      t_controlliform.BlockReadSize:=999999;
      t_input_output.BlockReadSize:=999999;
      t_report.BlockReadSize:=999999;
      t_reportfield.BlockReadSize:=999999;

      t_task.DisableControls;
      t_select.DisableControls;
      t_usa_file.DisableControls;
      t_union.DisableControls;
      t_azioni.DisableControls;
      t_operazioni.DisableControls;
      t_espressioni.DisableControls;
      t_aggreg.DisableControls;
      t_variabili_prg.DisableControls;
      t_parametri.DisableControls;
      t_form.DisableControls;
      t_controlliform.DisableControls;
      t_input_output.DisableControls;
      t_report.DisableControls;
      t_reportfield.DisableControls;

      }
      end;
end;


function Tf_work.azionediprimolivello(azione: string): Boolean;
begin
  try
    Result:=false;

    with dm_form do
    begin
      if (t_programmiref.Value = azione) then
      begin
        Result:=true;
        Exit;
      end;
      // _____________________________________ View prefix or suffix actions ___
      t_task.Filter   := 'recordprefix=' + #39 + azione + #39 +
                         ' or recordsufix=' + #39 + azione + #39;
      t_task.Filtered := true;
      if (t_task.RecordCount > 0) then
      begin
        t_task.Filtered := false;
        Result          := true;
        Exit;
      end;
      t_task.Filtered := false;
      // _____________________________________ Form close or refresh actions ___
      t_form.DisableControls;
      t_form.Filter   := 'closeclick_action=' + #39 + azione + #39 +
                         ' or refresh_action=' + #39 + azione + #39;
      t_form.Filtered := true;
      if not(t_form.IsEmpty) then
      begin
        t_form.Filtered := false;
        Result          := true;
        t_form.EnableControls;
        Exit;
      end;
      t_form.Filtered := false;
      // _________________________________ Controls submit and other actions ___
      t_controlliform.MasterSource := nil;
      t_controlliform.Filter       := 'azione=' + #39 + azione + #39 +
                                      ' or SelectAction=' + #39 + azione + #39 +
                                      ' or DeleteAction=' + #39 + azione + #39 +
                                      ' or PostAction=' + #39 + azione + #39 +
                                      ' or UndoAction=' + #39 + azione + #39 +
                                      ' or DetailAction=' + #39 + azione + #39 +
                                      ' or InsertAction=' + #39 + azione + #39 +
                                      ' or (Tipo=' + #39 + 'imglist' + #39 +
                                      ' and Extra2=' + #39 + azione + #39 + ')'+
                                      ' or (Tipo=' + #39 + 'progress' + #39 +
                                      ' and Extra2=' + #39 + azione + #39 + ')';
      t_controlliform.Filtered     := true;
      if (t_controlliform.RecordCount > 0) then
      begin
        t_controlliform.Filtered     := false;
        t_controlliform.MasterSource := ds_form;
        Result                       := true;
        Exit;
      end;
    end;
  finally
    dm_form.t_controlliform.MasterSource := dm_form.ds_form;
    dm_form.t_controlliform.Filtered     := false;
    dm_form.t_task.Filtered              := false;
    dm_form.t_form.Filtered              := false;
    dm_form.t_form.EnableControls;
  end;
end;


procedure Tf_work.dbgrid_operazioniKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key <> chr(9)) and (Key <> chr(27)) then
  begin
    // ______ Attempting to write Call-prg params-exp: call params interface ___
    If (dbgrid_operazioni.SelectedIndex = 3) and
       (dm_form.t_operazionioperazione.Value = 'Call program') then
    begin
      Zoom20.Click;
    end;
  end;
end;


procedure Tf_work.ts_tabelleEnter(Sender: TObject);
begin
  dbgrid_tabelle.SetFocus
end;

{*
 * Create main work window
 *}
procedure Tf_work.FormCreate(Sender: TObject);
begin
   // _______________________ Main form is created unvisible to splash login ___
   PageControl1.Visible := False;
end;


procedure Tf_work.bt_refreshClick(Sender: TObject);
begin
  nodo_prg_attivo    := nil;
  supertree.Selected := nil;
  carica_prgExecute(self, false);
end;


{*
 * Ask for rows to move and call rows moving in table
 *}
procedure Tf_work.Moverow1Click(Sender: TObject);
begin
    // ____________________________________________________ Ask rows to move ___
    f_copymove.Caption := 'Select rows to move';
    f_copymove.ShowModal();
    if (f_copymove.ModalResult = mrOk) and
       (f_copymove.move_da.Text <> '') and
       (f_copymove.move_a.Text <> '') and
       (strtoint(f_copymove.move_da.Text) <= strtoint(f_copymove.move_a.Text))
    then begin
    // __________________ If in insert mode then cancel insert and move rows ___
    if dm_form.t_tabelle.State = dsInsert then
    begin
      dm_form.t_tabelle.Cancel;
    end;
    with dm_form do
    begin
      {   t_tabelle.DisableControls;
          t_campi.MasterSource:=nil;
          t_campi.DisableControls;
          t_indicitesta.MasterSource:=nil;
          t_indicitesta.DisableControls;
          t_indici.DisableControls;
          t_indici.MasterSource:=nil;
       }
      muovi_tabella(dm_form.t_tabelleId.Value,
                  StrToInt(f_copymove.move_da.Text),
                  StrToInt(f_copymove.move_a.Text));
        {
          t_tabelle.EnableControls;
          t_campi.MasterSource:=ds_tabelle;
          t_campi.Filtered:=false;
          t_campi.EnableControls;
          t_indicitesta.MasterSource:=ds_tabelle;
          t_indicitesta.Filtered:=false;
          t_indicitesta.EnableControls;
          t_indici.MasterSource:=ds_indicitesta;
          t_indici.Filtered:=false;
          t_indici.EnableControls;
         }
    end;
    f_copymove.move_da.Text := '';
    f_copymove.move_a.Text  := '';
  end;
end;


{*
 * Move rows in table
 *}
procedure Tf_work.muovi_tabella(posizione_inizio, muovi_da, muovi_a: integer);
var
  i, n, start: integer;
begin
  // _____________________________ Move rows to be moved to the end of table ___
  for i := muovi_da to muovi_a do
  begin
    dm_form.t_tabelle.Locate('id', i, []);
    dm_form.t_tabelle.Edit;
    dm_form.t_tabelleId.Text := inttostr(10000 + i);
  end;
  // __________________________________________________ If rows are moved up ___
  if posizione_inizio < muovi_da then
  begin
    // ___________________________________________________ Select moved rows ___
    dm_form.t_tabelle.Filter   := 'id < 10000';
    dm_form.t_tabelle.Filtered := True;
    dm_form.t_tabelle.Locate('id', muovi_da - 1, []);
    for i := 1 to (Abs(muovi_da - posizione_inizio) - 1) do
    begin
      dm_form.t_tabelle.Edit;
      // ____________________________________________ Assign new position ID ___
      dm_form.t_tabelleId.Text := IntToStr(dm_form.t_tabelleId.Value +
                                           Abs(muovi_da - muovi_a) + 1);
      dm_form.t_tabelle.Prior;
    end;
  end
  // ________________________________________________ If rows are moved down ___
  else
  begin
    dm_form.t_tabelle.Locate('id', muovi_a + 1, []);
    while dm_form.t_tabelleid.Value <= posizione_inizio do
    begin
      dm_form.t_tabelle.Edit;
      // ____________________________________________ Assign new position ID ___
      dm_form.t_tabelleId.Text := inttostr(dm_form.t_tabelleId.Value -
                                           Abs(muovi_da - muovi_a) - 1);
      dm_form.t_tabelle.Next;
    end;
  end;
  // ___________________________________________ Move rows in final position ___
  dm_form.t_tabelle.Filter := 'id > 10000';
  if posizione_inizio > muovi_da then
  begin
    start := posizione_inizio - Abs(muovi_da - muovi_a);
  end
  else
  begin
    start := posizione_inizio + 1;
  end;
  // _________________________________________ Assign new ID to shifted rows ___
  n := 0;
  for i := muovi_da to muovi_a do
  begin
    dm_form.t_tabelle.Locate('id', 10000 + i, []);
    dm_form.t_tabelle.Edit;
    dm_form.t_tabelleId.Text := IntToStr(start + n);
    Inc(n);
  end;
  dm_form.t_tabelle.Filtered := False;
end;


procedure Tf_work.DEBUG1Click(Sender: TObject);
begin
  //
  f_debug.ShowModal;
end;


procedure Tf_work.Openproject1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    apri_progettoExecute(Self)
  end;
end;


procedure Tf_work.dbgrid_varprgExit(Sender: TObject);
begin
if (dm_form.t_variabili_prg.State = dsEdit) or (dm_form.t_variabili_prg.State = dsInsert) then dm_form.t_variabili_prg.Post;
end;


{*
 * Used to resize status-bar
 *}
procedure Tf_work.FormResize(Sender: TObject);
begin
  StatusBar1.Panels[0].Width := StatusBar1.Canvas.TextWidth(
                                               StatusBar1.Panels[0].Text ) + 20;
  StatusBar1.Panels[1].Width := StatusBar1.Width -
                                StatusBar1.Panels[0].Width -
                                StatusBar1.Canvas.TextWidth(
                                                StatusBar1.Panels[2].Text) - 30;
end;

procedure Tf_work.Remove1Click(Sender: TObject);
begin
  if list_recent.Selected <> nil then
  begin
    list_recent.Items.Delete(list_recent.Selected.Index);
  end;
end;

procedure Tf_work.Zoom20Click(Sender: TObject);
var
  nomeview_local: string;
  i, exp_local: integer;
begin
  if (dbgrid_operazioni.SelectedField.FieldName = 'operazione_look') or
     (dbgrid_operazioni.SelectedField.FieldName = 'o2ref_wide') then
  begin
    operazioni_open.Execute;
    Exit;
  end;

  //parametri
  if dbgrid_operazioni.SelectedField.FieldName = 'exp1' then
  begin
    // call/goto program
    if (dm_form.t_operazionioperazione.Value = 'Call program') or
       ((dm_form.t_operazionioperazione.Value = 'Go to') and
        (dm_form.t_operazionitipologia.Value = 'program')) then
    begin
      if FileExists(userdir + dm_form.t_operazionio2ref.Value + '.prg') then
      begin
        f_parametri.prg_da_chiamare := userdir +
                                       dm_form.t_operazionio2ref.Value;
      end
      else
      begin
         f_parametri.prg_da_chiamare := prgdir +
                                        dm_form.t_operazionio2ref.Value;
      end;
      f_parametri.ShowModal;
      if f_parametri.ModalResult = mrOk then
      begin
        if not(dm_form.t_operazioni.ReadOnly) then
        begin
          dm_form.t_operazioni.Edit;
          dm_form.t_operazionicallparam.Value := f_parametri.ResParsText.Text;
          dm_form.t_operazioniexp3.Value      := f_parametri.ResParsCount;
          dm_form.t_operazioniexp1.ReadOnly   := False;
          dm_form.t_operazioniexp1.Value      := f_parametri.ResParsCount;
        end;
      end;
    end;
    // locate
    if (dm_form.t_operazionioperazione.Value = 'Recordset') and
       (PosEx('::Locate', dm_form.t_operazionio2ref.Value, 1) <> 0) then
    begin
      nomeview_local := dm_form.t_operazioniview_calc.Value;
      dm_form.t_task.Locate('nome', nomeview_local, []);
      f_locate.locate_def := dm_form.t_operazionicallparam.Value;
      f_locate.ShowModal;
      if f_locate.ModalResult = mrOk then
      begin
        dm_form.t_operazioni.Edit;
        dm_form.t_operazionicallparam.Value := f_locate.locate_def;
        dm_form.t_operazioniexp1.Value      := StrStrCount(f_locate.locate_def, '=>');
      end;

    end;  //fine recordset

    //per gli altri chiama scelta espressioni
    if (dm_form.t_operazionioperazione.Value <> 'Recordset') and
       (dm_form.t_operazionioperazione.Value <> 'Call program') and
       ((dm_form.t_operazionioperazione.Value <> 'Go to') or
        (dm_form.t_operazionitipologia.Value = 'url')) then
    begin
      exp_local := call_scelta_exp(0);
      if exp_local <> 0 then
      begin
        dm_form.t_operazioni.Edit;
        dm_form.t_operazioniexp1.Value := exp_local;
      end;
    end;

  end;    //fine exp1

  if (dbgrid_operazioni.SelectedField.FieldName = 'exp2') then
  begin
    exp_local:=call_scelta_exp(0);
    if exp_local <> 0 then
    begin
      dm_form.t_operazioni.Edit;
      dm_form.t_operazioniexp2.Value := exp_local;
    end;

  end;    //fine exp2

end;

procedure Tf_work.tree_menuExpanded(Sender: TObject; Node: TTreeNode);
begin
  Node.ImageIndex    := 1;
  Node.SelectedIndex := 1;
end;

procedure Tf_work.tree_menuCollapsed(Sender: TObject; Node: TTreeNode);
begin
  Node.ImageIndex    := 0;
  Node.SelectedIndex := 0;
end;


procedure Tf_work.DBGrid_dbfileCellClick(Sender: TObject; Column: TVolgaColumn);
begin
  DBGrid_dbfileCellSelect();
end;


procedure Tf_work.DBGrid_dbfileKeyUp(Sender: TObject;
                                     var Key: Word;
                                     Shift: TShiftState);
begin
  if Ord(Key) < 48 then
  begin
    DBGrid_dbfileCellSelect();
  end;
end;


procedure Tf_work.DBGrid_dbfileCellSelect();
begin
  if dm_form.t_usa_filetipo.Value = 'Link' then
  begin
    Label25.Visible      := True;
    dbgrid_union.Visible := True;
  end
  else
  begin
    Label25.Visible      := False;
    dbgrid_union.Visible := False;
  end;
end;


procedure Tf_work.LogProjectLoad(LoadItem: String = ''; Progress: Integer = 0);
var
  MsgTxt: String;
begin
  if LoadItem <> '' then
  begin
    LogPanel.Visible   := True;
    MsgTxt := 'Loading project "' + progetto + '". Please wait...' + #13#10 +
              LoadItem + '...';
    if Progress > 0 then
    begin
      MsgTxt := MsgTxt + ' ' + IntToStr(Progress) + ' elements loaded';
    end;
    LoadingLog.Caption := MsgTxt;
    LogPanel.Repaint;
  end
  else
  begin
    LoadingLog.Caption := '';
    LogPanel.Visible   := False;
    LogPanel.Repaint;
  end;
end;

procedure Tf_work.dbgrid_formCellClick(Column: TColumn);
begin
  // __________ Allow design forms visibility switching in a not checked prg ___
  if Column.FieldName <> 'tmpselez' then
  begin
    dm_form.t_form.ReadOnly := dm_form.t_task.ReadOnly;
  end
  else
  begin
    dbgrid_form.SelectedIndex := 0;
  end;
end;

procedure Tf_work.dbgrid_formColEnter(Sender: TObject);
begin
  // __________ Allow design forms visibility switching in a not checked prg ___
  dm_form.t_form.ReadOnly := false;
end;

procedure Tf_work.dbgrid_notuniqueEnter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_indicitestanu;
end;

procedure Tf_work.dbgrid_segmentinuEnter(Sender: TObject);
begin
  dbnav.DataSource := dm_form.ds_indicinu;
end;

function Tf_work.FileToMD5(FName: String): String;
var
  md5 : TIdHashMessageDigest5;
  fs  : TFileStream;
begin
  md5 := TIdHashMessageDigest5.Create;
  fs  := TFileStream.Create(FName, fmOpenRead OR fmShareDenyWrite) ;
  try
    result := md5.AsHex(md5.HashValue(fs)) ;
  finally
    fs.Free;
    md5.Free;
  end;
end;


{*
 * Check cached file existance and consistency (by MD5 hashing)
 *
 * @param  String  FName
 * @param  String  RepName
 * @param  Boolean userVersion
 * @return Boolean
 *}
function Tf_work.CheckCache(FName: String;
                            RepName: String;
                            userVersion: Boolean): Boolean;
var
  F: TextFile;
  prg, prf, prgH, prfH, cf, hf: String;
begin
  // _______________________________________________________________ Program ___
  if RepName = '' then
  begin
    // ________________________________________________________ User version ___
    if userVersion then
    begin
      prg := userdir + FName + '.prg';
      prf := userdir + FName + '.prf';
      cf  := userdir + '__source__\' + FName + '\program.cds';
      hf  := userdir + '__source__\' + FName + '\program.md5';
    end
    // ______________________________________________________ Global version ___
    else
    begin
      prg := prgdir + FName + '.prg';
      prf := prgdir + FName + '.prf';
      cf  := prgdir + '__source__\' + FName + '\program.cds';
      hf  := prgdir + '__source__\' + FName + '\program.md5';
    end;
    // ______________________________________ Cached file and MD5 hash found ___
    if FileExists(cf) and FileExists(hf) then
    begin
      AssignFile(F, hf);
      Reset(F);
      ReadLn(F, prgH);
      ReadLn(F, prfH);
      CloseFile(F);
      // ________________________________________________ Check MD5 matching ___
      if (prgH = FileToMD5(prg)) and (prfH = FileToMD5(prf)) then
      begin
        Result := True;
      end
      else
      begin
        Result := False;
      end;
    end
    else
    begin
      Result := False;
    end;
  end
  // ____________________________________________________ Other repositories ___
  else
  begin
    // ________________________________________________________ User version ___
    if userVersion then
    begin
      prg := userdir + FName;
      cf  := userdir + '__source__\' + RepName + '.cache';
      hf  := userdir + '__source__\' + RepName + '.md5';
    end
    // ______________________________________________________ Global version ___
    else
    begin
      prg := prgdir + FName;
      cf  := prgdir + '__source__\' + RepName + '.cache';
      hf  := prgdir + '__source__\' + RepName + '.md5';
    end;
    // ______________________________________ Cached file and MD5 hash found ___
    if FileExists(cf) and FileExists(hf) then
    begin
      AssignFile(F, hf);
      Reset(F);
      ReadLn(F, prgH);
      CloseFile(F);
      // ________________________________________________ Check MD5 matching ___
      if prgH = FileToMD5(prg) then
      begin
        Result := True;
      end
      else
      begin
        Result := False;
      end;
    end
    else
    begin
      Result := False;
    end;
  end;

end;


procedure Tf_work.WriteFileMD5(FName: String;
                               RepName: String;
                               userVersion: Boolean);
var
  F: TextFile;
  prg, prf, prgH, prfH, hf: String;
begin
  // _______________________________________________________________ Program ___
  if RepName = '' then
  begin
    // ________________________________________________________ User version ___
    if userVersion then
    begin
      prg := userdir + FName + '.prg';
      prf := userdir + FName + '.prf';
      hf  := userdir + '__source__\' + FName + '\program.md5';
    end
    // ______________________________________________________ Global version ___
    else
    begin
      prg := prgdir + FName + '.prg';
      prf := prgdir + FName + '.prf';
      hf  := prgdir + '__source__\' + FName + '\program.md5';
    end;
    // _________________________________________________ Write MD5 hash file ___
    AssignFile(F, hf);
    Rewrite(F);
    WriteLn(F, FileToMD5(prg));
    WriteLn(F, FileToMD5(prf));
    CloseFile(F);
  end
  // ____________________________________________________ Other repositories ___
  else
  begin
    // ________________________________________________________ User version ___
    if userVersion then
    begin
      prg := userdir + FName;
      hf  := userdir + '__source__\' + RepName + '.md5';
    end
    // ______________________________________________________ Global version ___
    else
    begin
      prg := prgdir + FName;
      hf  := prgdir + '__source__\' + RepName + '.md5';
    end;
    // _________________________________________________ Write MD5 hash file ___
    AssignFile(F, hf);
    Rewrite(F);
    WriteLn(F, FileToMD5(prg));
    CloseFile(F);
  end;

end;

end.

