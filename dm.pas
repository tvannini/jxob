unit dm;

interface

uses
  SysUtils, Classes, DB, DBTables, DBClient, MidasLib, JclStrings, jbstr,
  ActnList, ActnMan, variants, regexpr, Dialogs, Comctrls;

type
  Tdm_form = class(TDataModule)
    ds_tabelle: TDataSource;
    ds_campi: TDataSource;
    ds_indicitesta: TDataSource;
    ds_indici: TDataSource;
    ds_databases: TDataSource;
    ds_task: TDataSource;
    ds_usa_file: TDataSource;
    ds_select: TDataSource;
    t_tabelle: TClientDataSet;
    t_tabelleId: TIntegerField;
    t_tabelleNome: TStringField;
    t_tabelleNome_fisico: TStringField;
    t_tabelledatabase: TStringField;
    t_tabellechiaveprimaria: TStringField;
    t_tabellematch: TIntegerField;
    t_tabellematchlen: TIntegerField;
    t_campi: TClientDataSet;
    t_campiid_tabella: TIntegerField;
    t_campiid_campo: TIntegerField;
    t_campinomecampo: TStringField;
    t_campidbname: TStringField;
    t_campitipo: TStringField;
    t_campisize: TStringField;
    t_campimatch: TIntegerField;
    t_campimatchlen: TIntegerField;
    t_indicitesta: TClientDataSet;
    t_indicitestaid_tabella: TIntegerField;
    t_indicitestaid_indice: TIntegerField;
    t_indicitestanomekey: TStringField;
    t_indicitestamatch: TIntegerField;
    t_indicitestamatchlen: TIntegerField;
    t_indici: TClientDataSet;
    t_indiciid_tabella: TIntegerField;
    t_indiciid_indice: TIntegerField;
    t_indiciid_segmento: TIntegerField;
    t_indicinomekey: TStringField;
    t_indicisegmento: TStringField;
    t_indicimatch: TIntegerField;
    t_indicimatchlen: TIntegerField;
    t_indicidirezione: TStringField;
    t_databases: TClientDataSet;
    t_databasesnomedb: TStringField;
    t_databasesserver: TStringField;
    t_databasesnomefisicodb: TStringField;
    t_databasesowner: TStringField;
    t_task: TClientDataSet;
    t_taskid: TIntegerField;
    t_tasknome: TStringField;
    t_taskrighevis: TIntegerField;
    t_taskmatchpos: TIntegerField;
    t_usa_file: TClientDataSet;
    t_usa_fileidtask: TIntegerField;
    t_usa_filecon_nome: TStringField;
    t_usa_filetabella: TStringField;
    t_usa_filechiave: TStringField;
    t_select: TClientDataSet;
    t_selectidtask: TIntegerField;
    t_selectidcampo: TIntegerField;
    t_selectcon_nome: TStringField;
    t_selecttabella: TStringField;
    t_selectcampo: TStringField;
    t_servers: TClientDataSet;
    t_serversnomeserver: TStringField;
    t_serverstiposerver: TStringField;
    t_serversnomefisico: TStringField;
    t_serversutente: TStringField;
    t_serverspassword: TStringField;
    ds_servers: TDataSource;
    t_form: TClientDataSet;
    t_formnomeform: TStringField;
    t_formdicitura: TStringField;
    t_formtop: TIntegerField;
    t_formleft: TIntegerField;
    t_formlarghezza: TIntegerField;
    t_formaltezza: TIntegerField;
    ds_form: TDataSource;
    t_controlliform: TClientDataSet;
    t_controlliformnomeform: TStringField;
    t_controlliformtipo: TStringField;
    t_controlliformtop: TIntegerField;
    t_controlliformleft: TIntegerField;
    t_controlliformaltezza: TIntegerField;
    t_controlliformlarghezza: TIntegerField;
    ds_controlliform: TDataSource;
    t_selecttipo: TStringField;
    t_agenti: TClientDataSet;
    t_agentiidtask: TIntegerField;
    t_agentitipoagente: TStringField;
    ds_agenti: TDataSource;
    t_tasktipo: TStringField;
    t_espressioni: TClientDataSet;
    t_espressioniidexp: TIntegerField;
    t_espressioniexpr: TMemoField;
    ds_espressioni: TDataSource;
    t_selectinit: TIntegerField;
    t_selectrangemin: TIntegerField;
    t_selectrangemax: TIntegerField;
    t_selectnot: TIntegerField;
    t_selectlike: TIntegerField;
    t_programmi: TClientDataSet;
    t_programminome: TStringField;
    ds_programmi: TDataSource;
    t_taskprg: TStringField;
    t_usa_fileprg: TStringField;
    t_selectprg: TStringField;
    t_azioni: TClientDataSet;
    t_azioniprg: TStringField;
    t_azioniazione: TStringField;
    ds_azioni: TDataSource;
    t_agentiprg: TStringField;
    t_formprg: TStringField;
    t_controlliformprg: TStringField;
    t_espressioniprg: TStringField;
    t_operazioni: TClientDataSet;
    ds_operazioni: TDataSource;
    t_operazioniprg: TStringField;
    t_operazioniazione: TStringField;
    t_operazioniid: TIntegerField;
    t_operazionioperazione: TStringField;
    t_operazionicallparam: TMemoField;
    t_operazioniexp1: TIntegerField;
    t_operazioniexp2: TIntegerField;
    t_operazioniexp3: TIntegerField;
    t_applicazione: TClientDataSet;
    t_applicazionecss: TStringField;
    t_applicazionepagina_default: TStringField;
    t_applicazionepagina_prima: TStringField;
    t_applicazionepagina_dopo: TStringField;
    ds_applicazione: TDataSource;
    t_usa_filetipo: TStringField;
    t_menu: TClientDataSet;
    t_menutipo: TStringField;
    t_menulabel: TStringField;
    t_menuvalore: TStringField;
    ds_menu: TDataSource;
    t_formtmpselez: TBooleanField;
    t_controlliformvisibile: TIntegerField;
    t_controlliformabilitato: TIntegerField;
    t_controlliformcaption: TStringField;
    t_controlliformriferimento: TStringField;
    t_controlliformazione: TStringField;
    t_controlliformnomecontrollo: TStringField;
    t_taskmodo: TStringField;
    t_espressionireturn: TStringField;
    t_operazionio2ref: TStringField;
    t_azioniexp_fine: TIntegerField;
    t_azionichunk_size: TIntegerField;
    t_azionifine: TStringField;
    t_programmiref: TStringField;
    t_controlliformscelte_possibili: TStringField;
    t_controlliformvocecss: TStringField;
    t_agentitab: TClientDataSet;
    ds_agentitab: TDataSource;
    t_formvisibile: TIntegerField;
    t_applicazionetitolo: TStringField;
    t_applicazionedefault_menu: TStringField;
    t_applicazionepagina_loginfailed: TStringField;
    t_agenticonnome: TStringField;
    t_menuposizione: TIntegerField;
    t_menuid: TStringField;
    t_menuid_padre: TStringField;
    ds_variabili_prg: TDataSource;
    t_applicazioneo2_alias: TStringField;
    ds_variabili_app: TDataSource;
    t_variabili_prg: TClientDataSet;
    t_variabili_prgprg: TStringField;
    t_variabili_prgalias: TStringField;
    t_variabili_app: TClientDataSet;
    t_variabili_appalias: TStringField;
    t_variabili_appvalore: TStringField;
    t_variabili_apptipo: TStringField;
    t_union: TClientDataSet;
    t_unionprg: TStringField;
    t_unionidtask: TIntegerField;
    t_unionidcampo: TIntegerField;
    t_unioncampo: TStringField;
    t_unionrangemin: TIntegerField;
    t_unionrangemax: TIntegerField;
    t_unionnot: TIntegerField;
    t_unionlike: TIntegerField;
    ds_union: TDataSource;
    t_campipicture: TStringField;
    t_variabili_prgpicture: TStringField;
    t_modelli: TClientDataSet;
    t_modelliidmodello: TStringField;
    t_modellitipo_dato: TStringField;
    t_modellimaschera: TStringField;
    ds_modelli: TDataSource;
    t_controlliformmaschera: TStringField;
    t_controlliformtaborder: TIntegerField;
    t_parametri: TClientDataSet;
    t_parametriprg: TStringField;
    t_parametriid: TIntegerField;
    t_parametrinome: TStringField;
    ds_parametri: TDataSource;
    t_controlliformparent: TStringField;
    t_controlliformparent_info: TStringField;
    t_agentitabprg: TStringField;
    t_agentitabidtask: TIntegerField;
    t_agentitabnome_agente: TStringField;
    t_agentitabcampo: TStringField;
    t_agentitablabel: TStringField;
    t_agentitabriga: TIntegerField;
    t_agentitabcol_da: TIntegerField;
    t_agentitabcol_a: TIntegerField;
    t_agentitabalign: TStringField;
    t_agentitabcheckbox: TBooleanField;
    t_controlliformextra1: TStringField;
    t_controlliformextra2: TStringField;
    t_report: TClientDataSet;
    t_reportprg: TStringField;
    t_reportalias: TStringField;
    t_reporttipo: TStringField;
    ds_report: TDataSource;
    t_reportfield: TClientDataSet;
    ds_reportfield: TDataSource;
    t_reportfieldprg: TStringField;
    t_reportfieldnomereport: TStringField;
    t_reportfieldcampo: TStringField;
    t_reportfieldmodel: TStringField;
    t_reportfieldalias: TStringField;
    t_input_output: TClientDataSet;
    t_input_outputprg: TStringField;
    t_input_outputnome: TStringField;
    t_input_outputtipo: TStringField;
    t_input_outputdirection: TStringField;
    t_input_outputoutputfile: TIntegerField;
    ds_input_output: TDataSource;
    t_formcss_finestra: TStringField;
    t_formcss_title: TStringField;
    t_formcss_title_no: TStringField;
    t_formcss_body: TStringField;
    t_formcss_status_bar: TStringField;
    t_printdef: TClientDataSet;
    t_printdefprg_ref: TStringField;
    t_printdefrisorsa_ref: TStringField;
    t_printdefmaster_fields: TStringField;
    t_printdefindex_fields: TStringField;
    ds_printdef: TDataSource;
    t_proprieta_controlli: TClientDataSet;
    t_proprieta_controlliprg: TStringField;
    t_proprieta_controllinome_form: TStringField;
    t_proprieta_controllinome_controllo: TStringField;
    t_proprieta_controlliproprieta: TStringField;
    t_proprieta_controllivalore: TMemoField;
    ds_proprieta_controlli: TDataSource;
    t_programmifolder: TStringField;
    t_controlliformsubmitonchange: TIntegerField;
    t_value_list: TClientDataSet;
    t_value_listchiave: TStringField;
    t_value_listvalore: TStringField;
    ds_value_list: TDataSource;
    t_controlliformboolean1: TBooleanField;
    t_taskrecordprefix: TStringField;
    t_taskrecordsufix: TStringField;
    t_taskpost_auto: TBooleanField;
    t_formurl: TIntegerField;
    t_formcss_doc: TStringField;
    t_formcss_close: TStringField;
    t_formcss_open: TStringField;
    t_formcss_exit: TStringField;
    t_formcss_resize: TStringField;
    t_formdicitura_exp: TIntegerField;
    t_controlliformcss1: TStringField;
    t_controlliformcss2: TStringField;
    t_controlliformcss3: TStringField;
    t_controlliformcss4: TStringField;
    t_controlliformcss5: TStringField;
    t_controlliformcss6: TStringField;
    t_controlliformcss7: TStringField;
    t_controlliformcss8: TStringField;
    t_controlliformcss9: TStringField;
    t_controlliformcss10: TStringField;
    t_parametrimodello: TStringField;
    t_reportfieldid: TIntegerField;
    t_operazionideferred: TIntegerField;
    t_printdefid: TStringField;
    t_printdefid_padre: TStringField;
    t_applicazionedbs: TStringField;
    t_applicazionemenus: TStringField;
    t_applicazionemodels: TStringField;
    t_applicazionetables: TStringField;
    t_applicazionetimeout: TIntegerField;
    t_applicazionevalidate: TIntegerField;
    t_applicazioneapp_version: TStringField;
    t_applicazioneappvars: TStringField;
    t_applicazionepath_reporter: TStringField;
    t_applicazionepath_license: TStringField;
    t_applicazioneviews: TStringField;
    t_unioninit: TIntegerField;
    tab_ope: TClientDataSet;
    ds_tab_ope: TDataSource;
    tab_opeoperazione: TStringField;
    t_operazionioperazione_look: TStringField;
    tab_tipi_file: TClientDataSet;
    ds_tipi_file: TDataSource;
    tab_tipi_filetipo: TStringField;
    t_operazionio2ref_wide: TStringField;
    t_applicazionestartprg: TStringField;
    t_applicazionereqprg: TStringField;
    t_formvertalign: TStringField;
    t_formorizzalign: TStringField;
    t_formbarra_titolo: TIntegerField;
    t_formbarra_stato: TIntegerField;
    t_operazionitipologia: TStringField;
    t_aggreg: TClientDataSet;
    ds_aggreg: TDataSource;
    t_aggregprg: TStringField;
    t_aggregidtask: TIntegerField;
    t_aggregoperatore: TStringField;
    t_aggregcampo_view: TStringField;
    t_aggregresult_var: TStringField;
    t_aggregresult_view: TStringField;
    t_operazioniservice: TStringField;
    t_labels: TClientDataSet;
    ds_labels: TDataSource;
    t_labelsid: TIntegerField;
    t_labelslabel: TStringField;
    t_labelslabel_tmp: TStringField;
    t_formtop_exp: TIntegerField;
    t_formleft_exp: TIntegerField;
    t_formaltezza_exp: TIntegerField;
    t_formlarghezza_exp: TIntegerField;
    t_formcloseclick_action: TStringField;
    t_printdeftemp_xml: TStringField;
    tmp_exp: TClientDataSet;
    tmp_expprg: TStringField;
    tmp_expidexp: TIntegerField;
    tmp_expexpr: TMemoField;
    tmp_expreturn: TStringField;
    t_tabellefolder: TStringField;
    tmp_parametri: TClientDataSet;
    ds_tmp_parametri: TDataSource;
    tmp_parametritipo: TStringField;
    tmp_parametriid: TIntegerField;
    tmp_parametritesto: TStringField;
    t_operazioniview_calc: TStringField;
    
    t_operazionifield_calc: TStringField;
    t_controlliformextra3: TStringField;
    tmp_postab: TClientDataSet;
    ds_tmp_postab: TDataSource;
    tmp_postabnomecontrollo: TStringField;
    tmp_postableft: TIntegerField;
    tmp_postabtop: TIntegerField;
    tmp_postabwidth: TIntegerField;
    tmp_postabaltezza: TIntegerField;
    tmp_postabline: TIntegerField;
    tmp_postabdacol: TIntegerField;
    tmp_postabacol: TIntegerField;
    tmp_postableftwidth: TIntegerField;
    t_programmitipo: TStringField;
    t_programmidata_modifica: TStringField;
    t_programmimodulo: TStringField;
    t_espressioniestesa: TStringField;
    t_usa_fileidriga: TIntegerField;
    t_unionidrigatab: TIntegerField;
    t_formposizione: TIntegerField;
    t_formparentform: TStringField;
    t_controlliformcss11: TStringField;
    t_controlliformcss12: TStringField;
    t_controlliformcss13: TStringField;
    t_controlliformcss14: TStringField;
    t_controlliformcss15: TStringField;
    t_controlliformNavigationBlockVisible: TIntegerField;
    t_controlliformInsertVisible: TIntegerField;
    t_controlliformInsertEnable: TIntegerField;
    t_controlliformInsertAction: TStringField;
    t_controlliformInsertConfirmMessage: TStringField;
    t_controlliformPostVisible: TIntegerField;
    t_controlliformPostEnable: TIntegerField;
    t_controlliformPostAction: TStringField;
    t_controlliformPostConfirmMessage: TStringField;
    t_controlliformDeleteVisible: TIntegerField;
    t_controlliformDeleteEnable: TIntegerField;
    t_controlliformDeleteAction: TStringField;
    t_controlliformDeleteConfirmMessage: TStringField;
    t_controlliformUndoVisible: TIntegerField;
    t_controlliformUndoEnable: TIntegerField;
    t_controlliformUndoAction: TStringField;
    t_controlliformUndoConfirmMessage: TStringField;
    t_controlliformNorecordmessage: TStringField;
    tmp_postabnomepadre: TStringField;
    t_formmenu: TBooleanField;
    t_applicazioneappshareroot: TStringField;
    t_controlliformDetailVisible: TIntegerField;
    t_controlliformDetailEnable: TIntegerField;
    t_controlliformDetailAction: TStringField;
    t_controlliformDetailConfirmMessage: TStringField;
    t_controlliformSelectVisible: TIntegerField;
    t_controlliformSelectEnable: TIntegerField;
    t_controlliformSelectAction: TStringField;
    t_controlliformSelectConfirmMessage: TStringField;
    t_controlliformexp1: TIntegerField;
    t_controlliformexp2: TIntegerField;
    t_usa_filechiave_exp: TIntegerField;
    t_taskrighevisexp: TIntegerField;
    t_programminote: TStringField;
    elenco_prg: TClientDataSet;
    ds_elenco_prg: TDataSource;
    t_serverschunksize: TLargeintField;
    t_apphandlers: TClientDataSet;
    ds_apphandlers: TDataSource;
    t_apphandlersalias: TStringField;
    t_apphandlersdescrizione: TStringField;
    t_apphandlerskey: TIntegerField;
    t_apphandlerskeychar: TStringField;
    t_azioniservice: TStringField;
    t_applicazioneposmenu: TStringField;
    t_menuicona: TStringField;
    t_formrefresh_action: TStringField;
    t_formtimer_refresh: TIntegerField;
    elenco_prgnome: TStringField;
    elenco_prgref: TStringField;
    elenco_prgfolder: TStringField;
    elenco_prgmodulo: TStringField;
    elenco_prgtipo: TStringField;
    elenco_prgdata_modifica: TStringField;
    elenco_prgnote: TStringField;
    t_ope_x_copia: TClientDataSet;
    t_ope_x_copiaprg: TStringField;
    t_ope_x_copiaazione: TStringField;
    t_ope_x_copiaid: TIntegerField;
    t_ope_x_copiao2ref: TStringField;
    t_ope_x_copiadeferred: TIntegerField;
    t_ope_x_copiacallparam: TMemoField;
    t_ope_x_copiaexp1: TIntegerField;
    t_ope_x_copiaexp2: TIntegerField;
    t_ope_x_copiaexp3: TIntegerField;
    t_ope_x_copiaoperazione: TStringField;
    t_ope_x_copiatipologia: TStringField;
    t_ope_x_copiaservice: TStringField;
    t_databasescheck_esist_tab: TBooleanField;
    t_applicazionessideinc: TStringField;
    t_applicazionehtmlheadfile: TStringField;
    t_applicazionehtmlcset: TStringField;
    t_operazioniexp4: TIntegerField;
    t_operazioniexp5: TIntegerField;
    t_operazioniexp6: TIntegerField;
    t_operazioniexp7: TIntegerField;
    t_operazioniexp8: TIntegerField;
    t_applicazionecombo2lookup: TBooleanField;
    t_applicazionesplit_rep: TBooleanField;
    t_applicazioneprofiling: TStringField;
    t_applicazionedecimals: TStringField;
    t_applicazionethousands: TStringField;
    t_applicazionemsg_del: TStringField;
    t_applicazionemsg_undo: TStringField;
    t_applicazionemsg_norec: TStringField;
    t_applicazionedoc: TBooleanField;
    t_formcss_corner: TStringField;
    t_modellinomeprgscelta: TStringField;
    t_controlliformZoomAction: TStringField;
    t_usa_filedbname_exp: TIntegerField;
    t_usa_filetablename_exp: TIntegerField;
    t_taskautoaggregate: TBooleanField;
    t_databasesasp: TStringField;
    t_controlliformTooltipExp: TIntegerField;
    tmp_callparams: TClientDataSet;
    tmp_callparamsID: TIntegerField;
    tmp_callparamsType: TStringField;
    tmp_callparamsExp: TIntegerField;
    tmp_callparamsField: TStringField;
    ds_tmp_callparams: TDataSource;
    tmp_callparamsName: TStringField;
    tmp_callparamsModel: TStringField;
    t_controlliformExpand: TStringField;
    t_controlliformGridOptions: TStringField;
    t_controlliformPinCols: TSmallintField;
    t_reportfieldshown_field: TStringField;
    t_input_outputdecode_exp: TStringField;
    t_formulas_sql: TClientDataSet;
    ds_formulas_sql: TDataSource;
    t_formulas_sqlID: TIntegerField;
    t_formulas_sqlType: TStringField;
    t_formulas_sqlExp: TIntegerField;
    t_formulas_sqlField: TStringField;
    t_selectsql: TStringField;
    procedure t_tabelleBeforeInsert(DataSet: TDataSet);
    procedure t_tabelleSaveRecord(DataSet: TDataSet; var Accept: boolean);
    procedure t_indici_savNewRecord(DataSet: TDataSet);
    procedure t_tabelleNewRecord(DataSet: TDataSet);
    procedure t_tabelleAfterDelete(DataSet: TDataSet);
    procedure t_campiNewRecord(DataSet: TDataSet);
    procedure t_indicitestaNewRecord(DataSet: TDataSet);
    procedure t_indiciNewRecord(DataSet: TDataSet);
    function tabellaid(nometabella: string): integer;
    procedure t_operazioniNewRecord(DataSet: TDataSet);
    procedure t_programmiBeforeDelete(DataSet: TDataSet);
    procedure t_taskBeforeDelete(DataSet: TDataSet);
    procedure t_azioniBeforeDelete(DataSet: TDataSet);
    procedure t_formBeforeDelete(DataSet: TDataSet);
    procedure t_tabelleBeforeOpen(DataSet: TDataSet);
    procedure t_usa_fileBeforeOpen(DataSet: TDataSet);
    procedure t_espressioniNewRecord(DataSet: TDataSet);
    procedure t_selectNewRecord(DataSet: TDataSet);
    procedure t_unionNewRecord(DataSet: TDataSet);
    procedure t_tasknomeSetText(Sender: TField; const Text: string);
    procedure t_usa_fileBeforeDelete(DataSet: TDataSet);
    procedure t_selectcon_nomeSetText(Sender: TField; const Text: string);
    procedure t_azioniazioneSetText(Sender: TField; const Text: string);
    procedure t_espressioniBeforeInsert(DataSet: TDataSet);
    procedure t_variabili_prgaliasSetText(Sender: TField; const Text: string);
    procedure t_azioniazioneChange(Sender: TField);
    procedure attiva_disattiva_prg(attivo: boolean);
    procedure attiva_disattiva_models(attivo: boolean);
    procedure attiva_disattiva_menu(attivo: boolean);
    procedure attiva_disattiva_dbrep(attivo: boolean);
    procedure attiva_disattiva_tables(attivo: boolean);
    procedure attiva_disattiva_appvars(attivo: boolean);
    procedure attiva_disattiva_labels(attivo: boolean);
    procedure attiva_disattiva_apphandlers(attivo: boolean);

    procedure t_menuNewRecord(DataSet: TDataSet);
    procedure t_formNewRecord(DataSet: TDataSet);
    procedure t_reportfieldNewRecord(DataSet: TDataSet);
    procedure t_espressionireturnChange(Sender: TField);
    procedure t_operazioniCalcFields(DataSet: TDataSet);
    procedure t_campinomecampoChange(Sender: TField);
    procedure t_tabelleNomeChange(Sender: TField);
    procedure t_selectBeforePost(DataSet: TDataSet);
    procedure t_labelsBeforeInsert(DataSet: TDataSet);
    procedure t_labelsNewRecord(DataSet: TDataSet);
    procedure t_menuAfterEdit(DataSet: TDataSet);
    procedure t_serversAfterEdit(DataSet: TDataSet);
    procedure t_serversAfterDelete(DataSet: TDataSet);
    procedure t_databasesAfterDelete(DataSet: TDataSet);
    procedure t_modelliAfterDelete(DataSet: TDataSet);
    procedure t_modelliAfterEdit(DataSet: TDataSet);
    procedure t_serversAfterInsert(DataSet: TDataSet);
    procedure t_databasesAfterPost(DataSet: TDataSet);
    procedure t_databasesAfterEdit(DataSet: TDataSet);
    procedure t_databasesAfterInsert(DataSet: TDataSet);
    procedure t_tabelleAfterEdit(DataSet: TDataSet);
    procedure t_tabelleAfterInsert(DataSet: TDataSet);
    procedure t_campiAfterDelete(DataSet: TDataSet);
    procedure t_campiAfterEdit(DataSet: TDataSet);
    procedure t_campiAfterInsert(DataSet: TDataSet);
    procedure t_indicitestaAfterEdit(DataSet: TDataSet);
    procedure t_indicitestaAfterInsert(DataSet: TDataSet);
    procedure t_indiciAfterDelete(DataSet: TDataSet);
    procedure t_indiciAfterEdit(DataSet: TDataSet);
    procedure t_indiciAfterInsert(DataSet: TDataSet);
    procedure t_modelliAfterInsert(DataSet: TDataSet);
    procedure t_variabili_appAfterDelete(DataSet: TDataSet);
    procedure t_variabili_appAfterEdit(DataSet: TDataSet);
    procedure t_variabili_appAfterInsert(DataSet: TDataSet);
    procedure t_labelsAfterDelete(DataSet: TDataSet);
    procedure t_labelsAfterEdit(DataSet: TDataSet);
    procedure t_labelsAfterInsert(DataSet: TDataSet);
    procedure t_applicazioneAfterEdit(DataSet: TDataSet);
    procedure t_operazioniAfterDelete(DataSet: TDataSet);
    procedure t_operazioniAfterPost(DataSet: TDataSet);
    procedure t_operazioniAfterInsert(DataSet: TDataSet);
    procedure t_operazioniAfterEdit(DataSet: TDataSet);
    procedure t_operazioniBeforeDelete(DataSet: TDataSet);
    procedure t_operazioniBeforeInsert(DataSet: TDataSet);
    procedure t_operazioniBeforePost(DataSet: TDataSet);
    procedure t_taskNewRecord(DataSet: TDataSet);
    procedure t_selectAfterInsert(DataSet: TDataSet);
    procedure t_selectAfterPost(DataSet: TDataSet);
    procedure t_selectBeforeInsert(DataSet: TDataSet);
    procedure t_selectBeforeDelete(DataSet: TDataSet);
    procedure t_selectAfterDelete(DataSet: TDataSet);
    procedure t_programmiAfterEdit(DataSet: TDataSet);
    procedure t_taskAfterDelete(DataSet: TDataSet);
    procedure t_taskAfterInsert(DataSet: TDataSet);
    procedure t_taskAfterEdit(DataSet: TDataSet);
    procedure t_unionAfterDelete(DataSet: TDataSet);
    procedure t_unionAfterEdit(DataSet: TDataSet);
    procedure t_unionAfterInsert(DataSet: TDataSet);
    procedure t_aggregAfterDelete(DataSet: TDataSet);
    procedure t_aggregAfterEdit(DataSet: TDataSet);
    procedure t_aggregAfterInsert(DataSet: TDataSet);
    procedure t_variabili_prgAfterDelete(DataSet: TDataSet);
    procedure t_variabili_prgAfterEdit(DataSet: TDataSet);
    procedure t_variabili_prgAfterInsert(DataSet: TDataSet);
    procedure t_usa_fileAfterDelete(DataSet: TDataSet);
    procedure t_usa_fileAfterEdit(DataSet: TDataSet);
    procedure t_usa_fileAfterInsert(DataSet: TDataSet);
    procedure t_parametriAfterDelete(DataSet: TDataSet);
    procedure t_parametriAfterEdit(DataSet: TDataSet);
    procedure t_parametriAfterInsert(DataSet: TDataSet);
    procedure t_selectAfterEdit(DataSet: TDataSet);
    procedure t_formAfterInsert(DataSet: TDataSet);
    procedure t_formAfterDelete(DataSet: TDataSet);
    procedure t_formAfterEdit(DataSet: TDataSet);
    procedure t_controlliformAfterDelete(DataSet: TDataSet);
    procedure t_controlliformAfterEdit(DataSet: TDataSet);
    procedure t_controlliformAfterInsert(DataSet: TDataSet);
    procedure t_espressioniAfterInsert(DataSet: TDataSet);
    procedure t_espressioniAfterEdit(DataSet: TDataSet);
    procedure t_espressioniAfterDelete(DataSet: TDataSet);
    procedure t_azioniAfterDelete(DataSet: TDataSet);
    procedure t_azioniAfterEdit(DataSet: TDataSet);
    procedure t_azioniAfterInsert(DataSet: TDataSet);
    procedure t_input_outputAfterInsert(DataSet: TDataSet);
    procedure t_input_outputAfterDelete(DataSet: TDataSet);
    procedure t_input_outputAfterEdit(DataSet: TDataSet);
    procedure t_reportAfterEdit(DataSet: TDataSet);
    procedure t_reportAfterDelete(DataSet: TDataSet);
    procedure t_reportAfterInsert(DataSet: TDataSet);
    procedure t_reportfieldAfterInsert(DataSet: TDataSet);
    procedure t_reportfieldAfterEdit(DataSet: TDataSet);
    procedure t_reportfieldAfterDelete(DataSet: TDataSet);
    procedure t_usa_filecon_nomeSetText(Sender: TField;
      const Text: String);
    procedure t_tabelleBeforeDelete(DataSet: TDataSet);
    procedure t_espressioniCalcFields(DataSet: TDataSet);
    procedure t_usa_fileNewRecord(DataSet: TDataSet);
    procedure t_apphandlersCalcFields(DataSet: TDataSet);
    procedure t_indicitestaBeforeDelete(DataSet: TDataSet);
    procedure t_serversNewRecord(DataSet: TDataSet);
    procedure t_databasesNewRecord(DataSet: TDataSet);
    procedure t_tabelleIdChange(Sender: TField);
    procedure t_tabelleIdSetText(Sender: TField; const Text: String);
    function datetoo2date(date: TDateTime): String;
    procedure t_parametriidSetText(Sender: TField; const Text: String);
    procedure t_variabili_actAfterDelete(DataSet: TDataSet);
    procedure t_variabili_actAfterEdit(DataSet: TDataSet);
    procedure t_variabili_actAfterInsert(DataSet: TDataSet);
    procedure tmp_callparamsAfterInsert(DataSet: TDataSet);
    procedure tmp_callparamsBeforePost(DataSet: TDataSet);
    function formatName(logName: String): String;
    procedure t_modelliidmodelloSetText(Sender: TField;
      const Text: String);
    procedure t_variabili_appaliasSetText(Sender: TField;
      const Text: String);
    procedure t_serversnomeserverSetText(Sender: TField;
      const Text: String);
    procedure t_databasesnomedbSetText(Sender: TField; const Text: String);
    procedure t_tabelleNomeSetText(Sender: TField; const Text: String);
    procedure t_tabelleNome_fisicoSetText(Sender: TField;
      const Text: String);
    procedure t_campinomecampoSetText(Sender: TField; const Text: String);
    procedure t_campidbnameSetText(Sender: TField; const Text: String);
    procedure t_indicitestanomekeySetText(Sender: TField;
      const Text: String);
    procedure t_parametrinomeSetText(Sender: TField; const Text: String);
    procedure t_reportfieldCalcFields(DataSet: TDataSet);
    procedure t_input_outputCalcFields(DataSet: TDataSet);
    procedure t_controlliformnomecontrolloSetText(Sender: TField;
      const Text: String);
    procedure t_formBeforePost(DataSet: TDataSet);
    procedure t_formulas_sqlBeforePost(DataSet: TDataSet);
    procedure t_formulas_sqlAfterPost(DataSet: TDataSet);
    procedure t_formulas_sqlAfterInsert(DataSet: TDataSet);
    procedure t_input_outputnomeSetText(Sender: TField;
      const Text: String);
    procedure t_reportaliasSetText(Sender: TField; const Text: String);
    procedure t_reportfieldaliasSetText(Sender: TField;
      const Text: String);

  private
    temp_table: TClientDataSet;
    id_assegnato: integer;
    ultimo_id_eliminato:Integer;

    // campi necessari per l'automazione dell'id di riga
    idcampo_ope, idcampo_select,id_tabella,id_campotab,id_indice,id_segmento: integer;
    posizione_ope, pos_tabella: TBookmark;
    stato_recordset_ope, stato_recordset_select: string;



    { Private declarations }
  public
    id_padre_per_menu: string;
    id_ultima_view: integer;
    menu_modificato: boolean;
    appprop_modificato: boolean;
    labels_modificato: boolean;
    appvar_modificato: boolean;
    datatypes_modificato: boolean;
    database_modificato: boolean;
    tables_modificato: boolean;
    program_modificato: boolean;
    in_importazione: boolean;
    nomeactionprev:String;
    { Public declarations }
  end;

