unit import_0_0_0;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ActnList, XPStyleActnCtrls, ActnMan, regexpr, DB,
  ComCtrls, inifiles, JclStrings, StrUtils, jbstr, Grids, ValEdit;

type
  Tf_import_0_0_0 = class(TForm)
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
    tab_deferred: TMemo;
    prg_start: TMemo;
    prf_start: TMemo;
    prg_request: TMemo;
    prf_request: TMemo;
    procedure prg_importExecute(Sender: TObject; nomeprogramma: string);
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

  private
    r: TRegExpr;
    r2: TRegExpr;
    r3: TRegExpr;
    { Private declarations }
  public
    build_1_file: integer;
    build_file: string;
    function decodifica_css(stringa: string): string;
    function decodifica_exp(stringa, nomeprogramma: string): string;
    function form_val_prop(proprieta, nomeform, selezione3: string;
      r3: TRegExpr; programma: TMemo; togli_fregni: boolean = False): string;
    function ctrl_prop(proprieta: string): string;
    function decodifica_exp_stringa(stringa, nomeprogramma: string): string;



    { Public declarations }
  end;

var
  f_import_0_0_0: Tf_import_0_0_0;

implementation

uses dm, work, start, conversioni;

{$R *.dfm}




procedure Tf_import_0_0_0.prg_importExecute(Sender: TObject; nomeprogramma: string);
var
  selezione, selezione2, selezione3, nomeprg, nometask, nomecontrollo,
  tipo, par1, par2, par3, par4, par5, par6, par7, par8, par9, par10, par11, par12,
  par13, tmp1, tmp2, css1, css2, css3, css4, css5, css6, css7, css8, css9, css10: string;
  puntatore, num1, num2, num3, num4, num5, num6, submit: integer;
  i: smallint;
  boolean1: boolean;
