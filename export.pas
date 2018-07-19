unit export;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ActnList, XPStyleActnCtrls, ActnMan, regexpr, DB,
  ComCtrls, JclStrings, StrUtils, jbstr, SqlTimSt, inifiles, DBClient;

type
  Tf_export = class(TForm)
    Memo1: TMemo;
    Memo2_sav: TMemo;
    ActionList1: TActionList;
    app_export: TAction;
    db_export: TAction;
    tables_export: TAction;
    menu_export: TAction;
    models_export: TAction;
    appvars_export: TAction;
    labels_export: TAction;
    prgsavcds: TAction;
    memoapp: TMemo;
    procedure prg_exportExecute(Sender: TObject; newnomeprg: string);
    procedure app_exportExecute(Sender: TObject);
    procedure db_exportExecute(Sender: TObject);
    procedure tables_exportExecute(Sender: TObject);
    procedure menu_exportExecute(Sender: TObject);
    procedure models_exportExecute(Sender: TObject);
    function prepara_expression(exp_interfaccia: string; nomeprg: string; retvirgolette: Boolean=False): string;
    function prepara_expression_num(exp_num: integer; nomeprg: string): string;
    function prepara_css(valore: string; nomeprg: string): string;
    procedure appvars_exportExecute(Sender: TObject);
    procedure labels_exportExecute(Sender: TObject);
    procedure prgsavcdsExecute(Sender: TObject; nomeprg:string);
    procedure FormCreate(Sender: TObject);
  private
    posiz: integer;

    { Private declarations }
  public
    { Public declarations }
  Memo2: TStringList;
  Memo3: TStringList;

  end;

var
  f_export: Tf_export;


implementation

uses dm, work, import;

{$R *.dfm}


procedure Tf_export.prg_exportExecute(Sender: TObject; newnomeprg: string);
var
  buffer, inizioact, fineact, condizione, nomeprg, nometask, nometab, tipousa, nomeform, temp, temp2,
  task, Caption, campo, visibile, abilitato, x, y, larghezza,
  altezza, css, css1, css2, css3, css4, css5, css6, css7, css8,
  css9, css10, css11, css12, css13, css14, css15, valori, indice, azione, maschera, boolean1,
  parentname, parentinfo, exp1, exp2, exp3, exp4, exp5, exp6, exp7,
  prefisso_per_view1, prefisso_per_view2, id, id_padre, nome_prg,
  nome_risorsa, master, index, dircds, Expand: string;
  tokenlist: TStrings;
  istruzione, rif_oggetto, parametri, nomecontrollo, tipo: string;
  i, posiz1, posiz2, posiz3, posiz4, submit, tooltipexp: integer;
  prova:     TReplaceFlags;
  formatotimestamp: TFormatSettings;
  timestamp_o2: string;
begin
  f_work.disabilitaprgtab.Execute;

