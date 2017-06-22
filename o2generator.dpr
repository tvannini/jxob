program o2generator;

uses
  Forms,
  work in 'work.pas' {f_work},
  area_form in 'area_form.pas' {f_areaform},
  dm in 'dm.pas' {dm_form: TDataModule},
  export in 'export.pas' {f_export},
  import in 'import.pas' {f_import},
  itemslist in 'itemslist.pas' {f_listbox},
  nuovoprogetto in 'nuovoprogetto.pas' {f_nuovoprogetto},
  oggetti_form in 'oggetti_form.pas' {f_oggettiform},
  parametri in 'parametri.pas' {f_parametri_in},
  phpeditor in 'phpeditor.pas' {f_phpeditor},
  scelta_css in 'scelta_css.pas' {f_scelta_css},
  scelta_message in 'scelta_message.pas' {f_message},
  scelta_tipo_select in 'scelta_tipo_select.pas' {f_tipo_select},
  sceltaazione in 'sceltaazione.pas' {f_sceltaazione},
  sceltacampiprg in 'sceltacampiprg.pas' {f_sceltacampiprg},
  sceltachiavefile in 'sceltachiavefile.pas' {f_sceltachiave},
  sceltadbengine in 'sceltadbengine.pas' {f_sceltadbengine},
  sceltaespressioni in 'sceltaespressioni.pas' {f_sceltaexpr},
  sceltafiletask in 'sceltafiletask.pas' {f_sceltafiletask},
  sceltamodello in 'sceltamodello.pas' {f_sceltamodel},
  sceltaprogramma in 'sceltaprogramma.pas' {f_sceltaprogramma},
  sceltarecordset in 'sceltarecordset.pas' {f_sceltarecordset},
  sceltaserver in 'sceltaserver.pas' {f_sceltaserver},
  sceltastatiview in 'sceltastatiview.pas' {f_sceltastatiview},
  sceltatabella in 'sceltatabella.pas' {f_sceltatabella},
  sceltatipodato in 'sceltatipodato.pas' {f_selecttype},
  sceltaview in 'sceltaview.pas' {f_sceltaview},
  checkprg in 'checkprg.pas' {f_checkprg},
  parametri_call in 'parametri_call.pas' {f_parametri},
  vers in 'vers.pas' {f_vers},
  sceltadb in 'sceltadb.pas' {f_sceltadb},
  sceltaio in 'sceltaio.pas' {f_scelta_output},
  print in 'print.pas' {f_print},
  valori_tstrings in 'valori_tstrings.pas' {f_tstrings},
  scelta_tabsheet in 'scelta_tabsheet.pas' {f_scelta_tabsheet},
  users in 'users.pas' {f_users},
  sceltamenu in 'sceltamenu.pas' {f_sceltamenu},
  locate in 'locate.pas' {f_locate},
  about in 'about.pas' {AboutBox},
  conversioni in 'conversioni.pas' {f_conversioni},
  DosCommand in 'DosCommand.pas',
  import_0_0_0 in 'import_0_0_0.pas' {f_import_0_0_0},
  sceltacampiview in 'sceltacampiview.pas' {f_scelta_campiview},
  go_to in 'go_to.pas' {f_goto},
  editorphp in 'editorphp.pas' {f_editorphp},
  getdef in 'getdef.pas' {f_getdef},
  sceltalabel in 'sceltalabel.pas' {f_sceltalabel},
  Caption in 'caption.pas' {f_caption},
  login in 'login.pas' {f_login},
  Controls,
  preferences in 'preferences.pas' {f_config},
  copymove in 'copymove.pas' {f_copymove},
  importfrom in 'importfrom.pas' {f_importfrom},
  find in 'find.pas' {f_find},
  sceltacampotab in 'sceltacampotab.pas' {f_sceltacampotab},
  formgenerator in 'formgenerator.pas' {Form1},
  tabdef in 'tabdef.pas' {f_tabdef},
  crossref in 'crossref.pas' {f_crossref},
  newview in 'newview.pas' {f_newview},
  dbnavprop in 'dbnavprop.pas' {f_dbnavigator},
  wizmask in 'wizmask.pas' {f_wizmask},
  shortcut in 'shortcut.pas' {f_shortcut},
  scelta_da_list in 'scelta_da_list.pas' {f_scelta_da_list},
  debug in 'debug.pas' {f_debug};

{$R *.res}