var
  dm_form:    Tdm_form;
  da_Refresh: boolean;

implementation

uses work, checkprg, sceltaespressioni, StrUtils, Math;

{$R *.dfm}





procedure Tdm_form.t_tabelleBeforeInsert(DataSet: TDataSet);
begin
  if t_tabelleid.Value = 0 then
  begin
    t_tabelleid.Value := t_tabelle.RecordCount + 1;
  end;
end;

procedure Tdm_form.t_tabelleSaveRecord(DataSet: TDataSet; var Accept: boolean);
begin
  if t_tabelleid.Value = 0 then
  begin
    t_tabelleid.Value := t_tabelle.RecordCount + 1;
  end;

end;

procedure Tdm_form.t_indici_savNewRecord(DataSet: TDataSet);
begin
  if (t_indiciId_segmento.Value = 0) and (not (da_Refresh)) then
  begin
    t_indici.Filter   := 'Id_tabella = ' + IntToStr(t_indiciId_tabella.Value) +
      ' and Id_indice = ' + IntToStr(t_indiciId_indice.Value);
    t_indici.Filtered := True;
    t_indici.Edit;
    t_indiciId_segmento.Value := t_indici.RecordCount + 1;
    t_indici.Filtered := False;
  end;
end;

procedure Tdm_form.t_tabelleNewRecord(DataSet: TDataSet);
begin
  if (not (da_Refresh)) then
  begin
    t_tabelleid.Value := t_tabelle.RecordCount+1;
  end;