// Export prg
  Memo2.Clear;
  Memo3.Clear;

  // tag_apertura
  Memo2.Add('<?php');
  Memo3.Add('<?php');

  Memo2.Add('//' + f_work.build);
  temp := dm_form.t_programmifolder.Value;
  temp2 := dm_form.t_programmimodulo.Value;

  Memo2.Add('//o2def::module("' + temp2 + '");');
  Memo2.Add('//o2def::folder("' + temp + '");');

  Memo2.Add('/*');
  Memo2.Add('o2def::prgnotes("' + dm_form.t_programminote.Value + '");');
  Memo2.Add('*/');

  Memo2.Add('');
  with dm_form do

  begin
    nomeprg := t_programminome.Value;
    if newnomeprg <> '' then
    begin
      nomeprg := newnomeprg
    end;

    buffer := 'o2def::prg(' + '"' + nomeprg + '"' + ', ' + '"' + t_programmiref.Value +
      '"' + ', ' + '""' +
      ', __FILE__);';

    Memo2.Add(buffer);
    Memo2.Add('');

    // definizione dei task

    //task delle virtual se almeno una
    t_variabili_prg.Filtered:=false;
    if t_variabili_prg.RecordCount > 0 then
    begin
      buffer := 'o2def::view(''prg§_§var'');';
      Memo2.Add(buffer);
    end;

    // ________________________________________________________ Export views ___
    t_task.First;
    // _______________________________________________________ Loop on views ___
    repeat
      nometask := t_tasknome.Value;
      if nometask <> '' then
      begin
        buffer := 'o2def::view("' + nometask + '", False, "' +
                  t_taskrecordprefix.Value + '", "' +
                  t_taskrecordsufix.Value + '", ' +
                  IfThen(t_taskautoaggregate.Value, '1', '0') + ');';
        Memo2.Add(buffer);
      end;
      t_task.Next
    until (t_task.EOF); // _______________________________ End loop on views ___


    // definizioni azioni
    t_azioni.First;

    repeat
      if t_azioniazione.Value <> '' then
      begin
        buffer := 'o2def::act(' +
         '"' +  t_azioniazione.Value + '", ' +
         '"' +  t_azioniservice.Value + '"' +
          ');';
        Memo2.Add(buffer);
      end;
      t_azioni.Next
    until (t_azioni.EOF);

    //definizioni form
    t_form.First;

    repeat
      if t_formnomeform.Value <> '' then
      begin

        nomeform:= t_formnomeform.Value;

       // sostituisce nome prg in caso di copia prg
        if newnomeprg <> '' then nomeform:=StringReplace(nomeform, trim(dm_form.t_programminome.Value) +'_', trim(newnomeprg) + '_', [rfReplaceAll]);

        if t_formvisibile.Value > 0 then temp:=prepara_expression_num(t_formvisibile.Value, nomeprg)
        else temp:='true';

        if t_formurl.Value > 0 then temp2:= '"' + prepara_expression_num(t_formurl.Value, nomeprg) + '"'
        else temp2:='false';


        buffer := 'o2def::form(' + '"' + nomeform + '"' + ', ' +
                        '"' + t_formparentform.Value + '", ' +
                        BooleanToStr(t_formmenu.Value) + ', ' + '"' + temp + '", '+
                        temp2 + ');';

        Memo2.Add(buffer);
      end;
      t_form.Next
    until (t_form.EOF);

    //definizioni io
    t_input_output.First;

    repeat
      if t_input_outputnome.Value <> '' then
      begin
        buffer := 'o2def::io(' + '"' + t_input_outputnome.Value + '"' + ', ' +
          '"' + StrLeft(t_input_outputtipo.Value, 1) + '"' + ', ' +
          nomeprg + '_exp_' + t_input_outputoutputfile.AsString + '(), ' +
          '"' + StrLeft(t_input_outputdirection.Value, 1) + '"' + ');';

        Memo2.Add(buffer);
      end;
      t_input_output.Next
    until (t_input_output.EOF);

    //definizioni report
    t_report.First;

    repeat
      if t_reportalias.Value <> '' then
      begin
        buffer := 'o2def::protocol(' + '"' + t_reportalias.Value + '"' + ', ' +
          '"' + t_reporttipo.Value + '"' + ');';

        Memo2.Add(buffer);
      end;
      t_report.Next
    until (t_report.EOF);

    // definizioni parametri
    t_parametri.First;

    repeat
      if t_parametriid.Value <> 0 then
      begin
        buffer := 'o2def::par(' + t_parametriid.AsString + ', ' +
          '"' + t_parametrinome.Value + '"' + ',' +
          '"' + t_parametrimodello.Value + '"' + ');';
        Memo2.Add(buffer);
      end;
      t_parametri.Next
    until (t_parametri.EOF);

    // ======================================================= FILE .PRG END ===

    // ===================================================== FILE .PRF START ===
    if nomeprg <> '_o2viewmodels' then
    begin
      // _______________________________________ Local variables (prg§_§var) ___
      if t_variabili_prg.RecordCount > 0 then
      begin
        nometask := 'prg§_§var';
        Memo3.Add('');
        buffer := 'function ' + nomeprg + '§§' + nometask +
                  '_def(&$task_' + nometask + ') {';
        Memo3.Add(buffer);
        buffer := chr(9) + '$task_' + nometask + '->righe_vis = 1;';
        Memo3.Add(buffer);
        // _______________________________________________ Loop on variables ___
        t_variabili_prg.First;
        repeat
          tipousa := 'definisci';
          exp5    := '""';
          buffer  := chr(9) + '$task_' + nometask + '->' + tipousa + '(' +
                     '"' + t_variabili_prgalias.Value + '", ' +
                     '"' + t_variabili_prgpicture.Value + '");';
          Memo3.Add(buffer);
          t_variabili_prg.Next;
        until t_variabili_prg.EOF;
        // ____________________________ Close variables definitions function ___
        buffer := chr(9) + chr(9) + '}';
        Memo3.Add(buffer);
      end;
    end; // ____________________________________________ Local variables end ___
    // _______________________________________________________ Views (tasks) ___
    t_task.First;
    repeat
      nometask := t_tasknome.Value;
      if nometask <> '' then
      begin
        Memo3.Add('');
        buffer := 'function ' + nomeprg + '§§' + nometask + '_def(&$task_' +
                  nometask + ', $_o2viewalias = "") {';
        Memo3.Add(buffer);
        if nomeprg <> '_o2viewmodels' then
        // _______________________________________________________ righe_vis ___
        begin
          if (t_taskrighevisexp.Value > 0) then
          begin
            exp1:= nomeprg + '_exp_' + t_taskrighevisexp.AsString + '()'
          end
          else
          begin
            exp1:= t_taskrighevis.AsString;
          end;
          buffer := chr(9) + '$task_' + nometask + '->righe_vis = ' + exp1 +';';
          Memo3.Add(buffer);
        end;
        // __________________________________________________________ tables ___
        Memo3.Add('');
        t_usa_file.First;
        repeat
          tipousa := '';
          if t_usa_filetipo.Value = 'Link' then
          begin
            tipousa := 'usa_file_link';
          end
          else if t_usa_filetipo.Value = 'Main' then
          begin
            tipousa := 'usa_file';
          end
          else if t_usa_filetipo.Value = 'View' then
          begin
            tipousa := 'usa_view';
          end;
          // __________________________________________ Main table and links ___
          if tipousa <> 'usa_view' then
          begin
            // _______________________________________________ _o2viewmodels ___
            if nomeprg = '_o2viewmodels' then
            begin
              prefisso_per_view1 := '$_o2viewalias.';
              prefisso_per_view2 := '$task_' + nometask + '->nome."_".';
            end
            // _______________________________________________ Standard prgs ___
            else begin
              prefisso_per_view1 := '';
              prefisso_per_view2 := '';
            end;
            buffer := chr(9) + '$task_' + nometask + '->' + tipousa + '("' +
                      t_usa_filetabella.Value + '",' +
                      prefisso_per_view1 + '"' + t_usa_filecon_nome.Value +
                      '",' + prepara_expression(t_usa_filechiave.Value,
                                                nomeprg,
                                                True) + ',' +
                      prepara_expression_num(t_usa_filedbname_exp.Value,
                                             nomeprg) + ',' +
                      prepara_expression_num(t_usa_filetablename_exp.Value,
                                             nomeprg) + ');';
            Memo3.Add(buffer);
          end;
          // ___________________________________________________ View models ___
          if tipousa = 'usa_view' then
          begin
            buffer := chr(9) + '$task_' + nometask + '->' + tipousa + '("' +
                      t_usa_filetabella.Value + '","' +
                      t_usa_filecon_nome.Value + '","' +
                      t_usa_filechiave.Value + '");';
            Memo3.Add(buffer);
          end;
          // _______________________________ Link criteria for linked tables ___
          if (tipousa = 'usa_file_link') then
          begin
            Memo3.Add('');
            t_union.First;
            // _____________________________________ Loop on criteria fields ___
            repeat
              // _______________________________________________________ MIN ___
              if t_unionrangemin.Value <> 0 then
              begin
                exp1 := '"' + nomeprg + '_exp_' +
                        IntToStr(t_unionrangemin.Value) + '()"';
              end
              else
              begin
                exp1 := 'null';
              end;
              // _______________________________________________________ MAX ___
              if t_unionrangemax.Value <> 0 then
              begin
                exp2 := '"' + nomeprg + '_exp_' +
                        IntToStr(t_unionrangemax.Value) + '()"';
              end
              else
              begin
                exp2 := 'null';
              end;
              // _______________________________________________________ NOT ___
              if t_unionnot.Value <> 0 then
              begin
                exp3 := '"' + nomeprg + '_exp_' +
                        IntToStr(t_unionnot.Value) + '()"';
              end
              else
              begin
                exp3 := 'null';
              end;
              // ______________________________________________________ LIKE ___
              if t_unionlike.Value <> 0 then
              begin
                exp4 := '"' + nomeprg + '_exp_' +
                        IntToStr(t_unionlike.Value) + '()"';
              end
              else
              begin
                exp4 := 'null';
              end;
              // _____________________________________ Define criteria field ___
              tipousa := 'unisci';
              if t_unionidrigatab.Value > 0 then
              begin
                exp5 := t_usa_file.Lookup('idriga',
                                          t_unionidrigatab.Value,
                                          'con_nome');
              end
              else
              begin
                exp5:='';
              end;
              buffer := chr(9) + '$task_' + nometask + '->' + tipousa + '(' +
                        prefisso_per_view2 + '"' +
                        t_usa_file.Lookup('idriga',
                                          t_unionidrigatab.Value,
                                          'con_nome') + '_' +
                        t_unioncampo.Value + '_join_",' +
                        prefisso_per_view1 + '"' + exp5 + '","' +
                        t_unioncampo.Value + '",' +
                        exp1 + ',' + exp2 + ',' + exp3 + ',' + exp4 + ');';
              Memo3.Add(buffer);
              t_union.Next;
            until t_union.EOF; // ______________ End loop on criteria fields ___
          end; // ________________________________________ End link criteria ___
          t_usa_file.Next;
        until t_usa_file.EOF; // ________________________ End loop on tables ___
        // ____________________________________ SELECTED fields and formulas ___
        Memo3.Add('');
        t_select.First;
        // _________________________________________________ Loop on selects ___
        repeat
          tipousa := '';
          // _____________________________________________________ MIN range ___
          if t_selectrangemin.Value <> 0 then
          begin
            exp1 := '"' + nomeprg + '_exp_' +
                    IntToStr(t_selectrangemin.Value) + '()"';
          end
          else
          begin
            exp1 := 'null';
          end;
          // _____________________________________________________ MAX range ___
          if t_selectrangemax.Value <> 0 then
          begin
            exp2 := '"' + nomeprg + '_exp_' +
                    IntToStr(t_selectrangemax.Value) + '()"';
          end
          else
          begin
            exp2 := 'null';
          end;
          // _____________________________________________________ NOT range ___
          if t_selectnot.Value <> 0 then
          begin
            exp3 := '"' + nomeprg + '_exp_' +
                    IntToStr(t_selectnot.Value) + '()"';
          end
          else
          begin
            exp3 := 'null';
          end;
          // ____________________________________________________ LIKE range ___
          if t_selectlike.Value <> 0 then
          begin
            exp4 := '"' + nomeprg + '_exp_' +
                    IntToStr(t_selectlike.Value) + '()"';
          end
          else
          begin
            exp4 := 'null';
          end;
          // ____________________________________________ Formula expression ___
          if t_selectinit.Value <> 0 then
          begin
            exp5 := '"' + nomeprg + '_exp_' +
                    IntToStr(t_selectinit.Value) + '()"';
          end
          else
          begin
            exp5 := 'null';
          end;
          // _________ Selects and link criteria (no formula and no virtual) ___
          if (t_selecttipo.Value = 'Select') or
             (t_selecttipo.Value = 'Link') then
          begin
            // _______________________________________________ Link criteria ___
            if t_selecttipo.Value = 'Link' then
            begin
              tipousa := 'unisci';
            end
            // ______________________________________________________ Select ___
            else if t_selecttipo.Value = 'Select' then
            begin
              tipousa := 'usa';
              // ____________________________________ Select from view-model ___
              if (t_usa_file.Lookup('con_nome',
                                    t_selecttabella.Value,
                                    'tipo') = 'View') then
              begin
                tipousa := 'match';
              end;
            end;
            // ___________________ Select from main or link (not view-model) ___
            if tipousa <> 'match' then
            begin
              buffer := chr(9) + '$task_' + nometask + '->' + tipousa + '(' +
                        prefisso_per_view2 + '"' +
                        t_selectcon_nome.Value + '",' +
                        prefisso_per_view1 + '"' +
                        t_selecttabella.Value + '","' +
                        t_selectcampo.Value + '",' +
                        exp1 + ',' + exp2 + ',' + exp3 + ',' + exp4 + ');';
            end
            // ______________________________________ Select from view-model ___
            else
            begin
              buffer := chr(9) + '$task_' + nometask + '->' + tipousa + '(' +
                        prefisso_per_view2 + '"' +
                        t_selectcon_nome.Value + '",' +
                        prefisso_per_view1 + '"' + nometask + '_' +
                        t_selectcampo.Value + '",' +
                        exp1 + ',' + exp2 + ',' + exp3 + ',' + exp4 + ');';
            end;
          end; // ____________________________ End selects and link criteria ___
          // ________________________________________ Variables and formulas ___
          if (t_selecttipo.Value = 'Virtual') or
             (t_selecttipo.Value = 'Calculated') then
          begin
            // ____________________________________________________ Variable ___
            if t_selecttipo.Value = 'Virtual' then
            begin
              tipousa := 'definisci';
              // ________________________________ Init expression (NOT USED) ___
              if exp5 <> 'null' then
              begin
                exp5 := Copy(Trim(exp5), 2, Length(Trim(exp5)) - 2)
              end;
            end
            // _____________________________________________________ Formula ___
            else if t_selecttipo.Value = 'Calculated' then
            begin
              tipousa := 'calcola';
            end;
            buffer := chr(9) + '$task_' + nometask + '->' + tipousa + '(' +
                      prefisso_per_view2 + '"' +
                      t_selectcon_nome.Value + '", ' + exp5 + ',' +
                      exp1 + ',' + exp2 + ',' + exp3 + ',' + exp4 + ');';
          end; // _______________________________ End variables and formulas ___
          if tipousa <> '' then
          begin
            Memo3.Add(buffer)
          end;
          t_select.Next;
        until t_select.EOF; // _________________________ End loop on selects ___
        // _________________________________________ Aggregation expressions ___
        t_aggreg.First;
        // _________________________________ Loop on aggregation expressions ___
        while not t_aggreg.EOF do
        begin
          buffer := chr(9) + '$task_' + nometask + '->aggregate("' +
                    t_aggregoperatore.Value + '", "' +
                    t_aggregcampo_view.Value + '", "' +
                    t_aggregresult_view.Value + '", "' +
                    t_aggregresult_var.Value + '");';
          Memo3.Add(buffer);
          t_aggreg.Next;
        end; // ________________________ End loop on aggregation expressions ___
        // __________________________________ Close view definition function ___
        Memo3.Add('}');
      end;
      t_task.Next;
    until t_task.EOF; // _________________________________ End loop on views ___

    if nomeprg <> '_o2viewmodels' then
    // ______________________________________________________________ Report ___
    begin
      //report del prg
      t_report.First;
      // ___________________________________________________ Loop on reports ___
      repeat
        if t_reportalias.Value <> '' then
        begin
          Memo2.Add('');
          nomeform := t_reportalias.Value;
          buffer   := 'function ' + nomeprg + '§§' + nomeform +
                      '_protocollo_def(&$protocollo_' + nomeform + ') {';
          Memo3.Add(buffer);
          // _________________________________________ Loop on report fields ___
          t_reportfield.First;
          repeat
            if t_reportfieldcampo.Value <> '' then
            begin
              indice := t_reportfieldcampo.Value;
              posiz  := Pos(CHR(129), indice);
              task   := copy(indice, 2, posiz - 2);
              campo  := copy(indice, posiz + 1, 200);
              buffer := chr(9) + '$protocollo_' + nomeform + '->usa("' +
                        t_reportfieldalias.Value + '", "' +
                        task + '", "' +
                        campo + '", "' +
                        t_reportfieldmodel.Value + '");';
              Memo3.Add(buffer);
            end;
            t_reportfield.Next;
          until t_reportfield.EOF; // ____________ End loop on report fields ___
          // ______________________________ Close report definition function ___
          buffer := chr(9) + chr(9) + '}';
          Memo3.Add(buffer);
        end;
        t_report.Next;
      until t_report.EOF; // ___________________________ End loop on reports ___
      // _____________________________________________________________ Forms ___
      t_form.First;
      // _____________________________________________________ Loop on forms ___
      repeat
        if t_formnomeform.Value <> '' then
        begin
          Memo2.Add('');
          nomeform := t_formnomeform.Value;
          // ________________ Replace prg name in form name when copying prg ___
          if newnomeprg <> '' then
          begin
            nomeform := StringReplace(nomeform,
                                      trim(dm_form.t_programminome.Value) + '_',
                                      trim(newnomeprg) + '_',
                                      [rfReplaceAll]);
          end;
          // ______________________________________ Form definition function ___
          buffer := 'function ' + nomeprg + '§§' + nomeform +
                    '_form_def(&$form_' + nomeform + ') {';
          Memo3.Add(buffer);
          // ______________________________________________________ Position ___
          buffer := chr(9) + '$form_' + nomeform + '->x(' +
                    IntToStr(t_formleft.Value) + ');';
          Memo3.Add(buffer);
          buffer := chr(9) + '$form_' + nomeform + '->y(' +
                    IntToStr(t_formtop.Value) + ');';
          Memo3.Add(buffer);
          if t_formtop_exp.Value <> 0 then
          begin
            exp1   := nomeprg + '_exp_' + t_formtop_exp.AsString + '()';
            buffer := chr(9) + '$form_' + nomeform + '->y_exp(' + exp1 + ');';
            Memo3.Add(buffer);
          end;
          if t_formleft_exp.Value <> 0 then
          begin
            exp1   := nomeprg + '_exp_' + t_formleft_exp.AsString + '()';
            buffer := chr(9) + '$form_' + nomeform + '->x_exp(' + exp1 + ');';
            Memo3.Add(buffer);
          end;
          // __________________________________________________________ Size ___
          buffer := chr(9) + '$form_' + nomeform + '->larghezza(' +
                    IntToStr(t_formlarghezza.Value) + ');';
          Memo3.Add(buffer);
          buffer := chr(9) + '$form_' + nomeform + '->altezza(' +
                    IntToStr(t_formaltezza.Value) + ');';
          Memo3.Add(buffer);
          if t_formaltezza_exp.Value <> 0 then
          begin
            exp1   := nomeprg + '_exp_' + t_formaltezza_exp.AsString + '()';
            buffer := chr(9) + '$form_' + nomeform + '->altezza_exp(' + exp1 +
                      ');';
            Memo3.Add(buffer);
          end;
          if t_formlarghezza_exp.Value <> 0 then
          begin
            exp1   := nomeprg + '_exp_' + t_formlarghezza_exp.AsString + '()';
            buffer := chr(9) + '$form_' + nomeform + '->larghezza_exp(' + exp1 +
                      ');';
            Memo3.Add(buffer);
          end;
          // _________________________________________________________ Align ___
          if t_formvertalign.Value <> 'Top' then
          begin
            buffer := chr(9) + '$form_' + nomeform + '->align_v("' +
                      t_formvertalign.Value + '");';
            Memo3.Add(buffer);
          end;
          if t_formorizzalign.Value <> 'Left' then
          begin
            buffer := chr(9) + '$form_' + nomeform + '->align_o("' +
                      t_formorizzalign.Value + '");';
            Memo3.Add(buffer);
          end;
          // ____________________________________________________ Form title ___
          if t_formdicitura_exp.Value <> 0 then
          // ___________________________________________ Title by expression ___
          begin
            exp1   := nomeprg + '_exp_' + t_formdicitura_exp.AsString + '()';
            buffer := chr(9) + '$form_' + nomeform + '->titolo(' + exp1 + ');';
          end
          else
          // ____________________________________________________ Title text ___
          begin
            buffer := chr(9) + '$form_' + nomeform + '->titolo("' +
                      t_formdicitura.Value + '");'
          end;
          Memo3.Add(buffer);
          // _____________________________________________ Visible title bar ___
          if t_formbarra_titolo.Value <> 0 then
          begin
            exp1   := nomeprg + '_exp_' + t_formbarra_titolo.AsString + '()';
            buffer := chr(9) + '$form_' + nomeform + '->frm_title(' + exp1 +
                      ');';
            Memo3.Add(buffer);
          end;
          // _____________________________ Visible status bar (allow resize) ___
          if t_formbarra_stato.Value <> 0 then
          begin
            exp1   := nomeprg + '_exp_' + t_formbarra_stato.AsString + '()';
            buffer := chr(9) + '$form_' + nomeform + '->frm_status(' + exp1 +
                      ');';
            Memo3.Add(buffer);
          end;
          // ___________________________________________________________ CSS ___
          if t_formcss_finestra.Value <> '' then
          begin
            buffer := chr(9) + '$form_' + nomeform + '->css_finestra(' +
                      prepara_expression(t_formcss_finestra.Value, nomeprg) +
                      ');';
            Memo3.Add(buffer);
          end;
          if t_formcss_title.Value <> '' then
          begin
            buffer := chr(9) + '$form_' + nomeform + '->css_title(' +
                      prepara_expression(t_formcss_title.Value, nomeprg) + ');';
            Memo3.Add(buffer);
          end;
          if t_formcss_title_no.Value <> '' then
          begin
            buffer := chr(9) + '$form_' + nomeform + '->css_title_no(' +
                      prepara_expression(t_formcss_title_no.Value, nomeprg) +
                      ');';
            Memo3.Add(buffer);
          end;
          if t_formcss_body.Value <> '' then
          begin
            buffer := chr(9) + '$form_' + nomeform + '->css_body(' +
                      prepara_expression(t_formcss_body.Value, nomeprg) + ');';
            Memo3.Add(buffer);
          end;
          if t_formcss_status_bar.Value <> '' then
          begin
            buffer := chr(9) + '$form_' + nomeform + '->css_status(' +
                      prepara_expression(t_formcss_status_bar.Value, nomeprg) +
                      ');';
            Memo3.Add(buffer);
          end;
          if t_formcss_doc.Value <> '' then
          begin
            buffer := chr(9) + '$form_' + nomeform + '->css_doc(' +
                      prepara_expression(t_formcss_doc.Value, nomeprg) + ');';
            Memo3.Add(buffer);
          end;
          if t_formcss_close.Value <> '' then
          begin
            buffer := chr(9) + '$form_' + nomeform + '->css_close(' +
                      prepara_expression(t_formcss_close.Value, nomeprg) + ');';
            Memo3.Add(buffer);
          end;
          if t_formcss_open.Value <> '' then
          begin
            buffer := chr(9) + '$form_' + nomeform + '->css_open(' +
                      prepara_expression(t_formcss_open.Value, nomeprg) + ');';
            Memo3.Add(buffer);
          end;
          if t_formcss_exit.Value <> '' then
          begin
            buffer := chr(9) + '$form_' + nomeform + '->css_exit(' +
                      prepara_expression(t_formcss_exit.Value, nomeprg) + ');';
            Memo3.Add(buffer);
          end;
          if t_formcss_resize.Value <> '' then
          begin
            buffer := chr(9) + '$form_' + nomeform + '->css_resize(' +
                      prepara_expression(t_formcss_resize.Value, nomeprg) +
                      ');';
            Memo3.Add(buffer);
          end;
          if t_formcss_corner.Value <> '' then
          begin
            buffer := chr(9) + '$form_' + nomeform + '->css_corner(' +
                      prepara_expression(t_formcss_corner.Value, nomeprg) +
                      ');';
            Memo3.Add(buffer);
          end;
          // __________________________________________________ Close action ___
          if t_formcloseclick_action.Value <> '' then
          begin
            buffer := chr(9) + '$form_' + nomeform + '->close_action("' +
                      t_formcloseclick_action.Value + '");';
            Memo3.Add(buffer);
          end;
          // ________________________________________________ Refresh action ___
          if t_formrefresh_action.Value <> '' then
          begin
            exp1   := t_formrefresh_action.Value;
            buffer := chr(9) + '$form_' + nomeform + '->refresh_action("' +
                      exp1 + '");';
            Memo3.Add(buffer);
          end;
          // _______________________________________________ Refresh timeout ___
          if t_formtimer_refresh.Value <> 0 then
          begin
            exp1   := nomeprg + '_exp_' + t_formtimer_refresh.AsString + '()';
            buffer := chr(9) + '$form_' + nomeform + '->refresh_exp("' + exp1 +
                      '");';
            Memo3.Add(buffer);
          end;
          // _________________________________________________ Form controls ___
          t_controlliform.First;
          // _________________________________________ Loop on form controls ___
          repeat
            if t_controlliformnomecontrollo.Value <> '' then
            begin
              y         := t_controlliformtop.AsString;
              x         := t_controlliformleft.AsString;
              larghezza := t_controlliformlarghezza.AsString;
              altezza   := t_controlliformaltezza.AsString;
              if t_controlliformabilitato.Value = 0 then
              begin
                abilitato := '"True"';
              end
              else
              begin
                abilitato := nomeprg + '_exp_' +
                             t_controlliformabilitato.AsString + '()';
              end;
              if t_controlliformvisibile.Value = 0 then
              begin
                visibile := '"True"';
              end
              else begin
                visibile := nomeprg + '_exp_' +
                            t_controlliformvisibile.AsString + '()';
              end;
              nomecontrollo := dm_form.t_controlliformnomecontrollo.Value;
              tipo          := t_controlliformtipo.Value;
              Expand        := dm_form.t_controlliformExpand.Value;
              // ____________________________ Change control type for export ___
              if tipo = 'separator' then
              begin
                tipo := 'line';
              end
              else if tipo = 'listbox' then
              begin
                tipo := 'listcombo';
              end
              else if tipo = 'checkbox' then
              begin
                tipo := 'check';
              end
              else if tipo = 'textarea' then
              begin
                tipo := 'text';
              end
              else if tipo = 'table' then
              begin
                tipo := 'tab';
              end
              else if tipo = 'image' then
              begin
                tipo := 'img';
              end
              else if tipo = 'treeview' then
              begin
                tipo := 'tree';
              end;
              // ____________________________________________ Init variables ___
              azione     := '';
              css        := '';
              css1       := '';
              css2       := '';
              css3       := '';
              css4       := '';
              css5       := '';
              css6       := '';
              css7       := '';
              css8       := '';
              css9       := '';
              css10      := '';
              indice     := 'null';
              valori     := 'null';
              maschera   := 'null';
              task       := '';
              campo      := '""';
              boolean1   := 'false';
              submit     := t_controlliformsubmitonchange.Value;
              tooltipexp := t_controlliformTooltipExp.Value;
              // ________________________ Parent name is blank if it is form ___
              if t_controlliformparent.Value <>
                 '_stage_' + dm_form.t_controlliformnomeform.Value then
              begin
                parentname := '"' + t_controlliformparent.Value + '"';
              end
              else
              begin
                parentname := '""';
              end;
              // _______________________________________________ Parent info ___
              if t_controlliformparent_info.Value <> '' then
              begin
                parentinfo := 'array(' +
                              stringreplace(t_controlliformparent_info.Value,
                                            '§',
                                            ', ',
                                            [rfReplaceAll]) +
                              ')';
              end
              else
              begin
                parentinfo := 'null';
              end;
              // _____________________________________________ Submit action ___
              if t_controlliformazione.Value <> '' then
              begin
                azione := '"' + t_controlliformazione.Value + '"'
              end;
              // _______________________________________________________ CSS ___
              css   := prepara_css(t_controlliformvocecss.Value, nomeprg);
              css1  := prepara_css(t_controlliformcss1.Value, nomeprg);
              css2  := prepara_css(t_controlliformcss2.Value, nomeprg);
              css3  := prepara_css(t_controlliformcss3.Value, nomeprg);
              css4  := prepara_css(t_controlliformcss4.Value, nomeprg);
              css5  := prepara_css(t_controlliformcss5.Value, nomeprg);
              css6  := prepara_css(t_controlliformcss6.Value, nomeprg);
              css7  := prepara_css(t_controlliformcss7.Value, nomeprg);
              css8  := prepara_css(t_controlliformcss8.Value, nomeprg);
              css9  := prepara_css(t_controlliformcss9.Value, nomeprg);
              css10 := prepara_css(t_controlliformcss10.Value, nomeprg);
              css11 := prepara_css(t_controlliformcss11.Value, nomeprg);
              css12 := prepara_css(t_controlliformcss12.Value, nomeprg);
              css13 := prepara_css(t_controlliformcss13.Value, nomeprg);
              css14 := prepara_css(t_controlliformcss14.Value, nomeprg);
              css15 := prepara_css(t_controlliformcss15.Value, nomeprg);

              if t_controlliformboolean1.Value then
              begin
                boolean1 := 'true'
              end;

              if t_controlliformmaschera.Value <> '' then
              begin
                maschera := '"' + t_controlliformmaschera.Value + '"'
              end;
              if leftstr(maschera, 7) = '"[o2exp' then
              begin
                maschera := nomeprg + '_exp_' +
                            leftstr(extractword(2,
                                                maschera, ['_']),
                                                length(extractword(2,
                                                       maschera,
                                                       ['_'])) - 2) + '()';
              end;
              if (t_controlliformriferimento.Value <> '') and
                 ((t_controlliformtipo.Value = 'table') or
                  (t_controlliformtipo.Value = 'navigator')) then
              begin
                task := copy(t_controlliformriferimento.Value, 2, 200);
              end
              else if (t_controlliformriferimento.Value <> '') and
                 (t_controlliformtipo.Value <> 'table') and
                 (t_controlliformtipo.Value <> 'navigator') then
              begin
                indice := t_controlliformriferimento.Value;
                posiz  := Pos(CHR(129), indice);
                task   := copy(indice, 2, posiz - 2);
                campo  := copy(indice, posiz + 1, 200);
                campo  := '"' + trim(campo) + '"';
              end;
              if t_controlliformscelte_possibili.Value <> '' then
              begin
                valori := t_controlliformscelte_possibili.Value
              end;
              // la caption (label, pulsanti e images) potrebbe anche essere by expression....
              Caption := prepara_expression(t_controlliformcaption.Value,
                                            nomeprg);
              buffer := chr(9) + '$ctrl_' + nomecontrollo + ' = &$form_' +
                        nomeform + '->ctrldef("' + nomecontrollo + '", "' +
                        tipo + '", ' +
                        parentname + ', "' +
                        task + '", ' +
                        campo + ');';
              Memo3.Add(buffer);
              //metodi comuni a tutti i tipi di controllo
              buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                        '->x(' + x + ');';
              Memo3.Add(buffer);
              buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                        '->y(' + y + ');';
              Memo3.Add(buffer);
              buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                        '->larghezza(' + larghezza + ');';
              Memo3.Add(buffer);
              buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                        '->altezza(' + altezza + ');';
              Memo3.Add(buffer);
              if Expand <> '' then
              begin
                buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->expand("' + Expand + '");';
                Memo3.Add(buffer);
              end;
              if abilitato <> '"True"' then
              begin
                buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                          '->modificabile(' + abilitato + ');';
                Memo3.Add(buffer);
              end;
              if visibile <> '"True"' then
              begin
                buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                          '->visibile(' + visibile + ');';
                Memo3.Add(buffer);
              end;
              if azione <> '' then
              begin
                buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                          '->azione(' + azione + ');';
                Memo3.Add(buffer);
              end;
              if submit <> 0 then
              begin
                buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                          '->on_change(' + nomeprg + '_exp_' +
                          IntToStr(submit) + '());';
                Memo3.Add(buffer);
              end;
              if tooltipexp <> 0 then
              begin
                buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                          '->popup("' + nomeprg + '_exp_' +
                          IntToStr(tooltipexp) + '()");';
                Memo3.Add(buffer);
              end;
              if parentinfo <> 'null' then
              begin
                // sostituisce nome prg in caso di copia prg
                if newnomeprg <> '' then
                begin
                  parentinfo := StringReplace(parentinfo,
                                           trim(dm_form.t_programminome.Value) +
                                              '_exp',
                                              trim(newnomeprg) + '_exp',
                                              [rfReplaceAll]);
                end;
                buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                          '->info_padre(' + parentinfo + ');';
                Memo3.Add(buffer);
              end;
              if maschera <> 'null' then
              begin
                buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                          '->maschera(' + maschera + ');';
                Memo3.Add(buffer);
              end;
              //label
              if t_controlliformtipo.Value = 'label' then
              begin
                buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                          '->label(' + Caption + ');';
                Memo3.Add(buffer);
                if css <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->css(' + css + ');';
                  Memo3.Add(buffer);
                end;
              end;
              // _________________________________________ HTML-Area control ___
              if t_controlliformtipo.Value = 'htmlarea' then
              begin
                if (t_controlliformextra1.Value <> '') and
                   (t_controlliformextra1.Value <> '0') then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->html(' + nomeprg + '_exp_' +
                            t_controlliformextra1.Value + '());';
                  Memo3.Add(buffer);
                end;
                if css <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->css(' + css + ');';
                  Memo3.Add(buffer);
                end;
              end
              // _________________________________________ TREE-VIEW control ___
              else if t_controlliformtipo.Value = 'treeview' then
              begin
                // ______________________________________________ Activation ___
                buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->activation(' +
                            t_controlliformscelte_possibili.Value + ');';
                Memo3.Add(buffer);
                // ________________________________________ Nodes expression ___
                if (t_controlliformextra1.Value <> '') and
                   (t_controlliformextra1.Value <> '0') then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->nodes(' + nomeprg + '_exp_' +
                            t_controlliformextra1.Value + '());';
                  Memo3.Add(buffer);
                end;
                if css <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->css(' + css + ');';
                  Memo3.Add(buffer);
                end;
              end
              // _____________________________________ IMAGES-LISTER control ___
              else if t_controlliformtipo.Value = 'imglist' then
              begin
                // ___________________________________________ Delete action ___
                buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->delete("' +
                            t_controlliformextra2.Value + '");';
                Memo3.Add(buffer);
                // ________________________________________ Items expression ___
                if (t_controlliformextra1.Value <> '') and
                   (t_controlliformextra1.Value <> '0') then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->items(' + nomeprg + '_exp_' +
                            t_controlliformextra1.Value + '());';
                  Memo3.Add(buffer);
                end;
                // _____________________________________________ Items width ___
                if (t_controlliformexp1.Value <> 0) then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->items_w(' + IntToStr(t_controlliformexp1.Value) +
                            ');';
                  Memo3.Add(buffer);
                end;
                // ____________________________________________ Items height ___
                if (t_controlliformexp2.Value <> 0) then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->items_h(' + IntToStr(t_controlliformexp2.Value) +
                            ');';
                  Memo3.Add(buffer);
                end;
                if css <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->css(' + css + ');';
                  Memo3.Add(buffer);
                end;
              end
              // __________________________________________ Document control ___
              else if t_controlliformtipo.Value = 'document' then
              begin
                buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                          '->path(' +  nomeprg + '_exp_' +
                          t_controlliformextra1.Value + '());';
                Memo3.Add(buffer);
                if css <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->css(' + css + ');';
                  Memo3.Add(buffer);
                end;
              end
              // ______________________________________________ Edit control ___
              else if t_controlliformtipo.Value = 'edit' then
              begin
                if css <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->css(' + css + ');';
                  Memo3.Add(buffer);
                end;
                // _____________________________________________ Zoom action ___
                if t_controlliformZoomAction.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->act_zoom("' + t_controlliformZoomAction.Value +
                            '");';
                  Memo3.Add(buffer);
                end;
                // ___________________________________________ Password edit ___
                if boolean1 <> 'false' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->pswd(' + boolean1 + ');';
                  Memo3.Add(buffer);
                end;
              end;
              // ____________________________________________ Button control ___
              if t_controlliformtipo.Value = 'button' then
              begin
                if valori <> 'null' then
                begin
                  valori := '"' + valori + '"';
                end;
                buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                          '->label(' + Caption + ');';
                Memo3.Add(buffer);
                // _________________________________________ Confirm message ___
                if t_controlliformscelte_possibili.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->confirm_message(' +
                       prepara_expression(t_controlliformscelte_possibili.Value,
                                          nomeprg) +');';
                   Memo3.Add(buffer);
                end;
                // _______________________________________________ Type HREF ___
                if t_controlliformextra1.Value = 'Href' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->style(1);';
                  Memo3.Add(buffer);
                end;
                // _________________________________________ Button shortcut ___
                if t_controlliformextra2.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->shortcut(' +
                            prepara_expression(t_controlliformextra2.Value,
                                               nomeprg) +');';
                  Memo3.Add(buffer);
                end;
                if css <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->css(' + css + ');';
                  Memo3.Add(buffer);
                end;
              end;
              // _____________________________________________ Image control ___
              if t_controlliformtipo.Value = 'image' then
              begin
                if valori <> 'null' then
                begin
                  valori := '"' + valori + '"';
                end;
                if (Caption <> 'null') and (Caption <> '""') then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->label(' + Caption + ');';
                  Memo3.Add(buffer);
                end;
                if css <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->css(' + css + ');';
                  Memo3.Add(buffer);
                end;
                // _________________________________ File name by expression ___
                if (t_controlliformextra1.Value <> '0') and
                   (t_controlliformextra1.Value <> '') then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->imgexp(' + nomeprg + '_exp_' +
                            t_controlliformextra1.Value + '());';
                  Memo3.Add(buffer);
                end;
                // _______________________ Rollover image file by expression ___
                if (t_controlliformextra3.Value <> '0') and
                   (t_controlliformextra3.Value <> '') then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->imgoverexp(' + nomeprg + '_exp_' +
                            t_controlliformextra3.Value + '());';
                  Memo3.Add(buffer);
                end;
                if (t_controlliformscelte_possibili.Value <> '') then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->immagine("' +
                            t_controlliformscelte_possibili.Value + '");';
                  Memo3.Add(buffer);
                end;
                if t_controlliformextra2.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->confirm_message(' +
                            prepara_expression(t_controlliformextra2.Value,
                                               nomeprg) +');';
                  Memo3.Add(buffer);
                end;
              end;
              // _______________________________________ File upload control ___
              if t_controlliformtipo.Value = 'file' then
              begin
                if css <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->css(' + css + ');';
                  Memo3.Add(buffer);
                end;
                if (t_controlliformextra1.Value <> '') and
                   (t_controlliformextra1.AsInteger <> 0) then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->save_as(' + nomeprg + '_exp_' +
                            t_controlliformextra1.Value + '());';
                  Memo3.Add(buffer);
                end;
              end;
              // _________________________________________ Multipage control ___
              if t_controlliformtipo.Value = 'multipage' then
              begin
                temp  := '';
                temp2 := StringReplace(t_controlliformextra1.Value,
                                       chr(10),
                                       '',
                                       [rfReplaceAll]);
                // _______________________________________ Split pages names ___
                for i := 1 to StrCharCount(temp2, chr(13)) + 1 do
                begin
                  if ExtractWord(i, temp2, [chr(13)]) <> '' then
                  begin
                    temp := trim(temp) + '"' +
                            ExtractWord(i, temp2, [chr(13)]) + '", ';
                  end
                end;
                temp := copy(trim(temp), 1, length(trim(temp)) - 1);
                if temp <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->label(' + 'array(' + temp + '));';
                  Memo3.Add(buffer);
                end;
                if css1 <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->css_space_out(' + css1 + ');';
                  Memo3.Add(buffer);
                end;
                if css2 <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->css_space_in(' + css2 + ');';
                  Memo3.Add(buffer);
                end;
                if css3 <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->css_label_on(' + css3 + ');';
                  Memo3.Add(buffer);
                end;
                if css4 <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->css_label_off(' + css4 + ');';
                  Memo3.Add(buffer);
                end;
                buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                          '->buttons("' +
                          t_controlliformscelte_possibili.Value + '");';
                Memo3.Add(buffer);
              end;
              // __________________________________________ Combobox control ___
              if (t_controlliformtipo.Value = 'combobox') or
                 (t_controlliformtipo.Value = 'listbox') then
              begin
                exp1   := '';
                exp3   := '';
                exp4   := '';
                exp2   := valori;
                valori := t_controlliformscelte_possibili.Value;
                // _____________________________________________ Zoom action ___
                if t_controlliformZoomAction.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->act_zoom("' +
                            t_controlliformZoomAction.Value + '");';
                  Memo3.Add(buffer);
                end;
                // _____________________________________________ Items array ___
                if (strleft(exp2, 6) <> '[o2exp') then
                begin
                  if  strleft(exp2, 12) <> 'o2_view2list' then
                  begin
                    valori := 'array(' + valori + ')';
                  end;
                end
                else
                // _____________________________________ Items by expression ___
                begin
                  exp2   := trim(copy(exp2, 8, 8));
                  valori := nomeprg + '_exp_' + trim(StrToken(exp2, ']')) +
                            '()';
                end;
                if valori <> 'null' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo +
                            '->valori(' + valori + ');';
                  Memo3.Add(buffer);
                end;

                if css <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css(' + css + ');';
                  Memo3.Add(buffer);
                end;


                buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->righe(' +
                  dm_form.t_controlliformextra1.Value + ');';
                Memo3.Add(buffer);

              end;

              //tabella
              if t_controlliformtipo.Value = 'table' then
              begin

                if css <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css(' + css + ');';
                  Memo3.Add(buffer);
                end;

                //tutta la serie di css
                if t_controlliformcss1.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_spazio(' +
                    css1 + ');';
                  Memo3.Add(buffer);
                end;

                if t_controlliformcss2.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_tab(' + css2 + ');';
                  Memo3.Add(buffer);
                end;
                if t_controlliformcss3.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_testa(' + css3 + ');';
                  Memo3.Add(buffer);
                end;
                if t_controlliformcss4.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_corpo(' + css4 + ');';
                  Memo3.Add(buffer);
                end;
                if t_controlliformcss5.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_riga(' + css5 + ');';
                  Memo3.Add(buffer);
                end;
                if t_controlliformcss6.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_alt(' + css6 + ');';
                  Memo3.Add(buffer);
                end;
                if t_controlliformcss7.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_point(' + css7 + ');';
                  Memo3.Add(buffer);
                end;
                if t_controlliformcss8.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_sele(' + css8 + ');';
                  Memo3.Add(buffer);
                end;
                if t_controlliformcss9.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_footer(' + css9 + ');';
                  Memo3.Add(buffer);
                end;

                //
                if t_controlliformNorecordmessage.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->norec_msg(' +
                  '"' + t_controlliformNorecordmessage.Value  + '");';
                  Memo3.Add(buffer);
                end;

                // per nascondere l'identificativo di riga
                if t_controlliformexp1.Value <> 0 then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->hide_indicator(' +
                  prepara_expression_num(t_controlliformexp1.Value, nomeprg)  + ');';
                  Memo3.Add(buffer);
                end;

              end;

              //checkbox
              if t_controlliformtipo.Value = 'checkbox' then
              begin
                if css <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css(' + css + ');';
                  Memo3.Add(buffer);
                end;
              end;

              //navigatore
              if t_controlliformtipo.Value = 'navigator' then
              begin

                // se verticale
                if t_controlliformextra1.Value = 'vertical' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->vertical();';
                  Memo3.Add(buffer);
                end;


                //tutta la serie di css
                if css1 <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_e(' + css1 + ');';
                  Memo3.Add(buffer);
                end;

                if css2 <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_i(' + css2 + ');';
                  Memo3.Add(buffer);
                end;

                if css3 <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_first(' + css3 + ');';
                  Memo3.Add(buffer);
                end;

                if css4 <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_prevpg(' +
                    css4 + ');';
                  Memo3.Add(buffer);
                end;

                if css5 <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_prev(' + css5 + ');';
                  Memo3.Add(buffer);
                end;

                if css6 <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_next(' + css6 + ');';
                  Memo3.Add(buffer);
                end;

                if css7 <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_nextpg(' +
                    css7 + ');';
                  Memo3.Add(buffer);
                end;

                if css8 <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_last(' + css8 + ');';
                  Memo3.Add(buffer);
                end;

                if css9 <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_space(' + css9 + ');';
                  Memo3.Add(buffer);
                end;

                if css10 <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_new(' + css10 + ');';
                  Memo3.Add(buffer);
                end;

                if css11 <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_save(' + css11 + ');';
                  Memo3.Add(buffer);
                end;

                if css12 <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_del(' + css12 + ');';
                  Memo3.Add(buffer);
                end;

                if css13 <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_undo(' + css13 + ');';
                  Memo3.Add(buffer);
                end;

                if css14 <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_detail(' + css14 + ');';
                  Memo3.Add(buffer);
                end;

                if css15 <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css_select(' + css15 + ');';
                  Memo3.Add(buffer);
                end;
                // pulsanti recordset

                // VISIBLE
                if t_controlliformNavigationBlockVisible.Value <> 0 then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->visible_nav(' + prepara_expression_num(
                  t_controlliformNavigationBlockVisible.Value, nomeprg)  + ');';
                  Memo3.Add(buffer);
                end;


                if t_controlliformInsertVisible.Value <> 0 then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->visible_new(' + prepara_expression_num(
                  t_controlliformInsertVisible.Value, nomeprg)  + ');';
                  Memo3.Add(buffer);
                end;

                if t_controlliformPostVisible.Value <> 0 then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->visible_save(' + prepara_expression_num(
                  t_controlliformPostVisible.Value, nomeprg)  + ');';
                  Memo3.Add(buffer);
                end;

                if t_controlliformDeleteVisible.Value <> 0 then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->visible_del(' + prepara_expression_num(
                  t_controlliformDeleteVisible.Value, nomeprg)  + ');';
                  Memo3.Add(buffer);
                end;

                if t_controlliformUndoVisible.Value <> 0 then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->visible_undo(' + prepara_expression_num(
                  t_controlliformUndoVisible.Value, nomeprg)  + ');';
                  Memo3.Add(buffer);
                end;

                if t_controlliformDetailVisible.Value <> 0 then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->visible_detail(' + prepara_expression_num(
                  t_controlliformDetailVisible.Value, nomeprg)  + ');';
                  Memo3.Add(buffer);
                end;

                if t_controlliformSelectVisible.Value <> 0 then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->visible_select(' + prepara_expression_num(
                  t_controlliformSelectVisible.Value, nomeprg)  + ');';
                  Memo3.Add(buffer);
                end;

                // ENABLE
                if t_controlliformInsertEnable.Value <> 0 then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->enable_new(' + prepara_expression_num(
                  t_controlliformInsertEnable.Value, nomeprg)  + ');';
                  Memo3.Add(buffer);
                end;

                if t_controlliformPostEnable.Value <> 0 then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->enable_save(' + prepara_expression_num(
                  t_controlliformPostEnable.Value, nomeprg)  + ');';
                  Memo3.Add(buffer);
                end;

                if t_controlliformDeleteEnable.Value <> 0 then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->enable_del(' + prepara_expression_num(
                  t_controlliformDeleteEnable.Value, nomeprg)  + ');';
                  Memo3.Add(buffer);
                end;

                if t_controlliformUndoEnable.Value <> 0 then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->enable_undo(' + prepara_expression_num(
                  t_controlliformUndoEnable.Value, nomeprg)  + ');';
                  Memo3.Add(buffer);
                end;

                if t_controlliformDetailEnable.Value <> 0 then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->enable_detail(' + prepara_expression_num(
                  t_controlliformDetailEnable.Value, nomeprg)  + ');';
                  Memo3.Add(buffer);
                end;

                if t_controlliformSelectEnable.Value <> 0 then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->enable_select(' + prepara_expression_num(
                  t_controlliformSelectEnable.Value, nomeprg)  + ');';
                  Memo3.Add(buffer);
                end;


                if t_controlliformInsertAction.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->act_new(' +
                  '"' + t_controlliformInsertAction.Value + '");';
                  Memo3.Add(buffer);
                end;

                if t_controlliformPostAction.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->act_save(' +
                  '"' + t_controlliformPostAction.Value + '");';
                  Memo3.Add(buffer);
                end;

                if t_controlliformDeleteAction.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->act_del(' +
                  '"' + t_controlliformDeleteAction.Value + '");';
                  Memo3.Add(buffer);
                end;

                if t_controlliformUndoAction.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->act_undo(' +
                  '"' + t_controlliformUndoAction.Value + '");';
                  Memo3.Add(buffer);
                end;

                if t_controlliformDetailAction.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->act_detail(' +
                  '"' + t_controlliformDetailAction.Value + '");';
                  Memo3.Add(buffer);
                end;

                if t_controlliformSelectAction.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->act_select(' +
                  '"' + t_controlliformSelectAction.Value + '");';
                  Memo3.Add(buffer);
                end;


                if t_controlliformInsertConfirmMessage.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->confirm_new(' +
                  prepara_expression(t_controlliformInsertConfirmMessage.Value, nomeprg) + ');';
                  Memo3.Add(buffer);
                end;

                if t_controlliformPostConfirmMessage.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->confirm_save(' +
                  prepara_expression(t_controlliformPostConfirmMessage.Value, nomeprg) + ');';
                  Memo3.Add(buffer);
                end;

                if t_controlliformDeleteConfirmMessage.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->confirm_del(' +
                  prepara_expression(t_controlliformDeleteConfirmMessage.Value, nomeprg) + ');';
                  Memo3.Add(buffer);
                end;

                if t_controlliformUndoConfirmMessage.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->confirm_undo(' +
                  prepara_expression(t_controlliformUndoConfirmMessage.Value, nomeprg) + ');';
                  Memo3.Add(buffer);
                end;

                if t_controlliformDetailConfirmMessage.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->confirm_detail(' +
                  prepara_expression(t_controlliformDetailConfirmMessage.Value, nomeprg) + ');';
                  Memo3.Add(buffer);
                end;

                if t_controlliformSelectConfirmMessage.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->confirm_select(' +
                  prepara_expression(t_controlliformSelectConfirmMessage.Value, nomeprg) + ');';
                  Memo3.Add(buffer);
                end;

              end;

              //separatore
              if t_controlliformtipo.Value = 'separator' then
              begin
                if css <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css(' + css + ');';
                  Memo3.Add(buffer);
                end;
              end;

              //textarea
              if t_controlliformtipo.Value = 'textarea' then
              begin

                if css <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->css(' + css + ');';
                  Memo3.Add(buffer);
                end;

                //zoom action
                if t_controlliformZoomAction.Value <> '' then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->act_zoom(' +
                  '"' + t_controlliformZoomAction.Value + '");';
                  Memo3.Add(buffer);
                end;

                //se richiesto htmlarea
                if t_controlliformboolean1.Value then
                begin
                  buffer := chr(9) + chr(9) + '$ctrl_' + nomecontrollo + '->htmlarea(True);';
                  Memo3.Add(buffer);
                end;

              end;

            end;
            t_controlliform.Next;
          until t_controlliform.EOF;

          buffer := chr(9) + chr(9) + '}';
          Memo3.Add(buffer);

        end;  //fine if nome form <>''

        t_form.Next;
      until t_form.EOF;


      // AZIONI
      t_azioni.First;
      repeat
        if t_azioniazione.Value <> '' then
        begin
          Memo3.Add('');


          buffer := 'function ' + nomeprg + '§§' + t_azioniazione.Value + '_act(&$o2exe) {';
          Memo3.Add(buffer);
          buffer := '';

          //ISTRUZIONI DELL'AZIONE
          t_operazioni.First;
          repeat

            if (t_operazioniexp2.Value = 0) then
            begin
              condizione := 'True'
            end
            else begin
              condizione := '(' + nomeprg + '_exp_' + t_operazioniexp2.AsString + '() || $o2exe->e())'
            end;
            inizioact := chr(9) + '$o2exe->s(' + t_operazioniid.AsString + ') && ' +
              condizione + ' && ';
            //if t_operazionioperazione.Value='Go to program' then fineact:='&& $o2exe->t();' else fineact:='&& $o2exe->e();';
            fineact := '&& $o2exe->e();';

            if t_operazionioperazione.Value = 'Block' then
            begin
              istruzione := 'block';
              exp1 := nomeprg + '_exp_' + t_operazioniexp2.AsString + '()';
              if (t_operazioniexp2.Value = 0) then
              begin
                exp1 := 'True'
              end;
              buffer := 'if (' + exp1 + ') {';
              Memo3.Add(buffer);

              buffer := chr(9) + '// ' + 'o2act::' + istruzione + '(' +
                '"' + t_operazioniid.AsString + '"' + ', ' +
                exp1 + ')/*' + dm_form.t_operazioniexp2.AsString + '*/; ';
            end
            else if t_operazionioperazione.Value = 'Block end' then
            begin
              istruzione := 'block_end';
              buffer     := chr(9) + '// ' + 'o2act::' + istruzione + '(' +
                '"' + t_operazioniid.AsString + '"' + ')/*' +
                dm_form.t_operazioniexp2.AsString + '*/; ';

              Memo3.Add(buffer);
              buffer := '}'

            end
            else if t_operazionioperazione.Value = 'Remark' then
            begin
              istruzione := 'remark';
              exp1 := t_operazionio2ref.Value;

              buffer := '//' + inizioact +
                'o2act::' + istruzione + '("' +
                exp1 + '") ' +
                fineact;
            end
            else if t_operazionioperazione.Value = 'Debugger' then
            begin
              istruzione := 'debug';
              exp1   := copy(t_operazionio2ref.Value, 2, pos(
                CHR(129), t_operazionio2ref.Value) - 2);
              exp2   := trim(
                copy(t_operazionio2ref.Value, pos(CHR(129), t_operazionio2ref.Value) + 1, 50));
              buffer := inizioact +
                'o2act::' + istruzione + '() ' +

                fineact;
            end
            else if t_operazionioperazione.Value = 'Execute action' then
            begin
              istruzione := 'exe';
              posiz1 := PosEx('::', dm_form.t_operazionio2ref.Value, 1);
              posiz2 := PosEx('::', dm_form.t_operazionio2ref.Value, posiz1 + 2);
              posiz3 := PosEx('::', dm_form.t_operazionio2ref.Value, posiz2 + 2);
              exp1 := copy(dm_form.t_operazionio2ref.Value, 1, posiz1 - 1);
              exp2 := copy(dm_form.t_operazionio2ref.Value, posiz1 + 2, posiz2 -
                posiz1 - 2);
              exp3 := copy(dm_form.t_operazionio2ref.Value, posiz2 + 3, posiz3 -
                posiz2 - 3);
              exp4 := UpperCase(copy(dm_form.t_operazionio2ref.Value, posiz3 + 2, 1));

              if (exp2 = '') or (exp2='0') or (exp2='True') then
              begin
                exp2 := 'True'
              end
              else
              if exp2 <> 'False' then exp2 := '"' + nomeprg + '_exp_' + exp2 + '()"';

              buffer := inizioact + 'o2act::' + istruzione + '(' +

                '"' + exp1 + '"' + ', ' +
                exp2 + ', ' +
                '"' + exp3 + '"' + ') ' +
    {            '"' + exp4 + '"' + ') ' +}

                fineact;
            end
            else if t_operazionioperazione.Value = 'Update' then
            begin
              istruzione := 'set';
              exp1   := copy(t_operazionio2ref.Value, 2, pos(
                CHR(129), t_operazionio2ref.Value) - 2);
              exp2   := trim(
                copy(t_operazionio2ref.Value, pos(CHR(129), t_operazionio2ref.Value) + 1, 50));
              buffer := inizioact +
                'o2act::' + istruzione + '(' +

                '"' + exp1 + '"' + ', ' +
                '"' + exp2 + '"' + ', ' +
                nomeprg + '_exp_' + t_operazioniexp1.AsString + '()' + ') ' +
                fineact;
            end
            else if t_operazionioperazione.Value = 'Confirm' then
            begin
              istruzione := 'confirm';
              exp1   := copy(t_operazionio2ref.Value, 2, pos(
                CHR(129), t_operazionio2ref.Value) - 2);
              exp2   := trim(
                copy(t_operazionio2ref.Value, pos(CHR(129), t_operazionio2ref.Value) + 1, 50));
              buffer := inizioact +
                'o2act::' + istruzione + '(' +

                '"' + exp1 + '"' + ', ' +
                '"' + exp2 + '"' + ', ' +
                nomeprg + '_exp_' + t_operazioniexp1.AsString + '()' + ') ' +
                fineact;
            end
            else if t_operazionioperazione.Value = 'Return parameter' then
            begin
              istruzione := 'ret';
              exp1 := t_operazionio2ref.Value;
              exp1 := StrToken(exp1, ':');

              buffer := inizioact + 'o2act::' + istruzione + '(' +
                exp1 + ', ' +
                nomeprg + '_exp_' + t_operazioniexp1.AsString + '()' + ') ' +
                fineact;
            end
            else if t_operazionioperazione.Value = 'Print' then
            begin
              istruzione := 'report';
              //template
              exp1 := nomeprg + '_exp_' +
                ExtractWord(1, t_operazionio2ref.Value, [':']) + '()';
              //nome pdf di result
              exp2 := nomeprg + '_exp_' +
                ExtractWord(2, t_operazionio2ref.Value, [':']) + '()';
              //array
              exp3 := 'array(';

              //prepara array galattico

              if dm_form.t_operazionicallparam.Value <> '' then
              begin

                for i := 1 to StrCharCount(
                    dm_form.t_operazionicallparam.Value, '§') do
                begin
                  temp := ExtractWord(i, dm_form.t_operazionicallparam.Value, ['§']);
                  id     := trim(ExtractWord(1, temp, ['|']));
                  id_padre := trim(ExtractWord(2, temp, ['|']));
                  nome_prg := trim(ExtractWord(3, temp, ['|']));
                  nome_risorsa := trim(ExtractWord(4, temp, ['|']));
                  master := trim(ExtractWord(5, temp, ['|']));
                  index  := trim(ExtractWord(6, temp, ['|']));

                  exp3 := trim(exp3) + '"' + id + '"' + ' => array("id" => "' + id + '",' +
                    '"padre" => "' + id_padre + '", ' +
                    '"prg" => "' + nome_prg + '", ' +
                    '"risorsa" => "' + nome_risorsa + '", ' +
                    '"index_padre" => "' + master + '", ' +
                    '"index_figlio" => "' + index + '"), ';

                end;
              exp3 := copy(trim(exp3), 1, length(trim(exp3)) - 1);
              end;

              exp3 := trim(exp3) + ')';

              if (ExtractWord(3, t_operazionio2ref.Value, [':']) <> '') and (ExtractWord(3, t_operazionio2ref.Value, [':']) <> '0')
              then exp4 := nomeprg + '_exp_' + ExtractWord(3, t_operazionio2ref.Value, [':']) + '()'
              else
              exp4:='""';

              if (ExtractWord(4, t_operazionio2ref.Value, [':']) <> '') and (ExtractWord(4, t_operazionio2ref.Value, [':']) <> '0')
              then exp5 := nomeprg + '_exp_' + ExtractWord(4, t_operazionio2ref.Value, [':']) + '()'
              else
              exp5:='""';

              buffer := inizioact + 'o2act::' + istruzione + '(' +
                exp1 + ', ' +
                exp2 + ', ' +
                exp3 + ', ' +
                exp4 + ', ' +
                exp5 + ') ' +
                fineact;
            end
            else if t_operazionioperazione.Value = 'Set menu' then
            begin
              istruzione := 'menu';
              exp1   := '"' + t_operazionio2ref.Value + '"';
              buffer := inizioact + 'o2act::' + istruzione + '(' +
                exp1 + ') ' +
                fineact;
            end
            else if t_operazionioperazione.Value = 'Message' then
            begin
              istruzione := 'alert';
              if t_operazionio2ref.Value = 'Box' then
              begin
                exp1 := '0'
              end
              else
              if t_operazionio2ref.Value = 'Status bar' then
              begin
                exp1 := '1'
              end
              else exp1 := '2';

              buffer := inizioact + 'o2act::' + istruzione + '(' +
                nomeprg + '_exp_' + t_operazioniexp1.AsString + '()' + ', ' +
                exp1 + ') ' +
                fineact;
            end
            else if t_operazionioperazione.Value = 'Execute script' then
            begin
              istruzione := 'script';
              if t_operazionio2ref.Value = 'Box' then
              begin
                exp1 := '0'
              end
              else begin
                exp1 := '1'
              end;
              buffer := inizioact + 'o2act::' + istruzione + '(' +
                nomeprg + '_exp_' + t_operazioniexp1.AsString + '()' + ') ' +
                fineact;
            end
            else if t_operazionioperazione.Value = 'I/O' then
            begin
              istruzione := 'io';
              exp1 := copy(t_operazionio2ref.Value, 2, pos(
                CHR(144), t_operazionio2ref.Value) - 2);
              exp2 := trim(
                copy(t_operazionio2ref.Value, pos(CHR(144), t_operazionio2ref.Value) + 1, 50));
              if t_operazioniexp3.Value = 0 then
              begin
                exp3 := 'true'
              end
              else begin
                exp3 := 'false'
              end;

              buffer := inizioact + 'o2act::' + istruzione + '(' +
                '"' + exp1 + '", ' +
                '"' + exp2 + '", ' +
                exp3 + ') ' +
                fineact;
            end
            //go to program
            else if (t_operazionioperazione.Value = 'Go to') and
                    (t_operazionitipologia.Value = 'program') then
            begin
              istruzione := 'gotoprg';
              exp1 := prepara_expression(t_operazionio2ref.Value, nomeprg);
              if t_operazionideferred.Value = 0 then
              begin
                exp3 := 'false'
              end
              else
              begin
                exp3 := nomeprg + '_exp_' + t_operazionideferred.AsString + '()'
              end;

              if t_operazioniservice.Value = '' then
              begin
                exp3 := 'false'
              end
              else begin
                exp3 := '"' + t_operazioniservice.Value + '"'
              end;
              //parametri
              parametri := '';

              Memo1.Clear;
              memo1.Lines.Append(t_operazionicallparam.Value);
              for i := 0 to memo1.Lines.Count - 1 do
              begin
                if memo1.Lines[i] <> '' then
                begin
                  exp2 := memo1.Lines[i];
                  exp2 := stringreplace(exp2, chr(129), '§§', [rfReplaceAll]);
                  exp2 := stringreplace(exp2, chr(127), '', [rfReplaceAll]);
                  exp2 := '"' + trim(exp2) + '"';
                  // _____________________________________ Parameter to NULL ___
                  if exp2 = '"null"' then
                  begin
                    exp2 := 'null';
                  end
                  // _______________________________ Parameter by expression ___
                  else if strleft(trim(exp2), 7) = '"[o2exp' then
                  begin
                    exp2 := copy(trim(exp2), 3, length(trim(exp2)) - 4);
                    exp2 := nomeprg + '_exp_' + trim(copy(trim(exp2), 7, 5) + '()');
                  end;
                  parametri := trim(parametri) + ', ' + exp2;
                end;
              end;
              buffer := inizioact + 'o2act::' + istruzione + '(' +
                        exp1 + ', ' + exp3 + parametri + ') ' +
                        fineact;
            end
            //goto url
            else if (t_operazionioperazione.Value = 'Go to') and
                    (t_operazionitipologia.Value = 'url') then
            begin
              istruzione := 'gotourl';
              exp1 := nomeprg + '_exp_' + t_operazioniexp1.AsString + '()';

              buffer := inizioact + 'o2act::' + istruzione + '(' +
                exp1 + ') ' +
                fineact;

            end
            else if t_operazionioperazione.Value = 'Call program' then
            begin
              istruzione := 'call';
              exp1 := prepara_expression(t_operazionio2ref.Value, nomeprg);

              if (t_operazioniservice.Value = 'Cached') then exp3:= 'True' else exp3:='False';

              //parametri
              parametri := '';

              Memo1.Clear;
              memo1.Lines.Append(t_operazionicallparam.Value);
              for i := 0 to memo1.Lines.Count - 1 do
              begin
                if memo1.Lines[i] <> '' then
                begin
                  exp2 := memo1.Lines[i];
                  exp2 := stringreplace(exp2, chr(129), '§§', [rfReplaceAll]);
                  exp2 := stringreplace(exp2, chr(127), '', [rfReplaceAll]);
                  exp2 := '"' + trim(exp2) + '"';
                  if strleft(trim(exp2), 7) = '"[o2exp' then
                  begin
                    exp2 := copy(trim(exp2), 3, length(trim(exp2)) - 4);
                    exp2 := nomeprg + '_exp_' + trim(copy(trim(exp2), 7, 5) + '()');
                  end
                  else if exp2 = '"null"' then
                  begin
                    exp2 := 'null'
                  end;
                  parametri := trim(parametri) + ', ' + exp2;
                end;
              end;

              buffer := inizioact + 'o2act::' + istruzione + '(' +
                        exp1 + ', '+ exp3 + parametri + ') ' +
                        fineact;
            end
            else if t_operazionioperazione.Value = 'Close program' then
            begin
              istruzione := 'close';
              buffer     := inizioact + 'o2act::' + istruzione + '()' +
                fineact;
            end
            else if t_operazionioperazione.Value = 'Recordset' then
            begin
              istruzione := 'view';
              exp1 := copy(t_operazionio2ref.Value, 2, pos(
                '::', t_operazionio2ref.Value) - 2);
              exp2 := trim(
                copy(t_operazionio2ref.Value, pos('::', t_operazionio2ref.Value) + 2, 50));
              if exp2 = 'First' then
              begin
                exp3 := '1'
              end;
              if exp2 = 'Previous row' then
              begin
                exp3 := '2'
              end;
              if exp2 = 'Next row' then
              begin
                exp3 := '3'
              end;
              if exp2 = 'Last' then
              begin
                exp3 := '4'
              end;
              if exp2 = 'Previous page' then
              begin
                exp3 := '5'
              end;
              if exp2 = 'Next page' then
              begin
                exp3 := '6'
              end;
              if exp2 = 'Refresh' then
              begin
                exp3 := '0'
              end;
              if exp2 = 'Post row' then
              begin
                exp3 := 'S'
              end;
              if exp2 = 'Edit' then
              begin
                exp3 := 'M'
              end;
              if exp2 = 'Read' then
              begin
                exp3 := 'R'
              end;
              if exp2 = 'Undo' then
              begin
                exp3 := 'A'
              end;
              if exp2 = 'Prepare insert' then
              begin
                exp3 := 'I'
              end;
              if exp2 = 'Delete row' then
              begin
                exp3 := 'C'
              end;
              if exp2 = 'Locate' then
              begin
                exp3 := 'L'
              end;
              if exp2 = 'Delete all rows' then
              begin
                exp3 := 'D'
              end;
              if exp2 = 'Lock rows' then
              begin
                exp3 := 'K'
              end;
              if exp2 = 'Aggregate' then
              begin
                exp3 := 'G'
              end;

              // eventuale array per la locate
              if t_operazionicallparam.Value <> '' then
              begin
                exp4 := 'array(' + t_operazionicallparam.Value + ')';
                // sostituisce nome prg in caso di copia prg
                if newnomeprg <> '' then exp4:=StringReplace(exp4, trim(dm_form.t_programminome.Value) +'_exp', trim(newnomeprg) + '_exp', [rfReplaceAll]);

              end
              else begin
                exp4 := '""'
              end;

              buffer := inizioact + 'o2act::' + istruzione + '(' +
                '"' + exp1 + '"' + ', ' +
                '"' + exp3 + '"' + ', ' +
                exp4 + ') ' +
                fineact;
            end;

            if buffer <> '' then
            begin
              Memo3.Add(buffer)
            end;

            t_operazioni.Next;
          until t_operazioni.EOF;

          buffer := chr(9) + '} //|o2_fine_act|';
          Memo3.Add(buffer);
        end;
        t_azioni.Next;
      until t_azioni.EOF;

    end;

    // espressioni

    t_espressioni.First;
    repeat
      Memo3.Add('');

      if t_espressioniidexp.Value <> 0 then
      begin
        buffer := 'function ' + nomeprg + '_exp_' + t_espressioniidexp.AsString + '() {';
        Memo3.Add(buffer);

        buffer := chr(9) + t_espressioniexpr.AsString +  chr(10) +
          'return (' + t_espressionireturn.Value + ');';

        Memo3.Add(buffer);

        buffer := chr(9) + '} //|o2_fine_exp|';
        Memo3.Add(buffer);
      end;
      t_espressioni.Next;
    until t_espressioni.EOF;


    // tag_chiusura
    Memo2.Add('?>');
    Memo3.Add('?>');

    If not(DirectoryExists(f_work.userdir)) then CreateDir(f_work.userdir);

    // se esiste già in check lo rinomina
    if FileExists(f_work.userdir + nomeprg + '.prg') then
    begin

      GetLocaleFormatSettings(1, formatotimestamp);
      formatotimestamp.DateSeparator := chr(95);
      formatotimestamp.TimeSeparator := chr(95);
      timestamp_o2 := DateTimeToStr(Now, formatotimestamp);

      If not(DirectoryExists(f_work.userdir + 'bak\')) then CreateDir(f_work.userdir + 'bak');

      RenameFile(f_work.userdir + nomeprg + '.prg', f_work.userdir + 'bak\' +
        nomeprg + '_' + timestamp_o2 + '.prg.o2bak');
      RenameFile(f_work.userdir + nomeprg + '.prf', f_work.userdir + 'bak\' +
        nomeprg + '_' + timestamp_o2 + '.prf.o2bak');
    end;

    if nomeprg <> '_o2viewmodels' then
    begin
      Memo2.SaveToFile(f_work.userdir + nomeprg + '.prg');
      Memo3.SaveToFile(f_work.userdir + nomeprg + '.prf');

     // SE NON ESISTE LA VERSIONE UFFICIALE LA RICREA
     if (not(FileExists(f_work.prgdir + nomeprg + '.prg'))) then
     begin
      Memo2.SaveToFile(f_work.prgdir + nomeprg + '.prg');
      Memo3.SaveToFile(f_work.prgdir + nomeprg + '.prf');
     end;
    end;
    if nomeprg = '_o2viewmodels' then
    begin
      Memo2.SaveToFile(f_work.userdir + nomeprg + '.prg');
      Memo3.SaveToFile(f_work.userdir + dm_form.t_applicazioneviews.Value);
    end;

  end;


  // salva anche i file cds  solo se non copia prg
  if (dm_form.t_programminome.Value = newnomeprg) or (newnomeprg='') then prgsavcdsExecute(self, nomeprg);



  f_work.abilitaprgtab.Execute;
  //  ShowMessage('PROGRAM: Publish completed');
end;


{*
 * Writes application main file and app .INI file
 *}
procedure Tf_export.app_exportExecute(Sender: TObject);
var
  buffer: string;
  app_ini: TIniFile;
begin
  // ____________________________________________ Read app main script model ___
  buffer := memoapp.Lines.Text;
  // ______________________________________ Set Janox runtime in main script ___
  if (dm_form.t_applicazioneo2_alias.Value) <> '' then
  begin
    StrReplace(buffer,
               '[_jnxrnt_]',
               dm_form.t_applicazioneo2_alias.Value + '/jxrnt.php',
               [rfReplaceAll]);
  end
  // ____________________________________ Blank Janox runtime in main script ___
  else
  begin
    StrReplace(buffer, '[_jnxrnt_]', '', [rfReplaceAll]);
  end;
  // ________________________________ Set application version in main script ___
  StrReplace(buffer, '[_jnxver_]', f_work.build, [rfReplaceAll]);
  // _____________________________________________ Save modified main script ___
  Memo2.Clear;
  Memo2.Append(buffer);
  Memo2.SaveToFile(f_work.workdir + 'htdocs\' + f_work.progetto + '.php');
  // _________________________________________________________ Read app .INI ___
  app_ini := TIniFile.Create(f_work.workdir + f_work.progetto + '.ini');
  with dm_form do
  begin
    app_ini.WriteString('app',
                        'title',
                        ' "' + t_applicazionetitolo.Value + '"');
    app_ini.WriteString('app',
                        'activemenu',
                        ' "' + t_applicazionedefault_menu.Value + '"');
    app_ini.WriteString('app',
                        'validate',
                        ' ' + t_applicazionevalidate.AsString);
    if t_applicazionestartprg.Value <> '' then
    begin
      app_ini.WriteString('app',
                          'startprg',
                          ' "' + t_applicazionestartprg.Value + '"');
    end;
    if t_applicazionereqprg.Value <> '' then
    begin
      app_ini.WriteString('app',
                          'reqprg',
                          ' "' + t_applicazionereqprg.Value + '"');
    end;
    {
    app_ini.WriteString('app', 'dbs', '"'+t_applicazionedbs.Value+'"');
    app_ini.WriteString('app', 'menus', '"'+t_applicazionemenus.Value+'"');
    app_ini.WriteString('app', 'models', '"'+t_applicazionemodels.Value+'"');
    app_ini.WriteString('app', 'tables', '"'+t_applicazionetables.Value+'"');
    app_ini.WriteString('app', 'viewmodels', '"'+t_applicazioneviews.Value+'"');
    app_ini.WriteString('app', 'vars', '"'+t_applicazioneappvars.Value+'"');
    }
  end;
end;


procedure Tf_export.db_exportExecute(Sender: TObject);
var
  buffer, vero_falso, create_tab: string;

begin
  // salva servers e databases su dbrepository.php
  Memo2.Clear;
  dm_form.t_servers.First;
  Memo2.Append('<?php');
  buffer := '// ==============  SERVERS ================';
  Memo2.Append(buffer);
  repeat
    if dm_form.t_serversnomeserver.Value <> '' then
    begin
      buffer :=
        'o2def::server(' + '"' + dm_form.t_serversnomeserver.Text + '"' + ', ' +
        '"' + dm_form.t_serverstiposerver.Value + '"' + ', ' +
        '"' + dm_form.t_serversnomefisico.Value + '"' + ', ' +
        '"' + dm_form.t_serversutente.Value + '"' + ', ' +
        '"' + dm_form.t_serverspassword.Value + '"' + ', ' +
        dm_form.t_serverschunksize.AsString  + ');';
      Memo2.Append(buffer);
    end;

    dm_form.t_servers.Next;

  until dm_form.t_servers.EOF;


  // DATABASES
  dm_form.t_databases.First;
  buffer := '// ==============  DATABASES ================';
  Memo2.Append(buffer);

  repeat
    if dm_form.t_databasesnomedb.Value <> '' then
    begin
      if dm_form.t_databasesasp.Value = 'Column' then vero_falso:='"C"'
      else if dm_form.t_databasesasp.Value = 'Schema' then vero_falso:='"S"'
      else if dm_form.t_databasesasp.Value = 'Database' then vero_falso:='"D"'
      else vero_falso:='false';

      if dm_form.t_databasescheck_esist_tab.Value = false then
        create_tab:='false' else create_tab:='true';

      buffer :=
        'o2def::db(' + '"' + dm_form.t_databasesnomedb.Text + '"' + ', ' +
        '"' + dm_form.t_databasesserver.Text + '"' + ', ' +
        '"' + dm_form.t_databasesnomefisicodb.Text + '"' + ', ' +
        '"' + dm_form.t_databasesowner.Text + '"' + ', ' +
        vero_falso + ', ' +
        create_tab  + ');';

      Memo2.Append(buffer);
    end;
    dm_form.t_databases.Next;

  until dm_form.t_databases.EOF;

  Memo2.Append('?>');

  Memo2.SaveToFile(f_work.userdir + dm_form.t_applicazionedbs.Value);
  //ShowMessage('DATABASES: Publish completed');

end;


procedure Tf_export.tables_exportExecute(Sender: TObject);
var
  buffer, chiaveDef, nomeTab: string;
  contatore_per_demo: integer;
begin
  // ______________________________________ Unlink tables from grid controls ___
  f_work.disabilitaTableRep.Execute;
  // _____________________________________ Prepare repository buffer control ___
  Memo2.Clear;
  Memo2.Append('<?php');
  // ________________________________________________________ Loop on tables ___
  contatore_per_demo := 1;
  dm_form.t_tabelle.First;
  repeat
    if dm_form.t_tabelleNome.Value <> '' then
    begin
      // ___________________________________________ Single table definition ___
      nomeTab := '"' + (dm_form.t_tabelleNome.Text) + '"';
      buffer  := 'o2def::tab(' + nomeTab + ', "' +
                 dm_form.t_tabelleDatabase.Text + '", "' +
                 dm_form.t_tabelleNome_fisico.Text + '", "' +
                 dm_form.t_tabelleChiavePrimaria.Text + '");';
      // _____ If missing DB info then table is remmed (for comments in rep) ___
      if (dm_form.t_tabelleDatabase.Value = '') then
      begin
        buffer := '// ' + buffer;
      end;
      Memo2.Append(buffer);
      Memo2.Append('');
      // _______________________________________ If a regular table, not REM ___
      if dm_form.t_tabelleDatabase.Value <> '' then
      begin
        // ____________________________________________ Loop on table fields ___
        dm_form.t_campi.First;
        repeat
          if dm_form.t_campiNomeCampo.Value <> '' then
          begin
            buffer := chr(9) + 'o2def::field("' +
                      dm_form.t_campiNomeCampo.Text + '", "' +
                      dm_form.t_campiDbName.Text + '", "' +
                      dm_form.t_campiPicture.Text + '");';
            Memo2.Append(buffer);
          end;
          dm_form.t_campi.Next;
        until dm_form.t_campi.EOF;
        Memo2.Append('');
        // ______________________________________________ Loop on table keys ___
        chiaveDef := '';
        dm_form.t_indiciTesta.First;
        repeat
          if dm_form.t_indiciTestaNomeKey.Value <> '' then
          begin
            // ________________________________ Set index name in definition ___
            buffer := chr(9) + 'o2def::index("' +
                      dm_form.t_indiciTestaNomeKey.Text + '", ';
            // ________________________________________ Loop on key segments ___
            dm_form.t_indici.First;
            repeat
              if dm_form.t_indiciId_segmento.Text <> '' then
              begin
                // ___________________________ Skip first token adding comma ___
                if StrToInt(dm_form.t_indiciId_segmento.Text) > 1 then
                begin
                  buffer := buffer + ', ';
                end;
              end;
              // ____________________________ Add segment and direction pair ___
              buffer := buffer + '"' + dm_form.t_indiciSegmento.Text + '","' +
                        dm_form.t_indiciDirezione.Text + '"';
              dm_form.t_indici.Next;
            until dm_form.t_indici.EOF;
            // ___________________________ Close index definition and append ___
            buffer := buffer + ');';
            Memo2.Append(buffer);
          end;
          dm_form.t_indiciTesta.Next;
        until dm_form.t_indiciTesta.EOF;
        Memo2.Append('');
      end;
      if (TIPO = 'DEMO') and (contatore_per_demo = 30) then
      begin
        ShowMessage('Demo Edition. Exported only 30 tables');
        Break;
      end;
    end;
    Inc(contatore_per_demo);
    dm_form.t_tabelle.Next;
  until dm_form.t_tabelle.EOF;
  Memo2.Append('?>');
  // ___________________________________________ Save tables repository file ___
  Memo2.SaveToFile(f_work.userdir + dm_form.t_applicazioneTables.Value);
  dm_form.t_tabelle.SaveToFile(f_work.userdir + '__source__\tables.cache',
                               dfXML);
  dm_form.t_campi.SaveToFile(f_work.userdir + '__source__\fields.cache',
                             dfXML);
  dm_form.t_indicitesta.SaveToFile(f_work.userdir + '__source__\indexes.cache',
                                   dfXML);
  dm_form.t_indici.SaveToFile(f_work.userdir + '__source__\segments.cache',
                              dfXML);
  f_import.tables_import.Execute;
end;

procedure Tf_export.menu_exportExecute(Sender: TObject);
var
  buffer, visibile, attivo: string;
begin
  Memo2.Clear;
  Memo2.Append('<?php');
  Memo2.Append('// --- Menu items ---');
  with dm_form do
  begin
    t_menu.Filtered := False;
    t_menu.First;
    repeat
      if t_menuid.Value <> '' then
      begin
        buffer := 'o2def::menu_item("' + t_menuid_padre.Value + '", "' +
                                    LeftStr(t_menutipo.Value, 1) + '", "' +
                                    t_menuid.Value + '", "' +
                                    t_menulabel.Value + '", "' +
                                    t_menuvalore.Value + '", true, true, "' +
                                    t_menuicona.Value  + '");';
        Memo2.Append(buffer);
      end;
      t_menu.Next;
    until t_menu.EOF;
    Memo2.Append('?>');
    Memo2.SaveToFile(f_work.userdir + t_applicazionemenus.Value);
    t_menu.Filtered := True;
  end;
end;


procedure Tf_export.models_exportExecute(Sender: TObject);
var
  mType: string;
begin
  // ________________________________________________________ Start PHP file ___
  Memo2.Clear;
  Memo2.Append('<?php');
  // ___________________________________________________ Loop on data models ___
  dm_form.t_modelli.First;
  repeat
    if dm_form.t_modelliidModello.Value <> '' then
    begin
      mType := strleft(dm_form.t_modelliTipo_dato.Value, 1);
      // ___________________________________________ Change from Time to Ora ___
      if mType = 'T' then
      begin
        mType := 'O'
      end;
      // ______________________________________ Single model definition code ___
      Memo2.Append('o2def::model("' + dm_form.t_modelliidModello.Value +
                   '", "' + mType + '", "' + dm_form.t_modelliMaschera.Value +
                   '", "' + dm_form.t_modelliNomePrgScelta.Value + '");');
    end;
    dm_form.t_modelli.Next;
  until dm_form.t_modelli.EOF;
  // ________________________________________________________ Close PHP file ___
  Memo2.Append('?>');
  // _________________________________________ Export data models repository ___
  Memo2.SaveToFile(f_work.userdir + dm_form.t_applicazioneModels.Value);
  // ____________________________________________ Save models table to cache ___
  If not(DirectoryExists(f_work.userdir + '__source__\')) then
  begin
    CreateDir(f_work.userdir + '__source__\');
  end;
  dm_form.t_modelli.SaveToFile(f_work.userdir + '__source__\models.cache',
                               dfXML);
end;


function Tf_export.prepara_expression(exp_interfaccia: string;
                                      nomeprg: string;
                                      retvirgolette: Boolean=False): string;
var
  tmp: string;
begin
  if pos('[o2exp_', exp_interfaccia) > 0 then
  begin
    tmp := copy(trim(exp_interfaccia), 2, length(trim(exp_interfaccia)) - 2);
    tmp := StringReplace(tmp, 'o2exp_', nomeprg + '_exp_', [rfReplaceAll]);
    if retvirgolette then
    begin
      Result := '"' + trim(tmp) + '()"'
    end
    else
    begin
      Result := trim(tmp) + '()'
    end;
  end
  else
  begin
    Result := '"' + exp_interfaccia + '"'
  end;

end;


procedure Tf_export.appvars_exportExecute(Sender: TObject);
var
  exp1, exp2, buffer: string;
begin
  Memo2.Clear;
  Memo2.Append('<?php');
  dm_form.t_variabili_app.First;
  // _________________________________________ Loop on application variables ___
  while not (dm_form.t_variabili_app.EOF) do
  begin
    exp1   := dm_form.t_variabili_appalias.Value;
    exp2   := dm_form.t_variabili_apptipo.Value;
    buffer := 'o2def::appvar("' + exp1 + '", "' + exp2 + '");';
    Memo2.Append(buffer);
    dm_form.t_variabili_app.Next;
  end;
  Memo2.Append('?>');
  Memo2.SaveToFile(f_work.userdir + dm_form.t_applicazioneappvars.Value);

end;


procedure Tf_export.labels_exportExecute(Sender: TObject);
var
  exp1, exp2, buffer: string;
begin
  // labels

  Memo2.Clear;

  Memo2.Append('<?php');


  dm_form.t_labels.First;

  while not (dm_form.t_labels.EOF) do
  begin

    exp1 := dm_form.t_labelsid.AsString;
    exp2 := dm_form.t_labelslabel.Value;

    buffer := '$labelslist[' + exp1 + '] = "' + exp2 + '";';

    Memo2.Append(buffer);
    dm_form.t_labels.Next;
  end;

  Memo2.Append('?>');
  Memo2.SaveToFile(f_work.userdir + 'labels.rep');

end;

function Tf_export.prepara_css(valore, nomeprg: string): string;
var temp : string;
begin

//
           if valore <> '' then
              begin
                 temp := '"' + valore + '"';
                 if leftstr(temp, 7) = '"[o2exp' then
                 begin
                  temp := nomeprg + '_exp_' + leftstr(extractword(2, temp, ['_']), length(
                  extractword(2, temp, ['_'])) - 2) + '()'
                 end;
                 Result:=temp;
              end
              else Result:= '';
end;


function Tf_export.prepara_expression_num(exp_num: integer;
                                          nomeprg: string): string;
begin
  if exp_num > 0 then
  begin
    Result:= nomeprg + '_exp_' + IntToStr(exp_num) + '()'
  end
  else
  begin
    Result := 'null';
  end;

end;


procedure Tf_export.prgsavcdsExecute(Sender: TObject; nomeprg: string);
var dircds : string;
begin

  dircds:='';
  if (FileExists(f_work.prgdir + nomeprg + '.prg')) then dircds:=f_work.prgdir +'__source__\'+ nomeprg +'\';
  if (FileExists(f_work.userdir + nomeprg + '.prg')) then dircds:=f_work.userdir +'__source__\'+ nomeprg +'\';

  If not(DirectoryExists(f_work.prgdir +'__source__\')) then CreateDir(f_work.prgdir +'__source__\');
  If not(DirectoryExists(f_work.userdir +'__source__\')) then CreateDir(f_work.userdir +'__source__\');
  If not(DirectoryExists(dircds)) then CreateDir(dircds);

     with dm_form do
      begin
//      t_programmi.MergeChangeLog;

      t_programmi.SaveToFile(dircds + 'program.cds', dfBinary);
      t_task.SaveToFile(dircds + 'view.cds', dfBinary);
      t_select.SaveToFile(dircds + 'select.cds', dfBinary);
      t_usa_file.SaveToFile(dircds + 'tab.cds', dfBinary);
      t_union.SaveToFile(dircds + 'link.cds', dfBinary);
      t_azioni.SaveToFile(dircds + 'action.cds', dfBinary);
//      t_azionifigli.SaveToFile(dircds + 'subaction.cds', dfBinary);
      t_operazioni.SaveToFile(dircds + 'operation.cds', dfBinary);
      t_espressioni.SaveToFile(dircds + 'expression.cds', dfBinary);
      t_aggreg.SaveToFile(dircds + 'aggregation.cds', dfBinary);
      t_variabili_prg.SaveToFile(dircds + 'prgvar.cds', dfBinary);

      t_parametri.SaveToFile(dircds + 'parameter.cds', dfBinary);
      t_form.SaveToFile(dircds + 'form.cds', dfBinary);
      t_controlliform.SaveToFile(dircds + 'control.cds', dfBinary);
      t_input_output.SaveToFile(dircds + 'io.cds', dfBinary);
      t_report.SaveToFile(dircds + 'report.cds', dfBinary);
      t_reportfield.SaveToFile(dircds + 'reportfield.cds', dfBinary);
      end;



end;

procedure Tf_export.FormCreate(Sender: TObject);
begin
  Memo2:=TStringList.Create;
  Memo3:=TStringList.Create;
end;

end.