begin
  //legge prg

  Screen.Cursor := crHourGlass;

  r  := TRegExpr.Create;
  r.ModifierI := True;
  r2 := TRegExpr.Create;
  r2.ModifierI := True;
  r3 := TRegExpr.Create;
  r3.ModifierI := True;

  svuota_tab_prg.Execute;

  if nomeprogramma <> '' then
  begin
    nomeprg := nomeprogramma
  end
  else begin
    nomeprg := f_work.supertree.Selected.Text
  end;

  programma.Lines.Clear;

  if FileExists(f_work.userdir + nomeprg + '.prg') then
  begin
    programma.Lines.LoadFromFile(f_work.userdir + nomeprg + '.prg')
  end
  else if FileExists(f_work.prgdir + nomeprg + '.prg') then
  begin
    programma.Lines.LoadFromFile(f_work.prgdir + nomeprg + '.prg')
  end;


  //legge dal prg i task, le azioni e le form


  // FOLDER LOGICA DEL PRG
  r.expression := 'o2def::folder(.*?);';
  if r.exec(programma.Lines.Text) then
  begin
    programma.SelStart := r.MatchPos[0] - 1;
    programma.SelLength := r.MatchLen[0];
    selezione := programma.SelText;
    selezione := trim(copy(trim(selezione), pos('(', trim(selezione)), 1000));
    selezione := copy(selezione, 2, length(selezione) - 3);


    par2 := extractword(1, selezione, [',']);
    par2 := copy(TRIM(par2), 2, length(trim(par2)) - 2);

  end;




  r.expression := 'o2def::prg(.*?);';
  if r.exec(programma.Lines.Text) then
  begin
    repeat
      programma.SelStart := r.MatchPos[0] - 1;
      programma.SelLength := r.MatchLen[0];
      selezione := programma.SelText;
      selezione := trim(copy(trim(selezione), pos('(', trim(selezione)), 1000));
      selezione := copy(selezione, 2, length(selezione) - 3);



      par1 := extractword(2, selezione, [',']);
      par1 := copy(TRIM(par1), 2, length(trim(par1)) - 2);

      par3 := extractword(3, selezione, [',']);
      if trim(par3) <> '__FILE__' then
      begin
        par3 := copy(TRIM(par3), 2, length(trim(par3)) - 2)
      end
      else begin
        par3 := ''
      end;

      dm_form.t_programmi.InsertRecord([nomeprg, par1, par2, par3]);


    until not r.ExecNext
  end;




  //identifica i tasks

  puntatore := 0;

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
        else begin
          boolean1 := False
        end;

        par1 := extractword(3, selezione2, [',']);
        par1 := copy(trim(par1), 2, length(trim(par1)) - 2);

        par2 := extractword(4, selezione2, [',']);
        par2 := copy(trim(par2), 2, length(trim(par2)) - 2);



        if nometask <> 'prg§_§var' then
        begin
          Inc(puntatore);
          dm_form.t_task.InsertRecord(
            [nomeprg, puntatore, nometask, 10, '', '', 0, par1, par2, boolean1]);
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
        par1 := extractword(1, selezione2, [',']);
        par1 := copy(par1, 2, length(trim(par1)) - 2);
        dm_form.t_azioni.InsertRecord([nomeprg, par1]);
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

        par2 := extractword(2, selezione2, [',']);
        par2 := copy(trim(par2), 2, length(trim(par2)) - 2);

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
        par1 := copy(par1, 2, length(trim(par1)) - 2);

        dm_form.t_form.InsertRecord([nomeprg, par1]);
      end;
    until not r.ExecNext
  end;

  //                  ShowMessage('inizio_prf');

  // legge il file .prf
  programma.Lines.Clear;

  if FileExists(f_work.userdir + nomeprg + '.prf') then
  begin
    programma.Lines.LoadFromFile(f_work.userdir + nomeprg + '.prf')
  end
  else if FileExists(f_work.prgdir + nomeprg + '.prf') then
  begin
    programma.Lines.LoadFromFile(f_work.prgdir + nomeprg + '.prf')
  end;


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
            par3 := extractword(2, selezione2, [',']);
            par3 := copy(trim(par3), 2, length(trim(par3)) - 2);


            dm_form.t_variabili_prg.InsertRecord([nomeprg, par1, par3]);

          end;

        end;
      until not r.ExecNext
    end; //fine campi della vista

  end; //fine variabili prg



  //loop sui task
  with dm_form do
  begin
    t_task.First;

    repeat

      // righe vis
      r.Expression := 'task_' + trim(t_tasknome.Value) + '->righe_vis(.*?);';

      if r.Exec(programma.Lines.Text) then

      begin
        programma.SelStart := r.MatchPos[0] - 1;
        programma.SelLength := r.MatchLen[0];
        selezione := programma.SelText;
        par1      := trim(copy(selezione, pos('=', selezione) + 1, 10));
        par1      := trim(copy(trim(par1), 1, length(trim(par1)) - 1));
        t_task.Edit;
        t_taskrighevis.Value := StrToInt(par1);
        t_task.Post;
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

          dm_form.t_usa_file.InsertRecord([nomeprg, t_taskid, 'Main', par2, par1, par3]);
        end;

      end; //fine usa file

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

              dm_form.t_usa_file.InsertRecord([nomeprg, t_taskid, 'Link', par2, par1, par3]);
            end;

          end;
        until not r.ExecNext
      end; //fine file link


      //select del task
      r.Expression := 'task_' + trim(t_tasknome.Value) +
        '->(usa|unisci|definisci|calcola)\((.*?);';
      puntatore    := 0;
      if r.Exec(programma.Lines.Text) then
      begin
        repeat

          begin
            programma.SelStart := r.MatchPos[0] - 1;
            programma.SelLength := r.MatchLen[0];
            selezione := programma.SelText;

            if pos('->usa', selezione) > 0 then
            begin
              tipo := 'Select'
            end;
            if pos('->unisci', selezione) > 0 then
            begin
              tipo := 'Link'
            end;
            if pos('->definisci', selezione) > 0 then
            begin
              tipo := 'Virtual'
            end;
            if pos('->calcola', selezione) > 0 then
            begin
              tipo := 'Calculated'
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
              if (tipo <> 'Virtual') and (tipo <> 'Calculated') then
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
              if (tipo <> 'Virtual') and (tipo <> 'Calculated') then
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
              if (tipo <> 'Virtual') and (tipo <> 'Calculated') then
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
              if (tipo <> 'Virtual') and (tipo <> 'Calculated') then
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
                if tipo = 'Calculated' then
                begin
                  par8 := copy(par8, length(trim(nomeprg)) + 7, 10);
                  par8 := copy(par8, 1, length(trim(par8)) - 3);
                end;
                if tipo = 'Virtual' then
                begin
                  par8 := copy(par8, length(trim(nomeprg)) + 6, 10);
                  par8 := copy(par8, 1, length(trim(par8)) - 2);
                end;
              end;

              if (tipo = 'Select') then
              begin
                dm_form.t_select.InsertRecord([nomeprg, t_taskid, puntatore, tipo, par1,
                  par2, par3, null, par4, par5, par6, par7])
              end;

              if (tipo = 'Link') then
              begin
                dm_form.t_union.InsertRecord(
                  [nomeprg, t_taskid, par2, t_union.RecordCount + 1, par3, par4, par5, par6, par7]);
              end;

              if (tipo = 'Virtual') or (tipo = 'Calculated') then
              begin
                dm_form.t_select.InsertRecord([nomeprg, t_taskid, puntatore, tipo, par1,
                  null, null, par8, par4, par5, par6, par7])
              end;
            end;

          end;
        until not r.ExecNext
      end; //fine campi della vista


      t_task.Next;
    until t_task.EOF;  //FINE DEI TASK e degli agenti


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
          end;

        until not r.ExecNext
      end; // FINE Campi DEL REPORT


      t_report.Next;
    until t_report.EOF;  //fine DEI REPORTS




    // INIZIO DEI FORM
    //           ShowMessage('Start Form');
    t_form.First;

    while not t_form.EOF do
    begin

      // SISTEMA PROPRIETA DEL FORM
      t_form.Edit;

      tmp1 := '';
      tmp1 := form_val_prop('titolo', t_formnomeform.Value,
        selezione3, r3, programma, False);
      //se titolo scritto a diritto toglie apici
      if (LeftStr(tmp1, 1) = chr(39)) or (LeftStr(tmp1, 1) = '"') then
      begin
        t_formdicitura.Value := copy(tmp1, 2, length(tmp1) - 2)
      end
      else begin
        t_formdicitura.Value     := 'by expression';
        t_formdicitura_exp.Value := StrToInt(decodifica_exp(tmp1, nomeprg));
      end;
      t_formleft.Value    :=
        StrToInt(form_val_prop('x', t_formnomeform.Value, selezione3, r3, programma, False));
      t_formtop.Value     :=
        StrToInt(form_val_prop('y', t_formnomeform.Value, selezione3, r3, programma, False));
      t_formlarghezza.Value :=
        StrToInt(form_val_prop('larghezza', t_formnomeform.Value, selezione3, r3, programma, False));
      t_formaltezza.Value :=
        StrToInt(form_val_prop('altezza', t_formnomeform.Value, selezione3, r3, programma, False));

      tmp1 := '';
      tmp1 := form_val_prop('condizione', t_formnomeform.Value,
        selezione3, r3, programma, False);
      if (LeftStr(tmp1, 1) = chr(39)) or (LeftStr(tmp1, 1) = '"') or (tmp1 = '') then
      begin
        t_formvisibile.Value := 0
      end
      else begin
        t_formvisibile.Value := StrToInt(decodifica_exp(tmp1, nomeprg))
      end;

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

      tmp1 := '';
      tmp1 := form_val_prop('url', t_formnomeform.Value, selezione3, r3,
        programma, False);
      if (tmp1 = '') then
      begin
        t_formurl.Value := 0
      end
      else begin
        t_formurl.Value := StrToInt(decodifica_exp(tmp1, nomeprg))
      end;


      //             ShowMessage('inizio_controlli');


      i := 0; // azzera il contatore controllo

      //  r.Expression:='\$form_'+trim(t_formnomeform.Value)+
      //  '->usa_(label|separatore|edit|button|listcombo|check|text|agente|navigatore|tab)\((.*?);';
      r.Expression := '\$form_' + trim(t_formnomeform.Value) + '->ctrldef\((.*?);';


      if r.Exec(programma.Lines.Text) then
      begin
        repeat

          nomecontrollo := '';

          programma.SelStart := r.MatchPos[0] - 1;
          programma.SelLength := r.MatchLen[0];
          selezione := programma.SelText;




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
            end;
            if tipo = 'listcombo' then
            begin
              tipo := 'listbox'
            end;
            if tipo = 'check' then
            begin
              tipo := 'checkbox'
            end;
            if tipo = 'text' then
            begin
              tipo := 'textarea'
            end;
            if tipo = 'tab' then
            begin
              tipo := 'table'
            end;
            if tipo = 'img' then
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
            else begin
              par3 := copy(par3, 2, length(trim(par3)) - 2)
            end;


            // parent options
            par11 := ctrl_prop('info_padre');
            if par11 = 'null' then
            begin
              par11 := ''
            end;

            if par11 <> '' then
            begin
              par11 := copy(trim(par11), 7, length(trim(par11)) - 7);
              par11 := stringreplace(par11, ',', ':', [rfReplaceAll]);
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
            else begin
              par9 := copy(trim(par9), 2, length(trim(par9)) - 2)
            end;



            // controllo label
            if tipo = 'label' then
            begin
              //                 ShowMessage('Label');

              //CAPTION
              par1 := ctrl_prop('label');
              par1 := copy(par1, 2, length(trim(par1)) - 2);

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

            end; //fine edit


            // controllo listbox
            if tipo = 'listbox' then
            begin
              //                   ShowMessage('Combobox');

              // valori combo
              selezione3 := ctrl_prop('valori');

              //array("U" => "UNO","D" => "DUE","T" => "TRE")
              par4 := copy(trim(selezione3), 7, length(trim(selezione3)) - 7);


              //  valori del combobox da expression anziché array
              if pos('_exp_', selezione3) > 0 then
              begin
                par8 := trim(copy(selezione3, pos('_exp_', selezione3) + 5, 8));
                par8 := copy(trim(par8), 1, length(trim(par8)) - 2);
                par4 := '[o2exp_' + par8 + ']';
              end;


              //numero righe
              par12 := ctrl_prop('righe');
              // VOCE CSS
              par5  := decodifica_css(ctrl_prop('css'));

            end; //fine combobox


            // controllo image
            if tipo = 'image' then
            begin

              //CAPTION
              par1 := ctrl_prop('label');
              par1 := copy(par1, 2, length(trim(par1)) - 2);

              //file name by expression
              par12 := decodifica_exp(ctrl_prop('immagine'), nomeprg);
              if par12 = '' then
              begin
                par12 := '0'
              end;
              // VOCE CSS
              par5 := decodifica_css(ctrl_prop('css'));

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


              // VOCE CSS
              css1 := decodifica_css(ctrl_prop('css_space_out'));
              css2 := decodifica_css(ctrl_prop('css_space_in'));
              css3 := decodifica_css(ctrl_prop('css_label_on'));
              css4 := decodifica_css(ctrl_prop('css_label_off'));

            end; //fine multipage




            // controllo BUTTON
            if tipo = 'button' then
            begin
              //               ShowMessage('Button');

              //caption
              par1 := ctrl_prop('label');
              par1 := copy(par1, 2, length(trim(par1)) - 2);

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

            end; //fine table



            // controllo navigator
            if tipo = 'navigator' then
            begin
              //               ShowMessage('Navigatore');
              css1 := decodifica_css(ctrl_prop('css_i'));
              css2 := decodifica_css(ctrl_prop('css_e'));
              css3 := decodifica_css(ctrl_prop('css_first'));
              css4 := decodifica_css(ctrl_prop('css_prevpg'));
              css5 := decodifica_css(ctrl_prop('css_prev'));
              css6 := decodifica_css(ctrl_prop('css_next'));
              css7 := decodifica_css(ctrl_prop('css_nextpg'));
              css8 := decodifica_css(ctrl_prop('css_last'));

            end; //fine navigator



            if par10 = '' then
            begin
              par10 := '_stage_' + t_formnomeform.Value
            end;

            dm_form.t_controlliform.InsertRecord(
              [nomeprg, t_formnomeform.Value, nomecontrollo, tipo, num1,
              num2, num3, num4, num5, num6, par1, par2, par3, par4, par5, par9, i, par10, par11,
              par12, par13, submit, boolean1, css1, css2, css3, css4, css5, css6, css7, css8, css9, css10]);

            Inc(i);  // i è il taborder

          end;
        until not r.ExecNext
      end; // FINE CONTROLLI DELLA FORM


      t_form.Next;
    end;  //fine dei forms

    //operazioni  function marche§§conferma_def() {
    //           ShowMessage('Start Actions');
    t_azioni.First;
    repeat
      r.Expression := 'function ' + nomeprg + '§§' + trim(t_azioniazione.Value) +
        '_def\((.*?)\|o2_fine_act\|';



      if r.Exec(programma.Lines.Text) then
      begin
        programma.SelStart := r.MatchPos[0] - 1;
        programma.SelLength := r.MatchLen[0];
        selezione := programma.SelText;

        // singoli passi

        r2.Expression := '\$o2exe->(.*?)\$o2exe\-\>[et]\(\);';

        if r2.exec(selezione) then
        begin
          repeat
            begin
              //azzera le variabili che entrano in gioco
              par1 := '';
              par2 := '';
              par3 := '';
              par4 := '';
              par5 := '';
              par6 := '0';
              num1 := 0;
              num2 := 0;

              selezione2 := copy(r2.match[0], 1, r2.MatchLen[0] - 1);
              selezione2 := StringReplace(selezione2, '&&', '^', [rfReplaceAll]);

              //id esecuzione
              par1 := trim(ExtractWord(1, selezione2, ['^']));
              par1 := copy(par1, pos('(', par1) + 1, pos(')', par1) - pos('(', par1) - 1);

              //condizione esecutiva
              par7 := trim(ExtractWord(2, selezione2, ['^']));
              if StrLoCase(par7) = 'true' then
              begin
                par7 := '0'
              end
              else begin

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
                par3 := trim(par3) + chr(129) + par8;
                //valore exp1
                par6 := trim(extractword(3, selezione3, [',']));
                par6 := trim(copy(par6, length(trim(nomeprg)) + 6, 10));
                par6 := copy(trim(par6), 1, length(trim(par6)) - 2);

              end;   //fine update


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

              end;   //fine I/O


              if tipo = 'o2act::report' then
              begin
                par2 := 'Print';
                //template + nomepdf (expression) in riferimento
                par3 := decodifica_exp(trim(extractword(1, selezione3, [','])), nomeprg) + '::' +
                  decodifica_exp(trim(extractword(2, selezione3, [','])), nomeprg);

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
                par3 := copy(trim(par3), 2, length(trim(par3)) - 2);
                //parametri
                i    := 0;
                repeat
                  par8 := trim(extractword(2 + i, selezione3, [',']));
                  if pos('_exp_', par8) = 0 then
                  begin
                    par8 := copy(trim(par8), 2, length(trim(par8)) - 2)
                  end;
                  // in caso di expression togli parentesi
                  if pos('_exp_', par8) > 0 then
                  begin
                    par8 := copy(par8, 1, length(trim(par8)) - 2);
                    par8 := '[o2exp_' + trim(copy(trim(par8), length(nomeprg) + 6, 10)) + ']';
                  end;
                  if pos('§§', par8) > 0 then
                  begin
                    par8 := chr(127) + Stringreplace(par8, '§§', chr(129), [rfReplaceAll])
                  end;

                  if par8 <> '' then
                  begin
                    par5 := trim(par5) + chr(13) + chr(10) + par8;
                    Inc(i);
                  end;
                until trim(extractword(2 + i, selezione3, [','])) = '';

                par5 := trim(par5);
                num1 := i;

              end;   //fine call program


              if tipo = 'o2act::goto' then
              begin
                par2 := 'Go to program';
                //programma
                par3 := extractword(1, selezione3, [',']);
                par3 := copy(trim(par3), 2, length(trim(par3)) - 2);

                par4 := trim(extractword(2, selezione3, [',']));

                if StrLoCase(par4) = 'false' then
                begin
                  num2 := 0
                end
                else begin
                  num2 := StrToInt(decodifica_exp(par4, nomeprg))
                end;

                //parametri
                i := 0;
                repeat
                  par8 := trim(extractword(3 + i, selezione3, [',']));

                  if pos('_exp_', par8) = 0 then
                  begin
                    par8 := copy(trim(par8), 2, length(trim(par8)) - 2)
                  end;
                  // in caso di expression togli parentesi
                  if pos('_exp_', par8) > 0 then
                  begin
                    par8 := copy(par8, 1, length(trim(par8)) - 2);
                    par8 := '[o2exp_' + trim(copy(trim(par8), length(nomeprg) + 6, 10)) + ']';
                  end;
                  if pos('§§', par8) > 0 then
                  begin
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

              end;   //fine go to program

              if tipo = 'o2act::exe' then
              begin
                par2 := 'Execute action';
                //azione da eseguire
                par8 := extractword(1, selezione3, [',']);
                par8 := copy(trim(par8), 2, length(trim(par8)) - 2);
                par3 := par8 + '::';
                //espressione di fine
                par8 := extractword(2, selezione3, [',']);
                par8 := copy(trim(par8), 2, length(trim(par8)) - 2);
                if par8 = 'True' then
                begin
                  par8 := ''
                end
                else begin
                  par8 := trim(copy(par8, length(trim(nomeprg)) + 6, 10));
                  par8 := copy(par8, 1, length(trim(par8)) - 2);
                end;
                par3 := trim(par3) + par8 + '::';
                //task
                par8 := extractword(3, selezione3, [',']);
                par8 := copy(trim(par8), 2, length(trim(par8)) - 2);
                par3 := trim(par3) + par8 + '::';
                //asc_desc
                par8 := extractword(4, selezione3, [',']);
                par8 := copy(trim(par8), 2, length(trim(par8)) - 2);
                par3 := trim(par3) + par8;

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
                if par8 = '0' then
                begin
                  par8 := 'Refresh'
                end;
                if par8 = '1' then
                begin
                  par8 := 'First'
                end;
                if par8 = '2' then
                begin
                  par8 := 'Previous row'
                end;
                if par8 = '3' then
                begin
                  par8 := 'Next row'
                end;
                if par8 = '4' then
                begin
                  par8 := 'Last'
                end;
                if par8 = '5' then
                begin
                  par8 := 'Previous page'
                end;
                if par8 = '6' then
                begin
                  par8 := 'Next page'
                end;
                if par8 = 'S' then
                begin
                  par8 := 'Post row'
                end;
                if par8 = 'M' then
                begin
                  par8 := 'Edit'
                end;
                if par8 = 'R' then
                begin
                  par8 := 'Read'
                end;
                if par8 = 'L' then
                begin
                  par8 := 'Locate'
                end;
                if par8 = 'A' then
                begin
                  par8 := 'Undo'
                end;
                if par8 = 'I' then
                begin
                  par8 := 'Prepare insert'
                end;
                if par8 = 'C' then
                begin
                  par8 := 'Delete row'
                end;

                par3 := trim(par3) + par8;
                if par8 = 'Locate' then
                begin
                  par5 := copy(selezione3, PosEx('array(', selezione3), 2000);
                  par5 := copy(par5, 7, 2000);
                  par5 := copy(trim(par5), 1, length(trim(par5)) - 1);
                  num1 := StrStrCount(par5, '=>');
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
                else begin
                  par3 := 'Status bar'
                end;

              end;  //fine message

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
                  par1), par2, par3, num2, par5, StrToInt(par6), StrToInt(par7), num1])
              end;
            end;
          until not r2.ExecNext
        end;

      end;




      t_azioni.Next;
    until t_azioni.EOF;  //fine azioni


    //expression
    { TODO : da importare expression }
    //     ShowMessage('Start Expression');
    i := 0;
    r.Expression := 'function ' + nomeprg + '_exp_\d*\(\)(.*?)\|o2_fine_exp\|';
    if r.Exec(programma.Lines.Text) then
    begin
      repeat
        begin

          programma.SelStart := r.MatchPos[0] - 1;
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




            t_espressioni.InsertRecord([nomeprg, i, par2, par1]);
          end;
        end;
      until not r.ExecNext
    end;

  end;




  //fine
  dm_form.t_task.Filtered := False;

  FreeAndNil(r);
  FreeAndNil(r2);
  FreeAndNil(r3);

  screen.Cursor := crDefault;
