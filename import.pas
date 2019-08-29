unit import;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ActnList, XPStyleActnCtrls, ActnMan, regexpr, DB,
  ComCtrls, inifiles, JclStrings, StrUtils, jbstr, Grids, ValEdit, DBClient;

type
  Tf_import = class(TForm)
    programma: TMemo;
    ActionList1: TActionList;
    app_import: TAction;
    dbtab_import: TAction;
    svuota_tab_prg: TAction;
    models_import: TAction;
    menu_import: TAction;
    tables_import: TAction;
    db_import: TAction;
    appini_import: TAction;
    selezione_intermedia: TMemo;
    tab_users: TMemo;
    tab_sessions: TMemo;
    tab_options: TMemo;
    vars_import: TAction;
    prg_views: TMemo;
    prf_views: TMemo;
    labels_import: TAction;
    tab_rights: TMemo;
    tab_roles: TMemo;
    tab_rightrole: TMemo;
    tab_rolesuser: TMemo;
    apphandlers_import: TAction;
    Memo1: TMemo;
    procedure prg_importExecute(Sender: TObject; nomeprogramma: string;  importpath : string = '');
    procedure app_importExecute(Sender: TObject);
    procedure dbtab_importExecute(Sender: TObject);
    procedure carica_proprieta_controllo(Sender: TObject; nomecontrollo: string;
      nomeform: string);
    procedure svuota_tab_prgExecute(Sender: TObject);
    procedure models_importExecute(Sender: TObject);
    procedure menu_importExecute(Sender: TObject);
    procedure appini_importExecute(Sender: TObject);
    procedure db_importExecute(Sender: TObject);
    procedure tables_importExecute(Sender: TObject);
    procedure vars_importExecute(Sender: TObject);
    procedure labels_importExecute(Sender: TObject);
    procedure apphandlers_importExecute(Sender: TObject);
  	procedure call_log(testolog: string);

  private
    r: TRegExpr;
    r2: TRegExpr;
    r3: TRegExpr;
    r4: TRegExpr;
    r5: TRegExpr;
    { Private declarations }
  public
    build_1_file: integer;
    build_file: string;
    crossref_oggetto, crossref_ricerca, crossref_ricerca_parent : string;
    function decodifica_css(stringa: string): string;
    function decodifica_exp(stringa, nomeprogramma: string): string;
    function form_val_prop(proprieta, nomeform, selezione3: string;
      r3: TRegExpr; programma: TMemo; togli_virgolette: boolean = False): string;
    function ctrl_prop(proprieta: string; togli_virgolette: boolean = False): string;
    function decodifica_exp_stringa(stringa, nomeprogramma: string): string;



    { Public declarations }
  end;

var
  f_import: Tf_import;

implementation

uses dm, work, start, conversioni, crossref, sceltacampiprg, export;

{$R *.dfm}


procedure Tf_import.prg_importExecute(Sender:        TObject;
                                      nomeprogramma: string;
                                      importpath:    string = '');
var
  selezione, selezione2, selezione3, nomeprg, nometask, nomecontrollo, tipo,
  par1, par2, par3, par4, par5, par6, par7, par8, par9, par10, par11, par12,
  par13, par14, tmp1, tmp2, css1, css2, css3, css4, css5, css6, css7, css8,
  css9, css10, css11, css12, css13, css14, css15, dircds: string;
  insert_vis, post_vis, del_vis, undo_vis,detail_vis, select_vis, insert_enable,
  post_enable, del_enable, undo_enable, detail_enable, select_enable,
  navigatorblock_vis: integer;
  insert_action, post_action, del_action, undo_action, detail_action,
  select_action, insert_msg, post_msg, del_msg, undo_msg, norecordmsg,
  detail_msg, select_msg, zoom_action, Expand, grid_plus : string;
  vista_del_menga, tipologia, tipo_prg, data_prg, data_cds: string;
  puntatore, num1, num2, num3, num4, num5, num6, submit, tooltipexp,
  id_operazione, exp1, exp2, dataprg, datacds, pin_cols: integer;
  i: smallint;
  boolean1, boolean2: boolean;
  SQLdef: TStringList;