begin
  Application.Initialize;

  begin
    Application.Title := 'Janox Open Builder';
    Application.CreateForm(Tdm_form, dm_form);
    Application.CreateForm(Tf_work, f_work);
    Application.CreateForm(Tf_editorphp, f_editorphp);
    Application.CreateForm(Tf_config, f_config);
    Application.CreateForm(Tf_copymove, f_copymove);
    Application.CreateForm(Tf_importfrom, f_importfrom);
    Application.CreateForm(Tf_find, f_find);
    Application.CreateForm(Tf_sceltacampotab, f_sceltacampotab);
    Application.CreateForm(TForm1, Form1);
    Application.CreateForm(Tf_tabdef, f_tabdef);
    Application.CreateForm(Tf_crossref, f_crossref);
    Application.CreateForm(Tf_newview, f_newview);
    Application.CreateForm(Tf_dbnavigator, f_dbnavigator);
    Application.CreateForm(Tf_wizmask, f_wizmask);
    Application.CreateForm(Tf_shortcut, f_shortcut);
    Application.CreateForm(Tf_scelta_da_list, f_scelta_da_list);
    Application.CreateForm(Tf_debug, f_debug);
      f_login := Tf_login.Create(Application);
      f_login.ShowModal;
      f_login.Update;
    Application.CreateForm(Tf_areaform, f_areaform);
    Application.CreateForm(Tf_export, f_export);
    Application.CreateForm(Tf_import, f_import);
    Application.CreateForm(Tf_listbox, f_listbox);
    Application.CreateForm(Tf_nuovoprogetto, f_nuovoprogetto);
    Application.CreateForm(Tf_oggettiform, f_oggettiform);
    Application.CreateForm(Tf_parametri_in, f_parametri_in);
    Application.CreateForm(Tf_phpeditor, f_phpeditor);
    Application.CreateForm(Tf_scelta_css, f_scelta_css);
    Application.CreateForm(Tf_message, f_message);
    Application.CreateForm(Tf_tipo_select, f_tipo_select);
    Application.CreateForm(Tf_sceltaazione, f_sceltaazione);
    Application.CreateForm(Tf_sceltacampiprg, f_sceltacampiprg);
    Application.CreateForm(Tf_sceltachiave, f_sceltachiave);
    Application.CreateForm(Tf_sceltadbengine, f_sceltadbengine);
    Application.CreateForm(Tf_sceltaexpr, f_sceltaexpr);
    Application.CreateForm(Tf_sceltafiletask, f_sceltafiletask);
    Application.CreateForm(Tf_sceltamodel, f_sceltamodel);
    Application.CreateForm(Tf_sceltaprogramma, f_sceltaprogramma);
    Application.CreateForm(Tf_sceltarecordset, f_sceltarecordset);
    Application.CreateForm(Tf_sceltaserver, f_sceltaserver);
    Application.CreateForm(Tf_sceltastatiview, f_sceltastatiview);
    Application.CreateForm(Tf_sceltatabella, f_sceltatabella);
    Application.CreateForm(Tf_selecttype, f_selecttype);
    Application.CreateForm(Tf_sceltaview, f_sceltaview);
    Application.CreateForm(Tf_tabdef, f_tabdef);
    Application.CreateForm(Tf_checkprg, f_checkprg);
    Application.CreateForm(Tf_parametri, f_parametri);
    Application.CreateForm(Tf_vers, f_vers);
    Application.CreateForm(Tf_sceltadb, f_sceltadb);
    Application.CreateForm(Tf_scelta_output, f_scelta_output);
    Application.CreateForm(Tf_print, f_print);
    Application.CreateForm(Tf_tstrings, f_tstrings);
    Application.CreateForm(Tf_scelta_tabsheet, f_scelta_tabsheet);
    Application.CreateForm(Tf_users, f_users);
    Application.CreateForm(Tf_sceltamenu, f_sceltamenu);
    Application.CreateForm(Tf_locate, f_locate);
    Application.CreateForm(Tf_conversioni, f_conversioni);
    Application.CreateForm(Tf_import_0_0_0, f_import_0_0_0);
    Application.CreateForm(Tf_scelta_campiview, f_scelta_campiview);
    Application.CreateForm(Tf_goto, f_goto);
    Application.CreateForm(Tf_getdef, f_getdef);
    Application.CreateForm(Tf_sceltalabel, f_sceltalabel);
    Application.CreateForm(Tf_caption, f_caption);
    Application.CreateForm(TAboutBox, AboutBox);
    Application.Run;
  end;

end.