end;


procedure Tf_import_0_0_0.app_importExecute(Sender: TObject);

begin
  appini_import.Execute;
  menu_import.Execute;
  models_import.Execute;

  // GENERA EVENTUALI PROGRAMMI DI DEFAULT (_START,_REQUEST, ecc.)
  if not (FileExists(f_work.prgdir + '_start.prg')) then
  begin
    prg_start.Lines.SaveToFile(f_work.prgdir + '_start.prg');
    prf_start.Lines.SaveToFile(f_work.prgdir + '_start.prf');
  end;
  if not (FileExists(f_work.prgdir + '_request.prg')) then
  begin
    prg_request.Lines.SaveToFile(f_work.prgdir + '_request.prg');
    prf_request.Lines.SaveToFile(f_work.prgdir + '_request.prf');
  end;

end;  //FINE IMPORT APPLICAZIONE




procedure Tf_import_0_0_0.dbtab_importExecute(Sender: TObject);
begin
  db_import.Execute;
  tables_import.Execute;
end;


function Tf_import_0_0_0.decodifica_css(stringa: string): string;
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

function Tf_import_0_0_0.decodifica_exp(stringa, nomeprogramma: string): string;
begin
  if (Pos(nomeprogramma + '_exp_', stringa) > 0) and
    (Pos('()', stringa) > 0) then
  begin
    stringa := trim(copy(stringa, length(trim(nomeprogramma)) + 6, 10));
    stringa := copy(trim(stringa), 1, length(trim(stringa)) - 2);
  end;
  Result := stringa;