end;

procedure Tdm_form.t_tabelleAfterDelete(DataSet: TDataSet);
var i:integer;
begin
  tables_modificato := True;
  if (ultimo_id_eliminato < (t_tabelle.RecordCount+1)) then
  begin
    i:= ultimo_id_eliminato;
    while not (t_tabelle.Eof) do
    begin
      t_tabelle.Edit;
      t_tabelleId.Text:=inttostr(i);
      t_tabelle.Post;
      Inc(i);
      t_tabelle.Next;
    end;
  end;

end;

procedure Tdm_form.t_campiNewRecord(DataSet: TDataSet);
begin
  if (not (da_Refresh)) then
  begin
    t_campiid_campo.Value := t_campi.RecordCount + 1;

  end;
end;

procedure Tdm_form.t_indicitestaNewRecord(DataSet: TDataSet);
begin
  if (not (da_Refresh)) then
  begin
    t_indicitestaid_indice.Value := t_indicitesta.RecordCount + 1;
  end;
end;



procedure Tdm_form.t_indiciNewRecord(DataSet: TDataSet);
begin
  if (not (da_Refresh)) then
  begin
    t_indiciid_segmento.Value := t_indici.RecordCount + 1;
  end;
end;



function Tdm_form.tabellaid(nometabella: string): integer;
begin
  Result := (t_tabelle.Lookup('Nome', nometabella, 'id'));
end;


procedure Tdm_form.t_operazioniNewRecord(DataSet: TDataSet);
begin
  if (not (da_Refresh)) then
  begin

    t_operazioniid.Value := -1;

  end;
end;




procedure Tdm_form.t_programmiBeforeDelete(DataSet: TDataSet);
begin
  while (t_taskprg.Value <> '') do
  begin
    dm_form.t_task.Delete;
    t_task.Next;
  end;
  //elimina azioni del prg
  while (t_azioniprg.Value <> '') do
  begin
    t_azioni.Delete;
    t_azioni.Next;
  end;
  //elimina form
  while (t_formprg.Value <> '') do
  begin
    t_form.Delete;
    t_form.Next;
  end;
  //elimina espressioni
  while (t_espressioniidexp.Value <> 0) do
  begin
    t_espressioni.Delete;
    t_espressioni.Next;
  end;

end;

procedure Tdm_form.t_taskBeforeDelete(DataSet: TDataSet);
begin
  // ________________________________________________________ Remove selects ___
  while (t_selectidtask.Value <> 0) do
  begin
    t_select.Delete;
    t_select.Next;
  end;
  // _________________________________________________________ Remove tables ___
  while (t_usa_fileidtask.Value <> 0) do
  begin
    t_usa_file.Delete;
    t_usa_file.Next;
  end;
  // _____________________________________________________ Remove links info ___
  while (t_unionidtask.Value <> 0) do
  begin
    t_union.Delete;
    t_union.Next;
  end;
  // ___________________________________________________ Remove aggregations ___
  while (t_aggregidtask.Value <> 0) do
  begin
    t_aggreg.Delete;
    t_aggreg.Next;
  end;
end;

procedure Tdm_form.t_azioniBeforeDelete(DataSet: TDataSet);
begin
  //elimina operazioni
  while (t_operazioniazione.Value <> '') do
  begin
    t_operazioni.Delete;
    t_operazioni.Next;
  end;
end;

procedure Tdm_form.t_formBeforeDelete(DataSet: TDataSet);
begin
  //elimina controlli del form
  while (t_controlliformnomeform.Value <> '') do
  begin
    t_controlliform.Delete;
    t_controlliform.Next;
  end;
end;

procedure Tdm_form.t_tabelleBeforeOpen(DataSet: TDataSet);
begin
  if dataset.IsEmpty then
  begin
    t_tabelle.CreateDataSet
  end;
end;

procedure Tdm_form.t_usa_fileBeforeOpen(DataSet: TDataSet);
begin
  if dataset.IsEmpty then
  begin
    t_usa_file.CreateDataSet
  end;
end;






procedure Tdm_form.t_espressioniNewRecord(DataSet: TDataSet);

begin
  if Not(in_importazione) then t_espressioniidexp.Value := id_assegnato;
end;

procedure Tdm_form.t_selectNewRecord(DataSet: TDataSet);
begin
  t_selectidcampo.Value := -1;


  f_work.DBGrid_select.SelectedIndex := 2;
  t_selecttipo.Value:='Select';
end;

procedure Tdm_form.t_unionNewRecord(DataSet: TDataSet);
begin
  t_unionidrigatab.Value:=t_usa_fileidriga.Value;
  t_unionidcampo.Value := t_union.RecordCount + 1;
end;


{*
 * Fired on view name changed: seek and fix references to view name.
 *}
procedure Tdm_form.t_tasknomeSetText(Sender: TField; const Text: string);
var
  newName, str_old, str_new, str_old2, str_new2: string;
  r: TRegExpr;