begin
  Memo1.Lines.Clear;
  SQLdef := TStringList.Create;
  // ______________________________________________________ Set program name ___
  if nomeprogramma <> '' then
  begin
    nomeprg := nomeprogramma;
  end
  else
  begin
    nomeprg := f_work.supertree.Selected.Text;
  end;
  dm_form.in_importazione := true;
  f_work.disabilitaprgtab.Execute;
  // ___________________________ Read from CDS if CDS are newer than scripts ___
  dircds := '';
  if (FileExists(f_work.prgdir + nomeprg + '.prg')) and
     (DirectoryExists(f_work.prgdir + '__source__\' + nomeprg + '\')) then
  begin
    dircds := f_work.prgdir + '__source__\' + nomeprg + '\';
  end;
  if (FileExists(f_work.userdir + nomeprg + '.prg')) and
     (DirectoryExists(f_work.userdir + '__source__\' + nomeprg + '\')) then
  begin
    dircds := f_work.userdir + '__source__\' + nomeprg + '\';
  end;
  data_cds := '';
  data_prg := '';
  datacds  := 0;
  dataprg  := 0;
  if FileExists(dircds + 'program.cds') then
  begin
    datacds := FileAge(dircds + 'program.cds');
  end;
  if FileExists(f_work.userdir + nomeprg + '.prf') then
  begin
    dataprg := FileAge(f_work.userdir + nomeprg + '.prf');
  end
  else if FileExists(f_work.prgdir + nomeprg + '.prf') then
  begin
    dataprg := FileAge(f_work.prgdir + nomeprg + '.prf');
  end;
  if (FileExists(f_work.userdir + nomeprg + '.prg')) and
     (FileAge(f_work.userdir + nomeprg + '.prg') > dataprg) then
  begin
    dataprg := FileAge(f_work.userdir + nomeprg + '.prg');
  end
  else if (FileExists(f_work.prgdir + nomeprg + '.prg')) and
          (FileAge(f_work.prgdir + nomeprg + '.prg') > dataprg) then
  begin
    dataprg := FileAge(f_work.prgdir + nomeprg + '.prg');
  end;

  if (dircds <> '') then
  begin
    with dm_form do
    begin
      t_programmi.LoadFromFile(dircds + 'program.cds');
 //     ShowMessage('Leggo da sources');
      t_task.LoadFromFile(dircds + 'view.cds');
      t_select.LoadFromFile(dircds + 'select.cds');
      t_usa_file.LoadFromFile(dircds + 'tab.cds');
      t_union.LoadFromFile(dircds + 'link.cds');
      t_azioni.LoadFromFile(dircds + 'action.cds');
//      t_azionifigli.LoadFromFile(dircds + 'subaction.cds');
      t_operazioni.LoadFromFile(dircds + 'operation.cds');
      t_espressioni.LoadFromFile(dircds + 'expression.cds');
      t_aggreg.LoadFromFile(dircds + 'aggregation.cds');
      t_variabili_prg.LoadFromFile(dircds + 'prgvar.cds');
      t_parametri.LoadFromFile(dircds + 'parameter.cds');
      t_form.LoadFromFile(dircds + 'form.cds');
      t_controlliform.LoadFromFile(dircds + 'control.cds');
      t_input_output.LoadFromFile(dircds + 'io.cds');
      t_report.LoadFromFile(dircds + 'report.cds');
      t_reportfield.LoadFromFile(dircds + 'reportfield.cds');
      t_task.Last;
      id_ultima_view := t_taskid.Value;
    end;
  end    // se letto dai cds esce subito
  else
  begin
    f_work.dbgrid_operazioni.Fields[3].ReadOnly := false;
    r                                           := TRegExpr.Create;
    r.ModifierI                                 := True;
    r2                                          := TRegExpr.Create;
    r2.ModifierI                                := True;
    r3                                          := TRegExpr.Create;
    r3.ModifierI                                := True;
    r4                                          := TRegExpr.Create;
    r4.ModifierI                                := True;
    r5                                          := TRegExpr.Create;
    r5.ModifierI                                := True;
    programma.Lines.Clear;
    // se si tratta di un'apertura standard del prg svutota le tabelle del prg
    // altrimenti le lascia e aggiunge
    if importpath = '' then
    begin
      svuota_tab_prg.Execute();
      if FileExists(f_work.userdir + nomeprg + '.prg') then
      begin
        programma.Lines.LoadFromFile(f_work.userdir + nomeprg + '.prg');
      end
      else if FileExists(f_work.prgdir + nomeprg + '.prg') then
      begin
        programma.Lines.LoadFromFile(f_work.prgdir + nomeprg + '.prg');
      end;
    end
    else
    begin
      nomeprg := ExtractFileName(importpath);
      nomeprg := StrToken(nomeprg, '.');
      programma.Lines.LoadFromFile(ExtractFileDir(importpath) + '\' +
                                   nomeprg + '.prg');
    end;
    call_log('Inizio PRG');
    //legge dal prg i task, le azioni e le form
    if Pos('o2def::form', programma.Lines.Text) > 0 then
    begin
      tipo_prg := 'Interface';
    end
    else
    begin
      tipo_prg := 'Batch';
    end;
    r.expression := 'o2def::folder\(\"(.*?)\"\)';
    if r.exec(programma.Lines.Text) then
    begin
      par2 := r.Match[1];
    end;
    r.expression := 'o2def::module\(\"(.*?)\"\)';
    if r.exec(programma.Lines.Text) then
    begin
      par3 := r.Match[1];
    end;
    r.expression := 'o2def::prgnotes\(\"(.*?)\"\)';
    if r.exec(programma.Lines.Text) then
    begin
      par4 := r.Match[1];
    end;
    r.expression := 'o2def::prg\((.*?);';
    if r.exec(programma.Lines.Text) then
    begin
      repeat
        programma.SelStart  := r.MatchPos[0] - 1;
        programma.SelLength := r.MatchLen[0];
        selezione           := programma.SelText;
        selezione           := Trim(Copy(Trim(selezione),
                                         Pos('(', Trim(selezione)),
                                         1000));
        selezione           := Copy(selezione, 2, Length(selezione) - 3);
        par1                := ExtractWord(2, selezione, [',']);
        par1                := Copy(Trim(par1), 2, Length(Trim(par1)) - 2);
        dm_form.t_programmi.InsertRecord([nomeprg,
                                          par1,
                                          par2,
                                          par3,
                                          tipo_prg,
                                          '',
                                          par4]);
      until not r.ExecNext();
    end;
    //identifica i tasks
    if importpath = '' then dm_form.id_ultima_view := 1;

  r.Expression := 'o2def::view(.*?);';
  if r.Exec(programma.Lines.Text) then
  begin
    repeat

      programma.SelStart := r.MatchPos[0] - 1;
      programma.SelLength := r.MatchLen[0];
      selezione := programma.SelText;

      r2.Expression := '\(.*\)';

      if r2.exec(selezione) then
      begin
        selezione2 := copy(r2.match[0], 2, r2.MatchLen[0] - 2);
        nometask   := extractword(1, selezione2, [',']);
        nometask   := copy(trim(nometask), 2, length(trim(nometask)) - 2);

        par3 := extractword(2, selezione2, [',']);
        if StrLoCase(trim(par3)) = 'true' then
        begin
          boolean1 := True
        end
        else
        begin
          boolean1 := False
        end;

        //record prefix
        par1 := extractword(3, selezione2, [',']);
        par1 := copy(trim(par1), 2, length(trim(par1)) - 2);
        //record suffix
        par2 := extractword(4, selezione2, [',']);
        par2 := copy(trim(par2), 2, length(trim(par2)) - 2);

        // ___________________________________________________ Autoaggregate ___
        par4 := StrLoCase(trim(extractword(5, selezione2, [','])));
        if (par4 = '0') or (par4 = 'false') then
        begin
          boolean2 := False;
        end
        else
        begin
          boolean2 := True;
        end;

        if nometask <> 'prg§_§var' then
        begin
          //  Inc(dm_form.id_ultima_view);
          dm_form.t_task.InsertRecord([nomeprg,
                                       dm_form.id_ultima_view,
                                       nometask,
                                       10,
                                       '',
                                       '',
                                       0,
                                       par1,
                                       par2,
                                       boolean1,
                                       0,
                                       boolean2]);
        end;
      end;

    until not r.ExecNext
  end;
  // fine task


  //definizione azioni
  r.Expression := 'o2def::act(.*?);';
  if r.Exec(programma.Lines.Text) then
  begin
    repeat
      programma.SelStart := r.MatchPos[0] - 1;
      programma.SelLength := r.MatchLen[0];
      selezione := programma.SelText;


      r2.Expression := '\(.*\)';

      if r2.exec(selezione) then
      begin
        selezione2 := copy(r2.match[0], 2, r2.MatchLen[0] - 2);
        //nome azione
        par1 := extractword(1, selezione2, [',']);
        par1 := copy(par1, 2, length(trim(par1)) - 2);

        //nome service
        par2 := trim(extractword(2, selezione2, [',']));
        par2 := copy(par2, 2, length(trim(par2)) - 2);
        with dm_form do
        begin
          t_azioni.Insert;
          t_azioniprg.Value:=nomeprg;
          t_azioniazione.Value:=par1;
          t_azioniservice.Value:=par2;
          t_azioni.Post;
        end;
      end;



    until not r.ExecNext
  end;


  //definizione parametri
  r.Expression := 'o2def::par(.*?);';
  if r.Exec(programma.Lines.Text) then
  begin
    repeat
      programma.SelStart := r.MatchPos[0] - 1;
      programma.SelLength := r.MatchLen[0];
      selezione := programma.SelText;


      r2.Expression := '\(.*\)';

      if r2.exec(selezione) then
      begin
        selezione2 := copy(r2.match[0], 2, r2.MatchLen[0] - 2);
        par1 := extractword(1, selezione2, [',']);
        // alias
        par2 := extractword(2, selezione2, [',']);
        par2 := copy(trim(par2), 2, length(trim(par2)) - 2);
         //modello
        par3 := extractword(3, selezione2, [',']);
        par3 := copy(trim(par3), 2, length(trim(par3)) - 2);

        dm_form.t_parametri.InsertRecord([nomeprg, StrToInt(par1), par2, par3]);
      end;



    until not r.ExecNext
  end;  //fine parametri



  //definizione io
  r.Expression := 'o2def::io(.*?);';
  if r.Exec(programma.Lines.Text) then
  begin
    repeat
      programma.SelStart := r.MatchPos[0] - 1;
      programma.SelLength := r.MatchLen[0];
      selezione := programma.SelText;


      r2.Expression := '\(.*\)';

      if r2.exec(selezione) then
      begin
        selezione2 := copy(r2.match[0], 2, r2.MatchLen[0] - 2);
        //alias
        par1 := extractword(1, selezione2, [',']);
        par1 := copy(trim(par1), 2, length(trim(par1)) - 2);

        // tipo io (File o Spool)
        par4 := extractword(2, selezione2, [',']);
        par4 := copy(trim(par4), 2, length(trim(par4)) - 2);
        if par4 = 'F' then
        begin
          par4 := 'File'
        end
        else begin
          par4 := 'Spool'
        end;


        //expressione di nome file
        par2 := extractword(3, selezione2, [',']);
        par2 := copy(trim(par2), length(trim(nomeprg)) + 6, 10);
        par2 := copy(trim(par2), 1, length(trim(par2)) - 2);


        //tipo
        par3 := extractword(4, selezione2, [',']);
        par3 := copy(trim(par3), 2, length(trim(par3)) - 2);
        if par3 = 'O' then
        begin
          par3 := 'Output'
        end
        else begin
          par3 := 'Input'
        end;


        dm_form.t_input_output.InsertRecord([nomeprg, par1, par4, par3, StrToInt(par2)]);
      end;

    until not r.ExecNext
  end;  //fine report


  //definizione report
  r.Expression := 'o2def::protocol(.*?);';
  if r.Exec(programma.Lines.Text) then
  begin
    repeat
      programma.SelStart := r.MatchPos[0] - 1;
      programma.SelLength := r.MatchLen[0];
      selezione := programma.SelText;

      r2.Expression := '\(.*\)';

      if r2.exec(selezione) then
      begin
        selezione2 := copy(r2.match[0], 2, r2.MatchLen[0] - 2);
        //alias
        par1 := extractword(1, selezione2, [',']);
        par1 := copy(trim(par1), 2, length(trim(par1)) - 2);

        //tipo
        par2 := extractword(2, selezione2, [',']);
        par2 := copy(trim(par2), 2, length(trim(par2)) - 2);


        dm_form.t_report.InsertRecord([nomeprg, par1, par2]);
      end;

    until not r.ExecNext
  end;  //fine report

  /// definizioni form    o2def::form('main', 202, 89, 912, 448, 'Marche e Modelli', 'True' );

  r.Expression := 'o2def::form(.*?);';
  i:=0;

  if r.Exec(programma.Lines.Text) then
  begin
    repeat
      programma.SelStart := r.MatchPos[0] - 1;
      programma.SelLength := r.MatchLen[0];
      selezione := programma.SelText;
      inc(i);

      r2.Expression := '\(.*\)';

      if r2.exec(selezione) then
      begin

        selezione2 := copy(r2.match[0], 2, r2.MatchLen[0] - 2);
        //nome form
        par1 := trim(extractword(1, selezione2, [',']));
        par1 := copy(par1, 2, length(trim(par1)) - 2);

        //nome parentform
        par2 := trim(extractword(2, selezione2, [',']));
        par2 := copy(par2, 2, length(trim(par2)) - 2);

        //programma di tipo menu
        par3 := trim(extractword(3, selezione2, [',']));
        if par3 = '' then par3 := 'False';

         //espressione di visible
        par4 := trim(extractword(4, selezione2, [',']));
        par4 := copy(par4, 2, length(trim(par4)) - 2);
        if StrLoCase(par4) = 'true' then num1:=0
        else
        begin
          par4:=decodifica_exp(par4,nomeprg);
          if par4 <> '' then num1:=StrToInt(par4) else num1:=0;
        end;

         //espressione di url
        par5 := trim(extractword(5, selezione2, [',']));
        IF PosEx('_exp_',par5) > 0 then par5 := copy(par5, 2, length(trim(par5)) - 2);
        if StrLoCase(par5) = 'false' then num2:=0
        else
        begin
          par5:=decodifica_exp(par5,nomeprg);
          if par5 <> '' then num2:=StrToInt(par5) else num2:=0;
        end;

        with dm_form do
        begin
          t_form.InsertRecord([nomeprg, par1, i, par2, StrToBool(par3), num1]);
//          t_form.Locate('nomeform',par1,[]);
          t_form.Edit;
          t_formurl.Value:=num2;
          if i=1 then t_formtmpselez.Value:=true;
          t_form.Post;
        end;
      end;
    until not r.ExecNext
  end;

     call_log('Fine PRG');


 //                   ShowMessage('inizio_prf');

      call_log('Inizio PRF');

  // legge il file .prf
  programma.Lines.Clear;

  if nomeprg <> '_o2viewmodels' then
  begin
    if importpath = '' then
    begin
      if FileExists(f_work.userdir + nomeprg + '.prf') then
      begin
       programma.Lines.LoadFromFile(f_work.userdir + nomeprg + '.prf')
      end
      else if FileExists(f_work.prgdir + nomeprg + '.prf') then
      begin
       programma.Lines.LoadFromFile(f_work.prgdir + nomeprg + '.prf')
      end;
    end
    else
    begin
       programma.Lines.LoadFromFile(ExtractFileDir(importpath) +'\'+ nomeprg + '.prf');
    end;
  end;

  if nomeprg = '_o2viewmodels' then
  begin

    if FileExists(f_work.userdir + dm_form.t_applicazioneviews.Value) then
    begin
      programma.Lines.LoadFromFile(f_work.userdir + dm_form.t_applicazioneviews.Value)
    end
    else if FileExists(f_work.prgdir +
      dm_form.t_applicazioneviews.Value) then
    begin
      programma.Lines.LoadFromFile(f_work.prgdir + dm_form.t_applicazioneviews.Value)
    end;

    //leva costanti PHP per la gestione delle view
    programma.Lines.Text :=
      StringReplace(programma.Lines.Text, '$_o2viewalias.', '', [rfReplaceAll]);

  end;

     call_log('Inizio variabili del prg');

  //variabili del programma
  with dm_form do
  begin
    nometask := 'prg§_§var';

    r.Expression := 'task_' + nometask + '->definisci\((.*?);';
    puntatore    := 0;
    if r.Exec(programma.Lines.Text) then
    begin
      repeat

        Inc(puntatore);
        begin
          programma.SelStart := r.MatchPos[0] - 1;
          programma.SelLength := r.MatchLen[0];
          selezione := programma.SelText;

          r2.Expression := '\(.*\)';

          if r2.exec(selezione) then
          begin
            selezione2 := copy(r2.match[0], 2, r2.MatchLen[0] - 2);
            //alias
            par1 := extractword(1, selezione2, [',']);
            par1 := copy(trim(par1), 2, length(trim(par1)) - 2);

            //picture
            par2 := extractword(2, selezione2, [',']);
            par2 := copy(trim(par2), 2, length(trim(par2)) - 2);

            dm_form.t_variabili_prg.InsertRecord([nomeprg, par1, par2]);

          end;

        end;
      until not r.ExecNext
    end; //fine campi della vista

  end; //fine variabili prg


       call_log('Inizio view');

  //loop sui task
  with dm_form do
  begin
    t_task.First;

    repeat
      // righe vis
      r.Expression := 'task_' + trim(t_tasknome.Value) + '->righe_vis\s=\s(.*?);';
      if r.Exec(programma.Lines.Text) then

      begin
        par1:=r.Match[1];
        if Pos('_exp_', par1) > 0 then
        begin
         par1:=decodifica_exp(r.Match[1], nomeprogramma);
         t_task.Edit;
         t_taskrighevisexp.Value := StrToInt(par1);
         t_task.Post;
        end
        else
        begin
         t_task.Edit;
         t_taskrighevis.Value := StrToInt(par1);
         t_task.Post;
        end;
      end;

      //usa file del task  task_marche->usa_file('marche','marche','marca');
      r.Expression := 'task_' + trim(t_tasknome.Value) + '->usa_file(.*?);';

      if r.Exec(programma.Lines.Text) then

      begin
        programma.SelStart := r.MatchPos[0] - 1;
        programma.SelLength := r.MatchLen[0];
        selezione := programma.SelText;

        r2.Expression := '\(.*\)';

        if r2.exec(selezione) then
        begin
          selezione2 := copy(r2.match[0], 2, r2.MatchLen[0] - 2);
          par1 := extractword(1, selezione2, [',']);
          par1 := copy(par1, 2, length(trim(par1)) - 2);
          par2 := trim(extractword(2, selezione2, [',']));
          par2 := copy(par2, 2, length(trim(par2)) - 2);

          par3 := trim(extractword(3, selezione2, [',']));

          par3 := copy(par3, 2, length(trim(par3)) - 2);
          if Pos('_exp_', par3) > 0 then par3 := decodifica_exp_stringa(par3, nomeprogramma);

          par4:=trim(extractword(4,selezione2,[',']));
          par5:=trim(extractword(5,selezione2,[',']));
          par4:=decodifica_exp(par4,nomeprogramma);
          par5:=decodifica_exp(par5,nomeprogramma);

          dm_form.t_usa_file.InsertRecord([nomeprg, t_taskid.Value, 1, 'Main', par2, par1, par3,0, par4, par5]);

        end;

      end; //fine usa file

      i:=2;
      //usa file_link del task  task_marche->usa_file('marche','marche','marca');
      r.Expression := 'task_' + trim(t_tasknome.Value) + '->usa_file_link(.*?);';

      if r.Exec(programma.Lines.Text) then
      begin
        repeat
          begin
            programma.SelStart := r.MatchPos[0] - 1;
            programma.SelLength := r.MatchLen[0];
            selezione := programma.SelText;

            r2.Expression := '\(.*\)';

            if r2.exec(selezione) then
            begin
              selezione2 := copy(r2.match[0], 2, r2.MatchLen[0] - 2);
              par1 := extractword(1, selezione2, [',']);
              par1 := copy(par1, 2, length(trim(par1)) - 2);
              par2 := trim(extractword(2, selezione2, [',']));
              par2 := copy(par2, 2, length(trim(par2)) - 2);
              par3 := trim(extractword(3, selezione2, [',']));
              par3 := copy(par3, 2, length(trim(par3)) - 2);

              par4:=trim(extractword(4,selezione2,[',']));
              par5:=trim(extractword(5,selezione2,[',']));
              par4:=decodifica_exp(par4,nomeprogramma);
              par5:=decodifica_exp(par5,nomeprogramma);

              dm_form.t_usa_file.InsertRecord([nomeprg, t_taskid.Value, i, 'Link', par2, par1, par3, 0, par4, par5]);

              inc(i);
            end;
          end;

        until not r.ExecNext
      end; //fine file link

      //      usa view
      r.Expression := 'task_' + trim(t_tasknome.Value) + '->usa_view(.*?);';
      if r.Exec(programma.Lines.Text) then
      begin
        repeat
          begin
            programma.SelStart := r.MatchPos[0] - 1;
            programma.SelLength := r.MatchLen[0];
            selezione := programma.SelText;

            r2.Expression := '\(.*\)';

            if r2.exec(selezione) then
            begin
              selezione2 := copy(r2.match[0], 2, r2.MatchLen[0] - 2);
              par1 := extractword(1, selezione2, [',']);
              par1 := copy(par1, 2, length(trim(par1)) - 2);
              par2 := trim(extractword(2, selezione2, [',']));
              par2 := copy(par2, 2, length(trim(par2)) - 2);
              par3 := trim(extractword(3, selezione2, [',']));
              par3 := copy(par3, 2, length(trim(par3)) - 2);

              vista_del_menga := par1;

              dm_form.t_usa_file.InsertRecord([nomeprg, t_taskid.Value, i, 'View', par2, par1, par3]);

              inc(i);
            end;
          end;

        until not r.ExecNext
      end; //fine file view

      //select del task
      r.Expression := 'task_' + trim(t_tasknome.Value) +
        '->(usa|unisci|match|definisci|calcola|param|aggregate|sql_formula)\((.*?);';
      puntatore    := 0;
      if r.Exec(programma.Lines.Text) then
      begin
        repeat

          begin
            programma.SelStart := r.MatchPos[0] - 1;
            programma.SelLength := r.MatchLen[0];
            selezione := programma.SelText;

            // se programma delle view toglie costanti PHP
            if nomeprg = '_o2viewmodels' then
            begin
              selezione := StringReplace(selezione, '$task_' + t_tasknome.Value + '->nome."_".',
                '', [rfReplaceAll])
            end;

            if pos('->usa', selezione) > 0 then
            begin
              tipo := 'Select'
            end
            else if pos('->match', selezione) > 0 then
            begin
              tipo := 'Match'
            end
            else if pos('->unisci', selezione) > 0 then
            begin
              tipo := 'Link'
            end
            else if pos('->definisci', selezione) > 0 then
            begin
              tipo := 'Virtual'
            end
            else if pos('->calcola', selezione) > 0 then
            begin
              tipo := 'Calculated'
            end
            else if pos('->param', selezione) > 0 then
            begin
              tipo := 'Parameter'
            end
            else if pos('->aggregate', selezione) > 0 then
            begin
              tipo := 'Aggregate'
            end
            else if pos('->sql_formula', selezione) > 0 then
            begin
              tipo := 'SQL'
            end;

            if tipo <> 'Link' then
            begin
              Inc(puntatore)
            end;

            r2.Expression := '\(.*\)';

            if r2.exec(selezione) then
            begin
              selezione2 := copy(r2.match[0], 2, r2.MatchLen[0] - 2);

              //alias
              par1 := extractword(1, selezione2, [',']);
              par1 := copy(par1, 2, length(trim(par1)) - 2);
              //nome tabella
              par2 := trim(extractword(2, selezione2, [',']));
              par2 := copy(par2, 2, length(trim(par2)) - 2);
              //nome campo
              par3 := trim(extractword(3, selezione2, [',']));
              par3 := copy(par3, 2, length(trim(par3)) - 2);

              // rangemin
              if (tipo <> 'Match') and (tipo <> 'Calculated') then
              begin
                par4 := trim(extractword(4, selezione2, [',']))
              end
              else begin
                par4 := trim(extractword(3, selezione2, [',']))
              end;
              if par4 = 'null' then
              begin
                par4 := '0'
              end
              else begin
                par4 := copy(par4, length(trim(nomeprg)) + 7, 10);
                par4 := copy(par4, 1, length(trim(par4)) - 3);
              end;
              //rangemax
              if (tipo <> 'Match') and (tipo <> 'Calculated') then
              begin
                par5 := trim(extractword(5, selezione2, [',']))
              end
              else begin
                par5 := trim(extractword(4, selezione2, [',']))
              end;
              if par5 = 'null' then
              begin
                par5 := '0'
              end
              else begin
                par5 := copy(par5, length(trim(nomeprg)) + 7, 10);
                par5 := copy(par5, 1, length(trim(par5)) - 3);
              end;
              //not
              if (tipo <> 'Match') and (tipo <> 'Calculated') then
              begin
                par6 := trim(extractword(6, selezione2, [',']))
              end
              else begin
                par6 := trim(extractword(5, selezione2, [',']))
              end;
              if par6 = 'null' then
              begin
                par6 := '0'
              end
              else begin
                par6 := copy(par6, length(trim(nomeprg)) + 7, 10);
                par6 := copy(par6, 1, length(trim(par6)) - 3);
              end;
              //like
              if (tipo <> 'Match') and (tipo <> 'Calculated') then
              begin
                par7 := trim(extractword(7, selezione2, [',']))
              end
              else begin
                par7 := trim(extractword(6, selezione2, [',']))
              end;
              if par7 = 'null' then
              begin
                par7 := '0'
              end
              else begin
                par7 := copy(par7, length(trim(nomeprg)) + 7, 10);
                par7 := copy(par7, 1, length(trim(par7)) - 3);
              end;

              //init (solo virtual e calculated)
              par8 := trim(extractword(2, selezione2, [',']));
              if par8 = 'null' then
              begin
                par8 := '0'
              end
              else begin
                if (tipo = 'Calculated') then
                begin
                  par8 := copy(par8, length(trim(nomeprg)) + 7, 10);
                  par8 := copy(par8, 1, length(trim(par8)) - 3);
                end;

                if tipo = 'Virtual' then
                begin
                  par2 := copy(par2, length(trim(nomeprg)) + 6, 10);
                  par2 := copy(par2, 1, length(trim(par2)) - 2);
                end;
              end;

              if (tipo = 'Select') then
              begin
                dm_form.t_select.InsertRecord([nomeprg, t_taskid.Value, puntatore, tipo, par1,
                  par2, par3, null, par4, par5, par6, par7]);
              end;

              if (tipo = 'Match') then
              begin
                par2 := StringReplace(par2, vista_del_menga + '_', '', [rfReplaceAll]);
                dm_form.t_select.InsertRecord(
                  [nomeprg, t_taskid.Value, puntatore, 'Select', par1, vista_del_menga, par2, null,
                  par4, par5, par6, par7]);
              end;

              if (tipo = 'Link') and (par2<>'') then
              begin
                num1:=t_usa_file.Lookup('con_nome',par2, 'idriga') ;
                dm_form.t_union.InsertRecord(
                  [nomeprg, t_taskid.Value, num1, t_union.RecordCount + 1, par3, par4, par5, par6, par7]);
              end;

              if (tipo = 'Virtual') or (tipo = 'Calculated') then
              begin
                dm_form.t_select.InsertRecord([nomeprg, t_taskid.Value, puntatore, tipo, par1,
                  null, null, par8, par4, par5, par6, par7])
              end;

              // _______________________________________________ SQL formula ___
              if (tipo = 'SQL') then
              begin
                SQLdef.Clear;
                SQLdef.Delimiter := ',';
                // ______________________________ This gets ["CONCAT", ...]  ___
                SQLdef.DelimitedText := StrMid(selezione2,
                                               Pos('[', selezione2) + 1,
                                               StrLength(selezione2) -
                                               Pos(']',
                                                   ReverseString(selezione2)) -
                                               Pos('[', selezione2));
                par9 := '';
                // _______________________________ Skip SQLdef[0] = 'CONCAT' ___
                for i := 1 to SQLdef.Count - 1 do
                begin
                  // ___________________________________ Token as view field ___
                  if StrLeft(SQLdef[i], 1) = '[' then
                  begin
                    par9 := par9 + #127 +
                            Copy(SQLdef[i], 3, StrLength(SQLdef[i]) - 4) +
                            #13 + #10;;
                  end
                  // ___________________________________ Token by expression ___
                  else
                  begin
                    par9 := par9 +
                            Copy(StrLeft(SQLdef[i], StrLength(SQLdef[i]) - 2),
                                 StrLength(nomeprg) + 6,
                                 StrLength(SQLdef[i]) - StrLength(nomeprg) - 5)+
                            #13 + #10;
                  end;
                end;

                // ________________________________________________ rangemin ___
                par4 := trim(extractword(2, copy(selezione2,
                                                 LastDelimiter(']', selezione2),
                                                 100),
                                         [',']));
                if par4 = 'null' then
                begin
                  par4 := '0'
                end
                else begin
                  par4 := copy(par4, length(trim(nomeprg)) + 7, 10);
                  par4 := copy(par4, 1, length(trim(par4)) - 3);
                end;
                // ________________________________________________ rangemax ___
                par5 := trim(extractword(3, copy(selezione2,
                                                 LastDelimiter(']', selezione2),
                                                 100),
                                         [',']));
                if par5 = 'null' then
                begin
                  par5 := '0'
                end
                else begin
                  par5 := copy(par5, length(trim(nomeprg)) + 7, 10);
                  par5 := copy(par5, 1, length(trim(par5)) - 3);
                end;
                // _____________________________________________________ not ___
                par6 := trim(extractword(4, copy(selezione2,
                                                 LastDelimiter(']', selezione2),
                                                 100),
                                         [',']));
                if par6 = 'null' then
                begin
                  par6 := '0'
                end
                else begin
                  par6 := copy(par6, length(trim(nomeprg)) + 7, 10);
                  par6 := copy(par6, 1, length(trim(par6)) - 3);
                end;
                // ____________________________________________________ like ___
                par7 := trim(extractword(5, copy(selezione2,
                                                 LastDelimiter(']', selezione2),
                                                 100),
                                         [',']));
                if par7 = 'null' then
                begin
                  par7 := '0'
                end
                else begin
                  par7 := copy(par7, length(trim(nomeprg)) + 7, 10);
                  par7 := copy(par7, 1, length(trim(par7)) - 3);
                end;

                dm_form.t_select.InsertRecord([nomeprg,
                                               t_taskid.Value,
                                               puntatore,
                                               tipo,
                                               par1,
                                               null,
                                               null,
                                               SQLdef.Count - 1,
                                               par4,
                                               par5,
                                               par6,
                                               par7,
                                               par9]);
              end;

            end;

            if (tipo = 'Parameter') then
            begin
              dm_form.t_select.InsertRecord([nomeprg, t_taskid.Value, puntatore, tipo, par1])
            end;
          end;

          if (tipo = 'Aggregate') then
          begin
            //nome campo
            par4 := trim(extractword(4, selezione2, [',']));
            par4 := copy(par4, 2, length(trim(par4)) - 2);

            dm_form.t_aggreg.InsertRecord([nomeprg, t_taskid.Value,
              par1, par2, par3, par4]);
          end;

        until not r.ExecNext
      end; //fine campi della vista

      t_task.Next;
    until t_task.EOF;  //FINE DEI TASK e degli agenti

     call_log('Inizio report');

    // INIZIO DEI REPORT
    //           ShowMessage('Start Report');
    t_report.First;
    repeat
      num1 := 0;

      r.Expression := '\$protocollo_' + trim(t_reportalias.Value) +
        '->usa\((.*?);';
      if r.Exec(programma.Lines.Text) then
      begin
        repeat
          programma.SelStart := r.MatchPos[0] - 1;
          programma.SelLength := r.MatchLen[0];
          selezione := programma.SelText;

          r2.Expression := '\(.*\)';

          if r2.exec(selezione) then
          begin
            selezione2 := copy(r2.match[0], 2, r2.MatchLen[0] - 2);
            //alias
            par4 := trim(extractword(1, selezione2, [',']));
            par4 := copy(par4, 2, length(trim(par4)) - 2);

            //alias del task
            par1 := trim(extractword(2, selezione2, [',']));
            par1 := copy(par1, 2, length(trim(par1)) - 2);
            //alias del campo
            par2 := trim(extractword(3, selezione2, [',']));
            par2 := copy(par2, 2, length(trim(par2)) - 2);
            //modello
            par3 := trim(extractword(4, selezione2, [',']));
            par3 := copy(par3, 2, length(trim(par3)) - 2);

            Inc(num1);

            dm_form.t_reportfield.InsertRecord(
              [nomeprg, t_reportalias.Value, num1, chr(127) + par1 + chr(129) + par2, par3, par4]);


           if (crossref_oggetto = 'Application variable') and (crossref_ricerca = par2) and (par1 = '_o2SESSION') then
                       f_crossref.Memo1.Lines.Append('Program: [' + nomeprg + ']' +chr(9)+ 'Protocol: [' + t_reportalias.Value + ']'
                       +chr(9) + 'Line: [' + inttostr(num1) +']');

         end;

        until not r.ExecNext
      end; // FINE Campi DEL REPORT

      t_report.Next;
    until t_report.EOF;  //fine DEI REPORTS


    // =============================================================== FORMS ===
    call_log('Inizio form');
    t_form.First;
    while not t_form.EOF do
    begin
      call_log('Inizio form '+ t_formnomeform.Value);
      t_form.Edit;
      tmp1 := '';
      tmp1 := form_val_prop('titolo', t_formnomeform.Value, selezione3, r3,
                            programma, False);
      // _______________________________________________ Remove title quotes ___
      if (LeftStr(tmp1, 1) = '"') or (LeftStr(tmp1, 1) = chr(39)) then
      begin
        t_formdicitura.Value := copy(tmp1, 2, length(tmp1) - 2)
      end
      else begin
        t_formdicitura.Value     := 'by expression';
        t_formdicitura_exp.Value := StrToInt(decodifica_exp(tmp1, nomeprg));
      end;
      t_formleft.Value      := StrToInt(form_val_prop('x',
                                                      t_formnomeform.Value,
                                                      selezione3,
                                                      r3,
                                                      programma,
                                                      False));
      t_formtop.Value       := StrToInt(form_val_prop('y',
                                                      t_formnomeform.Value,
                                                      selezione3,
                                                      r3,
                                                      programma,
                                                      False));
      t_formlarghezza.Value := StrToInt(form_val_prop('larghezza',
                                                      t_formnomeform.Value,
                                                      selezione3,
                                                      r3,
                                                      programma,
                                                      False));
      t_formaltezza.Value   := StrToInt(form_val_prop('altezza',
                                                      t_formnomeform.Value,
                                                      selezione3,
                                                      r3,
                                                      programma,
                                                      False));

      // ----- posizioni della form by expression ----------
      tmp1 := '';
      tmp1 := form_val_prop('y_exp', t_formnomeform.Value,
        selezione3, r3, programma, False);
      if (tmp1 = '') then
      begin
        t_formtop_exp.Value := 0
      end
      else begin
        t_formtop_exp.Value := StrToInt(decodifica_exp(tmp1, nomeprg))
      end;

      tmp1 := '';
      tmp1 := form_val_prop('x_exp', t_formnomeform.Value,
        selezione3, r3, programma, False);
      if (tmp1 = '') then
      begin
        t_formleft_exp.Value := 0
      end
      else begin
        t_formleft_exp.Value := StrToInt(decodifica_exp(tmp1, nomeprg))
      end;

      tmp1 := '';
      tmp1 := form_val_prop('altezza_exp', t_formnomeform.Value,
        selezione3, r3, programma, False);
      if (tmp1 = '') then
      begin
        t_formaltezza_exp.Value := 0
      end
      else begin
        t_formaltezza_exp.Value := StrToInt(decodifica_exp(tmp1, nomeprg))
      end;

      tmp1 := '';
      tmp1 := form_val_prop('larghezza_exp', t_formnomeform.Value,
        selezione3, r3, programma, False);
      if (tmp1 = '') then
      begin
        t_formlarghezza_exp.Value := 0
      end
      else begin
        t_formlarghezza_exp.Value := StrToInt(decodifica_exp(tmp1, nomeprg))
      end;

      //-------------------------------------------------------

      //css
      t_formcss_finestra.Value :=
        decodifica_exp_stringa(form_val_prop('css_finestra', t_formnomeform.Value,
        selezione3, r3, programma, False), nomeprg);
      t_formcss_title.Value    :=
        decodifica_exp_stringa(form_val_prop('css_title', t_formnomeform.Value,
        selezione3, r3, programma, False), nomeprg);
      t_formcss_title_no.Value :=
        decodifica_exp_stringa(form_val_prop('css_title_no', t_formnomeform.Value,
        selezione3, r3, programma, False), nomeprg);
      t_formcss_body.Value     :=
        decodifica_exp_stringa(form_val_prop('css_body', t_formnomeform.Value,
        selezione3, r3, programma, False), nomeprg);
      t_formcss_status_bar.Value :=
        decodifica_exp_stringa(form_val_prop('css_status', t_formnomeform.Value,
        selezione3, r3, programma, False), nomeprg);
      t_formcss_doc.Value      :=
        decodifica_exp_stringa(form_val_prop('css_doc', t_formnomeform.Value,
        selezione3, r3, programma, False), nomeprg);
      t_formcss_close.Value    :=
        decodifica_exp_stringa(form_val_prop('css_close', t_formnomeform.Value,
        selezione3, r3, programma, False), nomeprg);
      t_formcss_open.Value     :=
        decodifica_exp_stringa(form_val_prop('css_open', t_formnomeform.Value,
        selezione3, r3, programma, False), nomeprg);
      t_formcss_exit.Value     :=
        decodifica_exp_stringa(form_val_prop('css_exit', t_formnomeform.Value,
        selezione3, r3, programma, False), nomeprg);
      t_formcss_resize.Value   :=
        decodifica_exp_stringa(form_val_prop('css_resize', t_formnomeform.Value,
        selezione3, r3, programma, False), nomeprg);
      t_formcss_corner.Value   :=
        decodifica_exp_stringa(form_val_prop('css_corner', t_formnomeform.Value,
        selezione3, r3, programma, False), nomeprg);

      // action on click close button
      t_formcloseclick_action.Value :=
        form_val_prop('close_action', t_formnomeform.Value, selezione3, r3, programma, True);

       // action di refresh della form
      t_formrefresh_action.Value :=
        form_val_prop('refresh_action', t_formnomeform.Value, selezione3, r3, programma, True);
      //timer
      tmp1 := '';
      tmp1 := form_val_prop('refresh_exp', t_formnomeform.Value, selezione3, r3,
        programma, True);
      if (tmp1 = '') then
      begin
        t_formtimer_refresh.Value := 0
      end
      else begin
        t_formtimer_refresh.Value := StrToInt(decodifica_exp(tmp1, nomeprg))
      end;

      // barra del titolo e di stato -------------
      tmp1 := '';
      tmp1 := form_val_prop('frm_title', t_formnomeform.Value,
        selezione3, r3, programma, False);
      if (tmp1 = '') then
      begin
        t_formbarra_titolo.Value := 0
      end
      else begin
        t_formbarra_titolo.Value := StrToInt(decodifica_exp(tmp1, nomeprg))
      end;

      tmp1 := '';
      tmp1 := form_val_prop('frm_status', t_formnomeform.Value,
        selezione3, r3, programma, False);
      if (tmp1 = '') then
      begin
        t_formbarra_stato.Value := 0
      end
      else begin
        t_formbarra_stato.Value := StrToInt(decodifica_exp(tmp1, nomeprg))
      end;
      //------------------------------------------

      t_formvertalign.Value  :=
        form_val_prop('align_v', t_formnomeform.Value, selezione3, r3, programma, True);
      t_formorizzalign.Value :=
        form_val_prop('align_o', t_formnomeform.Value, selezione3, r3, programma, True);
      if (t_formorizzalign.Value = '') then
      begin
        t_formorizzalign.Value := 'Left'
      end;
      if (t_formvertalign.Value = '') then
      begin
        t_formvertalign.Value := 'Top'
      end;

      // ============================ IMPORT CONTROLS ==========================
      call_log('Inizio controlli form '+ t_formnomeform.Value);

      i := 0; // azzera il contatore controllo

      r.Expression := '\$form_' + trim(t_formnomeform.Value) + '->ctrldef\((.*?);';

      if r.Exec(programma.Lines.Text) then
      begin
        repeat
          nomecontrollo       := '';
          programma.SelStart  := r.MatchPos[0] - 1;
          programma.SelLength := r.MatchLen[0];
          selezione           := programma.SelText;
          r2.Expression := '\(.*\)';
          if r2.exec(selezione) then
          begin
            selezione2 := copy(r2.match[0], 2, r2.MatchLen[0] - 2);

            //azzera
            num1   := 0;
            num2   := 0;
            num3   := 0;
            num4   := 0;
            num5   := 0;
            num6   := 0;
            submit := 0;
            exp1   := 0;
            exp2   := 0;

            par1   := '';
            par2   := '';
            par3   := '';
            par4   := '';
            par5   := '';
            par6   := '';
            par7   := '';
            par8   := '';
            par9   := '';
            par10  := '';
            par11  := '';
            par12  := '';
            par13  := '';
            par14  := '';
            css1   := '';
            css2   := '';
            css3   := '';
            css4   := '';
            css5   := '';
            css6   := '';
            css7   := '';
            css8   := '';
            css9   := '';
            css10  := '';
            css11  := '';
            css12  := '';
            css13  := '';
            css14  := '';
            css15  := '';

            zoom_action := '';
            tooltipexp  := 0;
            Expand      := '';

            insert_vis:=0;
            insert_enable:=0;
            insert_action:='';
            insert_msg := '';

            del_vis:=0;
            del_enable:=0;
            del_action:='';
            del_msg := '';

            undo_vis:=0;
            undo_enable:=0;
            undo_action:='';
            undo_msg := '';

            post_vis:=0;
            post_enable:=0;
            post_action:='';
            post_msg := '';

            navigatorblock_vis:=0;

            norecordmsg:='';
            grid_plus := '';
            pin_cols  := 0;

            nomecontrollo := trim(extractword(1, selezione2, [',']));
            nomecontrollo := copy(trim(nomecontrollo), 2, length(trim(nomecontrollo)) - 2);

            if nomecontrollo = '' then
            begin
              nomecontrollo := 'control_' + IntToStr(i)
            end;

            // carica tutte le proprieta del controllo
            carica_proprieta_controllo(Self, nomecontrollo, t_formnomeform.Value);

            tipo := trim(extractword(2, selezione2, [',']));
            tipo := copy(trim(tipo), 2, length(trim(tipo)) - 2);

            //rettifica il tipo per nomi diversi
            if tipo = 'line' then
            begin
              tipo := 'separator'
            end
            else if tipo = 'listcombo' then
            begin
              tipo := 'listbox'
            end
            else if tipo = 'check' then
            begin
              tipo := 'checkbox'
            end
            else if tipo = 'text' then
            begin
              tipo := 'textarea'
            end
            else if tipo = 'tab' then
            begin
              tipo := 'table'
            end
            else if tipo = 'tree' then
            begin
              tipo := 'treeview'
            end
            else if tipo = 'img' then
            begin
              tipo := 'image'
            end;

            //padre
            par10 := trim(extractword(3, selezione2, [',']));
            par10 := copy(trim(par10), 2, length(trim(par10)) - 2);

            //task
            par2 := trim(extractword(4, selezione2, [',']));
            par2 := copy(par2, 2, length(trim(par2)) - 2);
            // campo
            par8 := trim(extractword(5, selezione2, [',']));
            par8 := copy(par8, 2, length(trim(par8)) - 2);

            if (crossref_oggetto = 'Application variable') and (crossref_ricerca = par8) and (par2 ='_o2SESSION')
            then
              f_crossref.Memo1.Lines.Append('Program: [' + nomeprg + ']' + chr(9) +
                                            'Form: [' + t_formnomeform.Value + ']' + chr(9) +
                                            'Control: [' + nomecontrollo + ']');

            //riferimento(task+campo)
            if (par2 <> '') then
            begin
              par2 := chr(127) + par2
            end;
            if (par8 <> '') then
            begin
              par2 := par2 + chr(129) + par8
            end;

            num2 := StrToInt(ctrl_prop('x'));
            num1 := StrToInt(ctrl_prop('y'));

            num4 := StrToInt(ctrl_prop('larghezza'));

            num3 := StrToInt(ctrl_prop('altezza'));

            //submit on change
            if ctrl_prop('on_change') <> '' then
            begin
              submit := StrToInt(decodifica_exp(ctrl_prop('on_change'), nomeprg))
            end;

            //nome azione
            par3 := ctrl_prop('azione');
            if par3 = 'null' then
            begin
              par3 := ''
            end
            else
            begin
              par3 := copy(par3, 2, length(trim(par3)) - 2);
            end;

            // Tooltip Expression
            if ctrl_prop('popup') <> '' then
            begin
              tmp1 := Copy(ctrl_prop('popup'), Length(Trim(nomeprg)) + 7, 10);
              tmp1 := Copy(tmp1, 1, Length(Trim(tmp1)) - 3);
              tooltipexp := StrToInt(tmp1);
            end;

            // parent options
            par11 := ctrl_prop('info_padre');
            if par11 = 'null' then
            begin
              par11 := ''
            end
            else if par11 <> '' then
            begin
              par11 := Copy(Trim(par11), 7, Length(Trim(par11)) - 7);
              par11 := StringReplace(StringReplace(par11,
                                                   ', ',
                                                   ',',
                                                   [rfReplaceAll]),
                                     ' ,',
                                     ',',
                                     [rfReplaceAll]);
              par11 := StringReplace(par11, ',', '§', [rfReplaceAll]);
            end;


            // VISIBILE
            par8 := ctrl_prop('visibile');

            if (par8 = '"True"') or (par8 = '') then
            begin
              num5 := 0
            end
            else begin
              par8 := copy(trim(par8), length(trim(nomeprg)) + 6, 10);
              par8 := copy(trim(par8), 1, length(trim(par8)) - 2);
              num5 := StrToInt(par8);
            end;

            // MODIFICABILE
            par8 := ctrl_prop('modificabile');

            if (par8 = '"True"') or (par8 = '') then
            begin
              num6 := 0
            end
            else begin
              par8 := copy(trim(par8), length(trim(nomeprg)) + 6, 10);
              par8 := copy(trim(par8), 1, length(trim(par8)) - 2);
              num6 := StrToInt(par8);
            end;

            // MASCHERA
            par9 := ctrl_prop('maschera');
            if par9 = 'null' then
            begin
              par9 := ''
            end
            else
            begin
              par9 := decodifica_exp_stringa(par9, nomeprogramma)
            end;

            // EXPAND
            Expand := ctrl_prop('expand', true);
            if Expand = 'True' then
            begin
              Expand := '';
            end;

            // controllo label
            if tipo = 'label' then
            begin
              //                 ShowMessage('Label');
              //CAPTION
              par1 := decodifica_exp_stringa(ctrl_prop('label'), nomeprogramma);
              //                    par1:=copy(par1,2,length(trim(par1))-2);
              // VOCE CSS
              par5 := decodifica_css(ctrl_prop('css'));
            end; //fine label

            // controllo htmlarea
            if tipo = 'htmlarea' then
            begin
              //                 ShowMessage('Htmlarea');
              //HTML
              par12 := decodifica_exp(ctrl_prop('html'), nomeprg);
              // VOCE CSS
              par5 := decodifica_css(ctrl_prop('css'));
            end; //fine htmlarea

            // ___________________________________________ control TREE-VIEW ___
            if tipo = 'treeview' then
            begin
              // _____________________________________________________ NODES ___
              par12 := decodifica_exp(ctrl_prop('nodes'), nomeprg);
              par4 := ctrl_prop('activation');
              // VOCE CSS
              par5 := decodifica_css(ctrl_prop('css'));
            end; //fine treeview

            // _______________________________________ control IMAGES-LISTER ___
            if tipo = 'imglist' then
            begin
              // _____________________________________________________ NODES ___
              par12 := decodifica_exp(ctrl_prop('items'), nomeprg);
              // _____________________________________________ DELETE action ___
              par13 := trim(ctrl_prop('delete'));
              par13 := copy(par13, 2, length(par13) - 2);
              // ____________________________________ Items width expression ___
              par8 := ctrl_prop('items_w');
              if (par8 = '0') or (par8 = '') then
              begin
                exp1 := 0
              end
              else begin
                exp1 := StrToInt(par8);
              end;
              // ___________________________________ Items height expression ___
              par8 := ctrl_prop('items_h');
              if (par8 = '0') or (par8 = '') then
              begin
                exp2 := 0
              end
              else begin
                exp2 := StrToInt(par8);
              end;
              // VOCE CSS
              par5 := decodifica_css(ctrl_prop('css'));
            end; //fine imglist

            // ________________________________________ control PROGRESS-BAR ___
            if tipo = 'progress' then
            begin
              // _____________________________________________________ VALUE ___
              par12 := trim(ctrl_prop('value'));
              par12 := copy(par12, 2, length(par12) - 2);
              par12 := decodifica_exp(par12, nomeprg);
              // ______________________________________________ START action ___
              par3  := trim(ctrl_prop('start_action'));
              par3  := copy(par3, 2, length(par3) - 2);
              // ________________________________________________ END action ___
              par13 := trim(ctrl_prop('end_action'));
              par13 := copy(par13, 2, length(par13) - 2);
              // VOCE CSS
              par5 := decodifica_css(ctrl_prop('css'));
            end; //fine progressbar

            // controllo document
            if tipo = 'document' then
            begin
              //                 ShowMessage('Document');
              //DOC
              par12 := decodifica_exp(ctrl_prop('path'), nomeprg);
              // VOCE CSS
              par5 := decodifica_css(ctrl_prop('css'));
            end; //fine label

            // controllo separator
            if tipo = 'separator' then
            begin
              //               ShowMessage('Separator');
              // VOCE CSS
              par5 := decodifica_css(ctrl_prop('css'));
            end; //fine separatore

            // controllo edit
            if tipo = 'edit' then
            begin
              //               ShowMessage('Edit');
              // VOCE CSS
              par5 := decodifica_css(ctrl_prop('css'));
              // CAMPO PASSWORD
              boolean1 := (ctrl_prop('pswd')) <> '';
              zoom_action:= ctrl_prop('act_zoom', true);
            end; //fine edit

            // _____________________________________________ Listbox control ___
            if tipo = 'listbox' then
            begin
              // _______________________________________________ Combo items ___
              selezione3 := ctrl_prop('valori');
              // ___________________________________________ Items from view ___
              if Pos('o2_view2list', selezione3) > 0 then
              begin
                par4 := Trim(selezione3);
              end
                // ____________________________________________ Items by exp ___
              else if Pos('_exp_', selezione3) > 0 then
              begin
                par8 := Trim(Copy(selezione3, Pos('_exp_', selezione3) + 5, 8));
                par8 := Copy(par8, 1, Length(par8) - 2);
                par4 := '[o2exp_' + par8 + ']';
              end
              // ___________________________________________ Items from list ___
              else
              begin
                par4 := Copy(selezione3, 7, Length(selezione3) - 7);
              end;

              //numero righe
              par12 := ctrl_prop('righe');
              // VOCE CSS
              par5  := decodifica_css(ctrl_prop('css'));
              zoom_action:= ctrl_prop('act_zoom', true);
            end; //fine combobox


            // controllo image
            if tipo = 'image' then
            begin
              //CAPTION
              par1 := decodifica_exp_stringa(ctrl_prop('label'), nomeprogramma);
              //                    par1:=copy(par1,2,length(trim(par1))-2);
              //immagine come expression(par12=exp1)
              par12 := decodifica_exp(ctrl_prop('imgexp'), nomeprg);
              //immagine di rollover come expression(par14)
              par14 := decodifica_exp(ctrl_prop('imgoverexp'), nomeprg);
              //immagine diretta da filesystem
              tmp1 := ctrl_prop('immagine');
              par4 := StringReplace(tmp1, '"', '', [rfReplaceAll]);
              if par12 = '' then
              begin
                par12 := '0'
              end;
              if par14 = '' then
              begin
                par14 := '0'
              end;
              // VOCE CSS
              par5 := decodifica_css(ctrl_prop('css'));
              // message
              par13 := decodifica_exp_stringa(ctrl_prop('confirm_message'), nomeprogramma);
            end; //fine image

            // controllo file
            if tipo = 'file' then
            begin
              // VOCE CSS
              par5 := decodifica_css(ctrl_prop('css'));
              par12 := decodifica_exp(ctrl_prop('save_as'), nomeprg);
            end; //fine file

            // controllo multipage
            if tipo = 'multipage' then
            begin
              //label delle pagine
              par12 := ctrl_prop('label');
              par12 := copy(trim(par12), 7, length(trim(par12)) - 7);
              par12 := stringreplace(par12, '"', '', [rfReplaceAll]);
              par12 := stringreplace(par12, ',', chr(13) + chr(10), [rfReplaceAll]);
              par13 := '0';
              // in par4 (scelte) ci va posizione tab buttons
              par4 := ctrl_prop('buttons');
              par4 := stringreplace(par4, '"', '', [rfReplaceAll]);
              // VOCE CSS
              css1 := decodifica_css(ctrl_prop('css_space_out'));
              css2 := decodifica_css(ctrl_prop('css_space_in'));
              css3 := decodifica_css(ctrl_prop('css_label_on'));
              css4 := decodifica_css(ctrl_prop('css_label_off'));
            end; //fine multipage

            // controllo flowbox
            if tipo = 'flowbox' then
            begin
              //label delle pagine
              par12 := ctrl_prop('label');
              par12 := copy(trim(par12), 7, length(trim(par12)) - 7);
              par12 := stringreplace(par12, '"', '', [rfReplaceAll]);
              par12 := stringreplace(par12, ',', chr(13) + chr(10), [rfReplaceAll]);
              par13 := '0';
              // VOCE CSS
              css1 := decodifica_css(ctrl_prop('css'));
            end; //fine flowbox

            // controllo frame
            if tipo = 'frame' then
            begin
              // VOCE CSS
              css1 := decodifica_css(ctrl_prop('css'));
            end; //fine frame

            // controllo BUTTON
            if tipo = 'button' then
            begin
              //               ShowMessage('Button');
              //caption
              par1 := decodifica_exp_stringa(ctrl_prop('label'), nomeprogramma);
              //               par1:=copy(par1,2,length(trim(par1))-2);
              // message
              par4 := decodifica_exp_stringa(ctrl_prop('confirm_message'), nomeprogramma);
              //style
              if ctrl_prop('style') = '1' then par12:='Href' else par12:='Standard';
              par13 := ctrl_prop('shortcut', true);
              // VOCE CSS
              par5 := decodifica_css(ctrl_prop('css'));
            end; //fine BUTTON

            // controllo TEXTAREA
            if tipo = 'textarea' then
            begin
              //                 ShowMessage('Textarea');
              // VOCE CSS
              par5     := decodifica_css(ctrl_prop('css'));
              boolean1 := StrToBoolDef(ctrl_prop('htmlarea'), False);
              zoom_action:= ctrl_prop('act_zoom', true);
            end; //fine textarea

            // controllo checkbox
            if tipo = 'checkbox' then
            begin
              //                ShowMessage('Checkbox');
              // VOCE CSS
              par5 := decodifica_css(ctrl_prop('css'));
            end; //fine checkbox

            // controllo tabella
            if tipo = 'table' then
            begin
              //               ShowMessage('Table');
              css1 := decodifica_css(ctrl_prop('css_spazio'));
              css2 := decodifica_css(ctrl_prop('css_tab'));
              css3 := decodifica_css(ctrl_prop('css_testa'));
              css4 := decodifica_css(ctrl_prop('css_corpo'));
              css5 := decodifica_css(ctrl_prop('css_riga'));
              css6 := decodifica_css(ctrl_prop('css_alt'));
              css7 := decodifica_css(ctrl_prop('css_point'));
              css8 := decodifica_css(ctrl_prop('css_sele'));
              css9 := decodifica_css(ctrl_prop('css_footer'));
              norecordmsg:= ctrl_prop('norec_msg', True);
              if (decodifica_exp(ctrl_prop('hide_indicator'), nomeprogramma)) <> '' then exp1 := StrToInt(decodifica_exp(ctrl_prop('hide_indicator'), nomeprogramma))
              else exp1:=0;

              // ___________________________________ Grid options (GridPlus) ___
              grid_plus := trim(ctrl_prop('grid_plus'));
              if Copy(grid_plus, 0, 6) = 'array(' then
              begin
                grid_plus := Copy(grid_plus, 7, Length(grid_plus) - 7);
              end
              else
              begin
                grid_plus := 'Default';
              end;

              // ____________________________________________ Pinned columns ___
              tmp1 := ctrl_prop('pinned_cols');
              if tmp1 <> '' then
              begin
                pin_cols := StrToInt(tmp1);
              end;

            end; //fine table

            // controllo navigator
            if tipo = 'navigator' then
            begin
              //               ShowMessage('Navigatore');
              tmp1 := ctrl_prop('vertical');
              if tmp1='True' then par12:='vertical';
              css1 := decodifica_css(ctrl_prop('css_e'));
              css2 := decodifica_css(ctrl_prop('css_i'));
              css3 := decodifica_css(ctrl_prop('css_first'));
              css4 := decodifica_css(ctrl_prop('css_prevpg'));
              css5 := decodifica_css(ctrl_prop('css_prev'));
              css6 := decodifica_css(ctrl_prop('css_next'));
              css7 := decodifica_css(ctrl_prop('css_nextpg'));
              css8 := decodifica_css(ctrl_prop('css_last'));
              css9 := decodifica_css(ctrl_prop('css_space'));
              css10 := decodifica_css(ctrl_prop('css_new'));
              css11 := decodifica_css(ctrl_prop('css_save'));
              css12 := decodifica_css(ctrl_prop('css_del'));
              css13 := decodifica_css(ctrl_prop('css_undo'));
              css14 := decodifica_css(ctrl_prop('css_detail'));
              css15 := decodifica_css(ctrl_prop('css_select'));

              navigatorblock_vis:= StrToInt(decodifica_exp(ctrl_prop('visible_nav'), nomeprg));
              insert_vis:= StrToInt(decodifica_exp(ctrl_prop('visible_new'), nomeprg));
              post_vis:= StrToInt(decodifica_exp(ctrl_prop('visible_save'), nomeprg));
              del_vis:= StrToInt(decodifica_exp(ctrl_prop('visible_del'), nomeprg));
              undo_vis:= StrToInt(decodifica_exp(ctrl_prop('visible_undo'), nomeprg));
              detail_vis:= StrToInt(decodifica_exp(ctrl_prop('visible_detail'), nomeprg));
              select_vis:= StrToInt(decodifica_exp(ctrl_prop('visible_select'), nomeprg));

              insert_enable:= StrToInt(decodifica_exp(ctrl_prop('enable_new'), nomeprg));
              post_enable:= StrToInt(decodifica_exp(ctrl_prop('enable_save'), nomeprg));
              del_enable:= StrToInt(decodifica_exp(ctrl_prop('enable_del'), nomeprg));
              undo_enable:= StrToInt(decodifica_exp(ctrl_prop('enable_undo'), nomeprg));
              detail_enable:= StrToInt(decodifica_exp(ctrl_prop('enable_detail'), nomeprg));
              select_enable:= StrToInt(decodifica_exp(ctrl_prop('enable_select'), nomeprg));

              insert_action:= ctrl_prop('act_new', True);
              post_action:= ctrl_prop('act_save', True);
              del_action:= ctrl_prop('act_del', True);
              undo_action:= ctrl_prop('act_undo', True);
              detail_action:= ctrl_prop('act_detail', True);
              select_action:= ctrl_prop('act_select', True);

              insert_msg:= decodifica_exp_stringa(ctrl_prop('confirm_new'), nomeprogramma);
              post_msg:= decodifica_exp_stringa(ctrl_prop('confirm_save'), nomeprogramma);
              del_msg:= decodifica_exp_stringa(ctrl_prop('confirm_del'), nomeprogramma);
              undo_msg:= decodifica_exp_stringa(ctrl_prop('confirm_undo'), nomeprogramma);
              detail_msg:= decodifica_exp_stringa(ctrl_prop('confirm_detail'), nomeprogramma);
              select_msg:= decodifica_exp_stringa(ctrl_prop('confirm_select'), nomeprogramma);
            end; //fine navigator

            if par10 = '' then
            begin
              par10 := '_stage_' + t_formnomeform.Value
            end;

            dm_form.t_controlliform.InsertRecord([nomeprg,
                                                  t_formnomeform.Value,
                                                  nomecontrollo,
                                                  tipo,
                                                  num1,
                                                  num2,
                                                  num3,
                                                  num4,
                                                  num5,
                                                  num6,
                                                  par1,
                                                  par2,
                                                  par3,
                                                  par4,
                                                  par5,
                                                  par9,
                                                  i,
                                                  par10,
                                                  par11,
                                                  par12,
                                                  par13,
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
                                                  par14,
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
                                                  zoom_action,
                                                  tooltipexp,
                                                  Expand,
                                                  grid_plus,
                                                  pin_cols]);

            Inc(i);  // i è il taborder

          end;
        until not r.ExecNext
      end; // FINE CONTROLLI DELLA FORM


      t_form.Next;
    end;  //fine dei forms


         call_log('Inizio operazioni');

    //operazioni  function marche§§conferma_def() {
    //           ShowMessage('Start Actions');
    t_azioni.First;
    repeat
      r.Expression := 'function ' + nomeprg + '§§' + trim(t_azioniazione.Value) +
        '_act\((.*?)\|o2_fine_act\|';

      if r.Exec(programma.Lines.Text) then
      begin
        programma.SelStart := r.MatchPos[0] - 1;
        programma.SelLength := r.MatchLen[0];
        selezione := programma.SelText;

        id_operazione := 0;
        // singoli passi
        r2.Expression := '\$o2exe->(.*?)\$o2exe\-\>[et]\(\);';

        if r2.exec(selezione) then
        begin
          repeat
            begin
              //azzera le variabili che entrano in gioco
              par1      := '';
              par2      := '';
              par3      := '';
              par4      := '';
              par5      := '';
              par6      := '0';
              num1      := 0;
              num2      := 0;
              tipologia := '';

              Inc(id_operazione);

              selezione2 := copy(r2.match[0], 1, r2.MatchLen[0] - 1);
              selezione2 := StringReplace(selezione2, '&&', '^', [rfReplaceAll]);

              //id esecuzione
              par1 := IntToStr(id_operazione);

              //condizione esecutiva
              par7 := trim(ExtractWord(2, selezione2, ['^']));
              if StrLoCase(par7) = 'true' then
              begin
                par7 := '0'
              end
              else
              begin
                par7 := trim(copy(trim(ExtractWord(1, par7, ['|'])), 2, 300));
                par7 := decodifica_exp(par7, nomeprg);
              end;

              //operazione
              selezione2 := trim(ExtractWord(3, selezione2, ['^']));

              tipo := copy(selezione2, 1, pos('(', selezione2) - 1);

              selezione3 := trim(copy(selezione2, pos('(', selezione2) +
                1, length(trim(selezione2)) - pos('(', selezione2) - 1));

              if tipo = 'o2act::block' then
              begin
                par2 := 'Block';
              end;

              if tipo = 'o2act::block_end' then
              begin
                par2 := 'Block end';
              end;  //fine block end

              if tipo = 'o2act::set' then
              begin
                par2 := 'Update';
                //task
                par8 := extractword(1, selezione3, [',']);
                par8 := copy(trim(par8), 2, length(trim(par8)) - 2);
                par3 := chr(127) + par8;
                //alias campo

                par8 := extractword(2, selezione3, [',']);
                par8 := copy(trim(par8), 2, length(trim(par8)) - 2);

                if (crossref_oggetto = 'Application variable') and (crossref_ricerca = par8) and (par3 = CHR(127) + '_o2SESSION') then
                   f_crossref.Memo1.Lines.Append('Program: [' + nomeprg + ']' +chr(9)+ 'Action: [' + t_azioniazione.Value + ']'
                   +chr(9) + 'Line: [' + par1 +']');


                par3 := trim(par3) + chr(129) + par8;
                //valore exp1
                par6 := trim(extractword(3, selezione3, [',']));
                par6 := trim(copy(par6, length(trim(nomeprg)) + 6, 10));
                par6 := copy(trim(par6), 1, length(trim(par6)) - 2);

              end;   //fine update

              if tipo = 'o2act::confirm' then
              begin
                par2 := 'Confirm';
                //task
                par8 := extractword(1, selezione3, [',']);
                par8 := copy(trim(par8), 2, length(trim(par8)) - 2);
                par3 := chr(127) + par8;
                //alias campo
                par8 := extractword(2, selezione3, [',']);
                par8 := copy(trim(par8), 2, length(trim(par8)) - 2);

                if (crossref_oggetto = 'Application variable') and (crossref_ricerca = par8) and (par3 = CHR(127) + '_o2SESSION') then
                   f_crossref.Memo1.Lines.Append('Program: [' + nomeprg + ']' +chr(9)+ 'Action: [' + t_azioniazione.Value + ']'
                   +chr(9) + 'Line: [' + par1 +']');

                par3 := trim(par3) + chr(129) + par8;
                //valore exp1
                par6 := trim(extractword(3, selezione3, [',']));
                par6 := trim(copy(par6, length(trim(nomeprg)) + 6, 10));
                par6 := copy(trim(par6), 1, length(trim(par6)) - 2);

              end;   //fine confirm

              if tipo = 'o2act::io' then
              begin
                par2 := 'I/O';
                //PROTOCOLLO
                par8 := extractword(1, selezione3, [',']);
                par8 := copy(trim(par8), 2, length(trim(par8)) - 2);
                par3 := chr(143) + par8;
                //RISORSA
                par8 := extractword(2, selezione3, [',']);
                par8 := copy(trim(par8), 2, length(trim(par8)) - 2);
                par3 := trim(par3) + chr(144) + par8;

                if StrLoCase(trim(extractword(3, selezione3, [',']))) = 'true' then
                begin
                  num1 := 0
                end
                else begin
                  num1 := 1
                end;

              end;   //fine I/O

              if tipo = 'o2act::report' then
              begin
                par2 := 'Print';
                r4.Expression:='(.*?)\s*\,\s*(.*?)\s*\,\s*(.*?)\)\)\,\s*(.*?)\s*\,\s*(\".*?\")';
                if r4.Exec(selezione3) then
                begin
                  //template + nomepdf (expression) in riferimento
                  par3 := decodifica_exp(trim(r4.Match[1]), nomeprg) + ':' +
                  decodifica_exp(trim(r4.Match[2]), nomeprg) + ':' +
                  decodifica_exp(trim(r4.Match[4]), nomeprg);

                  num4:= strtoint(decodifica_exp(trim(r4.Match[1]), nomeprg));
                  num5:= strtoint(decodifica_exp(trim(r4.Match[2]), nomeprg));
                  num6:= strtoint(decodifica_exp(trim(r4.Match[4]), nomeprg));

                // array risorse in par5 (parametri call)
                r3.Expression := 'array\(\"id\"\s\=\>\s(.*?)\)';
                if r3.Exec(selezione3) then
                begin
                  repeat
                    tmp2 := copy(trim(r3.Match[0]), 1, length(trim(r3.Match[0])) - 1);
                    for num1 := 1 to StrCharCount(tmp2, ',') + 1 do
                    begin
                      tmp1 := trim(ExtractWord(num1, tmp2, [',']));

                      tmp1 := trim(ExtractWord(2, tmp1, ['>']));
                      tmp1 := copy(tmp1, 2, length(tmp1) - 2);
                      if tmp1 = '' then
                      begin
                        tmp1 := ' '
                      end;
                      par5 := trim(par5) + tmp1 + '|';
                    end;
                    par5 := trim(par5) + '§';

                  until not r3.ExecNext()
                end;

              end;   //fine I/O
             end;


              if tipo = 'o2act::ret' then
              begin
                par2 := 'Return parameter';
                //indice del parametro
                par3 := trim(extractword(1, selezione3, [',']));
                par3 := par3 + '::' + t_parametri.Lookup('id', StrToInt(par3), 'nome');
                //valore exp1
                par6 := trim(extractword(2, selezione3, [',']));
                par6 := trim(copy(par6, length(trim(nomeprg)) + 6, 10));
                par6 := copy(par6, 1, length(trim(par6)) - 2);

              end;   //fine ritorna parameter


              if tipo = 'o2act::call' then
              begin
                par2 := 'Call program';
                //programma
                par3 := extractword(1, selezione3, [',']);
                par3 := decodifica_exp_stringa(par3, nomeprg);

                //cached
                if (StrLoCase(trim(extractword(2, selezione3, [','])))) = 'true' then par12 := 'Cached' else par12 := '';

                //parametri
                i := 0;
                repeat
                  par8 := trim(extractword(3 + i, selezione3, [',']));
                  // _________________________________ Variable by reference ___
                  if pos('"', par8) > 0 then
                  begin
                    par8 := copy(trim(par8), 2, length(trim(par8)) - 2)
                  end
                  // ____________________________________________ Expression ___
                  else if pos('exp', par8) > 0 then
                  begin
                    // in caso di expression togli parentesi
                    par8 := copy(par8, 1, length(trim(par8)) - 2);
                    par8 := '[o2exp_' +
                            trim(copy(trim(par8), length(nomeprg) + 6, 10)) +
                            ']';
                  end
                  // __________________________________________________ Null ___
                  else if (par8 = 'null') or (par8 = 'Null') then
                  begin
                    par8 := 'null';
                  end
                  // _________________________________________________ Empty ___
                  else
                  begin
                    par8 := '';
                  end;
                  if pos('§§', par8) > 0 then
                  begin

                    if (crossref_oggetto = 'Application variable') and (crossref_ricerca = extractword(2, par8, ['§'])) and (Pos('_o2SESSION', par8) > 0) then
                       f_crossref.Memo1.Lines.Append('Program: [' + nomeprg + ']' +chr(9)+ 'Action: [' + t_azioniazione.Value + ']'
                       +chr(9) + 'Line: [' + par1 +']');

                    par8 := chr(127) + Stringreplace(par8, '§§', chr(129), [rfReplaceAll])
                  end;

                  if par8 <> '' then
                  begin
                    par5 := trim(par5) + chr(13) + chr(10) + par8;
                    Inc(i);
                  end;
                until trim(extractword(3 + i, selezione3, [','])) = '';

                par5 := trim(par5);
                num1 := i;
                // par6 è il numero dei parametri delle call 
                par6 := IntToStr(num1);
              end;   //fine call program

              //gotourl
              if tipo = 'o2act::gotourl' then
              begin
                par2 := 'Go to';
                //programma
                par6 := extractword(1, selezione3, [',']);
                par6 := decodifica_exp(par6, nomeprg);

                tipologia := 'url';
              end;


              if tipo = 'o2act::gotoprg' then
              begin
                par2 := 'Go to';
                //programma
                par3 := extractword(1, selezione3, [',']);
                par3 := decodifica_exp_stringa(par3, nomeprg);
                par4 := trim(extractword(2, selezione3, [',']));

                if StrLoCase(par4) = 'false' then
                begin
                  par12 := ''
                end
                else begin
                  par12 := StringReplace(par4, '"', '', [rfReplaceAll])
                end;

                //parametri
                i := 0;
                repeat
                  par8 := trim(extractword(3 + i, selezione3, [',']));
                  if (par8 = 'null') or (par8 = 'Null') then
                  begin
                    par8 := 'null';
                  end
                  // ________________________________ Parameter by reference ___
                  else if pos('_exp_', par8) = 0 then
                  begin
                    par8 := copy(trim(par8), 2, length(trim(par8)) - 2);
                    if pos('§§', par8) > 0 then
                    begin
                        if (crossref_oggetto = 'Application variable') and (crossref_ricerca = extractword(2, par8, ['§'])) and (Pos('_o2SESSION', par8) > 0) then
                         f_crossref.Memo1.Lines.Append('Program: [' + nomeprg + ']' +chr(9)+ 'Action: [' + t_azioniazione.Value + ']'
                         +chr(9) + 'Line: [' + par1 +']');
                      par8 := chr(127) + Stringreplace(par8, '§§', chr(129), [rfReplaceAll])
                    end;
                  end
                  // _______________________________ Parameter by expression ___
                  else
                  begin
                    // in caso di expression togli parentesi
                    par8 := copy(par8, 1, length(trim(par8)) - 2);
                    par8 := '[o2exp_' + trim(copy(trim(par8), length(nomeprg) + 6, 10)) + ']';
                  end;

                  if par8 <> '' then
                  begin
                    par5 := trim(par5) + chr(13) + chr(10) + par8;
                    Inc(i);
                  end;
                until trim(extractword(3 + i, selezione3, [','])) = '';

                par5      := trim(par5);
                num1      := i;
                tipologia := 'program';
                par6      := IntToStr(num1);

              end;   //fine go to program

              if tipo = 'o2act::exe' then
              begin
                par2 := 'Execute action';
                //azione da eseguire
                par8 := extractword(1, selezione3, [',']);
                par8 := copy(trim(par8), 2, length(trim(par8)) - 2);


                par3 := par8 + '::';
                //espressione di fine
                par8 := trim(extractword(2, selezione3, [',']));

                if Pos('_exp_', par8) > 0 then
                begin
                  par8 := copy(trim(par8), 2, length(trim(par8)) - 2);
                  par8 := trim(copy(par8, length(trim(nomeprg)) + 6, 10));
                  par8 := copy(par8, 1, length(trim(par8)) - 2);
                end ;

                // vecchie release
                par8 := StringReplace(par8, '"True"', 'True',[rfIgnoreCase,rfReplaceAll]);
                par8 := StringReplace(par8, '"False"', 'False',[rfIgnoreCase,rfReplaceAll]);

                par3 := trim(par3) + par8 + '::';

                //task
                par8 := extractword(3, selezione3, [',']);
                par8 := copy(trim(par8), 2, length(trim(par8)) - 2);
                // se c'e' la view...
                if par8 <> '' then
                begin
                 par3 := trim(par3) + chr(127) +  par8 + '::';
                 //asc_desc
                 par8 := extractword(4, selezione3, [',']);
                 par8 := copy(trim(par8), 2, length(trim(par8)) - 2);
                 par3 := trim(par3) + par8;
                end;
              end;   //fine esegui azione

              if tipo = 'o2act::view' then
              begin
                par2 := 'Recordset';

                //task
                par8 := extractword(1, selezione3, [',']);
                par8 := copy(trim(par8), 2, length(trim(par8)) - 2);
                par3 := chr(127) + par8 + '::';

                //tipo di azione
                par8 := extractword(2, selezione3, [',']);
                par8 := copy(trim(par8), 2, length(trim(par8)) - 2);
                if par8 = '1' then
                begin
                  par8 := 'First'
                end
                else if par8 = '2' then
                begin
                  par8 := 'Previous row'
                end
                else if par8 = '3' then
                begin
                  par8 := 'Next row'
                end
                else if par8 = '4' then
                begin
                  par8 := 'Last'
                end
                else if par8 = '5' then
                begin
                  par8 := 'Previous page'
                end
                else if par8 = '6' then
                begin
                  par8 := 'Next page'
                end
                else if par8 = 'S' then
                begin
                  par8 := 'Post row'
                end
                else if par8 = 'M' then
                begin
                  par8 := 'Edit'
                end
                else if par8 = 'R' then
                begin
                  par8 := 'Read'
                end
                else if par8 = 'L' then
                begin
                  par8 := 'Locate'
                end
                else if par8 = 'A' then
                begin
                  par8 := 'Undo'
                end
                else if par8 = 'I' then
                begin
                  par8 := 'Prepare insert'
                end
                else if par8 = 'C' then
                begin
                  par8 := 'Delete row'
                end
                else if par8 = 'D' then
                begin
                  par8 := 'Delete all rows'
                end
                else if par8 = 'K' then
                begin
                  par8 := 'Lock rows'
                end
                else if par8 = 'G' then
                begin
                  par8 := 'Aggregate'
                end
                else
                begin
                  par8 := 'Refresh'
                end;

                par3 := trim(par3) + par8;
                if par8 = 'Locate' then
                begin
                  par5 := copy(selezione3, PosEx('array(', selezione3), 2000);
                  par5 := copy(par5, 7, 2000);
                  par5 := copy(trim(par5), 1, length(trim(par5)) - 1);
                  num1 := StrStrCount(par5, '=>');
                  par6 := IntToStr(num1);
                end;

              end;   //fine recordset

              if tipo = 'o2act::close' then
              begin
                par2 := 'Close program';
              end;  //fine close program


              if tipo = 'o2act::alert' then
              begin
                par2 := 'Message';
                par6 := extractword(1, selezione3, [',']);
                //               par6:=copy(par1,2,length(trim(par1))-2);
                par6 := trim(copy(trim(par6), length(trim(nomeprg)) + 6, 10));
                par6 := copy(par6, 1, length(trim(par6)) - 2);
                par3 := extractword(2, selezione3, [',']);
                if trim(par3) = '0' then
                begin
                  par3 := 'Box'
                end
                else
                if trim(par3) = '1' then
                begin
                  par3 := 'Status bar'
                end
                else par3:='Popup';

              end;  //fine message

              if tipo = 'o2act::script' then
              begin
                par2 := 'Execute script';
                par6 := extractword(1, selezione3, [',']);
                par6 := trim(copy(trim(par6), length(trim(nomeprg)) + 6, 10));
                par6 := copy(par6, 1, length(trim(par6)) - 2);

              end;  //fine execute script


              if tipo = 'o2act::menu' then
              begin
                par2 := 'Set menu';
                par3 := trim(extractword(1, selezione3, [',']));
                par3 := copy(trim(par3), 2, length(trim(par3)) - 2);

              end;  //fine menu



              if tipo = 'o2act::remark' then
              begin
                par2 := 'Remark';
                par3 := trim(extractword(1, selezione3, [',']));
                par3 := copy(trim(par3), 2, length(trim(par3)) - 2);

              end;  //fine remark

              if tipo = 'o2act::debug' then
              begin
                par2 := 'Debugger';
                par3 := trim(extractword(1, selezione3, [',']));
              end;  //fine remark



              if par1 <> '' then
              begin
                t_operazioni.InsertRecord([nomeprg, t_azioniazione.Value, StrToInt(
                  par1), par3, 0, par5, StrToInt(par6), StrToInt(par7), num1, par2, tipologia, par12,num4,num5,num6])
              end;
            end;
          until not r2.ExecNext
        end;

      end;




      t_azioni.Next;
    until t_azioni.EOF;  //fine azioni

         call_log('Inizio espressioni');


    //expression
    { TODO : da importare expression }
    //     ShowMessage('Start Expression');
    i := 0;
    //r.Expression := 'function ' + nomeprg + '_exp_\d*\(\)(.*?)\|o2_fine_exp\|';

    r.Expression := 'function ' + nomeprg + '_exp_(\d*)\(\)\s*\{\s*(.*?)\s*return\s*\((.*?)\)\;\s*\}\s*\/\/\|o2_fine_exp\|';
    if r.Exec(programma.Lines.Text) then
    begin
      repeat
        begin

  {        programma.SelStart := r.MatchPos[0] - 1;
          programma.SelLength := r.MatchLen[0];
          selezione := programma.SelText;
          i := StrToInt(copy(selezione, pos('_exp_', selezione) + 5, pos('()', selezione) -
            (pos('_exp_', selezione) + 5)));

          r2.Expression := 'return \((.*?);';
          if r2.Exec(selezione) then
          begin
            selezione2 := copy(trim(selezione), r2.MatchPos[0], r2.MatchLen[0] - 1);
            //return
            par1 := copy(selezione2, 9, 1000);
            par1 := copy(trim(par1), 1, length(trim(par1)) - 1);
            //script
            par2 := trim(copy(trim(selezione), pos('{', selezione) + 1,
              r2.MatchPos[0] - 1 - pos('{', selezione)));

               }

            if r.Match[1]<>'' then
            begin
                       //   call_log(r.Match[0]);
              i:=strtoint(r.Match[1]);
              par1:=r.Match[3];
              par2:=r.Match[2];

              t_espressioni.InsertRecord([nomeprg, i, par2, par1]);
            end;

            if crossref_ricerca <> '' then
            begin
              // mette script e return in un' unica stringa
              par2 := trim(par2) + trim(par1);
              if (crossref_oggetto = 'Application variable') then par13:= '_o2SESSION';


              r3.Expression:='o2(val|pre|zero)\((\x27|\")('+ par13 +')(\x27|\")\s*,\s*(\x27|\")('+ crossref_ricerca +')(\x27|\")';

              if r3.Exec(par2) then
                f_crossref.Memo1.Lines.Append('Program: [' + nomeprg + ']' +chr(9)+ 'Expression: [' + inttostr(i) + ']');

  //          end;

          end;
        end;
      until not r.ExecNext
    end;

  end;



     call_log('Fine PRF');

  //fine
  dm_form.t_task.Filtered := False;

  FreeAndNil(r);
  FreeAndNil(r2);
  FreeAndNil(r3);
  FreeAndNil(r4);
  FreeAndNil(r5);
  end;

  dm_form.program_modificato := False;


  // se non esistono i files cds li crea
  if dircds = '' then f_export.prgsavcdsExecute(self, nomeprg);
  crossref_oggetto:='';
  crossref_ricerca:='';
  dm_form.in_importazione:=false;
  f_work.abilitaprgtab.Execute;
end; // fine import prg


procedure Tf_import.app_importExecute(Sender: TObject);

begin
  appini_import.Execute;
  menu_import.Execute;
  models_import.Execute;
  vars_import.Execute;
  labels_import.Execute;

  // GENERA EVENTUALI PROGRAMMI DI DEFAULT (_START,_REQUEST, ecc.)
{ if not(FileExists(f_work.prgdir + '_start.prg')) then
 begin
     prg_start.Lines.SaveToFile(f_work.prgdir + '_start.prg');
     prf_start.Lines.SaveToFile(f_work.prgdir + '_start.prf');
 end;
 if not(FileExists(f_work.prgdir + '_request.prg')) then
 begin
     prg_request.Lines.SaveToFile(f_work.prgdir + '_request.prg');
     prf_request.Lines.SaveToFile(f_work.prgdir + '_request.prf');
 end;
 }
  if not (FileExists(f_work.prgdir + '_o2viewmodels.prg')) then
  begin
    prg_views.Lines.SaveToFile(f_work.prgdir + '_o2viewmodels.prg');
    prf_views.Lines.SaveToFile(f_work.prgdir + '_o2viewmodels.prf');
  end;

end;  //FINE IMPORT APPLICAZIONE




procedure Tf_import.dbtab_importExecute(Sender: TObject);
begin
  db_import.Execute;
  tables_import.Execute;
end;


function Tf_import.decodifica_css(stringa: string): string;
var
  appoggio: string;
begin
  stringa := trim(stringa);
  if (pos('()', stringa) <> 0) and (pos('_exp_', stringa) <> 0) then
    // espressione
  begin
    appoggio := copy(stringa, pos('_exp_', stringa) + 5, 20);
    appoggio := leftstr(appoggio, length(trim(appoggio)) - 2);
    Result   := '[o2exp_' + appoggio + ']';
    Exit;
  end;
  if trim(stringa) = 'null' then
  begin
    Result := ''
  end
  else begin
    Result := copy(stringa, 2, length(stringa) - 2)
  end;
end;


function Tf_import.decodifica_exp(stringa, nomeprogramma: string): string;
begin
  stringa       := Trim(stringa);
  nomeprogramma := Trim(nomeprogramma);
  // ________________________________________ Exp function (<prg>_exp_<n>()) ___
  if (Pos(nomeprogramma + '_exp_', stringa) > 0) and
     (Pos('()', stringa) > 0) then
  begin
    stringa := Trim(Copy(stringa, Length(nomeprogramma) + 6, 10));
    stringa := Copy(stringa, 1, Length(stringa) - 2);
  end
  // ______________________________________________ Exp string ([o2exp_<n>]) ___
  else if (StrLeft(stringa, 7) = '[o2exp_') then
  begin
    stringa := Trim(Copy(stringa, 8, 8));
    stringa := StrLeft(stringa, Length(Trim(stringa)) - 1);
  end
  else
  begin
    stringa := '0';
  end;
  Result := stringa;
end;


function Tf_import.form_val_prop(proprieta, nomeform, selezione3: string;
  r3: TRegExpr; programma: TMemo; togli_virgolette: boolean = False): string;
begin

  r3.Expression := '\$form_' + nomeform + '\-\>' + proprieta + '(.*?);';
  if r3.exec(programma.Lines.Text) then
  begin
    programma.SelStart := r3.MatchPos[0] - 1;
    programma.SelLength := r3.MatchLen[0];
    selezione3 := trim(programma.SelText);
    Result     :=
      copy(selezione3, pos('(', selezione3) +
      1, strNpos(selezione3, ')', StrCharCount(selezione3, ')')) - pos('(', selezione3) - 1);

    if togli_virgolette then
    begin
      Result := copy(Result, 2, length(trim(Result)) - 2)
    end;
  end
  else begin
    Result := ''
  end;

end;

procedure Tf_import.carica_proprieta_controllo(Sender: TObject;
  nomecontrollo: string; nomeform: string);
var
  chiave, valore, selezione3, estrazione_controllo: string;
  n:  integer;
begin
  dm_form.t_value_list.EmptyDataSet;
  estrazione_controllo := '';
  selezione3 := '';

  // prima di tutto recupera tutti il controlli della form in questione

  r5.Expression := '\$ctrl_' + nomecontrollo + '\s\=\s\&\$form_' + nomeform + '(.*?)\}';
  if r5.exec(programma.Lines.Text) then
  begin
    programma.SelStart  := r5.MatchPos[0] - 1;
    programma.SelLength := r5.MatchLen[0];

    estrazione_controllo := trim(programma.SelText);

    r4.Expression := '\$ctrl_' + nomecontrollo + '\-\>(.*?)\)\s*;\s*$';
    r4.ModifierM := true;
    if r4.exec(estrazione_controllo) then
    begin
      repeat
        selezione3 := r4.Match[0];
        chiave :=
          copy(selezione3, pos('->', selezione3) + 2, strNpos(selezione3, '(', 1) -
          pos('->', selezione3) - 2);
        valore :=
          copy(selezione3, pos('(', selezione3) +
          1, strNpos(selezione3, ')', StrCharCount(selezione3, ')')) - pos('(', selezione3) - 1);
        dm_form.t_value_list.InsertRecord([chiave, valore]);
      until not r4.ExecNext
    end;
    r4.ModifierM := false;
  end;
end;


function Tf_import.ctrl_prop(proprieta: string;
                             togli_virgolette: boolean = False): string;
var value : string;
begin
  if dm_form.t_value_list.Lookup('chiave', proprieta, 'valore') = null then
  begin
    Result := '';
  end
  else
  begin
    value := dm_form.t_value_list.Lookup('chiave', proprieta, 'valore');
    if value = '' then
    begin
      Result := 'True';
    end
    else
    begin
      if (togli_virgolette) then
      begin
        value := StringReplace(value, '"', '', [rfReplaceAll]);
      end;
      Result := value;
    end;
  end;
end;


function Tf_import.decodifica_exp_stringa(stringa, nomeprogramma: string): string;
begin
  if (Pos(nomeprogramma + '_exp_', stringa) > 0) and
    (Pos('()', stringa) > 0) then
  begin
    stringa := trim(copy(stringa, length(trim(nomeprogramma)) + 6, 10));
    stringa := copy(trim(stringa), 1, length(trim(stringa)) - 2);
    stringa := '[o2exp_' + stringa + ']';
  end
  else
  begin
    stringa := copy(trim(stringa), 2, length(trim(stringa)) - 2)
  end;

  Result := stringa;

end;

procedure Tf_import.svuota_tab_prgExecute(Sender: TObject);
begin
  //inizializza
  dm_form.t_programmi.EmptyDataSet;
  dm_form.t_programmi.Open;
  dm_form.t_task.EmptyDataSet;
  dm_form.t_task.Open;
  dm_form.t_azioni.Emptydataset;
  dm_form.t_azioni.Open;
  dm_form.t_operazioni.Emptydataset;
  dm_form.t_operazioni.Open;
  dm_form.t_select.CancelUpdates;
  dm_form.t_select.Emptydataset;
  dm_form.t_select.Open;
  dm_form.t_union.Emptydataset;
  dm_form.t_union.Open;
  dm_form.t_variabili_prg.Emptydataset;
  dm_form.t_variabili_prg.Open;
  dm_form.t_usa_file.EmptyDataSet;
  dm_form.t_usa_file.Open;
  dm_form.t_form.EmptyDataSet;
  dm_form.t_form.Open;
  dm_form.t_controlliform.EmptyDataSet;
  dm_form.t_controlliform.Open;
  dm_form.t_agenti.EmptyDataSet;
  dm_form.t_agenti.Open;
  dm_form.t_agentitab.EmptyDataSet;
  dm_form.t_agentitab.Open;
  dm_form.t_espressioni.EmptyDataSet;
  dm_form.t_espressioni.Open;
  dm_form.t_parametri.Emptydataset;
  dm_form.t_parametri.Open;
  dm_form.t_report.Emptydataset;
  dm_form.t_report.Open;
  dm_form.t_reportfield.Emptydataset;
  dm_form.t_reportfield.Open;
  dm_form.t_input_output.Emptydataset;
  dm_form.t_input_output.Open;
  dm_form.t_value_list.Emptydataset;
  dm_form.t_value_list.Open;
  dm_form.t_aggreg.Emptydataset;
  dm_form.t_aggreg.Open;

end;

{**
 * Import data models.
 * If a cache file exists and it is up to date with repository then cache is
 * used, else models repository file is parsed.
 * System models are added to CDS file.
 *}
procedure Tf_import.models_importExecute(Sender: TObject);
var
  i: Integer;
  mName, mType, mPicture, mPrg : string;
  withCheck : Boolean;
begin
  da_Refresh := True;
  if FileExists(f_work.userdir + dm_form.t_applicazioneModels.Value) then
  begin
    withCheck := True;
    // ____ If cache file is up to date with repository then load from cache ___
    if FileAge(f_work.userdir + dm_form.t_applicazioneModels.Value) >
       FileAge(f_work.userdir + '__source__\models.cache')then
    begin
      programma.Lines.LoadFromFile(f_work.userdir +
                                   dm_form.t_applicazioneModels.Value);
    end
    else
    begin
      dm_form.t_modelli.LoadFromFile(f_work.userdir +
                                     '__source__\models.cache');
      da_Refresh := False;
      Exit;
    end;
  end
  else if FileExists(f_work.prgdir + dm_form.t_applicazionemodels.Value) then
  begin
    withCheck := False;
    // ____ If cache file is up to date with repository then load from cache ___
    if FileAge(f_work.prgdir + dm_form.t_applicazionemodels.Value) >
       FileAge(f_work.prgdir + '__source__\models.cache')then
    begin
      programma.Lines.LoadFromFile(f_work.prgdir +
                                   dm_form.t_applicazionemodels.Value);
    end
    else
    begin
      dm_form.t_modelli.LoadFromFile(f_work.prgdir + '__source__\models.cache');
      da_Refresh := False;
      Exit;
    end;
  end;
  // _______________________________________________________ Clear CDS table ___
  dm_form.t_modelli.EmptyDataSet;
  i            := 0;
  r            := TRegExpr.Create;
  r.Expression := 'o2def::model\([''"](\w*)[''"]\s*,\s*[''"](\w)[''"]\s*,' +
                  '\s*[''"]([^''"]*)[''"]\s*,\s*[''"](\w*)[''"]\s*\);';
  if r.Exec(programma.Lines.Text) then
  begin
    // ______________________________________________ Loop on defined models ___
    repeat
      Inc(i);
      // ________________________________________________________ Model name ___
      mName := r.Match[1];
      // ________________________________________________________ Model type ___
      mType := r.Match[2];
      if mType = 'A' then mType := 'Alpha';
      if mType = 'O' then mType := 'Time';
      if mType = 'N' then mType := 'Number';
      if mType = 'D' then mType := 'Date';
      if mType = 'L' then mType := 'Logical';
      if mType = 'S' then mType := 'Structured';
      // ___________________________________________________________ Picture ___
      mPicture := r.Match[3];
      // _________________________________________________ Selection program ___
      mPrg     := r.Match[4];
      // __________________________________ Create model record in CDS table ___
      if mName <> '' then
      begin
        dm_form.t_modelli.InsertRecord([mName, mType, mPicture, mPrg])
      end;
    until not r.ExecNext;
    da_Refresh := False;
  end;
  FreeAndNil(r);
  // ______________________________________ Create system moodels, if needed ___
  with dm_form.t_modelli do
  begin
    if Lookup('idmodello', '_o2alpha', 'idmodello') = null then
      InsertRecord(['_o2alpha', 'Alpha', 'C50']);
    if Lookup('idmodello', '_o2date', 'idmodello') = null then
      InsertRecord(['_o2date', 'Date', '-']);
    if Lookup('idmodello', '_o2time', 'idmodello') = null then
      InsertRecord(['_o2time', 'Time', ':']);
    if Lookup('idmodello', '_o2logical', 'idmodello') = null then
      InsertRecord(['_o2logical', 'Logical', '']);
    if Lookup('idmodello', '_o2text', 'idmodello') = null then
      InsertRecord(['_o2text', 'Alpha', 'C10000000']);
    if Lookup('idmodello', '_o2sid', 'idmodello') = null then
      InsertRecord(['_o2sid', 'Alpha', 'C32']);
    if Lookup('idmodello', '_o2structure', 'idmodello') = null then
      InsertRecord(['_o2structure', 'Structured', '']);
    if Lookup('idmodello', '_o2number', 'idmodello') = null then
      InsertRecord(['_o2number', 'Number', '8']);
  end;
  dm_form.datatypes_modificato := False;
  // ____________________________________________ Save models table to cache ___
  if withCheck then
  begin
    if not(DirectoryExists(f_work.userdir + '__source__\')) then
    begin
      CreateDir(f_work.userdir + '__source__\');
    end;
    dm_form.t_modelli.SaveToFile(f_work.userdir + '__source__\models.cache',
                                 dfXML);
  end
  else
  begin
    if not(DirectoryExists(f_work.prgdir + '__source__\')) then
    begin
      CreateDir(f_work.prgdir + '__source__\');
    end;
    dm_form.t_modelli.SaveToFile(f_work.prgdir + '__source__\models.cache',
                                 dfXML);
  end;
end;


procedure Tf_import.menu_importExecute(Sender: TObject);
var
  i: integer;
  ParentID, ItemType, ItemName, ItemLabel, ItemValue, ItemIcon: string;
begin
  if FileExists(f_work.userdir + dm_form.t_applicazionemenus.Value) then
  begin
    programma.Lines.LoadFromFile(f_work.userdir +
                                 dm_form.t_applicazionemenus.Value);
  end
  else if FileExists(f_work.prgdir + dm_form.t_applicazionemenus.Value) then
  begin
    programma.Lines.LoadFromFile(f_work.prgdir +
                                 dm_form.t_applicazionemenus.Value);
  end;
  dm_form.t_menu.EmptyDataSet;
  i            := 0;
  r            := TRegExpr.Create;
  r.ModifierI  := True;
  r.Expression := 'o2def::menu_item\(\s*["' + #39 +
                  '](\w*)["' + #39 + ']\s*,\s*["' + #39 + '](\w)["' + #39 +
                  ']\s*,\s*["' + #39 + '](\w*)["' + #39 + ']\s*,\s*["' + #39 +
                  ']([^,]*)["' + #39 + ']\s*,\s*["' + #39 + ']([^,]*)["' + #39 +
                  ']\s*,\s*\w*\s*,\s*\w*\s*,\s*["' + #39 + ']([^,]*)["' + #39 +
                  ']\s*\);';
  if r.Exec(programma.Lines.Text) then
  begin
    repeat
      ParentID  := r.Match[1];
      ItemType  := r.Match[2];
      ItemName  := r.Match[3];
      ItemLabel := r.Match[4];
      ItemValue := r.Match[5];
      ItemIcon  := r.Match[6];
      // ___________________________________________________ Fix Type string ___
      if ItemType = 'M' then
      begin
        ItemType := 'Menu';
      end
      else if ItemType = 'U' then
      begin
        ItemType := 'Url';
      end
      else if ItemType = 'S' then
      begin
        ItemType := 'Separator';
      end
      else if ItemType = 'P' then
      begin
        ItemType := 'Program';
      end;
      Inc(i);
      dm_form.t_menu.InsertRecord([ItemName,
                                   ParentID,
                                   i,
                                   ItemLabel,
                                   ItemType,
                                   ItemValue,
                                   ItemIcon]);
    until not r.ExecNext
  end;
  dm_form.menu_modificato := False;
end;  //FINE IMPORT menu


{*
 * Reads application main file for runtime and release and application .INI for
 * a few basic configuration infos
 *}
procedure Tf_import.appini_importExecute(Sender: TObject);
var
  selezione, selezione2, selezione3, nomeprg, nometask,
  tipo, exp1, exp2, exp3, exp4, exp5, exp6, exp7, exp8, vers_app: string;
  puntatore, num1, num2, num3, num4, num5, num6: integer;
  i: smallint;
  app_ini: TIniFile;

begin
  dm_form.t_applicazione.EmptyDataSet;
  // _____________________________________ Load application main script file ___
  programma.Lines.LoadFromFile(f_work.OpenDialog1.FileName);
  // ________________________________________________________ Create reg-exp ___
  r            := TRegExpr.Create;
  r.ModifierI  := True;
  r2           := TRegExpr.Create;
  r2.ModifierI := True;
  // ___________________________ Look in main script for application release ___
  r.Expression := 'o2def::app\s*\(\s*["''](.*?)["'']\s*\)\s*;';
  if r.Exec(programma.Lines.Text) then
  begin
    programma.SelStart  := r.MatchPos[0] - 1;
    programma.SelLength := r.MatchLen[0];
    selezione           := programma.SelText;
    vers_app            := r.Match[1];
  end;
  // _________________________________ Look in main script for Janox runtime ___
  r.Expression := 'jxrnt\s*\=\s*["''](.*?)["'']\s*;';
  if r.Exec(programma.Lines.Text) then
  begin
    exp3 := r.Match[1];
    exp3 := StringReplace(exp3, '\\', '\', [rfReplaceAll]);
    exp3 := StringReplace(exp3, '\', '/', [rfReplaceAll]);
    exp3 := StringReplace(exp3, '/jxrnt.php', '', [rfReplaceAll]);
    dm_form.t_applicazione.Edit;
    dm_form.t_applicazioneo2_alias.Value    := exp3;
    dm_form.t_applicazioneapp_version.Value := vers_app;
  end;
  // __________________________________________________ Read application INI ___
  app_ini := TIniFile.Create(f_work.workdir + f_work.progetto + '.ini');
  with dm_form do
  begin
    t_applicazione.Edit;
    t_applicazionetitolo.Value       := app_ini.ReadString('app',
                                                           'title',
                                                           '');
    t_applicazionevalidate.Value     := app_ini.ReadInteger('app',
                                                            'validate',
                                                            1);
    t_applicazionestartprg.Value     := app_ini.ReadString('app',
                                                           'startprg',
                                                           '');
    t_applicazionereqprg.Value       := app_ini.ReadString('app',
                                                           'reqprg',
                                                           '');
    t_applicazionedefault_menu.Value := app_ini.ReadString('app',
                                                           'activemenu',
                                                           '');
    t_applicazionedbs.Value          := app_ini.ReadString('app',
                                                           'dbs',
                                                           'db_repository.inc');
    t_applicazionemenus.Value        := app_ini.ReadString('app',
                                                           'menus',
                                                           'menu_repository.inc'
                                                           );
    t_applicazionemodels.Value       := app_ini.ReadString('app',
                                                           'models',
                                                           'mod_repository.inc'
                                                           );
    t_applicazionetables.Value       := app_ini.ReadString('app',
                                                           'tables',
                                                           'file_repository.inc'
                                                           );
    t_applicazioneappvars.Value      := app_ini.ReadString('app',
                                                           'vars',
                                                           'var_repository.inc'
                                                           );
    t_applicazione.Post;
  end;
  // _______________________ Application in newer then builder: show message ___
  if vers_app > f_work.build then
  begin
    ShowMessage('Janox Open Builder is out of date. Upgrade it!')
  end
  // ____________ Application is older then builder: run convertion and exit ___
  else if vers_app < f_work.build then
  begin
    build_file := vers_app;
    f_conversioni.ShowModal();
    Application.Terminate();
  end;
  dm_form.appprop_modificato := False;
end;


procedure Tf_import.db_importExecute(Sender: TObject);
var
  puntatore, puntatoreprec, id_campo, segmento: integer;
var
  nome, nomefisico, database, chiaveprimaria, selezione, tipo, size,
  direzione, selezione2, server, owner, tmp, exp1, exp2, exp3, exp4, exp5, exp6, asp: string;
  createtab: Boolean;
  num1 : integer;
begin

  da_Refresh := True;



  // recupera il file repository
  r  := TRegExpr.Create;
  r.ModifierI := True;
  r.ModifierS := False;
  r2 := TRegExpr.Create;
  r2.ModifierI := True;

  dm_form.t_servers.Emptydataset;
  dm_form.t_servers.Open;

  dm_form.t_databases.Emptydataset;
  dm_form.t_databases.Open;

  //elenco server/databases
  if FileExists(f_work.userdir + dm_form.t_applicazionedbs.Value) then
  begin
    programma.Lines.LoadFromFile(f_work.userdir + dm_form.t_applicazionedbs.Value)
  end
  else if fileexists(f_work.prgdir + dm_form.t_applicazionedbs.Value)
  then
  begin
    programma.Lines.LoadFromFile(f_work.prgdir + dm_form.t_applicazionedbs.Value)
  end;

  //importa i server
  r.Expression := '^\s*o2def::server(.*?);';
  if r.Exec(programma.Lines.Text) then
  begin
    repeat
      programma.SelStart := r.MatchPos[0] - 1;
      programma.SelLength := r.MatchLen[0];
      selezione := programma.SelText;


      r2.Expression := '\(.*\)';

      if r2.exec(selezione) then
      begin
        selezione2 := copy(r2.match[0], 2, r2.MatchLen[0] - 2);
        //nome logico
        exp1 := extractword(1, selezione2, [',']);
        exp1 := copy(trim(exp1), 2, length(trim(exp1)) - 2);


        //tipo engine
        exp2 := extractword(2, selezione2, [',']);
        exp2 := copy(trim(exp2), 2, length(trim(exp2)) - 2);


        //path fisico
        exp3 := extractword(3, selezione2, [',']);
        exp3 := copy(trim(exp3), 2, length(trim(exp3)) - 2);

        //user
        exp4 := extractword(4, selezione2, [',']);
        exp4 := copy(trim(exp4), 2, length(trim(exp4)) - 2);

        //password
        exp5 := extractword(5, selezione2, [',']);
        exp5 := copy(trim(exp5), 2, length(trim(exp5)) - 2);

        //chunk
        exp6:= extractword(6, selezione2, [',']);
        if exp6 <> '' then num1:= StrToInt64(exp6) else num1:=0;

        dm_form.t_servers.InsertRecord([exp1, exp2, exp3, exp4, exp5, num1]);

      end;

    until not r.ExecNext
  end;
  // fine servers

  programma.SelLength := 0;


  r.Expression := '^\s*o2def::db(.*?);';
  if r.Exec(programma.Lines.Text) then
  begin
    repeat

      programma.SelStart := r.MatchPos[0] - 1;
      programma.SelLength := r.MatchLen[0];
      selezione := programma.SelText;

      nome := trim(extractword(1, selezione, [',']));
      nome := copy(changexchars('"', chr(0), nome), 11, 30);
      nome := changexchars(chr(39), chr(0), nome);

      nomefisico := trim(extractword(2, selezione, [',']));
      nomefisico := changexchars('"', chr(0), nomefisico);
      nomefisico := changexchars(chr(39), chr(0), nomefisico);

      server := trim(extractword(3, selezione, [',']));
      server := changexchars('"', chr(0), server);
      server := changexchars(chr(39), chr(0), server);

      owner := trim(extractword(4, selezione, [',']));
      owner := changexchars('"', chr(0), owner);
      owner := changexchars(chr(39), chr(0), owner);
      owner := changexchars(')', chr(0), owner);
      owner := changexchars(';', chr(0), owner);


      tmp   := StrLoCase(trim(extractword(5, selezione, [','])));
      tmp   := changexchars(')', chr(0), tmp);
      tmp   := changexchars(';', chr(0), tmp);
      tmp   := changexchars('"', chr(0), tmp);
      tmp   := changexchars(chr(39), chr(0), tmp);
      if tmp = 'true' then asp:='Column'
      else if tmp = 'c' then asp:='Column'
      else if tmp = 's' then asp:='Schema'
      else if tmp = 'd' then asp:='Database'
      else asp:='False';

      exp1   := StrLoCase(trim(extractword(6, selezione, [','])));
      exp1   := changexchars(')', chr(0), exp1);
      exp1   := changexchars(';', chr(0), exp1);
      if exp1 = 'true' then createtab:=true else createtab:=false;

      dm_form.t_databases.InsertRecord([nome, nomefisico, server, owner, asp, createtab]);
    until not r.ExecNext
  end;

  programma.SelLength := 0;



  FreeAndNil(r);
  FreeAndNil(r2);
  da_Refresh := False;
  dm_form.database_modificato := False;

end;  //fine servers/database


{**
 * Import tables repository.
 * If a cache file exists and it is up to date with repository then cache is
 * used, else tables repository file is parsed.
 * System tables are added if missing.
 *
 * TODO: Change way to manage system tables.
 *}
procedure Tf_import.tables_importExecute(Sender: TObject);
var
  nome, nomefisico, database, chiaveprimaria, modello,
  selezione, selezione2, prgsDir, userDir, folder, direzione : string;
  tabIdx, fieldIdx, keyIdx, segmIdx, i : Integer;
  withCheck : Boolean;
begin
  da_Refresh := True;
  // _______________ Unlink tables from related grids to speed up processing ___
  f_work.disabilitaTableRep.Execute;
  // _______________________________________________________ Set directories ___
  prgsDir := f_work.prgdir;
  userDir := f_work.userdir;
  // _______________________________________ Check files from user directory ___
  if FileExists(userDir + dm_form.t_applicazioneTables.Value) then
  begin
    withCheck := True;
    // _______________ If cache file is newer then repository then use cache ___
    if FileAge(userDir + dm_form.t_applicazioneTables.Value) >
       FileAge(userDir + '__source__\tables.cache')then
    begin
      programma.Lines.LoadFromFile(userDir +
                                   dm_form.t_applicazioneTables.Value);
    end
    else
    begin
      dm_form.t_tabelle.LoadFromFile(userDir + '__source__\tables.cache');
      dm_form.t_campi.LoadFromFile(userDir + '__source__\fields.cache');
      dm_form.t_indicitesta.LoadFromFile(userDir + '__source__\indexes.cache');
      dm_form.t_indici.LoadFromFile(userDir + '__source__\segments.cache');
      da_Refresh := False;
      Exit;
    end;
  end
  // _______________________________________ Check files from prgs directory ___
  else if fileexists(prgsDir + dm_form.t_applicazionetables.Value) then
  begin
    withCheck := False;
    // _______________ If cache file is newer then repository then use cache ___
    if FileAge(prgsDir + dm_form.t_applicazionetables.Value) >
       FileAge(prgsDir + '__source__\tables.cache')then
    begin
      programma.Lines.LoadFromFile(prgsDir +
                                   dm_form.t_applicazionetables.Value);
    end
    else
    begin
      dm_form.t_tabelle.LoadFromFile(prgsDir + '__source__\tables.cache');
      dm_form.t_campi.LoadFromFile(prgsDir + '__source__\fields.cache');
      dm_form.t_indicitesta.LoadFromFile(prgsDir + '__source__\indexes.cache');
      dm_form.t_indici.LoadFromFile(prgsDir + '__source__\segments.cache');
      da_Refresh := False;
      Exit;
    end;
  end;
  // ___________ Hide tables grids to speed up tables loading and processing ___
  f_work.ts_tabelle.Visible := False;
  // ______________________________________________________ Clear CDS tables ___
  dm_form.t_tabelle.EmptyDataSet;
  dm_form.t_tabelle.Open;
  dm_form.t_campi.EmptyDataSet;
  dm_form.t_campi.Open;
  dm_form.t_indicitesta.EmptyDataSet;
  dm_form.t_indicitesta.Open;
  dm_form.t_indici.EmptyDataset;
  dm_form.t_indici.Open;
  // ______________________________ TODO: Change way to manage system tables ___
  programma.SelLength := 0;
  // _____________________________________________________________ o2_rights ___
  if (PosEx('o2def::tab("o2_rights"', programma.Lines.Text) = 0) and
     (PosEx('o2def::tab(''o2_rights''', programma.Lines.Text) = 0) then
  begin
    programma.Lines.Text := tab_rights.Lines.Text + programma.Lines.Text;
  end;
  // ______________________________________________________________ o2_roles ___
  if (PosEx('o2def::tab("o2_roles"', programma.Lines.Text) = 0) and
     (PosEx('o2def::tab(''o2_roles''', programma.Lines.Text) = 0) then
  begin
    programma.Lines.Text := tab_roles.Lines.Text + programma.Lines.Text;
  end;
  // ____________________________________________________ o2_rights_per_role ___
  if (PosEx('o2def::tab("o2_rights_per_role"', programma.Lines.Text) = 0) and
     (PosEx('o2def::tab(''o2_rights_per_role''', programma.Lines.Text) = 0) then
  begin
    programma.Lines.Text := tab_rightrole.Lines.Text + programma.Lines.Text;
  end;
  // _____________________________________________________ o2_roles_per_user ___
  if (PosEx('o2def::tab("o2_roles_per_user"', programma.Lines.Text) = 0) and
     (PosEx('o2def::tab(''o2_roles_per_user''', programma.Lines.Text) = 0) then
  begin
    programma.Lines.Text := tab_rolesuser.Lines.Text + programma.Lines.Text;
  end;
  // _______________________________________________________________ options ___
  if (PosEx('o2def::tab("o2_options"', programma.Lines.Text) = 0) and
     (PosEx('o2def::tab(''o2_options''', programma.Lines.Text) = 0) then
  begin
    programma.Lines.Text := tab_options.Lines.Text + programma.Lines.Text;
  end;
  // ______________________________________________________________ sessions ___
  if (PosEx('o2def::tab("o2_sessions"', programma.Lines.Text) = 0) and
     (PosEx('o2def::tab(''_o2sessions''', programma.Lines.Text) = 0) then
  begin
    programma.Lines.Text := tab_sessions.Lines.Text + programma.Lines.Text ;
  end;
  // _________________________________________________________________ users ___
  if (PosEx('o2def::tab("o2_users"', programma.Lines.Text) = 0) and
     (PosEx('o2def::tab(''o2_users''', programma.Lines.Text) = 0) then
  begin
    programma.Lines.Text := tab_users.Lines.Text + programma.Lines.Text;
  end;
  // _________________________________________________ Parse file repository ___
  r  := TRegExpr.Create;
  r2 := TRegExpr.Create;
  r3 := TRegExpr.Create;
  // _____________________________________ Look for tables definition blocks ___
  tabIdx       := 0;
  r.Expression := 'o2def::tab\(\s*[''"](\w*)[''"]\s*,\s*[''"](\w*)[''"]\s*,' +
                  '\s*[''"](\w*)[''"]\s*,\s*[''"](\w*)[''"]\s*\);(\s*' +
                  'o2def::field.*?;){0,}(\s*o2def::index.*?;){0,}';
  if r.Exec(programma.Lines.Text) then
  begin
    // __________________________________________ Loop on tables definitions ___
    repeat
      inc(tabIdx);
      programma.SelStart  := r.MatchPos[0] - 1;
      programma.SelLength := r.MatchLen[0];
      selezione           := programma.SelText;
      // ________________________________________________ Table informations ___
      nome                := r.Match[1];
      nomefisico          := r.Match[3];
      database            := r.Match[2];
      chiaveprimaria      := r.Match[4];
      folder              := 'root';
      // __________________________________ Insert single table in CDS table ___
      try
        dm_form.t_tabelle.InsertRecord([tabIdx,
                                        nome,
                                        nomefisico,
                                        database,
                                        chiaveprimaria,
                                        r.MatchPos[0] - 1,
                                        r.MatchLen[0],
                                        folder]);
      finally
      end;
      // ___________________ Look for fields in single table definition code ___
      fieldIdx      := 0;
      r2.Expression := 'o2def::field\(\s*[''"](\w*)[''"]\s*,\s*[''"](\w*)' +
                       '[''"]\s*,\s*[''"](\w*)[''"]\s*\);';
      if r2.Exec(selezione) then
      begin
        // ____________________________________________ Loop on table fields ___
        repeat
          inc(fieldIdx);
          // ____________________________________________ Field informations ___
          nome       := r2.Match[1];
          nomefisico := r2.Match[2];
          modello    := r2.Match[3];
          // ______________________________ Insert single field in CDS table ___
          dm_form.t_campi.InsertRecord([tabIdx,
                                        fieldIdx,
                                        nome,
                                        nomefisico,
                                        '',
                                        '',
                                        r2.MatchPos[0] - 1,
                                        r2.MatchLen[0],
                                        modello]);

        until not r2.ExecNext
      end;
      // _____________________ Look for keys in single table definition code ___
      keyIdx        := 0;
      r2.Expression := 'o2def::index\(\s*[''"](\w*)[''"]\s*,\s*([^;]*)\);';
      if r2.Exec(selezione) then
      begin
        repeat
          inc(keyIdx);
          segmIdx := 0;
          // ______________________________________________ Key informations ___
          nome                := r2.Match[1];
          // ________________________________ Insert single key in CDS table ___
          dm_form.t_indicitesta.InsertRecord([tabIdx, keyIdx, nome]);
          // __________________________________________________ Key segments ___
          selezione2 := r2.Match[2];
          // __________________________________ Loop on pairs column divided ___
          for i := 1 to (StrCharCount(selezione2, ',') + 1) do
          begin
            // _____ Take them one yes and one not (column-directions pairs) ___
            if ((i div 2) * 2 <> i) then
            begin
              Inc(segmIdx);
              // ______________________________________ Segment informations ___
              nome      := trim(extractword(i, selezione2, [',']));
              nome      := changexchars('"', chr(0), nome);
              nome      := changexchars(chr(39), chr(0), nome);
              direzione := trim(extractword(i + 1, selezione2, [',']));
              direzione := changexchars('"', chr(0), direzione);
              direzione := changexchars(chr(39), chr(0), direzione);
              // ________________________ Insert single segment in CDS table ___
              dm_form.t_indici.InsertRecord([tabIdx,
                                             keyIdx,
                                             segmIdx,
                                             nome,
                                             direzione]);
            end;
          end;
        until not r2.ExecNext
      end;
    until not r.ExecNext
  end;
  // ____________________________________________ Save models table to cache ___
  if withCheck then
  begin
    if not(DirectoryExists(userDir + '__source__\')) then
    begin
      CreateDir(userDir + '__source__\');
    end;
    dm_form.t_tabelle.SaveToFile(userDir + '__source__\tables.cache', dfXML);
    dm_form.t_campi.SaveToFile(userDir + '__source__\fields.cache', dfXML);
    dm_form.t_indicitesta.SaveToFile(userDir+'__source__\indexes.cache', dfXML);
    dm_form.t_indici.SaveToFile(userDir + '__source__\segments.cache', dfXML);
  end
  else
  begin
    if not(DirectoryExists(prgsDir + '__source__\')) then
    begin
      CreateDir(prgsDir + '__source__\');
    end;
    dm_form.t_tabelle.SaveToFile(prgsDir + '__source__\tables.cache', dfXML);
    dm_form.t_campi.SaveToFile(prgsDir + '__source__\fields.cache', dfXML);
    dm_form.t_indicitesta.SaveToFile(prgsDir+'__source__\indexes.cache', dfXML);
    dm_form.t_indici.SaveToFile(prgsDir + '__source__\segments.cache', dfXML);
  end;
  // ________________________________________________________ End operations ___
  FreeAndNil(r);
  FreeAndNil(r2);
  dm_form.t_tabelle.Filtered   := False;
  dm_form.t_tabelle.Open;
  dm_form.t_campi.Active       := True;
  dm_form.t_indicitesta.Active := True;
  dm_form.t_indici.Active      := True;
  dm_form.t_tabelle.First;
  f_work.ts_tabelle.Visible    := True;
  dm_form.tables_modificato    := False;
  da_Refresh                   := False;
  // ________________________________________________ Rebind grids to tables ___
  f_work.abilitaTableRep.Execute;
end;

{**
 * Import application variables repository.
 *}
procedure Tf_import.vars_importExecute(Sender: TObject);
var
  puntatore, puntatoreprec, id_campo, segmento: integer;
var
  nome, nomefisico, database, chiaveprimaria, selezione, tipo, size,
  direzione, selezione2, server, owner, exp1, exp2, exp3, exp4, exp5,
  userDir, prgsDir: string;
  withCheck : Boolean;
begin
  r            := TRegExpr.Create;
  r.ModifierI  := True;
  r.ModifierS  := False;
  r2           := TRegExpr.Create;
  r2.ModifierI := True;
  // _______________________________________________________ Set directories ___
  prgsDir      := f_work.prgdir;
  userDir      := f_work.userdir;
  // _______________________________________________________ Clear CDS table ___
  dm_form.t_variabili_app.Emptydataset;
  dm_form.t_variabili_app.Open;
  if FileExists(userDir + dm_form.t_applicazioneAppVars.Value) then
  begin
    programma.Lines.LoadFromFile(userDir + dm_form.t_applicazioneAppVars.Value);
  end
  else if fileexists(prgsDir + dm_form.t_applicazioneAppVars.Value)
  then
  begin
    programma.Lines.LoadFromFile(prgsDir + dm_form.t_applicazioneAppVars.Value);
  end;
  // __________________________________________ Import application variables ___
  r.Expression := 'o2def::appvar(.*?);';
  if r.Exec(programma.Lines.Text) then
  begin
    repeat
      programma.SelStart := r.MatchPos[0] - 1;
      programma.SelLength := r.MatchLen[0];
      selezione := programma.SelText;

      r2.Expression := '\(.*\)';

      if r2.exec(selezione) then
      begin
        selezione2 := copy(r2.match[0], 2, r2.MatchLen[0] - 2);
        //nome logico
        exp1 := extractword(1, selezione2, [',']);
        exp1 := copy(trim(exp1), 2, length(trim(exp1)) - 2);


        //model
        exp2 := extractword(2, selezione2, [',']);
        exp2 := copy(trim(exp2), 2, length(trim(exp2)) - 2);

        dm_form.t_variabili_app.InsertRecord([exp1, exp2]);

      end;

    until not r.ExecNext
  end;
  // fine

  FreeAndNil(r);
  FreeAndNil(r2);


  //aggiunge quelle di default

  if dm_form.t_variabili_app.Lookup('alias', '_area', 'alias') = null then
  begin
    dm_form.t_variabili_app.InsertRecord(['_area', '_o2alpha'])
  end;

  dm_form.appvar_modificato := False;
end;  //fine appvars


procedure Tf_import.labels_importExecute(Sender: TObject);
var
  i: integer;
  pezzi_splittati: TStringList;
begin
  r := TRegExpr.Create;
  r.ModifierI := True;
  r.ModifierS := True;

  pezzi_splittati := TStringList.Create;

  dm_form.t_labels.Emptydataset;
  dm_form.t_labels.Open;


  if FileExists(f_work.userdir + 'labels.rep') then
  begin
    programma.Lines.LoadFromFile(f_work.userdir + 'labels.rep')
  end
  else if fileexists(f_work.prgdir + 'labels.rep') then
  begin
    programma.Lines.LoadFromFile(f_work.prgdir + 'labels.rep')
  end;

  //importa le labels dell'applicazione
  r.Expression := '\$labelslist';
  r.Split(programma.Lines.Text, pezzi_splittati);
  for i := 0 to pezzi_splittati.Count - 1 do
  begin
    if LeftStr(pezzi_splittati[i], 1) = '[' then
    begin
      r.Expression := '\[(\d*)\]\s*\=\s*\"(.*)\"\;';
      r.Exec(pezzi_splittati[i]);
      dm_form.t_labels.InsertRecord([r.Match[1], r.Match[2]]);
    end;

  end;

  FreeAndNil(r);

  dm_form.labels_modificato := False;
end;  // fine labels


procedure Tf_import.apphandlers_importExecute(Sender: TObject);
begin
  // importazione handlers
end;

procedure Tf_import.call_log(testolog: string);
var prefisso:string;
begin
  { prefisso:=DateTimeToStr(Now) + '  ';
  // Memo1.Lines.Append(prefisso + testo);
   Memo1.Lines.Append(prefisso + testolog);
   Memo1.Lines.SaveToFile('c:/import.log');
   }
end;

end.