end;




function Tf_import_0_0_0.form_val_prop(proprieta, nomeform, selezione3: string;
  r3: TRegExpr; programma: TMemo; togli_fregni: boolean = False): string;
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

    if togli_fregni then
    begin
      Result := copy(Result, 2, length(trim(Result)) - 2)
    end;
  end;

end;

procedure Tf_import_0_0_0.carica_proprieta_controllo(Sender: TObject;
  nomecontrollo: string; nomeform: string);
var
  chiave, valore, selezione3, estrazione_controllo: string;
  n:  integer;
  r4: TRegExpr;
  r5: TRegExpr;
begin
  dm_form.t_value_list.EmptyDataSet;
  estrazione_controllo := '';
  selezione3 := '';

  r5 := TRegExpr.Create;

  // prima di tutto recupera tutti il controlli della form in questione

  r5.Expression := '\$ctrl_' + nomecontrollo + '\s\=\s\&\$form_' + nomeform + '(.*?)\}';


  if r5.exec(programma.Lines.Text) then
  begin
    programma.SelStart  := r5.MatchPos[0] - 1;
    programma.SelLength := r5.MatchLen[0];

    estrazione_controllo := trim(programma.SelText);



    r4 := TRegExpr.Create;

    r4.Expression := '\$ctrl_' + nomecontrollo + '\-\>(.*?);';
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
  end;