begin
  // _______________________________ Format new name with only allowed chars ___
  newName := formatName(Text);
  // ________________________________________ Check view name in expressions ___
  t_espressioni.First;
  r := TRegExpr.Create;
  while not t_espressioni.EOF do
  begin
    t_espressioni.Edit;
    // ________________________________________ Check and replace in o2val() ___
    r.Expression              := 'o2val\s*\(["' + #39 + ']' + Sender.AsString +
                                 '["' + #39 + ']\s*,';
    str_new                   := 'o2val(' + #39 + newName + #39 + ',';
    t_espressionireturn.Value := r.Replace(t_espressionireturn.Value, str_new);
    t_espressioniexpr.Value   := r.Replace(t_espressioniexpr.Value, str_new);
    // ________________________________________ Check and replace in o2pre() ___
    r.Expression              := 'o2pre\s*\(["' + #39 + ']' + Sender.AsString +
                                 '["' + #39 + ']\s*,';
    str_new                   := 'o2pre(' + #39 + newName + #39 + ',';
    t_espressionireturn.Value := r.Replace(t_espressionireturn.Value, str_new);
    t_espressioniexpr.Value   := r.Replace(t_espressioniexpr.Value, str_new);
    // _______________________________________ Check and replace in o2zero() ___
    r.Expression              := 'o2zero\s*\(["' + #39 + ']' + Sender.AsString +
                                 '["' + #39 + ']\s*,';
    str_new                   := 'o2zero(' + #39 + newName + #39 + ',';
    t_espressionireturn.Value := r.Replace(t_espressionireturn.Value, str_new);
    t_espressioniexpr.Value   := r.Replace(t_espressioniexpr.Value, str_new);
    // _____________________________________ Check and replace in o2isnull() ___
    r.Expression              := 'o2isnull\s*\(["' + #39 + ']' +
                                 Sender.AsString + '["' + #39 + ']\s*,';
    str_new                   := 'o2isnull(' + #39 + newName + #39 + ',';
    t_espressionireturn.Value := r.Replace(t_espressionireturn.Value, str_new);
    t_espressioniexpr.Value   := r.Replace(t_espressioniexpr.Value, str_new);
    // ____________________________________ Check and replace in o2nullify() ___
    r.Expression              := 'o2nullify\s*\(["' + #39 + ']' +
                                 Sender.AsString + '["' + #39 + ']\s*,';
    str_new                   := 'o2nullify(' + #39 + newName + #39 + ',';
    t_espressionireturn.Value := r.Replace(t_espressionireturn.Value, str_new);
    t_espressioniexpr.Value   := r.Replace(t_espressioniexpr.Value, str_new);
    // _________________________________ Check and replace in o2record_log() ___
    r.Expression              := 'o2record_log\s*\(["' + #39 + ']' +
                                 Sender.AsString + '["' + #39 + ']\s*,';
    str_new                   := 'o2record_log(' + #39 + newName + #39 + ',';
    t_espressionireturn.Value := r.Replace(t_espressionireturn.Value, str_new);
    t_espressioniexpr.Value   := r.Replace(t_espressioniexpr.Value, str_new);
    // ______________________________________ Check and replace in o2view*() ___
    r.Expression              := 'o2view(\w+)\s*\(["' + #39 + ']' +
                                  Sender.AsString + '["' + #39 + ']';
    str_new                   := 'o2view$1(' + #39 + newName + #39;
    t_espressionireturn.Value := r.Replace(t_espressionireturn.Value,
                                           str_new,
                                           True);
    t_espressioniexpr.Value   := r.Replace(t_espressioniexpr.Value,
                                           str_new,
                                           True);
    // ___________________________________ Check and replace in o2viewtab*() ___
    r.Expression              := 'o2viewtab(\w+)\s*\(["' + #39 + ']' +
                                  Sender.AsString + '["' + #39 + ']';
    str_new                   := 'o2view$1(' + #39 + newName + #39;
    t_espressionireturn.Value := r.Replace(t_espressionireturn.Value,
                                           str_new,
                                           True);
    t_espressioniexpr.Value   := r.Replace(t_espressioniexpr.Value,
                                           str_new,
                                           True);
    t_espressioni.Next;
  end;
  // _________________________________________ Replace view name in controls ___
  str_old                      := #127 + Sender.AsString;
  str_new                      := #127 + newName;
  str_old2                     := 'o2_view2list("' + Sender.AsString + '"';
  str_new2                     := 'o2_view2list("' + newName + '"';
  t_controlliform.MasterSource := nil;
  t_controlliform.First;
  while not t_controlliform.EOF do
  begin
    t_controlliform.Edit;
    // ______________________________________ Replace reference to view only ___
    if t_controlliformriferimento.Value = str_old then
    begin
      t_controlliformriferimento.Value := str_new;
    end
    else
    begin
      // _______________________________ Replace reference to view and field ___
      t_controlliformriferimento.Value :=
                                 StringReplace(t_controlliformriferimento.Value,
                                               str_old + #129,
                                               str_new + #129,
                                               [rfReplaceAll]);
    end;
    // ___________________________ Replace in o2viewlist() in combo/list-box ___
    t_controlliformscelte_possibili.Value := StringReplace(
                                          t_controlliformscelte_possibili.Value,
                                          str_old2,
                                          str_new2,
                                          [rfReplaceAll]);
    t_controlliform.Next;
  end;
  t_controlliform.MasterSource := ds_form;
  // __________________________________________ Replace view name in actions ___
  str_old  := #127 + Sender.AsString + #129;
  str_new  := #127 + newName + #129;
  str_old2 := #127 + Sender.AsString + '::';
  str_new2 := #127 + newName + '::';
  t_operazioni.MasterSource := nil;
  t_operazioni.First;
  while not t_operazioni.EOF do
  begin
    t_operazioni.Edit;
    // ________________________________________ View name in field reference ___
    t_operazionio2ref.Value := StringReplace(t_operazionio2ref.Value,
                                             str_old,
                                             str_new,
                                             [rfReplaceAll]);
    // _______________________ View name in view-actions (Insert, Post, ...) ___
    t_operazionio2ref.Value := StringReplace(t_operazionio2ref.Value,
                                             str_old2,
                                             str_new2,
                                             [rfReplaceAll]);
    // ______________________ View name in field passed as parameter in call ___
    t_operazionicallparam.Value := StringReplace(t_operazionicallparam.Value,
                                                 str_old,
                                                 str_new,
                                                 [rfReplaceAll]);
    t_operazioni.Next;
  end;
  t_operazioni.MasterSource := ds_azioni;
  // ________________________________________ Replace view name in protocols ___
  str_old                    := #127 + Sender.AsString + #129;
  str_new                    := #127 + newName + #129;
  t_reportfield.MasterSource := nil;
  t_reportfield.First;
  while not t_reportfield.EOF do
  begin
    t_reportfield.Edit;
    t_reportfieldcampo.Value := StringReplace(t_reportfieldcampo.Value,
                                              str_old,
                                              str_new,
                                              [rfReplaceAll]);
    t_reportfield.Next
  end;
  t_reportfield.MasterSource := ds_report;
  // __________________________________________________ Update main treeview ___
  if f_work.supertree.Selected.Parent <> nil then
  begin
    f_work.supertree.Selected.Parent.Text := newName;
  end;
  // _____________________________________ Update source field with new name ___
  Sender.Value := newName;
end;


procedure Tdm_form.t_usa_fileBeforeDelete(DataSet: TDataSet);
begin
  while (t_unionidtask.Value <> 0) do
  begin
    t_union.Delete;
    t_union.Next;
  end;

end;


{*
 * Reacts when, in a view, selected field alias is changed
 *}
procedure Tdm_form.t_selectcon_nomeSetText(Sender: TField; const Text: string);
var
  newName, str_old, str_new: string;
  progr : integer;
  r : TRegExpr;
  p : TBookmark;
begin
  newName := formatName(Text);
  // _______________________________________________ Changing existing alias ___
  if (Sender.AsString <> '') and (Sender.AsString <> newName) then
  begin
    try
      t_operazioni.DisableControls;
      t_espressioni.DisableControls;
      t_controlliform.DisableControls;
      r            := TRegExpr.Create;
      // ___________ Replace in o2val(), o2pre() and o2zero() in expressions ___
      r.Expression := 'o2(\w+)\s*\(\s*["' + #39 + ']' + t_tasknome.Value +
                                     '["' + #39 + ']\s*,\s*["' + #39 + ']' +
                                     Sender.AsString + '["' + #39 + ']\s*\)';
      str_new      := 'o2$1(' + #39 + t_tasknome.Value + #39 + ', ' +
                                #39 + newName + #39 + ')';
      t_espressioni.First;
      while not t_espressioni.EOF do
      begin
        t_espressioni.Edit;
        t_espressionireturn.Value := r.Replace(t_espressionireturn.Value,
                                               str_new,
                                               True);
        t_espressioniexpr.Value   := r.Replace(t_espressioniexpr.Value,
                                               str_new,
                                               True);
        t_espressioni.Next
      end;
      // ___________________________________ Replace select alias in actions ___
      t_operazioni.MasterSource := nil;
      t_operazioni.First;
      while not t_operazioni.EOF do
      begin
        t_operazioni.Edit;
        str_old := #127 + t_tasknome.Value + #129 + Sender.AsString;
        str_new := #127 + t_tasknome.Value + #129 + newName;
        // ____________________________ Select alias name in field reference ___
        if t_operazionio2ref.Value = str_old then
        begin
          t_operazionio2ref.Value := str_new;
        end;
        // _______________ Select alias in field passed as parameter in call ___
        r.Expression                := #127 + t_tasknome.Value + #129 +
                                       Sender.AsString + '(\W|$)';
        str_new                     := #127 + t_tasknome.Value + #129 +
                                       newName + '$1';
        t_operazionicallparam.Value := r.Replace(t_operazionicallparam.Value,
                                                 str_new,
                                                 True);
        t_operazioni.Next
      end;
      t_operazioni.MasterSource := ds_azioni;
      // __________________________________ Replace select alias in controls ___
      t_controlliform.MasterSource :=nil;
      t_controlliform.First;
      while not t_controlliform.EOF do
      begin
        t_controlliform.Edit;
        str_old := #127 + t_tasknome.Value + #129 + Sender.AsString;
        str_new := #127 + t_tasknome.Value + #129 + newName;
        if t_controlliformriferimento.Value = str_old then
        begin
          t_controlliformriferimento.Value := str_new;
        end;
        // _______________________ Replace in o2viewlist() in combo/list-box ___
        str_old := 'o2_view2list("' + t_tasknome.Value + '", "' +
                                      Sender.AsString + '"';
        str_new := 'o2_view2list("' + t_tasknome.Value + '", "' +
                                      newName + '"';
        // _________________________________ Replace when used as code field ___
        t_controlliformscelte_possibili.Value := StringReplace(
                                          t_controlliformscelte_possibili.Value,
                                          str_old,
                                          str_new,
                                          [rfReplaceAll]);
        // __________________________ Replace when used as description field ___
        r.Expression := 'o2_view2list\("' + t_tasknome.Value + '", "(\w+)", "' +
                                            Sender.AsString + '"\)';
        str_new      := 'o2_view2list("' + t_tasknome.Value + '", "$1", "' +
                                           newName + '")';
        t_controlliformscelte_possibili.Value := r.Replace(
                                          t_controlliformscelte_possibili.Value,
                                          str_new,
                                          True);
        t_controlliform.Next
      end;
      t_controlliform.MasterSource := ds_form;
      // _________________________ Replace select alias in view aggregations ___
      t_aggreg.First;
      while not t_aggreg.EOF do
      begin
        t_aggreg.Edit;
        if (t_aggregidtask.Value = t_taskid.Value) and
           (t_aggregcampo_view.Value = Sender.AsString) then
        begin
          t_aggregcampo_view.Value := newName;
        end;
        t_aggreg.Next;
      end;
      // _________________________________ Replace select alias in protocols ___
      str_old                    := #127 + t_tasknome.Value + #129 +
                                           Sender.AsString;
      str_new                    := #127 + t_tasknome.Value + #129 + newName;
      t_reportfield.MasterSource := nil;
      t_reportfield.First;
      while not t_reportfield.EOF do
      begin
        t_reportfield.Edit;
        if t_reportfieldcampo.Value = str_old then
        begin
          t_reportfieldcampo.Value := str_new;
        end;
        t_reportfield.Next
      end;
      t_reportfield.MasterSource := ds_report;
    finally
      t_operazioni.EnableControls;
      t_espressioni.EnableControls;
      t_controlliform.EnableControls;
    end;
  end;
  // _______ Store original old and new names to use in SQL-formulas changes ___
  str_old := #127 + Sender.AsString;
  str_new := #127 + newName;
  // _____________________________________________________ Update field name ___
  Sender.Value := newName;
  // ____________________ Replace select alias in view SQL-formulas (CONCAT) ___
  // ______ NOTE: Done after all because must leave t_select current record! ___
  p := t_select.GetBookmark;
  t_select.DisableControls;
  t_select.First;
  while not t_select.EOF do
  begin
    if (t_selectsql.AsString <> '') and
      (Pos(str_old, t_selectsql.Value) > 0) then
    begin
      t_select.Edit;
      t_selectsql.Value := StringReplace(t_selectsql.Value,
                                         str_old,
                                         str_new,
                                         [rfReplaceAll]);
    end;
    t_select.Next;
  end;
  t_select.GotoBookmark(p);
  t_select.EnableControls;