end;


function Tf_import_0_0_0.ctrl_prop(proprieta: string): string;
begin
  if dm_form.t_value_list.Lookup('chiave', proprieta, 'valore') = null then
  begin
    Result := ''
  end
  else begin
    Result := dm_form.t_value_list.Lookup('chiave', proprieta, 'valore')
  end;
end;

function Tf_import_0_0_0.decodifica_exp_stringa(stringa, nomeprogramma: string): string;
begin
  if (Pos(nomeprogramma + '_exp_', stringa) > 0) and
    (Pos('()', stringa) > 0) then
  begin
    stringa := trim(copy(stringa, length(trim(nomeprogramma)) + 6, 10));
    stringa := copy(trim(stringa), 1, length(trim(stringa)) - 2);
    stringa := '[o2exp_' + stringa + ']';
  end
  else begin
    stringa := copy(trim(stringa), 2, length(trim(stringa)) - 2)
  end;


  Result := stringa;

end;

procedure Tf_import_0_0_0.svuota_tab_prgExecute(Sender: TObject);
begin
  //inizializza
  dm_form.t_programmi.EmptyDataSet;
  dm_form.t_programmi.Open;
  dm_form.t_task.Emptydataset;
  dm_form.t_task.Open;
  dm_form.t_azioni.Emptydataset;
  dm_form.t_azioni.Open;
  dm_form.t_operazioni.Emptydataset;
  dm_form.t_operazioni.Open;
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

end;

procedure Tf_import_0_0_0.models_importExecute(Sender: TObject);
var
  selezione, selezione2, selezione3, nomeprg, nometask,
  tipo, exp1, exp2, exp3, exp4, exp5, exp6, exp7, exp8: string;
  puntatore, num1, num2, num3, num4, num5, num6: integer;
  i: smallint;