end;


{*
 * Fired on action name changed: seek and fix references to action.
 *}
procedure Tdm_form.t_azioniazioneSetText(Sender: TField; const Text: string);
var
  newName, str_old, str_new, str_old2, str_new2, tmpValue: string;

begin
  if (Sender.AsString <> '') and (not(in_importazione)) then
  begin
    // _____________________________ Format new name with only allowed chars ___
    newName := formatName(Text);
    t_operazioni.DisableControls;
    str_old := Sender.AsString;
    str_new := newName;
    // ____________________ Save old name: see Tdm_form.t_azioniazioneChange ___
    nomeactionprev := str_old;
    // ___________________________ Replace action name in forms and controls ___
    t_form.First;
    while (not(t_form.EOF)) do
    begin
      // ___________________________________ Replace action name in controls ___
      t_controlliform.First;
      while not(t_controlliform.EOF) do
      begin
        t_controlliform.Edit;
        // ____________________________________ Main action on most controls ___
        if t_controlliformazione.Value = str_old then
        begin
          t_controlliformazione.Value := str_new;
        end;
        // _____________________________________________________ Zoom action ___
        if t_controlliformZoomAction.Value = str_old then
        begin
          t_controlliformZoomAction.Value := str_new;
        end;
        // _______________________________________________ Navigator actions ___
        if t_controlliformtipo.Value = 'navigator' then
        begin
          if t_controlliformInsertAction.Value = str_old then
          begin
            t_controlliformInsertAction.Value := str_new;
          end;
          if t_controlliformDeleteAction.Value = str_old then
          begin
            t_controlliformDeleteAction.Value := str_new;
          end;
          if t_controlliformPostAction.Value = str_old then
          begin
            t_controlliformPostAction.Value := str_new;
          end;
          if t_controlliformUndoAction.Value = str_old then
          begin
            t_controlliformUndoAction.Value := str_new;
          end;
          if t_controlliformDetailAction.Value = str_old then
          begin
            t_controlliformDetailAction.Value := str_new;
          end;
          if t_controlliformSelectAction.Value = str_old then
          begin
            t_controlliformSelectAction.Value := str_new;
          end;
        end;
        // __________________________________ Delete action on Images-Lister ___
        if (t_controlliformtipo.Value = 'imglist') and
           (t_controlliformextra2.Value = str_old) then
        begin
          t_controlliformextra2.Value := str_new;
        end;
        // ______________________________________ End action on Progress-Bar ___
        if (t_controlliformtipo.Value = 'progress') and
           (t_controlliformextra2.Value = str_old) then
        begin
          t_controlliformextra2.Value := str_new;
        end;
        // ____________________________________ Column header action in grid ___
        if (t_controlliformparent.Value <> '') then
        begin
          tmpValue := trim(ExtractWord(12,
                                       t_controlliformparent_info.Value,
                                       ['§']));
          tmpValue := Copy(tmpValue, 2, Length(tmpValue) - 2);
          if tmpValue = str_old then
          begin
            // __________ Header-action is the 12th parameter in parent-info ___
            t_controlliformparent_info.Value :=
                ExtractWord(1, t_controlliformparent_info.Value, ['§']) + '§' +
                ExtractWord(2, t_controlliformparent_info.Value, ['§']) + '§' +
                ExtractWord(3, t_controlliformparent_info.Value, ['§']) + '§' +
                ExtractWord(4, t_controlliformparent_info.Value, ['§']) + '§' +
                ExtractWord(5, t_controlliformparent_info.Value, ['§']) + '§' +
                ExtractWord(6, t_controlliformparent_info.Value, ['§']) + '§' +
                ExtractWord(7, t_controlliformparent_info.Value, ['§']) + '§' +
                ExtractWord(8, t_controlliformparent_info.Value, ['§']) + '§' +
                ExtractWord(9, t_controlliformparent_info.Value, ['§']) + '§' +
                ExtractWord(10, t_controlliformparent_info.Value, ['§']) + '§' +
                ExtractWord(11, t_controlliformparent_info.Value, ['§']) +
                '§"' + str_new + '"';
          end;
        end;
        t_controlliform.Post;
        t_controlliform.Next
      end;
      // ______________________________________ Replace action name in forms ___
      t_form.Edit;
      if t_formcloseclick_action.Value = str_old then
      begin
        t_formcloseclick_action.Value := str_new;
      end;
      if t_formrefresh_action.Value = str_old then
      begin
        t_formrefresh_action.Value := str_new;
      end;
      t_form.Post;
      t_form.Next;
    end;
    // ___________________________________ Replace action name in statements ___
    str_old2 := Sender.AsString + '::';
    str_new2 := newName + '::';
    t_operazioni.First;
    while not t_operazioni.EOF do
    begin
      t_operazioni.Edit;
      t_operazioniazione.Value := str_new;
      t_operazioni.Post;
    end;
    // _______________________________ Replace action name in execute-action ___
    t_operazioni.MasterSource := nil;
    t_operazioni.First;
    while not t_operazioni.EOF do
    begin
      t_operazioni.Edit;
      if t_operazionioperazione.Value = 'Execute action' then
      begin
        if Copy(t_operazionio2ref.Value,
                1,
                StrLength(str_old) + 2) = str_old + '::' then
        begin
          t_operazionio2ref.Value := str_new + '::' +
                                     Copy(t_operazionio2ref.Value,
                                          StrLength(str_old) + 3,
                                          StrLength(t_operazionio2ref.Value));
        end;
      end;
      t_operazioni.Next;
    end;
    t_operazioni.MasterSource := ds_azioni;
  end; // ________________________ End of previous value existance condition ___
  // ____________________________________________ Update variable name field ___
  Sender.Value := newName;
  t_operazioni.EnableControls;
end;


procedure Tdm_form.t_espressioniBeforeInsert(DataSet: TDataSet);
var
  i: integer;
  trovato_libero: boolean;

begin
  if Not(in_importazione) then
  begin
    trovato_libero := False;
    i := 1;

    while not (trovato_libero) do
    begin

      if i <> DataSet.Lookup('idexp', i, 'idexp') then
      begin
        trovato_libero := True
      end;
      if not (trovato_libero) then
      begin
        Inc(i)
      end;
    end;

  id_assegnato := i;
  end;
end;


{*
 * Fired on variable name changed: seek and fix references to variable.
 *}
procedure Tdm_form.t_variabili_prgaliasSetText(Sender: TField;
                                               const Text: string);
var
  newName, str_old, str_new: string;
  r: TRegExpr;
begin
  // _______________________________ Format new name with only allowed chars ___
  newName := formatName(Text);
  if Sender.AsString <> '' then
  begin
    // __________________________________ Check variable name in expressions ___
    t_espressioni.First;
    r := TRegExpr.Create;
    while not t_espressioni.EOF do
    begin
      t_espressioni.Edit;
      // _________________________ Check and replace in o2val() and o2zero() ___
      r.Expression              := 'o2(\w+)\s*\(\s*["' + #39 + ']' +
                                   'prg§_§var["' + #39 + ']\s*,\s*["' + #39 +
                                   ']' + Sender.AsString +
                                   '["' + #39 + ']\s*\)';
      str_new                   := 'o2$1(' + #39 + 'prg§_§var' + #39 + ',' +
                                             #39 + newName + #39 + ')';
      t_espressionireturn.Value := r.Replace(t_espressionireturn.Value,
                                             str_new,
                                             True);
      t_espressioniexpr.Value   := r.Replace(t_espressioniexpr.Value,
                                             str_new,
                                             True);
      t_espressioni.Next
    end;
    // ____________________________________ Replace variable name in actions ___
    t_operazioni.MasterSource := nil;
    t_operazioni.First;
    while not t_operazioni.EOF do
    begin
      t_operazioni.Edit;
      // __________________________________ Variable name in field reference ___
      str_old := #127 + 'prg§_§var' + #129 + Sender.AsString;
      str_new := #127 + 'prg§_§var' + #129 + newName;
      if t_operazionio2ref.Value = str_old then
      begin
        t_operazionio2ref.Value := str_new;
      end;
      // ________________ Variable name in field passed as parameter in call ___
      r.Expression                := #127 + 'prg§_§var' +
                                     #129 + Sender.AsString + '(\W|$)';
      str_new                     := #127 + 'prg§_§var' + #129 + newName + '$1';
      t_operazionicallparam.Value := r.Replace(t_operazionicallparam.Value,
                                               str_new,
                                               True);
      t_operazioni.Next;
    end;
    t_operazioni.MasterSource := ds_azioni;
    // ___________________________________ Replace variable name in controls ___
    str_old                      := #127 + 'prg§_§var' + #129 + Sender.AsString;
    str_new                      := #127 + 'prg§_§var' + #129 + newName;
    t_controlliform.MasterSource := nil;
    t_controlliform.First;
    while not t_controlliform.EOF do
    begin
      t_controlliform.Edit;
      // ___________________________ Replace reference to variable in fields ___
      if t_controlliformriferimento.Value = str_old then
      begin
        t_controlliformriferimento.Value := str_new;
      end;
      t_controlliform.Next;
    end;
    t_controlliform.MasterSource := ds_form;
    // __________________________ Replace variable name in view aggregations ___
    t_aggreg.First;
    while not t_aggreg.EOF do
    begin
      t_aggreg.Edit;
      if t_aggregresult_var.Value = Sender.AsString then
      begin
        t_aggregresult_var.Value := newName;
      end;
      t_aggreg.Next;
    end;
    // __________________________________ Replace variable name in protocols ___
    str_old                    := #127 + 'prg§_§var' + #129 + Sender.AsString;
    str_new                    := #127 + 'prg§_§var' + #129 + newName;
    t_reportfield.MasterSource := nil;
    t_reportfield.First;
    while not t_reportfield.EOF do
    begin
      t_reportfield.Edit;
      if t_reportfieldcampo.Value = str_old then
      begin
        t_reportfieldcampo.Value := str_new;
      end;
      t_reportfield.Next
    end;
    t_reportfield.MasterSource := ds_report;
  end; // ________________________ End of previous value existance condition ___
  // ____________________________________________ Update variable name field ___
  Sender.Value := newName;
end;


procedure Tdm_form.t_azioniazioneChange(Sender: TField);
begin
  // ___________________________________ Change start action name on program ___
  if (not(in_importazione)) and
     (t_programmiref.Value <> '') and
     (t_programmiref.Value = nomeactionprev) then
  begin
      t_programmi.Edit;
      t_programmiref.Value := Sender.AsString;
      t_programmi.Post;
  end;
end;


procedure Tdm_form.attiva_disattiva_prg(attivo: boolean);
begin
  //attiva e disattiva tutte le tabelle dei prg per CVS
  t_programmi.ReadOnly     := not (attivo);
  t_task.ReadOnly          := not (attivo);
  t_aggreg.ReadOnly        := not (attivo);
  t_usa_file.ReadOnly      := not (attivo);
  t_select.ReadOnly        := not (attivo);
  t_form.ReadOnly          := not (attivo);
  t_controlliform.ReadOnly := not (attivo);
  t_input_output.ReadOnly  := not (attivo);
  t_report.ReadOnly        := not (attivo);
  t_union.ReadOnly         := not (attivo);
  t_variabili_prg.ReadOnly := not (attivo);
  t_parametri.ReadOnly     := not (attivo);
  t_reportfield.ReadOnly   := not (attivo);
  t_espressioni.ReadOnly   := not (attivo);
  t_azioni.ReadOnly        := not (attivo);
  t_operazioni.ReadOnly    := not (attivo);
end;


procedure Tdm_form.attiva_disattiva_dbrep(attivo: boolean);
begin
  t_servers.ReadOnly   := not (attivo);
  t_databases.ReadOnly := not (attivo);

end;

procedure Tdm_form.attiva_disattiva_menu(attivo: boolean);
begin
  t_menu.ReadOnly := not (attivo);
end;

procedure Tdm_form.attiva_disattiva_models(attivo: boolean);
begin
  t_modelli.ReadOnly := not (attivo);

end;

procedure Tdm_form.attiva_disattiva_tables(attivo: boolean);
begin
  t_tabelle.ReadOnly     := not (attivo);
  t_campi.ReadOnly       := not (attivo);
  t_indicitesta.ReadOnly := not (attivo);
  t_indici.ReadOnly      := not (attivo);
end;


procedure Tdm_form.t_menuNewRecord(DataSet: TDataSet);
begin
  t_menuid_padre.Value := id_padre_per_menu;
end;


procedure Tdm_form.t_formNewRecord(DataSet: TDataSet);
begin
  if not(in_importazione) then
  begin
    t_formnomeform.Value := t_programminome.Value + '_' + IntToStr(t_form.RecordCount + 1);
    t_formmenu.Value:=false;
    t_formtmpselez.Value:=True;
  end;
end;

procedure Tdm_form.t_reportfieldNewRecord(DataSet: TDataSet);
begin
  t_reportfieldid.Value := t_reportfield.RecordCount + 1;
end;

procedure Tdm_form.t_espressionireturnChange(Sender: TField);
begin
  if f_sceltaexpr.Active = True then
  begin
    f_sceltaexpr.check_exp.Execute
  end;
end;

procedure Tdm_form.attiva_disattiva_appvars(attivo: boolean);
begin
  t_variabili_app.ReadOnly := not (attivo);

end;



procedure Tdm_form.t_operazioniCalcFields(DataSet: TDataSet);
var
  testotmp, tmp1, tmp2, tmp3, tmp4: string;
begin

  testotmp := t_operazionio2ref.Value;

  // _____________________________________________________________ Recordset ___
  if t_operazionioperazione.Value = 'Recordset' then
  begin
    tmp1     := ExtractWord(2, testotmp, [':']);
    tmp2     := Smash(chr(127), ExtractWord(1, testotmp, [':']));
    if tmp2 = '' then
    begin
      testotmp := '???';
    end
    else if tmp1 = '' then
    begin
      testotmp := tmp2 + ' ???';
    end
    else
    begin
      testotmp := tmp2 + ' :: ' + tmp1;
      t_operazioniview_calc.Value := tmp2;
    end;
  end
  // ______________________________________________________ Update & Confirm ___
  else if (t_operazionioperazione.Value = 'Update') or
          (t_operazionioperazione.Value = 'Confirm')  then
  begin
    tmp1     := ExtractWord(2, testotmp, [chr(129)]);
    tmp2     := Smash(chr(127), ExtractWord(1, testotmp, [chr(129)]));
    if tmp1 = '' then
    begin
      testotmp := '???';
    end
    else
    begin
      if tmp2 = 'prg§_§var' then
      begin
        tmp2 := '(LOCAL)';
      end
      else if tmp2 = '_o2SESSION' then
      begin
        tmp2 := '(SESSION)';
      end;
      testotmp := tmp2 + ' :: ' + tmp1;
      t_operazioniview_calc.Value  := tmp2;
      t_operazionifield_calc.Value := tmp1;
    end;
  end
  // ______________________________________________________ Return parameter ___
  else if t_operazionioperazione.Value = 'Return parameter' then
  begin
    tmp1 := ExtractWord(1, testotmp, [':']);
    tmp2 := ExtractWord(2, testotmp, [':']);
    if tmp1 = '' then
    begin
      testotmp := '???';
    end
    else
    begin
      testotmp := '(' + tmp1 + ') ' + tmp2;
    end;
  end
  // ________________________________________________________ Execute action ___
  else if t_operazionioperazione.Value = 'Execute action' then
  begin
    tmp1     := (ExtractWord(1, testotmp, [':']));
    tmp2     := (ExtractWord(2, testotmp, [':']));
    tmp3     := trim((ExtractWord(3, testotmp, [':'])));
    tmp3     := StringReplace(tmp3, chr(127), '', [rfReplaceAll]);
    tmp4     := LeftStr(StrLoCase(ExtractWord(4, testotmp, [':'])), 1);
    testotmp := tmp1;
    if tmp1 = '' then
    begin
      testotmp := '???';
    end
    else
    begin
      if tmp2 <> '' then
      begin
        if StrLower(tmp2) = 'true' then
        begin
          if tmp3 <> '' then
          begin
            testotmp := testotmp + ' (END TRUE ???)';
          end;
        end
        else if StrLower(tmp2) = 'false' then
        begin
          if tmp3 = '' then
          begin
            testotmp := testotmp + ' (NO END ???)';
          end;
        end
        else
        begin
          testotmp := testotmp + ' (END [' + tmp2 + '])';
        end;
      end;
      if tmp3 <> '' then
      begin
        testotmp := testotmp + ' >>> ' + tmp3;
        t_operazioniview_calc.Value := tmp3;
      end;
    end;
  end
  // ___________________________________________________________________ I/O ___
  else if t_operazionioperazione.Value = 'I/O' then
  begin
    tmp2 := ExtractWord(2, testotmp, [chr(144)]);
    tmp1 := Smash(chr(143), ExtractWord(1, testotmp, [chr(144)]));
    if t_operazioniexp3.Value = 0 then
    begin
      tmp3 := 'Definition';
    end
    else begin
      tmp3 := 'Line';
    end;
    testotmp := 'Protocol: [' + StrUpCase(tmp1) + '] on I/O: [' +
                StrUpCase(tmp2) + '] (' + tmp3 + ')';
    t_operazioniview_calc.Value  := tmp2;
    t_operazionifield_calc.Value := tmp1;
  end
  // _________________________________________________________________ Print ___
  else if t_operazionioperazione.Value = 'Print' then
  begin
    tmp1 := (ExtractWord(1, testotmp, [':']));
    tmp2 := (ExtractWord(2, testotmp, [':']));
    tmp3     := (ExtractWord(3, testotmp, [':']));
    tmp4     := StrLoCase(ExtractWord(4, testotmp, [':']));
    testotmp := 'ModelExp: <' + tmp1 + '> - PdfFileExp: <' + tmp2 + '>(...)';
  end
  // ______________________________________________________________ Call prg ___
  else if (t_operazionioperazione.Value = 'Call program') then
  begin
    if testotmp = '' then
    begin
      testotmp := '???';
    end;
    if t_operazioniservice.Value = 'Cached' then
    begin
      testotmp := testotmp + ' [cached]';
    end;
  end
  // __________________________________________________________________ Goto ___
  else if (t_operazionioperazione.Value = 'Go to') then
  begin
    if (t_operazionitipologia.Value = 'program') then
    begin
      if testotmp = '' then
      begin
        testotmp := '???';
      end;
    end
    else if (t_operazionitipologia.Value = 'url') then
    begin
      testotmp := '[URL]';
    end
    else
    begin
      testotmp := '???';
    end;
  end;
  // _______________________________________________ Set description in grid ___
  t_operazionio2ref_wide.Value := testotmp;
end;



procedure Tdm_form.t_campinomecampoChange(Sender: TField);
begin
  if t_campidbname.Value = '' then
  begin
    t_campidbname.Value := Sender.Value
  end;
end;

procedure Tdm_form.t_tabelleNomeChange(Sender: TField);
begin
  if t_tabelleNome_fisico.Value = '' then
  begin
    t_tabelleNome_fisico.Value := Sender.Value
  end;
end;

procedure Tdm_form.t_selectBeforePost(DataSet: TDataSet);
begin
  if ds_select.State = dsInsert then
  begin
    stato_recordset_select := 'I';
  end
  else
  begin
    stato_recordset_select := ''
  end;
end;

procedure Tdm_form.attiva_disattiva_labels(attivo: boolean);
begin
  t_labels.ReadOnly := not (attivo);
end;

procedure Tdm_form.t_labelsBeforeInsert(DataSet: TDataSet);
var
  i: integer;
  trovato_libero: boolean;

begin
  trovato_libero := False;
  i := 1;

  while not (trovato_libero) do
  begin

    if i <> DataSet.Lookup('id', i, 'id') then
    begin
      trovato_libero := True
    end;
    if not (trovato_libero) then
    begin
      Inc(i)
    end;
  end;

  id_assegnato := i;

end;

procedure Tdm_form.t_labelsNewRecord(DataSet: TDataSet);
begin
  t_labelsid.Value := id_assegnato;
end;


procedure Tdm_form.t_menuAfterEdit(DataSet: TDataSet);
begin
  dm_form.menu_modificato := True;
end;


procedure Tdm_form.t_serversAfterEdit(DataSet: TDataSet);
begin
  database_modificato := True
end;

procedure Tdm_form.t_serversAfterDelete(DataSet: TDataSet);
begin
  database_modificato := True
end;

procedure Tdm_form.t_databasesAfterDelete(DataSet: TDataSet);
begin
  database_modificato := True
end;



procedure Tdm_form.t_modelliAfterDelete(DataSet: TDataSet);
begin
  datatypes_modificato := True;
end;

procedure Tdm_form.t_modelliAfterEdit(DataSet: TDataSet);
begin
  datatypes_modificato := True;
end;

procedure Tdm_form.t_serversAfterInsert(DataSet: TDataSet);
begin
  database_modificato := True
end;

procedure Tdm_form.t_databasesAfterPost(DataSet: TDataSet);
begin
  database_modificato := True
end;

procedure Tdm_form.t_databasesAfterEdit(DataSet: TDataSet);
begin
  database_modificato := True
end;

procedure Tdm_form.t_databasesAfterInsert(DataSet: TDataSet);
begin
  database_modificato := True
end;

procedure Tdm_form.t_tabelleAfterEdit(DataSet: TDataSet);
begin
  tables_modificato := True;
end;

procedure Tdm_form.t_tabelleAfterInsert(DataSet: TDataSet);
begin
  tables_modificato := True;
end;

procedure Tdm_form.t_campiAfterDelete(DataSet: TDataSet);
begin
  tables_modificato := True;
end;

procedure Tdm_form.t_campiAfterEdit(DataSet: TDataSet);
begin
  tables_modificato := True;
end;

procedure Tdm_form.t_campiAfterInsert(DataSet: TDataSet);
begin
  tables_modificato := True;
end;

procedure Tdm_form.t_indicitestaAfterEdit(DataSet: TDataSet);
begin
  tables_modificato := True;
end;

procedure Tdm_form.t_indicitestaAfterInsert(DataSet: TDataSet);
begin
  tables_modificato := True;
end;

procedure Tdm_form.t_indiciAfterDelete(DataSet: TDataSet);
begin
  tables_modificato := True;
end;

procedure Tdm_form.t_indiciAfterEdit(DataSet: TDataSet);
begin
  tables_modificato := True;
end;

procedure Tdm_form.t_indiciAfterInsert(DataSet: TDataSet);
begin
  tables_modificato := True;
end;

procedure Tdm_form.t_modelliAfterInsert(DataSet: TDataSet);
begin
  datatypes_modificato := True;
end;

procedure Tdm_form.t_variabili_appAfterDelete(DataSet: TDataSet);
begin
  appvar_modificato := True
end;

procedure Tdm_form.t_variabili_appAfterEdit(DataSet: TDataSet);
begin
  appvar_modificato := True
end;

procedure Tdm_form.t_variabili_appAfterInsert(DataSet: TDataSet);
begin
  appvar_modificato := True
end;

procedure Tdm_form.t_labelsAfterDelete(DataSet: TDataSet);
begin
  labels_modificato := True
end;

procedure Tdm_form.t_labelsAfterEdit(DataSet: TDataSet);
begin
  labels_modificato := True
end;

procedure Tdm_form.t_labelsAfterInsert(DataSet: TDataSet);
begin
  labels_modificato := True
end;

procedure Tdm_form.t_applicazioneAfterEdit(DataSet: TDataSet);
begin
  appprop_modificato := True
end;

procedure Tdm_form.t_operazioniAfterDelete(DataSet: TDataSet);
begin

  program_modificato := True;

  //automatismo riga
  if idcampo_ope <> -1 then
  begin
    posizione_ope := t_operazioni.GetBookmark;

    //cancellazione si indietreggia di 1
    while not (t_operazioni.EOF) do
    begin
      t_operazioni.Edit;
      t_operazioniid.Value := t_operazioniid.Value - 1;
      t_operazioni.Next;
    end;

    //si riposiziona
    t_operazioni.Locate('id', idcampo_ope, []);
  end;
  idcampo_ope := 0;
  // fine automatismo riga

end;

procedure Tdm_form.t_operazioniAfterPost(DataSet: TDataSet);
var
  i, n: integer;
begin
  //inserimento  (automatismo riga)
  if (idcampo_ope <> 0) and (stato_recordset_ope = 'I') then
  begin


    t_operazioni.Last;

    n := t_operazioni.RecordCount - idcampo_ope;

    for i := 1 to n do
    begin
      t_operazioni.Edit;
      t_operazioniid.Value := t_operazioniid.Value + 1;
      t_operazioni.Prior;
    end;

    t_operazioni.Locate('id', -1, []);
    t_operazioni.Edit;
    t_operazioniid.Value := idcampo_ope;
    t_operazioni.Post;

    idcampo_ope := 0;
  end;

end;

procedure Tdm_form.t_operazioniAfterInsert(DataSet: TDataSet);
begin
  program_modificato := True;
end;

procedure Tdm_form.t_operazioniAfterEdit(DataSet: TDataSet);
begin
  program_modificato := True;
end;

procedure Tdm_form.t_operazioniBeforeDelete(DataSet: TDataSet);

begin
  //salva posizione per auto riga
  if DataSet.RecordCount = t_operazioniid.Value then
  begin
    idcampo_ope := -1
  end
  else begin
    idcampo_ope := t_operazioniid.Value
  end;

  // in caso di cancellazione execute action
  if (t_operazionioperazione.Value = 'Execute action') and (not(in_importazione)) then
  begin
      f_work.eliminasubitemtree(f_work.nodo_ultimo_selezionato, ExtractWord(1,t_operazionio2ref.Value, [':']));
  end;

end;