begin
  //pulisce tabelle tmp
  with dm_form do
  begin
    t_modelli.EmptyDataSet;

  end;


  r  := TRegExpr.Create;
  r.ModifierI := True;
  r2 := TRegExpr.Create;
  r2.ModifierI := True;


  // models
  if FileExists(f_work.userdir + dm_form.t_applicazionemodels.Value) then
  begin
    programma.Lines.LoadFromFile(f_work.userdir + dm_form.t_applicazionemodels.Value)
  end
  else if FileExists(f_work.prgdir +
    dm_form.t_applicazionemodels.Value) then
  begin
    programma.Lines.LoadFromFile(f_work.prgdir + dm_form.t_applicazionemodels.Value)
  end;


  i := 0;
  r.Expression := 'o2def::model(.*?);';
  if r.Exec(programma.Lines.Text) then
  begin
    repeat
      Inc(i);
      programma.SelStart := r.MatchPos[0] - 1;
      programma.SelLength := r.MatchLen[0];
      selezione := programma.SelText;


      r2.Expression := '\(.*\)';

      if r2.exec(selezione) then
      begin
        selezione2 := copy(r2.match[0], 2, r2.MatchLen[0] - 2);
        //nome
        exp1 := extractword(1, selezione2, [',']);
        exp1 := copy(trim(exp1), 2, length(trim(exp1)) - 2);


        //tipo dato
        exp2 := extractword(2, selezione2, [',']);
        exp2 := copy(trim(exp2), 2, length(trim(exp2)) - 2);
        if exp2 = 'A' then
        begin
          exp2 := 'Alpha'
        end;
        if exp2 = 'O' then
        begin
          exp2 := 'Time'
        end;
        if exp2 = 'N' then
        begin
          exp2 := 'Number'
        end;
        if exp2 = 'D' then
        begin
          exp2 := 'Date'
        end;
        if exp2 = 'L' then
        begin
          exp2 := 'Logical'
        end;
        if exp2 = 'S' then
        begin
          exp2 := 'Structured'
        end;


        //maschera
        exp3 := extractword(3, selezione2, [',']);
        exp3 := copy(trim(exp3), 2, length(trim(exp3)) - 2);


        if exp1 <> '' then
        begin
          dm_form.t_modelli.InsertRecord([exp1, exp2, exp3])
        end;

      end;

    until not r.ExecNext
  end;
  // fine MODELS


  FreeAndNil(r);
  FreeAndNil(r2);

  //allinea modelli di default
  with dm_form do
  begin
    if t_modelli.Lookup('idmodello', '_o2alpha', 'idmodello') = null then
    begin
      t_modelli.InsertRecord(['_o2alpha', 'Alpha', 'C20'])
    end;

    if t_modelli.Lookup('idmodello', '_o2date', 'idmodello') = null then
    begin
      t_modelli.InsertRecord(['_o2date', 'Date', '-'])
    end;

    if t_modelli.Lookup('idmodello', '_o2time', 'idmodello') = null then
    begin
      t_modelli.InsertRecord(['_o2time', 'Time', ':'])
    end;

    if t_modelli.Lookup('idmodello', '_o2logical', 'idmodello') = null then
    begin
      t_modelli.InsertRecord(['_o2logical', 'Logical', ''])
    end;

    if t_modelli.Lookup('idmodello', '_o2text', 'idmodello') = null then
    begin
      t_modelli.InsertRecord(['_o2text', 'Alpha', 'C10000000'])
    end;

    if t_modelli.Lookup('idmodello', '_o2sid', 'idmodello') = null then
    begin
      t_modelli.InsertRecord(['_o2sid', 'Alpha', 'C32'])
    end;

  end;

end;  //FINE IMPORT modelli


procedure Tf_import_0_0_0.menu_importExecute(Sender: TObject);
var
  selezione, selezione2, selezione3, nomeprg, nometask,
  tipo, exp1, exp2, exp3, exp4, exp5, exp6, exp7, exp8: string;
  puntatore, num1, num2, num3, num4, num5, num6: integer;
  i: smallint;
begin
  //pulisce tabelle tmp
  with dm_form do
  begin
    t_menu.EmptyDataSet;
  end;



  r  := TRegExpr.Create;
  r.ModifierI := True;
  r2 := TRegExpr.Create;
  r2.ModifierI := True;

  if FileExists(f_work.userdir + dm_form.t_applicazionemenus.Value) then
  begin
    programma.Lines.LoadFromFile(f_work.userdir + dm_form.t_applicazionemenus.Value)
  end
  else if FileExists(f_work.prgdir +
    dm_form.t_applicazionemenus.Value) then
  begin
    programma.Lines.LoadFromFile(f_work.prgdir + dm_form.t_applicazionemenus.Value)
  end;

  i := 0;
  r.Expression := 'o2def::menu_item(.*?);';
  if r.Exec(programma.Lines.Text) then
  begin
    repeat
      Inc(i);
      programma.SelStart := r.MatchPos[0] - 1;
      programma.SelLength := r.MatchLen[0];
      selezione := programma.SelText;


      r2.Expression := '\(.*\)';

      if r2.exec(selezione) then
      begin
        selezione2 := copy(r2.match[0], 2, r2.MatchLen[0] - 2);
        //id padre
        exp1 := extractword(1, selezione2, [',']);
        exp1 := copy(trim(exp1), 2, length(trim(exp1)) - 2);


        //tipo menu
        exp2 := extractword(2, selezione2, [',']);
        exp2 := copy(trim(exp2), 2, length(trim(exp2)) - 2);
        if exp2 = 'M' then
        begin
          exp2 := 'Menu'
        end;
        if exp2 = 'U' then
        begin
          exp2 := 'Url'
        end;
        if exp2 = 'S' then
        begin
          exp2 := 'Separator'
        end;
        if exp2 = 'P' then
        begin
          exp2 := 'Program'
        end;



        //nome
        exp3 := extractword(3, selezione2, [',']);
        exp3 := copy(trim(exp3), 2, length(trim(exp3)) - 2);

        //label
        exp4 := extractword(4, selezione2, [',']);
        exp4 := copy(trim(exp4), 2, length(trim(exp4)) - 2);

        //valore
        exp5 := extractword(5, selezione2, [',']);
        exp5 := copy(trim(exp5), 2, length(trim(exp5)) - 2);



        dm_form.t_menu.InsertRecord([exp3, exp1, i, exp4, exp2, exp5, 0, 0]);

      end;

    until not r.ExecNext
  end;

end;  //FINE IMPORT menu

procedure Tf_import_0_0_0.appini_importExecute(Sender: TObject);
var
  selezione, selezione2, selezione3, nomeprg, nometask,
  tipo, exp1, exp2, exp3, exp4, exp5, exp6, exp7, exp8: string;
  puntatore, num1, num2, num3, num4, num5, num6: integer;
  i: smallint;
  app_ini: TIniFile;