procedure Tdm_form.t_operazioniBeforeInsert(DataSet: TDataSet);
var tempnode: TTreeNode;
begin
 if not(da_Refresh) then
 begin
  if NOT(f_work.crea_con_F4) then idcampo_ope := DataSet.RecordCount + 1
  else
  begin
   if (DataSet.RecordCount=0) then
   idcampo_ope := 1
   else
   idcampo_ope := t_operazioniid.Value;
  end;
  f_work.crea_con_F4 := false;
end;
end;

procedure Tdm_form.t_operazioniBeforePost(DataSet: TDataSet);
var
 tmp_elenco_azioni : TStringList;
begin
  if ds_operazioni.State = dsInsert then
  begin
    stato_recordset_ope := 'I'
  end
  else begin
    stato_recordset_ope := ''
  end;

{   // in caso di execute action aggiorna supertree
  if (t_operazionioperazione.Value = 'Execute action') and (not(in_importazione)) and (t_operazionio2ref.OldValue <> t_operazionio2ref.Value) then
  begin

      if t_operazionio2ref.OldValue <> null then
      begin
      if t_azionifigli.Locate('subazione', ExtractWord(1,t_operazionio2ref.OldValue, [':']), []) then
         t_azionifigli.Delete;
      end;

      t_azionifigli.Insert;
      t_azionifiglisubazione.Value:=ExtractWord(1,t_operazionio2ref.Value, [':']);
      t_azionifigli.Post;

      //ricrea sottoramo
      f_work.nodo_ultimo_selezionato.DeleteChildren;
      tmp_elenco_azioni:= TStringList.Create;
//      f_work.creatreesubaction(f_work.nodo_ultimo_selezionato, t_operazioniazione.Value, tmp_elenco_azioni);


  end;
 }
end;



procedure Tdm_form.t_taskNewRecord(DataSet: TDataSet);
begin
    Inc(id_ultima_view);
    t_taskid.Value := id_ultima_view;
end;



procedure Tdm_form.t_selectAfterInsert(DataSet: TDataSet);

begin
    program_modificato := True;
end;

procedure Tdm_form.t_selectAfterPost(DataSet: TDataSet);
var
  appoggio: string;
  i, n: integer;
begin

  //inserimento  (automatismo riga)
  if (idcampo_select <> 0) and (stato_recordset_select = 'I') then
  begin
    t_select.Last;
    n := t_select.RecordCount - idcampo_select;

    for i := 1 to n do
    begin
      t_select.Edit;
      t_selectidcampo.Value := t_selectidcampo.Value + 1;
      t_select.Prior;
    end;

    t_select.Locate('idcampo', -1, []);
    t_select.Edit;
    t_selectidcampo.Value := idcampo_select;

    t_select.Post;

    idcampo_select := 0;
  end;

  if  t_selectcon_nome.Value = '' then
  begin
   appoggio:=f_work.determina_alias_select(t_selectcampo.Value);
   t_select.Edit;
   t_selectcon_nome.Value:=appoggio;
   t_select.Post;
  end;
end;



procedure Tdm_form.t_selectBeforeInsert(DataSet: TDataSet);
var
 campo: TListItem;
begin
  if NOT(f_work.crea_con_F4) then idcampo_select := DataSet.RecordCount + 1
  else
  begin
   if (DataSet.RecordCount=0) then
   idcampo_select := 1
   else
   idcampo_select := t_selectidcampo.Value;
  end;
f_work.crea_con_F4 := false;

  
end;

procedure Tdm_form.t_selectBeforeDelete(DataSet: TDataSet);
begin
 //salva posizione per auto riga
  if DataSet.RecordCount = t_selectidcampo.Value then
  begin
    idcampo_select := -1
  end
  else begin
    idcampo_select := t_selectidcampo.Value
  end;

end;

procedure Tdm_form.t_selectAfterDelete(DataSet: TDataSet);
begin
  program_modificato := True;
  t_select.DisableControls;
  //automatismo riga
  if idcampo_select <> -1 then
  begin
    posizione_ope := t_select.GetBookmark;

    //cancellazione si indietreggia di 1
    while not (t_select.EOF) do
    begin
      t_select.Edit;
      t_selectidcampo.Value := t_selectidcampo.Value - 1;
      t_select.Next;
    end;

    //si riposiziona
    t_select.Locate('idcampo', idcampo_select, []);
  end;
  idcampo_select := 0;
  t_select.EnableControls;

  // fine automatismo riga
end;




procedure Tdm_form.t_programmiAfterEdit(DataSet: TDataSet);
begin
  program_modificato:=true;
end;

procedure Tdm_form.t_taskAfterDelete(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_taskAfterInsert(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_taskAfterEdit(DataSet: TDataSet);
begin
  program_modificato:=true;
end;

procedure Tdm_form.t_unionAfterDelete(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_unionAfterEdit(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_unionAfterInsert(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_aggregAfterDelete(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_aggregAfterEdit(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_aggregAfterInsert(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_variabili_prgAfterDelete(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_variabili_prgAfterEdit(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_variabili_prgAfterInsert(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_usa_fileAfterDelete(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_usa_fileAfterEdit(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_usa_fileAfterInsert(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_parametriAfterDelete(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_parametriAfterEdit(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_parametriAfterInsert(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_selectAfterEdit(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_formAfterInsert(DataSet: TDataSet);
begin
if not(in_importazione) then program_modificato:=true;
end;

procedure Tdm_form.t_formAfterDelete(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_formAfterEdit(DataSet: TDataSet);
begin
if not(in_importazione) then program_modificato:=true;
end;

procedure Tdm_form.t_controlliformAfterDelete(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_controlliformAfterEdit(DataSet: TDataSet);
begin
if not(in_importazione) then program_modificato:=true;
end;

procedure Tdm_form.t_controlliformAfterInsert(DataSet: TDataSet);
begin
if not(in_importazione) then program_modificato:=true;
end;

procedure Tdm_form.t_espressioniAfterInsert(DataSet: TDataSet);
begin
  if Not(in_importazione) then program_modificato:=true;
end;

procedure Tdm_form.t_espressioniAfterEdit(DataSet: TDataSet);
begin
if Not(in_importazione) then  program_modificato:=true;
end;

procedure Tdm_form.t_espressioniAfterDelete(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_azioniAfterDelete(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_azioniAfterEdit(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_azioniAfterInsert(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_input_outputAfterInsert(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_input_outputAfterDelete(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_input_outputAfterEdit(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_reportAfterEdit(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_reportAfterDelete(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_reportAfterInsert(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_reportfieldAfterInsert(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_reportfieldAfterEdit(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_reportfieldAfterDelete(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_usa_filecon_nomeSetText(Sender: TField;
                                             const Text: String);
var newName : String;
begin
  newName := formatName(Text);
  // ________________________________________ Replace table alias in selects ___
  t_select.First;
  while not (t_select.Eof) do
  begin
    if  t_selecttabella.Value = t_usa_filecon_nome.Value then
    begin
      t_select.Edit;
      t_selecttabella.Value := newName;
    end;
    t_select.Next;
  end;
  Sender.Value := newName;
end;

procedure Tdm_form.t_tabelleBeforeDelete(DataSet: TDataSet);
begin
  ultimo_id_eliminato:=t_tabelleId.Value;
  //elimina collegamenti
  while (t_campiid_tabella.Value <> 0) do
  begin
    t_campi.Delete;
    t_campi.Next;
  end;

  while (t_indicitestaid_tabella.Value <> 0) do
  begin
    t_indicitesta.Delete;
    t_indicitesta.Next;
  end;
end;



procedure Tdm_form.t_espressioniCalcFields(DataSet: TDataSet);
var
espr_local :  string;
r: TRegExpr;
begin
  if Not(in_importazione) then
  begin
    espr_local:= trim(t_espressioniexpr.Value) + chr(13) + chr(10) + trim(t_espressionireturn.Value);

    // rintraccia parametri e decodifica
    r:=TRegExpr.Create;

    r.Expression:='o2par\((\d*)\)';

    if r.exec(espr_local) then
    begin
      repeat
         if t_parametri.Locate('id', r.Match[1], []) then
          espr_local := StringReplace(espr_local, r.Match[0], 'o2par("'+t_parametri.Lookup('id', r.Match[1],'nome')+'")', [rfReplaceAll]);
      until not r.ExecNext
    end;
    t_espressioniestesa.Value:=espr_local;
   end;
end;

procedure Tdm_form.t_usa_fileNewRecord(DataSet: TDataSet);
var id_ultimo : integer;
  temp_table_local:  TClientDataSet;
begin


 if not(in_importazione) then

 begin
      temp_table_local := TClientDataSet.Create(nil);
      temp_table_local.CloneCursor(t_usa_file, false, true);


      temp_table_local.Last;

      if temp_table_local.RecordCount = 0 then id_ultimo:=0 else
      id_ultimo:=temp_table_local.FieldValues['idriga'];


      t_usa_fileidriga.Value := id_ultimo + 1;
      if t_usa_file.RecordCount = 0 then t_usa_filetipo.Value:='Main' else t_usa_filetipo.Value:='Link';


      temp_table_local.Free;
  end;
end;





procedure Tdm_form.attiva_disattiva_apphandlers(attivo: boolean);
begin
      t_apphandlers.ReadOnly   := not (attivo);
end;

procedure Tdm_form.t_apphandlersCalcFields(DataSet: TDataSet);
var tmphk:THotKey;
begin

//  t_apphandlerskeychar.Value:=ShortCutToText(t_apphandlerskey.AsVariant);
end;

procedure Tdm_form.t_indicitestaBeforeDelete(DataSet: TDataSet);
begin
  //elimina segmenti
  while (t_indiciid_indice.Value <> 0) do
  begin
    t_indici.Delete;
    t_indici.Next;
  end;


  tables_modificato := True;
end;



procedure Tdm_form.t_serversNewRecord(DataSet: TDataSet);
begin
  if t_serverschunksize.AsString='' then t_serverschunksize.Value:=0;
end;


procedure Tdm_form.t_databasesNewRecord(DataSet: TDataSet);
begin
    t_databasescheck_esist_tab.Value:=true;
end;







procedure Tdm_form.t_tabelleIdChange(Sender: TField);
begin
{  // cambia i collegati
  if (Sender.OldValue <> null) and (t_tabelle.State<>dsInsert) then
  begin
    t_campi.First;
    while not (t_campi.Eof) do
    begin
      t_campi.Edit;
      t_campiid_tabella.Value:=t_tabelleId.Value;
      t_campi.Post;

      t_campi.Next;
    end;

    t_indicitesta.First;
    while not (t_indicitesta.Eof) do
    begin
      t_indicitesta.Edit;
      t_indicitestaid_tabella.Value:=t_tabelleId.Value;
      t_indicitesta.Post;
      ShowMessage(t_indicitestaid_tabella.AsString);
      t_indicitesta.Next;
    end;
  end;
 }
end;

procedure Tdm_form.t_tabelleIdSetText(Sender: TField; const Text: String);
begin
  // cambia i collegati
  if (Sender.Value <> null) and (t_tabelle.State <> dsInsert) then
  begin
//    t_campi.Filter:='id_tabella = '+t_tabelleId.AsString;
//    t_campi.Filtered:=true;
    t_campi.First;
    while not (t_campi.Eof) do
    begin
      t_campi.Edit;
      t_campiid_tabella.Value:= StrToInt(Text);
      t_campi.Post;
    end;

//    t_indicitesta.Filter:='id_tabella = '+t_tabelleId.AsString;
//    t_indicitesta.Filtered:=true;
    t_indicitesta.First;
    while not (t_indicitesta.Eof) do
    begin
//      t_indici.Filter:='id_tabella = '+t_tabelleId.AsString +' and id_indice = '+ t_indicitestaid_indice.AsString ;
//      t_indici.Filtered:=true;
      t_indici.First;
      while not (t_indici.Eof) do
      begin
        t_indici.Edit;
        t_indiciid_tabella.Value:=strtoint(Text);
        t_indici.Post;
      end;
      t_indicitesta.Edit;
      t_indicitestaid_tabella.Value:=StrToInt(Text);

      t_indicitesta.Post;

    end;
  end;
  Sender.Value := Text;
end;


function Tdm_form.datetoo2date(date: TDateTime): String;
begin
      result:= FormatDateTime('yyyymmdd', date);
end;

procedure Tdm_form.t_parametriidSetText(Sender: TField;
                                        const Text: String);
var
  str_old, str_new: string;
  progr, i: Integer;
begin

  //se c'e' variazione di valore preesistente
  if Sender.AsString <> '' then
  try
    in_importazione:=true;
    t_operazioni.DisableControls;
    t_espressioni.DisableControls;

    //espressioni

    t_espressioni.First;
    while not t_espressioni.EOF do
    begin
      t_espressioni.Edit;

     // ShowMessage(t_espressioniidexp.AsString);
      str_old := 'o2par('+Sender.AsString+')';
      str_new := 'o2par('+Text+')';

      t_espressionireturn.Value :=
        StringReplace(t_espressionireturn.Value, str_old, str_new, [rfReplaceAll]);
      t_espressioniexpr.Value   := StringReplace(t_espressioniexpr.Value,
        str_old, str_new, [rfReplaceAll]);

      t_espressioni.Next
    end;


    //sistema istruzioni
    //operazioni
    str_old := Sender.AsString+'::'+t_parametrinome.Value;
    str_new := Text+'::'+t_parametrinome.Value;
    t_operazioni.MasterSource := nil;
    t_operazioni.First;
    while not t_operazioni.EOF do
    begin
       t_operazioni.Edit;

       if (t_operazionioperazione_look.Value='Return parameter') then
       begin
         t_operazionio2ref.Value     := StringReplace(t_operazionio2ref.Value,
          str_old, str_new, [rfReplaceAll]);
         t_operazionicallparam.Value :=
          StringReplace(t_operazionicallparam.Value, str_old, str_new, [rfReplaceAll]);
      end;

      t_operazioni.Next
    end;
    t_operazioni.MasterSource := ds_azioni;


  finally
    t_operazioni.EnableControls;
    t_espressioni.EnableControls;
    in_importazione:=false;
  end;

  Sender.Value := text;

end;

procedure Tdm_form.t_variabili_actAfterDelete(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_variabili_actAfterEdit(DataSet: TDataSet);
begin
program_modificato:=true;
end;

procedure Tdm_form.t_variabili_actAfterInsert(DataSet: TDataSet);
begin
program_modificato:=true;
end;


procedure Tdm_form.tmp_callparamsAfterInsert(DataSet: TDataSet);
begin
  tmp_callparamsID.Value    := tmp_callparams.RecordCount + 1;
  tmp_callparamsName.Value  := '(Anonymous parameter)';
  tmp_callparamsModel.Value := '(Unknown)';
end;

procedure Tdm_form.tmp_callparamsBeforePost(DataSet: TDataSet);
begin
  // ______________________________ Field reference set but wrong param type ___
  if (tmp_callparamsField.Value <> '') and
     (tmp_callparamsType.Value <> 'Ref') then
  begin
    // ____________ Type to 'Exp' and expression set: remove field reference ___
    if (tmp_callparamsType.Value = 'Exp') and (tmp_callparamsExp.Value > 0) then
    begin
      tmp_callparamsField.Value := '';
    end
    // __________________________________________________ Fix parameter type ___
    else
    begin
      tmp_callparamsType.Value := 'Ref';
      tmp_callparamsExp.Value  := 0;
    end;
  end
  // ___________________________________ Expression set but wrong param type ___
  else if (tmp_callparamsExp.Value > 0) and
          (tmp_callparamsType.Value <> 'Exp') then
  begin
    // ____________ Type to 'Ref' and field reference set: remove expression ___
    if (tmp_callparamsType.Value = 'Ref') and
       (tmp_callparamsField.Value <> '') then
    begin
      tmp_callparamsExp.Value := 0;
    end
    // __________________________________________________ Fix parameter type ___
    else
    begin
      tmp_callparamsType.Value  := 'Exp';
      tmp_callparamsField.Value := '';
    end;
  end;
end;


{*
 * Used to format logical names in repositories.
 * String is returned with spaces and not allowed chars replaced with "_".
 *}
function Tdm_form.formatName(logName: String): String;
var r: TRegExpr;
begin
  r            := TRegExpr.Create;
  r.Expression := '\W';
  if r.Exec(logName) then
  begin
    logName := r.Replace(logName, '_', false);
  end;
  result:= logName;
end;

procedure Tdm_form.t_modelliidmodelloSetText(Sender: TField;
                                             const Text: String);
begin
  Sender.Value := formatName(Text);
end;

procedure Tdm_form.t_variabili_appaliasSetText(Sender: TField;
  const Text: String);
begin
  Sender.Value := formatName(Text);
end;

procedure Tdm_form.t_serversnomeserverSetText(Sender: TField;
  const Text: String);
begin
  Sender.Value := formatName(Text);
end;

procedure Tdm_form.t_databasesnomedbSetText(Sender: TField;
                                            const Text: String);
begin
  Sender.Value := formatName(Text);
end;

procedure Tdm_form.t_tabelleNomeSetText(Sender: TField;
  const Text: String);
begin
  Sender.Value := formatName(Text);
end;

procedure Tdm_form.t_tabelleNome_fisicoSetText(Sender: TField;
  const Text: String);
begin
  Sender.Value := formatName(Text);
end;

procedure Tdm_form.t_campinomecampoSetText(Sender: TField;
  const Text: String);
begin
  Sender.Value := formatName(Text);
end;

procedure Tdm_form.t_campidbnameSetText(Sender: TField;
  const Text: String);
begin
  Sender.Value := formatName(Text);
end;

procedure Tdm_form.t_indicitestanomekeySetText(Sender: TField;
  const Text: String);
begin
  Sender.Value := formatName(Text);
end;

procedure Tdm_form.t_parametrinomeSetText(Sender: TField;
  const Text: String);
begin
  Sender.Value := formatName(Text);
end;


procedure Tdm_form.t_reportfieldCalcFields(DataSet: TDataSet);
var
  f_name, v_name: string;
begin
  if t_reportfieldcampo.Value <> '' then
  begin
    v_name := StringReplace(ExtractWord(1, t_reportfieldcampo.Value, [#129]),
                            #127,
                            '',
                            [rfReplaceAll]);
    f_name := Trim(ExtractWord(2, t_reportfieldcampo.Value, [#129]));
    if v_name = 'prg§_§var' then
    begin
      v_name := '(LOCAL)';
    end
    else if v_name = '_o2SESSION' then
    begin
      v_name := '(SESSION)';
    end;
    // _____________________________________________ Set description in grid ___
    t_reportfieldshown_field.Value := v_name + ' :: ' + f_name;
  end
  else
  begin
    t_reportfieldshown_field.Value := '';
  end;
end;

procedure Tdm_form.t_input_outputCalcFields(DataSet: TDataSet);
begin
  if t_input_outputoutputfile.Value <> 0 then
  begin
    t_espressioni.Locate('idexp', t_input_outputoutputfile.Value, []);
    if Length(t_espressionireturn.Value) <= 100 then
    begin
      t_input_outputdecode_exp.Value := t_espressionireturn.Value;
    end
    else
    begin
      t_input_outputdecode_exp.Value := Copy(t_espressionireturn.Value, 0, 70) + ' [...]';
    end;
  end
  else
  begin
    t_input_outputdecode_exp.Value := '';
  end;
end;

procedure Tdm_form.t_controlliformnomecontrolloSetText(Sender: TField;
                                                       const Text: String);
var
  newName, str_new: string;
  r: TRegExpr;
begin
{ =================== MISSING HANDLER FOR CONTROLNAME CHANGE ===================

  // _______________________________ Format new name with only allowed chars ___
  newName := formatName(Text);
  r       := TRegExpr.Create;
  // _____________________________________ Check control name in expressions ___
  t_espressioni.First;
  while not t_espressioni.EOF do
  begin
    t_espressioni.Edit;
    // _____________________________________ Check and replace in o2ctrl_*() ___
    r.Expression              := 'o2ctrl(\w+)\s*\(\s*["' + #39 + ']' +
                                 t_controlliformnomeform.Value + '["' + #39 +
                                 ']\s*,\s*["' + #39 + ']' + Sender.AsString +
                                 '["' + #39 + ']\s*\)';
    str_new                   := 'o2$1(' + #39 + t_controlliformnomeform.Value +
                                           #39 + ',' + #39 + newName + #39 +')';
    t_espressionireturn.Value := r.Replace(t_espressionireturn.Value,
                                           str_new,
                                           True);
    t_espressioniexpr.Value   := r.Replace(t_espressioniexpr.Value,
                                           str_new,
                                           True);
    t_espressioni.Post;
    t_espressioni.Next
  end;
  // _____________________________________________ Update control name field ___
  Sender.Value := newName;
}
end;

procedure Tdm_form.t_formBeforePost(DataSet: TDataSet);
var
  CDSClone: TCustomClientDataSet;
  newName, oldName, str_new: String;
  r: TRegExpr;
begin
  if DataSet.Fields[1].AsString <> '' then
  begin
    // _____________________________ Format new name with only allowed chars ___
    newName := formatName(DataSet.Fields[1].AsString);
    oldName := DataSet.Fields[1].OldValue;
    // _________________________________________________ If FormName chenged ___
    if (newName <> oldName) then
    begin
      // ____________________________ Look for new name in alternate dataset ___
      CDSClone := TCustomClientDataSet.Create(dm_form);
      CDSClone.CloneCursor(t_form, False, False);
      if CDSClone.Locate('nomeform', newName, []) then
      begin
        ShowMessage('Form name ' + newName + ' already exists!');
        DataSet.Fields[1].Value := oldName;
        Abort;
      end
      // __________________________________________ New name is a valid name ___
      else
      begin
        t_controlliform.MasterSource := nil;
        t_controlliform.First;
        while not (t_controlliform.EOF) do
        begin
          // __________________________________ Change form name in controls ___
          if t_controlliformnomeform.Value = oldName then
          begin
            t_controlliform.Edit;
            t_controlliformnomeform.Value := newName;
            if t_controlliformparent.Value = '_stage_' + oldName then
            begin
              t_controlliformparent.Value := '_stage_' + newName
            end;
            t_controlliform.Post;
          end;
          t_controlliform.Next;
        end;
        // __________________________________ Check form name in expressions ___
        t_espressioni.First;
        r := TRegExpr.Create;
        while not t_espressioni.EOF do
        begin
          t_espressioni.Edit;
          // ________________________________ Check and replace in o2form*() ___
          r.Expression              := 'o2form(\w+)\s*\(["' + #39 + ']' +
                                        oldName + '["' + #39 + ']';
          str_new                   := 'o2form$1(' + #39 + newName + #39;
          t_espressionireturn.Value := r.Replace(t_espressionireturn.Value,
                                                 str_new,
                                                 True);
          t_espressioniexpr.Value   := r.Replace(t_espressioniexpr.Value,
                                                 str_new,
                                                 True);
          // ________________________________ Check and replace in o2ctrl*() ___
          r.Expression              := 'o2ctrl(\w+)\s*\(["' + #39 + ']' +
                                        oldName + '["' + #39 + ']';
          str_new                   := 'o2ctrl$1(' + #39 + newName + #39;
          t_espressionireturn.Value := r.Replace(t_espressionireturn.Value,
                                                 str_new,
                                                 True);
          t_espressioniexpr.Value   := r.Replace(t_espressioniexpr.Value,
                                                 str_new,
                                                 True);
          t_espressioni.Next
        end;
      end;
    CDSClone.Close;
    CDSClone.Free;
    end;
  end
  else
  begin
    ShowMessage('Insert a valid name for the form!');
    DataSet.Fields[1].Value := oldName;
    Abort;
  end;
end;


procedure Tdm_form.t_formulas_sqlBeforePost(DataSet: TDataSet);
begin
  // ______________________________ Field reference set but wrong param type ___
  if (t_formulas_sqlField.Value <> '') and
     (t_formulas_sqlType.Value <> 'Ref') then
  begin
    // ____________ Type to 'Exp' and expression set: remove field reference ___
    if (t_formulas_sqlType.Value = 'Exp') and (t_formulas_sqlExp.Value > 0) then
    begin
      t_formulas_sqlField.Value := '';
    end
    // __________________________________________________ Fix parameter type ___
    else
    begin
      t_formulas_sqlType.Value := 'Ref';
      t_formulas_sqlExp.Value  := 0;
    end;
  end
  // ___________________________________ Expression set but wrong param type ___
  else if (t_formulas_sqlExp.Value > 0) and
          (t_formulas_sqlType.Value <> 'Exp') then
  begin
    // ____________ Type to 'Ref' and field reference set: remove expression ___
    if (t_formulas_sqlType.Value = 'Ref') and
       (t_formulas_sqlField.Value <> '') then
    begin
      t_formulas_sqlExp.Value := 0;
    end
    // __________________________________________________ Fix parameter type ___
    else
    begin
      t_formulas_sqlType.Value  := 'Exp';
      t_formulas_sqlField.Value := '';
    end;
  end;
  // __________________________________________________ Delete empty records ___
  if (t_formulas_sqlExp.Value = 0) and (t_formulas_sqlField.Value = '') then
  begin
    DataSet.Cancel;
    Abort;
  end;
end;


procedure Tdm_form.t_formulas_sqlAfterPost(DataSet: TDataSet);
  var missID, nextID: integer;
begin
  if t_formulas_sqlID.Value < 1 then
  begin
    missID := t_formulas_sqlID.Value;
    t_formulas_sql.Last;
    nextID := t_formulas_sqlID.Value + 1;
    t_formulas_sql.Locate('ID', missID, []);
    t_formulas_sql.Edit;
    t_formulas_sqlID.Value := nextID;
    t_formulas_sql.Post;
  end;
end;

procedure Tdm_form.t_formulas_sqlAfterInsert(DataSet: TDataSet);
begin
  t_formulas_sqlID.Value := -1;
end;

procedure Tdm_form.t_input_outputnomeSetText(Sender: TField;
  const Text: String);
begin
  Sender.Value := formatName(Text);
end;

procedure Tdm_form.t_reportaliasSetText(Sender: TField;
  const Text: String);
begin
  Sender.Value := formatName(Text);
end;

procedure Tdm_form.t_reportfieldaliasSetText(Sender: TField;
  const Text: String);
begin
  Sender.Value := formatName(Text);
end;

end.