begin
  //pulisce tabelle tmp
  with dm_form do
  begin
    t_applicazione.EmptyDataSet;
    t_variabili_app.EmptyDataSet;
  end;



  programma.Lines.LoadFromFile(f_work.OpenDialog1.FileName);

  r  := TRegExpr.Create;
  r.ModifierI := True;
  r2 := TRegExpr.Create;
  r2.ModifierI := True;


  //aggancia release

  r.Expression := 'o2def::app\((.*?);';
  if r.Exec(programma.Lines.Text) then
  begin
    programma.SelStart := r.MatchPos[0] - 1;
    programma.SelLength := r.MatchLen[0];
    selezione := programma.SelText;


    exp1 := extractword(2, selezione, ['(']);
    exp1 := copy(trim(exp1), 2, length(trim(exp1)) - 4);

    build_file := exp1;
    if StrCharCount(exp1, '.') <> 2 then
    begin
      build_1_file := 0
    end
    else begin
      build_1_file := StrToInt(extractword(1, exp1, ['.']))
    end;

    //se release app > release generator avverte ed esce
    if build_1_file > f_work.build_1 then
    begin
      ShowMessage('Ma che fai, la release o2gen è vecchia')
    end;

    //se release app < release generator lancia conversione
    if build_1_file < f_work.build_1 then
    begin
      f_conversioni.ShowModal
    end;

  end;



  //becca alias o2
  r.Expression := 'define\("o2_alias"(.*?);';


  if r.Exec(programma.Lines.Text) then
  begin
    programma.SelStart := r.MatchPos[0] - 1;
    programma.SelLength := r.MatchLen[0];
    selezione := programma.SelText;

    //alias o2
    exp3 := extractword(2, selezione, [',']);
    exp3 := copy(trim(exp3), 2, length(trim(exp3)) - 4);

    dm_form.t_applicazione.Edit;
    dm_form.t_applicazioneo2_alias.Value    := exp3;
    dm_form.t_applicazioneapp_version.Value := build_file;

  end;

  // le variabili le legge dal file app.ini
  app_ini := TIniFile.Create(f_work.workdir + f_work.progetto + '.ini');

  with dm_form do
  begin
    t_applicazione.Edit;
    t_applicazionecss.Value      := app_ini.ReadString('app', '_o2css', '');
    t_applicazionepagina_default.Value :=
      app_ini.ReadString('app', '_o2defaultpage', '');
    t_applicazionepagina_prima.Value := app_ini.ReadString('app', '_o2header', '');
    t_applicazionepagina_dopo.Value := app_ini.ReadString('app', '_o2footer', '');
    t_applicazionetitolo.Value   := app_ini.ReadString('app', '_o2title', '');
    t_applicazionedefault_menu.Value :=
      app_ini.ReadString('app', '_o2active_menu', '');
    t_applicazionepagina_loginfailed.Value :=
      app_ini.ReadString('app', '_o2nologin', '');
    t_applicazionedbs.Value      :=
      app_ini.ReadString('app', '_o2dbs', 'db_repository.inc');
    t_applicazionemenus.Value    :=
      app_ini.ReadString('app', '_o2menus', 'menu_repository.inc');
    t_applicazionemodels.Value   :=
      app_ini.ReadString('app', '_o2models', 'mod_repository.inc');
    t_applicazionetables.Value   :=
      app_ini.ReadString('app', '_o2tables', 'file_repository.inc');
    t_applicazioneappvars.Value  :=
      app_ini.ReadString('app', '_o2vars', 'var_repository.inc');
    t_applicazionetimeout.Value  := app_ini.ReadInteger('app', '_o2timeout', 10);
    t_applicazionevalidate.Value := app_ini.ReadInteger('app', '_o2validate', 1);


    t_applicazione.Post;
  end;

end;  //FINE IMPORT APPLICAZIONE


procedure Tf_import_0_0_0.db_importExecute(Sender: TObject);
var
  puntatore, puntatoreprec, id_campo, segmento: integer;
var
  nome, nomefisico, database, chiaveprimaria, selezione, tipo, size,
  direzione, selezione2, server, owner, exp1, exp2, exp3, exp4, exp5: string;

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
  r.Expression := 'o2def::server(.*?);';
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

        //accesso
        exp5 := extractword(5, selezione2, [',']);
        exp5 := copy(trim(exp5), 2, length(trim(exp5)) - 2);



        dm_form.t_servers.InsertRecord([exp1, exp2, exp3, exp4, exp5]);

      end;

    until not r.ExecNext
  end;
  // fine servers

  programma.SelLength := 0;


  r.Expression := 'o2def::db(.*?);';
  if r.Exec(programma.Lines.Text) then
  begin
    repeat

      programma.SelStart := r.MatchPos[0] - 1;
      programma.SelLength := r.MatchLen[0];
      selezione := programma.SelText;

      nome := trim(extractword(1, selezione, [',']));
      nome := copy(changexchars(chr(39), chr(0), nome), 11, 30);

      nomefisico := trim(extractword(2, selezione, [',']));
      nomefisico := changexchars(chr(39), chr(0), nomefisico);

      server := trim(extractword(3, selezione, [',']));
      server := changexchars(chr(39), chr(0), server);

      owner := trim(extractword(4, selezione, [',']));
      owner := changexchars(chr(39), chr(0), owner);
      owner := changexchars(')', chr(0), owner);
      owner := changexchars(';', chr(0), owner);



      dm_form.t_databases.InsertRecord([nome, nomefisico, server, owner]);
    until not r.ExecNext
  end;

  programma.SelLength := 0;



  FreeAndNil(r);
  FreeAndNil(r2);
  da_Refresh := False;

end;  //fine servers/database

procedure Tf_import_0_0_0.tables_importExecute(Sender: TObject);
var
  puntatore, puntatoreprec, id_campo, segmento: integer;
var
  nome, nomefisico, database, chiaveprimaria, selezione, tipo, size,
  direzione, selezione2, server, owner, exp1, exp2, exp3, exp4, exp5: string;

begin

  da_Refresh := True;


  f_work.ts_tabelle.Visible := False;


  // recupera il file repository
  r  := TRegExpr.Create;
  r.ModifierI := True;
  r.ModifierS := False;
  r2 := TRegExpr.Create;
  r2.ModifierI := True;


  dm_form.t_tabelle.EmptyDataSet;
  dm_form.t_tabelle.Open;

  dm_form.t_campi.EmptyDataSet;
  dm_form.t_campi.Open;

  dm_form.t_indicitesta.EmptyDataSet;
  dm_form.t_indicitesta.Open;

  dm_form.t_indici.EmptyDataset;
  dm_form.t_indici.Open;

  programma.SelLength := 0;


  if FileExists(f_work.userdir + dm_form.t_applicazionetables.Value) then
  begin
    programma.Lines.LoadFromFile(f_work.userdir + dm_form.t_applicazionetables.Value)
  end
  else if fileexists(f_work.prgdir +
    dm_form.t_applicazionetables.Value) then
  begin
    programma.Lines.LoadFromFile(f_work.prgdir + dm_form.t_applicazionetables.Value)
  end;


  //aggiunge tabella defferred
  if PosEx('o2def::tab(' + chr(39) + '_deferred' + chr(39), programma.Lines.Text) = 0 then
  begin
    programma.Lines.Text := tab_deferred.Lines.Text + programma.Lines.Text
  end;

  //aggiunge tabella sessions
  if PosEx('o2def::tab(' + chr(39) + '_sessions' + chr(39), programma.Lines.Text) = 0 then
  begin
    programma.Lines.Text := tab_sessions.Lines.Text + programma.Lines.Text
  end;

  //aggiunge tabella users
  if PosEx('o2def::tab(' + chr(39) + '_users' + chr(39), programma.Lines.Text) = 0 then
  begin
    programma.Lines.Text := tab_users.Lines.Text + programma.Lines.Text
  end;

  // recupera nome tabella e crea il record memorizzando il count carattere
  // iniziale
  puntatore    := 0;
  r.Expression := 'o2def::tab(.*?);';
  if r.Exec(programma.Lines.Text) then
  begin
    repeat
      puntatore := puntatore + 1;
      programma.SelStart := r.MatchPos[0] - 1;
      programma.SelLength := r.MatchLen[0];
      selezione := programma.SelText;


      r2.Expression := '\x27\w*';
      if r2.Exec(selezione) then

      begin
        nome := copy(selezione, r2.MatchPos[0] + 1, r2.MatchLen[0] - 1)
      end;

      nomefisico := trim(extractword(3, selezione, [',']));
      nomefisico := changexchars(chr(39), chr(0), nomefisico);

      database := trim(extractword(2, selezione, [',']));
      database := changexchars(chr(39), chr(0), database);

      chiaveprimaria := trim(extractword(4, selezione, [',']));
      chiaveprimaria := changexchars(chr(39), chr(0), chiaveprimaria);
      chiaveprimaria := changexchars(';', chr(0), chiaveprimaria);
      chiaveprimaria := changexchars(')', chr(0), chiaveprimaria);
      try
        dm_form.t_tabelle.InsertRecord([puntatore, nome, nomefisico, database,
          chiaveprimaria, r.MatchPos[0] - 1, r.MatchLen[0]]);

      finally
      end;
    until not r.ExecNext
  end;


  programma.SelLength := 0;


  //campi della tabella
  puntatore     := 0;
  puntatoreprec := 0;
  id_campo      := 0;
  dm_form.t_campi.Open;


  r.Expression := 'o2def::field(.*?);';
  if r.Exec(programma.Lines.Text) then
  begin
    repeat
      id_campo := id_campo + 1;
      programma.SelStart := r.MatchPos[0] - 1;
      programma.SelLength := r.MatchLen[0];

      selezione     := programma.SelText;
      r2.Expression := '\x27\w*';
      if r2.Exec(selezione) then
      begin
        nome := copy(selezione, r2.MatchPos[0] + 1, r2.MatchLen[0] - 1)
      end;

      nomefisico := changexchars(chr(39), chr(0), trim(extractword(2, selezione, [','])));

      dm_form.t_tabelle.Filter   := 'match < ' + IntToStr(r.MatchPos[0] - 1);
      dm_form.t_tabelle.Filtered := True;
      dm_form.t_tabelle.Last;

      puntatore := dm_form.t_tabelleid.Value;
      if puntatore <> puntatoreprec then
      begin
        id_campo := 1
      end;
      puntatoreprec := puntatore;



      exp1 := changexchars(chr(39), chr(0), trim(extractword(3, selezione, [','])));
      exp1 := changexchars(';', chr(0), exp1);
      exp1 := changexchars(')', chr(0), exp1);


      dm_form.t_campi.InsertRecord
      ([puntatore, id_campo, nome, nomefisico, tipo, size, r.MatchPos[0] - 1,
        r.MatchLen[0], exp1]);
      dm_form.t_tabelle.Filtered := False;
    until not r.ExecNext
  end;

  programma.SelLength := 0;


  //indici tabella

  puntatore     := 0;
  puntatoreprec := 0;
  id_campo      := 0;


  r.Expression := 'o2def::index(.*?);';
  if r.Exec(programma.Lines.Text) then
  begin
    repeat
      id_campo := id_campo + 1;
      programma.SelStart := r.MatchPos[0] - 1;
      programma.SelLength := r.MatchLen[0];

      selezione := programma.SelText;



      r2.Expression := '\x27\w*';
      if r2.Exec(selezione) then
      begin
        nome := copy(selezione, r2.MatchPos[0] + 1, r2.MatchLen[0] - 1)
      end;


      dm_form.t_tabelle.Filter   := 'match < ' + IntToStr(r.MatchPos[0] - 1);
      dm_form.t_tabelle.Filtered := True;
      dm_form.t_tabelle.Last;

      puntatore := dm_form.t_tabelleid.Value;
      if puntatore <> puntatoreprec then
      begin
        id_campo := 1
      end;
      puntatoreprec := puntatore;

      // segmenti di chiave
      r2.Expression := '\,\s*\x27\w*\x27\s*\,\s*\x27[AD]\x27';
      segmento      := 0;

      if r2.Exec(selezione) then
      begin
        repeat
          segmento := segmento + 1;

          selezione2 := copy(selezione, r2.MatchPos[0] - 1, r2.MatchLen[0]);
          nomefisico := changexchars(chr(39), chr(0), trim(extractword(2, selezione2, [','])));
          direzione  := changexchars(chr(39), chr(0), trim(extractword(3, selezione2, [','])));


          dm_form.t_indici.InsertRecord
          ([puntatore, id_campo, segmento, nome, nomefisico, r.MatchPos[0] - 1,
            r.MatchLen[0], direzione]);
        until not r2.ExecNext
      end;




      dm_form.t_indicitesta.InsertRecord
      ([puntatore, id_campo, nome, r.MatchPos[0] - 1,
        r.MatchLen[0]]);
    until not r.ExecNext
  end;

  programma.SelLength := 0;




  // fine acquisizione table repository
  dm_form.t_tabelle.Filtered := False;
  dm_form.t_tabelle.Open;
  dm_form.t_campi.Active  := True;
  dm_form.t_indicitesta.Active := True;
  dm_form.t_indici.Active := True;
  dm_form.t_tabelle.First;
  f_work.ts_tabelle.Visible := True;
  FreeAndNil(r);
  FreeAndNil(r2);
  da_Refresh := False;

end;


end.
