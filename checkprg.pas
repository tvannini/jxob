unit checkprg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, XPStyleActnCtrls, ActnMan, DBClient, ComCtrls, JclStrings, DB, jbstr,
  StdCtrls, Buttons, Menus, regexpr, shellAPI, DosCommand, StrUtils;

type
  Tf_checkprg = class(TForm)
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    ActionList1: TActionList;
    check_expressions: TAction;
    clona_tabelle: TAction;
    check_globale: TAction;
    check_exp_php: TAction;
    termina_comando: TAction;
    check_property: TAction;
    Memo2: TMemo;
    check_param: TAction;
    check_var: TAction;
    check_view: TAction;
    Exit1: TMenuItem;
    check_form: TAction;
    check_azioni: TAction;
    memo_posizioni: TAction;
    check_io: TAction;
    check_protocol: TAction;
    ripristina_posizioni: TAction;
    CheckExpNotUsed: TAction;
    btn_elimina_expnotused: TButton;
    DosCMD: TDosCommand;
    function errview(testo: string): boolean;
    function check_field(testo: string): boolean;
    function errazione(testo: string; necessaria: boolean): boolean;
    function check_espressione(testo: string): boolean;
    function check_o2expvalore(testo: string): boolean;
    function err_o2par(testo: string): boolean;
    function errmodello(testo: string): boolean;
    function errtabella(testo: string): boolean;
    function errchiave(testo: string): boolean;
    function errcampo(tabella: string; campo: string): boolean;
    function errexp(testo: string; necessaria : boolean = false): boolean;
    function errcss(testo: string): boolean;
    function errctrlref(testo: string): boolean;
    function errprgname(testo: string): boolean;
    function errio(testo: string): boolean;
    function errprotocol(testo: string): boolean;
    function errmenu(testo: string): boolean;


    procedure check_expressionsExecute(Sender: TObject);
    procedure clona_tabelleExecute(Sender: TObject);
    procedure check_globaleExecute(Sender: TObject);
    procedure check_propertyExecute(Sender: TObject);
    procedure check_paramExecute(Sender: TObject);
    procedure check_varExecute(Sender: TObject);
    procedure check_viewExecute(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure check_formExecute(Sender: TObject);
    procedure check_azioniExecute(Sender: TObject);
    procedure memo_posizioniExecute(Sender: TObject);
    procedure check_ioExecute(Sender: TObject);
    procedure check_protocolExecute(Sender: TObject);
    procedure ripristina_posizioniExecute(Sender: TObject);
    procedure CheckExpNotUsedExecute(Sender: TObject);
    procedure btn_elimina_expnotusedClick(Sender: TObject);
    procedure checkExpSyntax(Sender: TObject);

  private

    temp_prg, temp_parametri, temp_var, temp_view, temp_usafile, temp_select, temp_union,
    temp_espressioni, temp_operazioni, temp_form, temp_controlliform, temp_table:
    TClientDataSet;
    problemi: string;
    node_temp: TTreeNode;
    contatore_errori: integer;
    r: TRegExpr;
    r2: TRegExpr;

    { Private declarations }
  public
    pos_1, pos_2, pos_3, pos_4, pos_5, pos_6, pos_7, pos_8, pos_9, pos_10, pos_11, pos_12, pos_13, pos_14, pos_15, pos_16: TBookmark;
    ErrorsFound: Boolean;
    
    { Public declarations }
  end;

var
  f_checkprg: Tf_checkprg;

implementation

uses dm, work, DateUtils, sceltacampiview, scelta_css, import;

{$R *.dfm}


function Tf_checkprg.check_espressione(testo: string): boolean;
var
  appoggio: string;
begin
  appoggio := testo;
  if (appoggio = '0') or (appoggio = '') then
  begin
    Result := True
  end
  else begin
    Result := dm_form.t_espressioni.Locate('idexp', appoggio, [])
  end;
end;

function Tf_checkprg.check_field(testo: string): boolean;
var
  vista, campo: string;

begin

  vista:= trim(StrMid(ExtractWord(1,testo,[chr(129)]), 2, 100));

  campo:= ExtractWord(2,testo,[chr(129)]);

  if not(errview(vista)) then
  begin
    //caso variabile di applicazione
    if pos('_o2SESSION', testo) > 0 then
    begin
      Result := dm_form.t_variabili_app.Locate('alias', campo, []);
      exit;
    end;

    //caso variabile di programma
    if pos('prg§_§var', testo) > 0 then
    begin
      Result := dm_form.t_variabili_prg.Locate('alias', campo, []);
      exit;
    end;

    //caso campo di vista
    dm_form.t_task.Locate('nome',vista,[]);
    Result := dm_form.t_select.Locate('con_nome', campo, []);
  end
  else begin
    Result := False
  end;

end;

function Tf_checkprg.errview(testo: string): boolean;
var
  appoggio: string;
begin
  appoggio := StringReplace(testo, chr(127), '', [rfReplaceAll]);
  if (appoggio = '_o2SESSION') or (appoggio = 'prg§_§var') then
  begin
    Result := False
  end
  else begin
    Result := dm_form.t_task.Lookup('nome', appoggio, 'nome') <> appoggio
  end;
end;


procedure Tf_checkprg.check_expressionsExecute(Sender: TObject);
var
  stringa_temp: string;
var
  idexp: integer;

begin

  temp_espressioni.First;

  while not (temp_espressioni.EOF) do
  begin
    idexp := temp_espressioni.FieldValues['idexp'];
    if idexp = 0 then
    begin
      Memo2.Lines.Append('Expression 0 not allowed')
    end;
    if temp_espressioni.FieldValues['return'] <> '' then
    begin
      r := TRegExpr.Create;
      r.ModifierI := True;

      // controlla o2val e o2pre   e o2zero
      r.Expression := 'o2(val|pre|zero)\(\s*\x27(\w*|prg\§_\§var)\x27,\s*\x27(\w*)\x27\)';
      stringa_temp := temp_espressioni.FieldValues['return'];
      if r.Exec(stringa_temp) then
      begin
        repeat
          if check_o2expvalore(r.Match[0]) then
          begin
            Memo2.Lines.Append('Expression ' +
              IntToStr(idexp) + ': Field not found: ' + r.Match[0])
          end;
        until not (r.ExecNext)
      end;

      // controlla o2par
      r.Expression := 'o2par\((.*?)\)';
      stringa_temp := temp_espressioni.FieldValues['return'];
      if r.Exec(stringa_temp) then
      begin
        repeat
          if err_o2par(r.Match[0]) then
          begin
            Memo2.Lines.Append('Expression ' +
              IntToStr(idexp) + ': Parameter not found: ' + r.Match[0])
          end;
        until not (r.ExecNext)
      end;

      // controlla o2view
      r.Expression := 'o2view_(\w*)\((\x27|\")(\w*)(\x27|\")';
      stringa_temp := temp_espressioni.FieldValues['return'];
      if r.Exec(stringa_temp) then
      begin
        repeat
          if errview(r.Match[3]) then
          begin
            Memo2.Lines.Append('Expression ' +
              IntToStr(idexp) + ': View not found: ' + r.Match[3])
          end;
        until not (r.ExecNext)
      end;


    end;


    if temp_espressioni.FieldValues['expr'] <> '' then
    begin
      r := TRegExpr.Create;
      r.ModifierI := True;
      r.Expression := 'o2(val|pre|zero)\(\s*\x27(\w*|prg\§_\§var)\x27,\s*\x27(\w*)\x27\)';
      stringa_temp := temp_espressioni.FieldValues['expr'];

      if r.Exec(stringa_temp) then
      begin
        repeat
          if (check_o2expvalore(r.Match[0])) then
          begin
            Memo2.Lines.Append('Expression ' +
            IntToStr(idexp) + ': Field not found: ' + r.Match[0])
          end;
        until not (r.ExecNext)
      end;

      // controlla o2view
      r.Expression := 'o2view_(\w*)\((\x27|\")(\w*)(\x27|\")';
      if r.Exec(stringa_temp) then
      begin
        repeat
          if errview(r.Match[3]) then
          begin
            Memo2.Lines.Append('Expression ' +
              IntToStr(idexp) + ': View not found: ' + r.Match[3])
          end;
        until not (r.ExecNext)
      end;


        // controlla o2par
      r.Expression := 'o2par\((.*?)\)';
      stringa_temp := temp_espressioni.FieldValues['expr'];
      if r.Exec(stringa_temp) then
      begin
        repeat
          if err_o2par(r.Match[0]) then
          begin
            Memo2.Lines.Append('Expression ' +
              IntToStr(idexp) + ': Parameter not found: ' + r.Match[0])
          end;
        until not (r.ExecNext)
      end;

    end;

    // verifica espressione senza return
     if temp_espressioni.FieldValues['return'] = '' then
     begin
          Memo2.Lines.Append('Expression ' +  IntToStr(idexp) + ': Return is empty');
     end;

    //verifica se espressione non usata

    temp_espressioni.Next;
  end;

  checkExpSyntax(Sender);

end;


procedure Tf_checkprg.checkExpSyntax(Sender: TObject);
var
  idexp, line, tooLate: integer;
  buffer: TStringList;
  cmdOut: TStringList;
  txtOut: String;
begin

  buffer := TStringList.Create;
  buffer.Clear;
  buffer.add('<?php');

  temp_espressioni.First;
  while not (temp_espressioni.EOF) do
  begin
    idexp := temp_espressioni.FieldValues['idexp'];
    buffer.Add('function jxchex_' + IntToStr(idexp) + '() {');
    buffer.Add(temp_espressioni.FieldValues['expr']);
    buffer.Add('return (' + temp_espressioni.FieldValues['return'] + ');');
    buffer.Add('}');
    temp_espressioni.Next;
  end;
  buffer.add('?>');
  buffer.SaveToFile(f_work.tempdir + 'check_exps.tmp');
  // ___________________________________________ Execute PHP to check syntax ___
  cmdOut := TStringList.Create;
  cmdOut.Clear;
  dosCMD.OutputLines := cmdOut;
  dosCMD.CommandLine := ExtractFileDir(Application.ExeName) +
                        '\php.exe -c ' + ExtractFileDir(Application.ExeName) +
                        ' -l ' + f_work.tempdir + 'check_exps.tmp';
  dosCMD.Execute;
  tooLate := 0;
  while ((cmdOut.Text = '') and (tooLate < 100)) do
  begin
    tooLate := tooLate + 1;
    Sleep(10);
  end;
  // ______________________________________ Timeout expired for syntax check ___
  if tooLate > 99 then
  begin
    ShowMessage('Syntax check takes too long: not checked!');
    Exit;
  end;
  // ________________________________________________________ If error found ___
  if Copy(cmdOut.Text, 1, 25) <> 'No syntax errors detected' then
  begin
    buffer.Clear;
    buffer.LoadFromFile(f_work.tempdir + 'check_exps.tmp');
    // ____________________________________________ Get line error in buffer ___
    txtOut := Copy(cmdOut.Text,
                  Pos('check_exps.tmp on line ', cmdOut.Text) + 23,
                  20);
    line := StrToInt(Trim(Copy(txtOut, 0, Pos(#10, txtOut)))) - 1;
    while Copy(buffer.Strings[line], 0, 16) <> 'function jxchex_' do
    begin
      line := line - 1;
    end;
    // __________________________________ Get exp-ID and add error to output ___
    Memo2.Lines.Append('Expression ' +
                       Copy(buffer.Strings[line],
                            17,
                            Pos('(', buffer.Strings[line]) - 17) +
                       ': syntax error in expression');
  end;

end;


procedure Tf_checkprg.clona_tabelleExecute(Sender: TObject);
begin
  with dm_form do
  begin

    // program property
    temp_form := TClientDataSet.Create(nil);
    temp_form.CloneCursor(t_programmi, True, False);

    // parametri
    temp_parametri := TClientDataSet.Create(nil);
    temp_parametri.CloneCursor(t_parametri, True, False);

    // variabili prg
    temp_var := TClientDataSet.Create(nil);
    temp_var.CloneCursor(t_variabili_prg, True, False);

    // view
    temp_view := TClientDataSet.Create(nil);
    temp_view.CloneCursor(t_task, True, False);


    // form
    temp_form := TClientDataSet.Create(nil);
    temp_form.CloneCursor(t_form, True, False);

    // expression
    temp_espressioni := TClientDataSet.Create(nil);
    temp_espressioni.CloneCursor(t_espressioni, True, False);



    // operazioni
    temp_operazioni := TClientDataSet.Create(nil);
    t_operazioni.MasterSource := nil;
    temp_operazioni.CloneCursor(t_operazioni, True, False);
    t_operazioni.MasterSource := ds_azioni;

    // controlliform
    temp_controlliform := TClientDataSet.Create(nil);
    t_controlliform.MasterSource := nil;
    temp_controlliform.CloneCursor(t_controlliform, True, False);
    t_controlliform.MasterSource := ds_form;

  end;
end;

function Tf_checkprg.check_o2expvalore(testo: string): boolean;
var
  appoggio, vista, campo: string;
  riftask: integer;
begin
  // separa view e field
  appoggio := trim(StrAfter('(', testo));
  appoggio := StringReplace(appoggio, '(', '', [rfReplaceAll]);
  appoggio := StringReplace(appoggio, ')', '', [rfReplaceAll]);
  appoggio := StringReplace(appoggio, chr(39), '', [rfReplaceAll]);
  appoggio := StringReplace(appoggio, '"', '', [rfReplaceAll]);

  vista := ExtractWord(1, appoggio, [',']);
  campo := ExtractWord(2, appoggio, [',']);

 // showmessage(chr(127) + vista + chr(129) + campo);
  //li riaggancia come per i controlli e riutilizza la routine
  Result := errctrlref(chr(127) + vista + chr(129) + campo);

end;


procedure Tf_checkprg.check_globaleExecute(Sender: TObject);
begin
  ErrorsFound := False;
  btn_elimina_expnotused.Visible := False;
  try
    Screen.Cursor := crHourGlass;
    Memo2.Clear;
    memo_posizioni.Execute;
    clona_tabelleExecute(self);
    check_property.Execute;
    check_param.Execute;
    check_var.Execute;
    check_view.Execute;
    check_form.Execute;
    check_expressions.Execute;
    check_azioni.Execute;
    check_io.Execute;
    check_protocol.Execute;
    ripristina_posizioni.Execute;
    if Memo2.Lines.Count = 0 then
    begin
      Memo2.Lines.Append('');
      Memo2.Lines.Append('   Program is OK.');
    end
    else if Memo2.Lines.Count = 1 then
    begin
      Memo2.Lines.Insert(0, '');
      Memo2.Lines.Insert(1, '   ATTENTION! One error found:');
      Memo2.Lines.Insert(2, '');
      ErrorsFound := True;
    end
    else
    begin
      Memo2.Lines.Insert(0, '');
      Memo2.Lines.Insert(1, '   ATTENTION! ' + IntToStr(Memo2.Lines.Count - 1) +
                            ' errors found:');
      Memo2.Lines.Insert(2, '');
      ErrorsFound := True;
    end;
  finally
    Screen.Cursor := crDefault;
  end;

end;


procedure Tf_checkprg.check_propertyExecute(Sender: TObject);
begin
  // ____________________________________________________ Check start action ___
  if errazione(dm_form.t_programmiref.Value, False) then
  begin
    Memo2.Lines.Append('Initial action does not exist');
  end;
end;


procedure Tf_checkprg.check_paramExecute(Sender: TObject);
begin

  with dm_form do
  begin
    // __________________________________________ Check parameter data-model ___
    temp_parametri.First;
    while not temp_parametri.EOF do
    begin
      if (temp_parametri.FieldValues['modello'] = null) or
         (temp_parametri.FieldValues['modello'] = '')  then
      begin
        Memo2.Lines.Append('Missing model for parameter (' +
                           IntToStr(temp_parametri.FieldValues['id']) + ') "' +
                           VarToStr(temp_parametri.FieldValues['nome']) + '"');
      end
      else if (errmodello(temp_parametri.FieldValues['modello'])) then
      begin
        Memo2.Lines.Append('Model for parameter (' +
                           IntToStr(temp_parametri.FieldValues['id']) + ') "' +
                           VarToStr(temp_parametri.FieldValues['nome']) +
                           '" does not exists')
      end;
      temp_parametri.Next;
    end;
  end;

end;

function Tf_checkprg.errmodello(testo: string): boolean;
begin

  if testo = '' then
  begin
    Result:=true;
    Exit;
  end;
  if testo = dm_form.t_modelli.Lookup('idmodello', testo, 'idmodello') then
  begin
    Result := False;
  end
  else begin
    Result := True;
  end;

end;

procedure Tf_checkprg.check_varExecute(Sender: TObject);
begin

  with dm_form do
  begin
    // ______________________________ Loop on variables and check data-model ___
    temp_var.First;
    while not temp_var.EOF do
    begin
      if (temp_var.FieldValues['picture'] = null) or
         (temp_var.FieldValues['picture'] = '')  then
      begin
        Memo2.Lines.Append('Missing model for variable "' +
                           temp_var.FieldValues['alias'] + '"');
      end
      else if errmodello(temp_var.FieldValues['picture']) then
      begin
        Memo2.Lines.Append('Model in variable "' +
                           temp_var.FieldValues['alias'] + '" does not exist');
      end;
      temp_var.Next;
    end;
  end;

end;

procedure Tf_checkprg.check_viewExecute(Sender: TObject);
var
  n, i: integer;
  ConcatText: TStringList;
var
  nome_view: string;
begin

  ConcatText := TStringList.Create;

  //carica listview delle viste in o2viewmodels
  f_scelta_campiview.cosa_cerco := 'elenco_view';
  f_scelta_campiview.carica_lista.Execute;

  with dm_form do
  begin
    // _______________________________________________________ Loop on views ___
    t_task.First;
    while not t_task.EOF do
    begin
      nome_view := t_tasknome.Value;
      if errazione(t_taskrecordprefix.Value, False) then
      begin
        Memo2.Lines.Append('The record prefix action does not exist in view ' +
                           nome_view);
      end;
      if errazione(t_taskrecordsufix.Value, False) then
      begin
        Memo2.Lines.Append('The record suffix action does not exist in view ' +
                           nome_view);
      end;
      // _________________________________________ Check tables used in view ___
      t_usa_file.First;
      n := 0;
      while not t_usa_file.EOF do
      begin
        // _______________________________________ Check table level in view ___
        if (t_usa_file.FieldValues['tipo'] <> 'Main') and
           (t_usa_file.FieldValues['tipo'] <> 'Link') and
           (t_usa_file.FieldValues['tipo'] <> 'View') then
        begin
          Memo2.Lines.Append('Unknown level in view "' + nome_view +
                             '" for table "' + t_usa_filecon_nome.AsString +
                             '"');
        end;
        // ____________________ Check only one Main/View table level in view ___
        if ((t_usa_file.FieldValues['tipo'] = 'Main') or
            (t_usa_file.FieldValues['tipo'] = 'View')) then
        begin
          Inc(n)
        end;
        if n > 1 then
        begin
          Memo2.Lines.Append('Only one Main/View table is allowed in view "' +
                             nome_view + '"');
        end;
        // _________________________ Check tables and keys existance in view ___
        if (t_usa_file.FieldValues['tipo'] = 'Main') or
           (t_usa_file.FieldValues['tipo'] = 'Link') then
        begin
          if errtabella(t_usa_filetabella.AsString) then
          begin
            Memo2.Lines.Append('Table "' + t_usa_filetabella.AsString +
                               '" in view "' + nome_view + '" does not exist');
          end;
          // _________________________ Locate on table record to check index ___
          t_tabelle.Locate('nome', t_usa_filetabella.AsString, []);
          if errchiave(t_usa_filechiave.AsString) then
          begin
            Memo2.Lines.Append('Index does not exist for table "' +
              t_usa_filetabella.AsString + '" in view "' + nome_view + '"');
          end;
        end;

        // controlla esistenza view e chiave di sort della view
        if (t_usa_filetipo.Value = 'View') then
        begin
          if f_scelta_campiview.ListBox1.Items.IndexOf(
            t_usa_filetabella.Value) = -1 then
          begin
            Memo2.Lines.Append('View ' + t_usa_filetabella.Value + ' does not exist in view ' +
              nome_view)
          end;

        end;

        if errexp(t_usa_filedbname_exp.AsString, false) then Memo2.Lines.Append('View: ' + nome_view +'. Dbname expression not found on table '+ t_usa_filetabella.Value);
        if errexp(t_usa_filetablename_exp.AsString, false) then Memo2.Lines.Append('View: ' + nome_view +'. Tablename expression not found on table '+ t_usa_filetabella.Value);

        // unions
        t_union.First;
        while not t_union.EOF do
        begin
          // esistenza campo d'aggancio
          if (errcampo(t_usa_filetabella.Value, t_unioncampo.Value)) then
          begin
            Memo2.Lines.Append('Field ' + t_unioncampo.Value + ' does not exist in Join ' +
              t_usa_filetabella.Value + ' - view:' + nome_view)
          end;

          //esistenza espressioni min max not like
          if (errexp(t_unionrangemin.AsString)) then
          begin
            Memo2.Lines.Append('RangeMin Expression ' + t_unionrangemin.AsString +
              ' not found in Join ' + t_usa_filetabella.Value + ' - view:' + nome_view)
          end;

          if (errexp(t_unionrangemin.AsString)) then
          begin
            Memo2.Lines.Append('RangeMax Expression ' + t_unionrangemax.AsString +
              ' not found in Join ' + t_usa_filetabella.Value + ' - view:' + nome_view)
          end;

          if (errexp(t_unionrangemin.AsString)) then
          begin
            Memo2.Lines.Append('RangeNot Expression ' + t_unionnot.AsString +
              ' not found in Join ' + t_usa_filetabella.Value + ' - view:' + nome_view)
          end;

          if (errexp(t_unionrangemin.AsString)) then
          begin
            Memo2.Lines.Append('RangeLike Expression ' + t_unionlike.AsString +
              ' not found in Join ' + t_usa_filetabella.Value + ' - view:' + nome_view)
          end;

          t_union.Next
        end;

        t_usa_file.Next
      end;

      // ________________________________ Check selected fields and formulas ___
      t_select.First;
      while not t_select.EOF do
      begin
        if (t_selecttipo.Value <> 'Select') and
           (t_selecttipo.Value <> 'Calculated') and
           (t_selecttipo.Value <> 'SQL') then
        begin
          Memo2.Lines.Append('Missing select row type in view "' + nome_view +
                             '", line ' + t_selectidcampo.AsString);
        end;
        // ________________ Selected fields: check table and field existance ___
        if (t_selecttipo.Value = 'Select') and
           (t_usa_file.Lookup('con_nome',
                              t_selecttabella.Value,
                              'tipo') <> 'View') then
        begin
          // ________________________ Check table existance in db-repository ___
          if t_usa_file.Lookup('con_nome',
                               t_selecttabella.Value,
                               'con_nome') <> t_selecttabella.Value then
          begin
            Memo2.Lines.Append('Check table in select: view "' + nome_view +
                               '" row ' + t_selectidcampo.AsString);
          end;

          // esistenza campo in dbrepository (prima fa la locate della tabella)
          t_tabelle.Locate('Nome', t_usa_file.Lookup('con_nome',
            t_selecttabella.Value, 'tabella'), []);
          if t_campi.Lookup('nomecampo', t_selectcampo.Value, 'nomecampo') <>
            t_selectcampo.Value then
          begin
            Memo2.Lines.Append('Check field in select: Row '
              + t_selectidcampo.AsString + ' View:' + nome_view);
          end;
        end;

        // _______________________________ Check model existance in virtuals ___
        if (t_selecttipo.Value = 'Calculated') or
            (t_selecttipo.Value = 'SQL') then
        begin
          // ________________________ Check table existance in db-repository ___
          if t_modelli.Lookup('idmodello',
                              t_selectcampo.Value,
                              'idmodello') <> t_selectcampo.Value then
          begin
            Memo2.Lines.Append('Check data model in ' + t_selecttipo.Value +
                               ' field: view "' + nome_view +
                               '" row ' + t_selectidcampo.AsString);
          end;
        end;

        // _______________________________ Check init expression in formulas ___
        if (t_selecttipo.Value = 'Calculated') then
        begin
          if (t_selectinit.AsString = '') or (t_selectinit.AsString = '0') then
          begin
            Memo2.Lines.Append('Missing definition expression for formula "' +
                               t_selectcon_nome.Value + '" in view "' +
                               nome_view + '" row ' + t_selectidcampo.AsString);
          end
          else if errexp(t_selectinit.AsString) then
          begin
            Memo2.Lines.Append('Expression ' + t_selectinit.AsString +
                               ' not found for definition of formula "' +
                               t_selectcon_nome.Value + '" in view "' +
                               nome_view + '" row ' + t_selectidcampo.AsString);
          end;
        end
        // ______________________ Check fields and expressions in CONCAT-SQL ___
        else if t_selecttipo.Value = 'SQL' then
        begin
          // ___________________________________________________ JXSQL field ___
          if t_selectsql.AsString = '' then
          begin
            // ________________________ Check expression in JXSQL definition ___
            if ((t_selectinit.AsString <> '') and
                (t_selectinit.AsString <> '0')) and
               errexp(t_selectinit.AsString, True) then
            begin
              Memo2.Lines.Append('Expression ' + t_selectinit.AsString +
                                 ' not found in definition of SQL-formula "' +
                                 t_selectcon_nome.Value + '" in view "' +
                                 nome_view + '" row ' +
                                 t_selectidcampo.AsString);
            end;
          end
          // _____________________________________________ CONCAT definition ___
          else
          begin
            // ____________________ Check expresion use in concat text lines ___
            ConcatText.Clear;
            ConcatText.Text := t_selectsql.AsString;
            for i := 0 to ConcatText.Count - 1 do
            begin
              if Copy(ConcatText.Strings[i], 1, 1) = #127 then
              begin
                // ________________________ Check field in CONCAT definition ___
                if t_select.Lookup('con_nome',
                                   Copy(ConcatText.Strings[i], 2, 200),
                                   'con_nome') <>
                                   Copy(ConcatText.Strings[i], 2, 200) then
                begin
                  Memo2.Lines.Append('Field "' +
                                     Copy(ConcatText.Strings[i], 2, 200) +
                                    '" not found in definition of SQL-formula "'
                                     + t_selectcon_nome.Value + '" in view "' +
                                     nome_view + '" row ' +
                                     t_selectidcampo.AsString);
                end;
              end
              else
              begin
                // ___________________ Check expression in CONCAT definition ___
                if errexp(ConcatText.Strings[i], True) then
                begin
                  Memo2.Lines.Append('Expression ' + ConcatText.Strings[i] +
                                     ' not found in definition of SQL-formula "'
                                     + t_selectcon_nome.Value + '" in view "' +
                                     nome_view + '" row ' +
                                     t_selectidcampo.AsString);
                end;
              end;
            end;
          end;
        end;
        // _________________________________ Check MIN expression in selects ___
        if (errexp(t_selectrangemin.AsString)) then
        begin
          Memo2.Lines.Append('Range Minimum expression ' +
                             t_selectrangemin.AsString +
                             ' not found for field "' +
                             t_selectcon_nome.AsString +
                             '" in view "' + nome_view +
                             '" row ' + t_selectidcampo.AsString);
        end;
        // _________________________________ Check MAX expression in selects ___
        if (errexp(t_selectrangemax.AsString)) then
        begin
          Memo2.Lines.Append('Range Maximum expression ' +
                             t_selectrangemax.AsString +
                             ' not found for field "' +
                             t_selectcon_nome.AsString +
                             '" in view "' + nome_view +
                             '" row ' + t_selectidcampo.AsString);
        end;
        // _________________________________ Check NOT expression in selects ___
        if (errexp(t_selectnot.AsString)) then
        begin
          Memo2.Lines.Append('Range Not expression ' +
                             t_selectnot.AsString +
                             ' not found for field "' +
                             t_selectcon_nome.AsString +
                             '" in view "' + nome_view +
                             '" row ' + t_selectidcampo.AsString);
        end;
        // ________________________________ Check LIKE expression in selects ___
        if (errexp(t_selectlike.AsString)) then
        begin
          Memo2.Lines.Append('Range Like expression ' +
                             t_selectlike.AsString +
                             ' not found for field "' +
                             t_selectcon_nome.AsString +
                             '" in view "' + nome_view +
                             '" row ' + t_selectidcampo.AsString);
        end;
        t_select.Next
      end;

      //funzioni di aggregazione
      t_aggreg.First;
      while not t_aggreg.EOF do
      begin
        // controlla se operatore corretto
        if (t_aggregoperatore.Value <> 'SUM') and
          (t_aggregoperatore.Value <> 'MAX') and
          (t_aggregoperatore.Value <> 'MIN') and
          (t_aggregoperatore.Value <> 'AVG') then
        begin
          Memo2.Lines.Append('Incorrect aggregate function: ' +
            t_aggregoperatore.Value + ' - View:' + nome_view)
        end;

        // controlla se campo collegato esistente
        if t_select.Lookup('con_nome', t_aggregcampo_view.Value, 'con_nome') <>
          t_aggregcampo_view.Value then
        begin
          Memo2.Lines.Append('Aggregate function: Field ' +
            t_aggregcampo_view.Value + ' does not exists.' + ' View:' + nome_view)
        end;


        // controlla se campo di result (virtual) esista
        dm_form.t_variabili_prg.Filtered:=false;
        if t_variabili_prg.Lookup('alias', t_aggregresult_var.Value, 'alias') <>
          t_aggregresult_var.Value then
        begin
          Memo2.Lines.Append('Aggregate function: Result var ' +
            t_aggregresult_var.Value + ' does not exists.' + ' View:' + nome_view)
        end;


        t_aggreg.Next;
      end;



      t_task.Next;
    end;

  end;

end;


function Tf_checkprg.errazione(testo: string; necessaria: boolean): boolean;
begin
  if (necessaria) and (testo = '') then
  begin
    Result := True
  end;
  if not (necessaria) and (testo = '') then
  begin
    Result := False
  end;
  if testo <> '' then
  begin
    Result := (testo <> dm_form.t_azioni.Lookup('azione', testo, 'azione'))
  end;

end;

function Tf_checkprg.errtabella(testo: string): boolean;
begin
  Result := (testo <> dm_form.t_tabelle.Lookup('nome', testo, 'nome'));
end;


function Tf_checkprg.errchiave(testo: string): boolean;
var expr_local: string;
begin

  if (pos('[o2exp_', testo) > 0) then
  begin
   expr_local := leftstr(trim(copy(testo, 8, 8)), length(trim(copy(testo, 8, 8))) - 1);
   Result := errexp(expr_local, true);
  end
  else
  Result := (testo <> dm_form.t_indicitesta.Lookup('nomekey', testo, 'nomekey'));
end;

function Tf_checkprg.errcampo(tabella, campo: string): boolean;
begin
  with dm_form do
  begin

    t_tabelle.Locate('nome', tabella, []);
    Result := t_campi.Lookup('nomecampo', campo, 'nomecampo') <> campo;

  end;
end;

function Tf_checkprg.errexp(testo: string; necessaria : boolean): boolean;
begin

  if (necessaria and ((testo = '') or (testo = '0') or (inttostr(strtoint(testo)) <> testo))) then
  begin
      Result:=True;
      Exit;
  end;

  if (testo <> '') and (testo <> '0') then
  begin
    with dm_form do
    begin
      if  (inttostr(strtoint(testo)) <> testo) then
       Result:=True
       else
       Result := t_espressioni.Lookup('idexp', testo, 'idexp') <> testo;
    end;
  end
  else
  begin
    Result := False
  end;
end;

procedure Tf_checkprg.Exit1Click(Sender: TObject);
begin
  Self.ModalResult := mrOk;
end;

procedure Tf_checkprg.FormShow(Sender: TObject);
begin
  Caption := 'Check program "' + dm_form.t_programminome.Value + '" result';
end;

procedure Tf_checkprg.check_formExecute(Sender: TObject);
var
  nome_form: string;
  tab : TStringList;
begin

  tab:= TStringList.Create;

  with dm_form do
  begin

    t_form.First;
    while not (t_form.EOF) do
    begin
       // carica elenco css (refresh) SOLO LA PRIMA VOLTA
      if NOT(FileExists(f_scelta_css.OpenDialog1.FileName)) then
      begin
       f_scelta_css.definisce_filecss.Execute;
       if (FileExists(f_scelta_css.OpenDialog1.FileName)) then
       f_scelta_css.ricarica_css.Execute;
      end;

      nome_form := t_formnomeform.Value;

      // check espressioni di titolo/visible/url/titlebar/statusbar
      if (errexp(t_formdicitura_exp.AsString)) then
      begin
        Memo2.Lines.Append('Title Expression ' + t_formdicitura_exp.AsString +
          ' not found - Form:' + nome_form)
      end;

      if (errexp(t_formvisibile.AsString)) then
      begin
        Memo2.Lines.Append('Visible Expression ' + t_formvisibile.AsString +
          ' not found - Form:' + nome_form)
      end;

      if (errexp(t_formurl.AsString)) then
      begin
        Memo2.Lines.Append('Url Expression ' + t_formurl.AsString + ' not found - Form:' + nome_form)
      end;

      if (errexp(t_formbarra_titolo.AsString)) then
      begin
        Memo2.Lines.Append('TitleBar Expression ' + t_formbarra_titolo.AsString +
          ' not found - Form:' + nome_form)
      end;

      if (errexp(t_formbarra_stato.AsString)) then
      begin
        Memo2.Lines.Append('StatusBar Expression ' + t_formbarra_stato.AsString +
          ' not found - Form:' + nome_form)
      end;



      // check align

      if ((t_formvertalign.Value <> 'Top') and (t_formvertalign.Value <> 'Middle') and
        (t_formvertalign.Value <> 'Bottom')) then
      begin
        Memo2.Lines.Append('Form:' + nome_form + '. Incorrect Vertical align')
      end;

      if ((t_formorizzalign.Value <> 'Left') and
          (t_formorizzalign.Value <> 'Center') and
          (t_formorizzalign.Value <> 'Right'))
      then
      begin
        Memo2.Lines.Append('Form:' + nome_form + '. Incorrect Orizzontal align')
      end;


      //check tutti i css se impostati
      if (errcss(t_formcss_finestra.Value)) then
      begin
        Memo2.Lines.Append('Form:' + nome_form + '. Incorrect css "Form"')
      end;
      if (errcss(t_formcss_title.Value)) then
      begin
        Memo2.Lines.Append('Form:' + nome_form + '. Incorrect css "Title on active form"')
      end;
      if (errcss(t_formcss_title_no.Value)) then
      begin
        Memo2.Lines.Append('Form:' + nome_form + '. Incorrect css "Title on inactive form"')
      end;
      if (errcss(t_formcss_body.Value)) then
      begin
        Memo2.Lines.Append('Form:' + nome_form + '. Incorrect css "Body"')
      end;
      if (errcss(t_formcss_status_bar.Value)) then
      begin
        Memo2.Lines.Append('Form:' + nome_form + '. Incorrect css "Status Bar"')
      end;
      if (errcss(t_formcss_doc.Value)) then
      begin
        Memo2.Lines.Append('Form:' + nome_form + '. Incorrect css "Document"')
      end;
      if (errcss(t_formcss_close.Value)) then
      begin
        Memo2.Lines.Append('Form:' + nome_form + '. Incorrect css "Close area"')
      end;
      if (errcss(t_formcss_open.Value)) then
      begin
        Memo2.Lines.Append('Form:' + nome_form + '. Incorrect css "Open area"')
      end;
      if (errcss(t_formcss_exit.Value)) then
      begin
        Memo2.Lines.Append('Form:' + nome_form + '. Incorrect css "Exit area"')
      end;
      if (errcss(t_formcss_resize.Value)) then
      begin
        Memo2.Lines.Append('Form:' + nome_form + '. Incorrect css "Resize area"')
      end;



      while not (t_controlliform.EOF) do
      begin

        // ZONA UGUALE PER TUTTI I CONTROLLI

        //parent

        if (t_controlliform.Lookup('nomecontrollo', t_controlliformparent.Value,
          'nomecontrollo') <> t_controlliformparent.Value) and
          (LeftStr(t_controlliformparent.Value, 7) <> '_stage_') then
        begin
          Memo2.Lines.Append('Form:' + nome_form + '. Parent control does not exist: '
            + t_controlliformnomecontrollo.Value)
        end;

        //tipo
        if (t_controlliformtipo.Value <> 'edit') and
          (t_controlliformtipo.Value <> 'label') and
          (t_controlliformtipo.Value <> 'separator') and
          (t_controlliformtipo.Value <> 'multipage') and
          (t_controlliformtipo.Value <> 'flowbox') and
          (t_controlliformtipo.Value <> 'frame') and
          (t_controlliformtipo.Value <> 'htmlarea') and
          (t_controlliformtipo.Value <> 'treeview') and
          (t_controlliformtipo.Value <> 'imglist') and
          (t_controlliformtipo.Value <> 'progress') and
          (t_controlliformtipo.Value <> 'checkbox') and
          (t_controlliformtipo.Value <> 'document') and
          (t_controlliformtipo.Value <> 'textarea') and
          (t_controlliformtipo.Value <> 'table') and
          (t_controlliformtipo.Value <> 'file') and
          (t_controlliformtipo.Value <> 'navigator') and
          (t_controlliformtipo.Value <> 'map') and
          (t_controlliformtipo.Value <> 'button') and
          (t_controlliformtipo.Value <> 'listbox') and
          (t_controlliformtipo.Value <> 'image') then
        begin
          Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. Control type not recognized')
        end;


        //ref se esistente
        if ((t_controlliformtipo.Value = 'edit') or
          (t_controlliformtipo.Value = 'checkbox') or
          (t_controlliformtipo.Value = 'textarea') or
          (t_controlliformtipo.Value = 'listbox')) and
          errctrlref(t_controlliformriferimento.Value) then
        begin
          Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. Invalid field.')
        end;

          // in caso di multipage verifica il campo solo se più di una pagina
          IF (t_controlliformtipo.Value = 'multipage') and
              errctrlref(t_controlliformriferimento.Value) then
              begin
               tab.Clear;
               tab.Text:= t_controlliformextra1.Value;
               if tab.Count > 1 then Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
                  '. Invalid field.');
              end;

        //action se esistente
        if errazione(t_controlliformazione.Value, False) then
        begin
          Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. Action not found')
        end;

        //visible e enabled expression
        if errexp(t_controlliformvisibile.AsString) then
        begin
          Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. Visible expression not found')
        end;

        if errexp(t_controlliformabilitato.AsString) then
        begin
          Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. Enable expression not found')
        end;

        if errexp(t_controlliformsubmitonchange.AsString) then
        begin
          Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. Submit on change expression not found')
        end;


        //css
        if (errcss(t_controlliformvocecss.Value)) then
        begin
          Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. Css class not found')
        end;
        if (errcss(t_controlliformcss1.Value)) then
        begin
          Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. Css class not found')
        end;
        if (errcss(t_controlliformcss2.Value)) then
        begin
          Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. Css class not found')
        end;
        if (errcss(t_controlliformcss3.Value)) then
        begin
          Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. Css class not found')
        end;
        if (errcss(t_controlliformcss4.Value)) then
        begin
          Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. Css class not found')
        end;
        if (errcss(t_controlliformcss5.Value)) then
        begin
          Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. Css class not found')
        end;
        if (errcss(t_controlliformcss6.Value)) then
        begin
          Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. Css class not found')
        end;
        if (errcss(t_controlliformcss7.Value)) then
        begin
          Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. Css class not found')
        end;
        if (errcss(t_controlliformcss8.Value)) then
        begin
          Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. Css class not found')
        end;
        if (errcss(t_controlliformcss9.Value)) then
        begin
          Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. Css class not found')
        end;
        if (errcss(t_controlliformcss10.Value)) then
        begin
          Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. Css class not found')
        end;


        // parent info su oggetti figli di tabella, multipage e flownbox
        // per ora lasciamo perdere... ???

        // expression in html area, document e image
        if ((t_controlliformtipo.Value = 'image') or
          (t_controlliformtipo.Value = 'document') or
          (t_controlliformtipo.Value = 'htmlarea')) and
          errexp(t_controlliformextra1.Value) then
        begin
          Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. Expression not found')
        end;


        // pages in multipage and flowbox
        if ((t_controlliformtipo.Value = 'multipage') or
            (t_controlliformtipo.Value = 'flowbox')) and
          (t_controlliformextra1.Value = '') then
        begin
          Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. ' + t_controlliformtipo.Value + ' without page')
        end;

        // solo in caso di controllo navigatore
         if t_controlliformtipo.Value = 'navigator' then
         begin

         if errexp(t_controlliformNavigationBlockVisible.AsString) then
           begin
            Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. NavigationBlockVisible expression not found')
           end;

         if errexp(t_controlliformInsertVisible.AsString) then
           begin
            Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. InsertVisible expression not found')
           end;
         if errexp(t_controlliformInsertEnable.AsString) then
           begin
            Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. InsertEnable expression not found')
           end;

         if errexp(t_controlliformDeleteVisible.AsString) then
           begin
            Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. DeleteVisible expression not found')
           end;

         if errexp(t_controlliformDeleteEnable.AsString) then
           begin
            Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. DeleteEnable expression not found')
           end;

         if errexp(t_controlliformPostVisible.AsString) then
           begin
            Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. PostVisible expression not found')
           end;

         if errexp(t_controlliformDetailVisible.AsString) then
           begin
            Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. DetailVisible expression not found')
           end;

         if errexp(t_controlliformSelectVisible.AsString) then
           begin
            Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. SelectVisible expression not found')
           end;

         if errexp(t_controlliformPostEnable.AsString) then
           begin
            Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. PostEnable expression not found')
           end;
         if errexp(t_controlliformUndoVisible.AsString) then
           begin
            Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. UndoVisible expression not found')
           end;

         if errexp(t_controlliformUndoEnable.AsString) then
           begin
            Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. UndoEnable expression not found')
           end;

         if errexp(t_controlliformDetailEnable.AsString) then
           begin
            Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. DetailEnable expression not found')
           end;
         if errexp(t_controlliformSelectEnable.AsString) then
           begin
            Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. SelectEnable expression not found')
           end;

         if errexp(t_controlliformPostVisible.AsString) then
           begin
            Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. PostVisible expression not found')
           end;

         if errazione(t_controlliformInsertAction.Value, false) then
           begin
            Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. InsertAction not found')
           end;
         if errazione(t_controlliformDeleteAction.Value, false) then
           begin
            Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. DeleteAction not found')
           end;
         if errazione(t_controlliformPostAction.Value, false) then
           begin
            Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. PostAction not found')
           end;
         if errazione(t_controlliformUndoAction.Value, false) then
          begin
            Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. UndoAction not found')
           end;
         if errazione(t_controlliformDetailAction.Value, false) then
          begin
            Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. DetailAction not found')
           end;
         if errazione(t_controlliformSelectAction.Value, false) then
          begin
            Memo2.Lines.Append('Form:' + nome_form + ' Control: ' + t_controlliformnomecontrollo.Value +
            '. SelectAction not found')
           end;


         end;  //fine navigatore


        t_controlliform.Next;
      end;




      t_form.Next;
    end;

  end;
  //rilascia
  FreeAndNil(tab);
end;

function Tf_checkprg.errcss(testo: string): boolean;
begin
  if testo = '' then
  begin
    Result := False
  end
  else begin
    if Pos('[o2exp_', testo) = 0 then
    begin
      Result := f_scelta_css.ListView1.FindCaption(-1, testo, False, False, False) = nil
    end;

    if Pos('[o2exp_', testo) <> 0 then
    begin
      Result := errexp(copy(ExtractWord(2, testo, ['_']), 1,
        length(ExtractWord(2, testo, ['_'])) - 1))
    end;

  end;

end;

function Tf_checkprg.errctrlref(testo: string): boolean;
var
  vista, campo: string;
begin

  vista := StrLeft(testo, pos(chr(129), testo) - 1);
  vista := StrAfter(chr(127), vista);

  if not (errview(vista)) then
  begin

    campo := trim(copy(testo, pos(chr(129), testo) + 1, 200));
    //caso variabile di applicazione
    if pos('_o2SESSION', testo) > 0 then
    begin
      Result := dm_form.t_variabili_app.Lookup('alias', campo, 'alias') <> campo;
      exit;
    end;

    //caso variabile di programma
    if pos('prg§_§var', testo) > 0 then
    begin
      dm_form.t_variabili_prg.Filtered:=false;
      Result := dm_form.t_variabili_prg.Lookup('alias', campo, 'alias') <> campo;

      exit;
    end;

    //caso campo di vista
    // si posiziona sulla view
    dm_form.t_task.Locate('nome', vista, []);
    Result := dm_form.t_select.Lookup('con_nome', campo, 'con_nome') <> campo;
  end
  else begin
    Result := True
  end;

end;

procedure Tf_checkprg.check_azioniExecute(Sender: TObject);
var
 nome_azione, tmp1, tmp2, tmp3 : string;
 i: integer;

begin
  with dm_form do
  begin

    t_azioni.First;
    while not t_azioni.EOF do
    begin

      nome_azione := t_azioniazione.Value;

      // parte con le operazioni
      t_operazioni.First;
      while not t_operazioni.EOF do
      begin

        // se c'è una condizione di esecuzione deve esistere per tutte le operazioni
        if errexp(t_operazioniexp2.AsString) then
        begin
          Memo2.Lines.Append('Action: ' + nome_azione + ' Line: ' + t_operazioniid.AsString +
            '. Expression "'+ t_operazioniexp2.AsString +'" not found')
        end;

        // operatore RECORDSET (Controllo la view)
        if t_operazionioperazione.Value = 'Recordset' then
        begin

          IF errview(t_operazioniview_calc.Value)  then
          begin
            Memo2.Lines.Append('Action: ' + nome_azione + ' Line: ' + t_operazioniid.AsString +
            '. View "'+ t_operazioniview_calc.Value +'" not found.');
          end;
        end;

         // operatore UPDATE (Controllo il campo e l'expression)
        if t_operazionioperazione.Value = 'Update' then
        begin
          //VIEW E FIELD
          IF errctrlref(t_operazionio2ref.Value)  then
          begin
//          ShowMessage(t_operazionio2ref.Value);
            Memo2.Lines.Append('Action:' + nome_azione + ' Line: ' + t_operazioniid.AsString +
            '. Field "'+ t_operazionio2ref_wide.Value +'" not found.');
          end;
          //EXP1
          if errexp(t_operazioniexp1.AsString, True) then
          begin
            Memo2.Lines.Append('Action: ' + nome_azione + ' Line: ' + t_operazioniid.AsString +
            '. Expression "'+ t_operazioniexp1.AsString +'" not found')
          end;

        end;

         // operatore RETURN PARAMETER (Controllo esistenza parametro e l'expression)
        if t_operazionioperazione.Value = 'Return parameter' then
        begin
          //parameter
          if (t_operazionio2ref.Value = '') or
          (not(t_parametri.Locate('id',  ExtractWord(1, t_operazionio2ref.Value, [':']), []))) then
          begin
            Memo2.Lines.Append('Action: ' + nome_azione + ' Line: ' + t_operazioniid.AsString +
            '. Parameter "'+ t_operazionio2ref_wide.Value +'" not found.');
          end;
          //EXP1
          if errexp(t_operazioniexp1.AsString, True) then
          begin
            Memo2.Lines.Append('Action: ' + nome_azione + ' Line: ' + t_operazioniid.AsString +
            '. Expression "'+ t_operazioniexp1.AsString +'" not found')
          end;

        end;

        // operatore CALLPROGRAM (Controllo esistenza programma chiamato)
        if t_operazionioperazione.Value = 'Call program' then
        begin
          if errprgname(t_operazionio2ref.Value) then
          begin
            Memo2.Lines.Append('Action: ' + nome_azione +
                               ' Line: ' + t_operazioniid.AsString +
                               '. Program "'+ t_operazionio2ref.AsString +
                               '" not found')
          end;
          // _________________________________________ Check call parameters ___
          for i := 0 to f_work.db_parametri.Lines.Count - 1 do
          begin
            // _____________________________________ Parameter by expression ___
            if StrLeft(f_work.db_parametri.Lines[i], 7) = '[o2exp_' then
            begin
              if errexp(f_import.decodifica_exp(f_work.db_parametri.Lines[i],
                                                t_programminome.Value),
                        true) then
                Memo2.Lines.Append('Action: ' + nome_azione +
                                   ' Line: ' + t_operazioniid.AsString +
                                   '. Expression '+
                           f_import.decodifica_exp(f_work.db_parametri.Lines[i],
                                                   t_programminome.Value) +
                                   ' not found in Call program parameters');
            end
            // ______________________________________ Parameter by reference ___
            else
            begin
              if ((LowerCase(f_work.db_parametri.Lines[i]) <> 'null') and
                  (not(check_field(f_work.db_parametri.Lines[i])))) then
              begin
                Memo2.Lines.Append('Action: ' + nome_azione +
                                   ' Line: ' + t_operazioniid.AsString +
                                   '. Variable '+ f_work.db_parametri.Lines[i] +
                                   ' not found in Call program parameters');
              end;
            end;
          end;
        end; // _______________________________________________ End CALL-PRG ___

        // operatore GOTOPROGRAM (Controllo esistenza programma chiamato)
        if t_operazionioperazione.Value = 'Go to' then
        begin
          // program
          if t_operazionitipologia.Value = 'program' then
          begin
            if errprgname(t_operazionio2ref.Value) then
            begin
              Memo2.Lines.Append('Action: ' + nome_azione +
                                 ' Line: ' + t_operazioniid.AsString +
                                 '. Program "' + t_operazionio2ref.AsString +
                                 '" not found')
            end;
          end;

          // url
          if t_operazionitipologia.Value = 'url' then
          begin
            if errexp(t_operazioniexp1.AsString, true) then
            begin
              Memo2.Lines.Append('Action: ' + nome_azione +
                                 ' Line: ' + t_operazioniid.AsString +
                                 '. Url expression "' + t_operazioniexp1.AsString +
                                 '" not found')
            end;
          end;

          // controllo i parametri (variabili e espressioni)
          for i := 0 to f_work.db_parametri.Lines.Count - 1 do
          begin
            if StrLeft(f_work.db_parametri.Lines[i], 7) = '[o2exp_' then
            begin
              if errexp(f_import.decodifica_exp(f_work.db_parametri.Lines[i],t_programminome.Value), true) then
                Memo2.Lines.Append('Action: ' + nome_azione +
                                   ' Line: ' + t_operazioniid.AsString +
                                   '. Expression '+
                                   f_import.decodifica_exp(f_work.db_parametri.Lines[i],t_programminome.Value) +
                                   ' not found in Go to parameters');
            end
            else
            begin
              if ((LowerCase(f_work.db_parametri.Lines[i]) <> 'null') and
                  (not(check_field(f_work.db_parametri.Lines[i])))) then
                 Memo2.Lines.Append('Action: ' + nome_azione + ' Line: ' + t_operazioniid.AsString +
                '. Variable '+ f_work.db_parametri.Lines[i] + ' not found in Go to parameters');


            end;
          end;

        end;


        // I/O (verifica risorsa e protocol)
        if t_operazionioperazione.Value = 'I/O' then
        begin
            if errio(t_operazioniview_calc.Value) then Memo2.Lines.Append('Action: ' + nome_azione + ' Line: ' + t_operazioniid.AsString +
                                  '. I/O resource "'+ t_operazioniview_calc.Value +'" not found');

            if errprotocol(t_operazionifield_calc.Value) then Memo2.Lines.Append('Action: ' + nome_azione + ' Line: ' + t_operazioniid.AsString +
                                  '. Protocol "'+ t_operazionifield_calc.Value +'" not found') ;

        end;

        //message
        if t_operazionioperazione.Value = 'Message' then
        begin
            if errexp(t_operazioniexp1.AsString, true) then Memo2.Lines.Append('Action: ' + nome_azione + ' Line: ' + t_operazioniid.AsString +
                                  '. Expression "'+ t_operazioniexp1.AsString +'" not found') ;

            if (t_operazionio2ref.Value <> 'Status bar') and (t_operazionio2ref.Value <> 'Box')  and (t_operazionio2ref.Value <> 'Popup')  then
                                  Memo2.Lines.Append('Action: ' + nome_azione + ' Line: ' + t_operazioniid.AsString +
                                  '. Message can be only in "Box" or "Status bar" mode');

        end;


           //set menu
        if t_operazionioperazione.Value = 'Set menu' then
        begin
           if (t_operazionio2ref.Value <> '') and (errmenu(t_operazionio2ref.Value)) then Memo2.Lines.Append('Action: ' + nome_azione + ' Line: ' + t_operazioniid.AsString +
                                  '. Menu "'+ t_operazionio2ref.AsString +'" not found');

        end;

           //print
        if t_operazionioperazione.Value = 'Print' then
        begin
            tmp1 := (ExtractWord(1, t_operazionio2ref.Value, [':']));
            tmp2 := (ExtractWord(2, t_operazionio2ref.Value, [':']));

           //controlla espressione di template
           if errexp(tmp1, true) then Memo2.Lines.Append('Action: ' + nome_azione + ' Line: ' + t_operazioniid.AsString +
                                  '. Template expression "'+ tmp1 +'" not found');

           //controlla espressione di pdffile
           if errexp(tmp2, true) then Memo2.Lines.Append('Action: ' + nome_azione + ' Line: ' + t_operazioniid.AsString +
                                  '. Pdf file name expression "'+ tmp2 +'" not found');


           //controlla espressione di pdffile
           if t_operazionicallparam.Value='' then Memo2.Lines.Append('Action: ' + nome_azione + ' Line: ' + t_operazioniid.AsString +
                                  '. No resource included in print operation');


        end;

           //execute action  (esistenza action , espressione di end obbligatoria, view in caso di loop, asc/desc)
        if t_operazionioperazione.Value = 'Execute action' then
        begin
             tmp1     := (ExtractWord(1, t_operazionio2ref.Value, [':']));
             tmp2     := (ExtractWord(2, t_operazionio2ref.Value, [':']));
             tmp3     :=  LeftStr(StrLoCase(ExtractWord(4, t_operazionio2ref.Value, [':'])), 1);

             if errazione(tmp1, true) then  Memo2.Lines.Append('Action: ' + nome_azione + ' Line: ' + t_operazioniid.AsString +
                                  '. Action "'+ tmp1 +'" not found');

             if (tmp2 <> 'True') and (tmp2 <> 'False') then
               if errexp(tmp2, false) then  Memo2.Lines.Append('Action: ' + nome_azione + ' Line: ' + t_operazioniid.AsString +
                                  '. End expression not found');

             if t_operazioniview_calc.Value <> '' then
             begin
                if errview(t_operazioniview_calc.Value) then
                                    Memo2.Lines.Append('Action: ' + nome_azione + ' Line: ' + t_operazioniid.AsString +
                                     '. View defined in loop "'+ t_operazioniview_calc.Value +'" not found');

             end;

        end;

        //execute script  (esistenza exp1)
        if t_operazionioperazione.Value = 'Execute script' then
        begin
          if errexp(t_operazioniexp1.AsString, true) then  Memo2.Lines.Append('Action: ' + nome_azione + ' Line: ' + t_operazioniid.AsString +
                                  '. Expression not found');


        end;


        t_operazioni.Next
      end;


      t_azioni.Next;
    end;

  end;
end;

procedure Tf_checkprg.memo_posizioniExecute(Sender: TObject);
begin
  // questa procedura memorizza in variabili le posizioni all'interno delle tabelle del programma
  with dm_form do
  begin
    pos_1   := t_variabili_prg.GetBookmark;
    pos_2   := t_parametri.GetBookmark;
    pos_3   := t_task.GetBookmark;

    pos_4 := t_usa_file.GetBookmark;

    pos_5   := t_union.GetBookmark;
    pos_6 := t_select.GetBookmark;
    pos_7   := t_form.GetBookmark;
    pos_8   := t_controlliform.GetBookmark;
    pos_9   := t_azioni.GetBookmark;
    pos_10  := t_operazioni.GetBookmark;
    pos_11  := t_espressioni.GetBookmark;
    pos_12  := t_report.GetBookmark;
    pos_13  := t_input_output.GetBookmark;
    pos_14  := t_aggreg.GetBookmark;
    pos_15  := t_printdef.GetBookmark;
    pos_16  := t_reportfield.GetBookmark;

  end;
end;

function Tf_checkprg.errprgname(testo: string): boolean;
begin

  if testo = '' then
  begin
    Result := True
  end
  else
  begin
    // ________________________________________ Program name (no expression) ___
    if Pos('[o2exp_', testo) = 0 then
    begin
      if (FileExists(f_work.userdir + testo + '.prg')) or
         (FileExists(f_work.prgdir + testo + '.prg')) then
      begin
        Result := False
      end
      else
      begin
        Result := True;
      end;
    end
    // __________________________________________ Program name by expression ___
    else
    begin
      // __________________________________________________ Check expression ___
      Result := errexp(Copy(ExtractWord(2, testo, ['_']),
                            1,
                            length(ExtractWord(2, testo, ['_'])) - 1));
    end;

  end;




end;

function Tf_checkprg.errio(testo: string): boolean;
begin

  Result:= testo <> dm_form.t_input_output.Lookup('nome', testo, 'nome');

end;

function Tf_checkprg.errmenu(testo: string): boolean;
begin
  // controllo che il menu esista e che sia di tipo menu

  Result:=dm_form.t_menu.Lookup ('id;tipo',VarArrayOf([testo, 'Menu']),'id') <> testo;


end;

function Tf_checkprg.errprotocol(testo: string): boolean;
begin
  Result:= testo <> dm_form.t_report.Lookup('alias', testo, 'alias');
end;

procedure Tf_checkprg.check_ioExecute(Sender: TObject);
begin

   With dm_form do
   begin
     // _______________________________________________________ Loop on I/Os ___
     t_input_output.First;
     while not t_input_output.Eof do
     begin
       // _____________________________________ Check output name expression ___
       if errexp(t_input_outputoutputfile.AsString, true) then
       begin
         Memo2.Lines.Append('I/O: Expression "' +
                            t_input_outputoutputfile.AsString +
                            '" not found on I/O "' +
                            t_input_outputnome.Value +'"');
       end;
     t_input_output.Next;
     end;
   end;

end;

procedure Tf_checkprg.check_protocolExecute(Sender: TObject);
begin

   With dm_form do
   begin
     // ____________________________________________________ Loop on reports ___
     t_report.First;
     while not t_report.Eof do
     begin
       // ____________________________________________ Check protocol fields ___
       t_reportfield.First;
       while not t_reportfield.Eof do
       begin
         // ____________________________________________________ Check field ___
         if errctrlref(t_reportfieldcampo.Value) then
         begin
           Memo2.Lines.Append('Protocol "' + t_reportalias.Value +
                              '": Field not found in line "' +
                              t_reportfieldid.AsString + '"');
         end;
         // ____________________________________________________ Check model ___
         if (t_reportfieldmodel.Value <> '') and
            (errmodello(t_reportfieldmodel.Value)) then
         begin
           Memo2.Lines.Append('Protocol "' + t_reportalias.Value +
                              '": Model not found in line "' +
                              t_reportfieldid.AsString + '"');
         end;
         t_reportfield.Next;
       end;
       t_report.Next;
       end;
   end;

end;

procedure Tf_checkprg.ripristina_posizioniExecute(Sender: TObject);
begin
 with dm_form do
 begin
    if (pos_1 <> nil) and (t_variabili_prg.BookmarkValid(pos_1)) then t_variabili_prg.GotoBookmark(pos_1);
    if (pos_2 <> nil) and (t_parametri.BookmarkValid(pos_2)) then t_parametri.GotoBookmark(pos_2);
    if (pos_3 <> nil) and (t_task.BookmarkValid(pos_3)) then t_task.GotoBookmark(pos_3);
    if (pos_4 <> nil) and (t_usa_file.BookmarkValid(pos_4)) then t_usa_file.GotoBookmark(pos_4);
    if (pos_5 <> nil) and (t_union.BookmarkValid(pos_5)) then t_union.GotoBookmark(pos_5);
    if (pos_6 <> nil) and (t_select.BookmarkValid(pos_6)) then t_select.GotoBookmark(pos_6);
    if (pos_7 <> nil) and (t_form.BookmarkValid(pos_7)) then t_form.GotoBookmark(pos_7);
    if (pos_8 <> nil) and (t_controlliform.BookmarkValid(pos_8)) then t_controlliform.GotoBookmark(pos_8);
    if (pos_9 <> nil) and (t_azioni.BookmarkValid(pos_9)) then t_azioni.GotoBookmark(pos_9);

    if (pos_10 <> nil) and (t_operazioni.BookmarkValid(pos_10)) then t_operazioni.GotoBookmark(pos_10);
    if (pos_11 <> nil) and (t_espressioni.BookmarkValid(pos_11)) then t_espressioni.GotoBookmark(pos_11);
    if (pos_12 <> nil) and (t_report.BookmarkValid(pos_12)) then t_report.GotoBookmark(pos_12);
    if (pos_13 <> nil) and (t_input_output.BookmarkValid(pos_13)) then t_input_output.GotoBookmark(pos_13);
    if (pos_14 <> nil) and (t_aggreg.BookmarkValid(pos_14)) then t_aggreg.GotoBookmark(pos_14);
    if (pos_15 <> nil) and (t_printdef.BookmarkValid(pos_15)) then t_printdef.GotoBookmark(pos_15);
    if (pos_16 <> nil) and (t_reportfield.BookmarkValid(pos_16)) then t_reportfield.GotoBookmark(pos_16);



  end;
end;

function Tf_checkprg.err_o2par(testo: string): boolean;
var
 appoggio : string;
begin
 // separa view e field
  appoggio := trim(StrAfter('(', testo));
  appoggio := StringReplace(appoggio, '(', '', [rfReplaceAll]);
  appoggio := StringReplace(appoggio, ')', '', [rfReplaceAll]);
  appoggio:=ExtractWord(1,appoggio, [',']);

  Result:=(appoggio='') or (dm_form.t_parametri.Lookup('id',appoggio,'id') <> appoggio);

end;


procedure Tf_checkprg.CheckExpNotUsedExecute(Sender: TObject);
var exp_usata, FirstTime: boolean;
    ConcatText: TStringList;
    i: Integer;
begin
try
  Screen.Cursor := crHourGlass;
  ConcatText    := TStringList.Create;
  FirstTime     := True;
  With dm_form do
  begin
    in_importazione := true;
    t_espressioni.DisableControls;
    t_espressioni.First;
    contatore_errori := 0;
    // _________________________________________________ Loop on expressions ___
    while not t_espressioni.Eof do
    begin
      exp_usata := False;
      // ________________________________________ Check used in instructions ___
      temp_table := TClientDataSet.Create(nil);
      t_operazioni.MasterSource := nil;
      temp_table.CloneCursor(t_operazioni, True, False);
      t_operazioni.MasterSource := ds_azioni;
      temp_table.First;
      // ______________________________________________ Loop on instructions ___
      while not temp_table.Eof do
      begin
        // _______________________________ Expression used in step condition ___
        if (temp_table.FieldValues['exp2'] = t_espressioniidexp.Value) then
        begin
          exp_usata := true;
          Break;
        end;
        // ________________________________ All statements but Call and Goto ___
        if  (temp_table.FieldValues['operazione'] <> 'Call program') and
            (temp_table.FieldValues['operazione'] <> 'Go to') then
        begin
          // ________________________ Expression used as statement parameter ___
          if temp_table.FieldValues['exp1'] = t_espressioniidexp.Value then
          begin
            exp_usata := true;
            Break;
          end;
        end
        // ________________________________________ Call and Goto statements ___
        else
        begin
          // __________________ Expression used in Call/Goto as program name ___
          if temp_table.FieldValues['o2ref'] =
             '[o2exp_' + t_espressioniidexp.AsString + ']' then
          begin
            exp_usata := true;
            Break;
          end;
        end;
        temp_table.Next
      end;
      FreeAndNil(temp_table); // __________________________ Instructions end ___
      // _______________________________________________ Check used in views ___
      if not(exp_usata) then
      begin
        temp_table := TClientDataSet.Create(nil);
        temp_table.CloneCursor(t_task, True, False);
        temp_table.First;
        // ___________________________________________________ Loop on views ___
        while not temp_table.Eof do
        begin
          if (temp_table.FieldValues['righevisexp'] =
              t_espressioniidexp.Value) then
          begin
            exp_usata := true;
            Break;
          end;
          temp_table.Next;
        end;
        FreeAndNil(temp_table);
      end; // ____________________________________________________ Views end ___
      // _________________________________________ Check used in view tables ___
      if not(exp_usata) then
      begin
        temp_table := TClientDataSet.Create(nil);
        t_usa_file.MasterSource := nil;
        temp_table.CloneCursor(t_usa_file, True, False);
        t_usa_file.MasterSource := ds_task;
        temp_table.First;
        // _____________________________________________ Loop on view tables ___
        while not temp_table.Eof do
        begin
          if (temp_table.FieldValues['chiave'] = '[o2exp_' +
                                                 t_espressioniidexp.AsString +
                                                 ']') then
          begin
            exp_usata := true;
            Break;
          end;
          if (temp_table.FieldValues['dbname_exp'] =
              t_espressioniidexp.AsString) then
          begin
            exp_usata := true;
            Break;
          end;
          if (temp_table.FieldValues['tablename_exp'] =
              t_espressioniidexp.AsString) then
          begin
            exp_usata := true;
            Break;
          end;
          temp_table.Next;
        end;
        FreeAndNil(temp_table);
      end; // ______________________________________________ View tables end ___
      // ________________________________________________ Check used in I/Os ___
      if not(exp_usata) then
      begin
        temp_table := TClientDataSet.Create(nil);
        temp_table.CloneCursor(t_input_output, True, False);
        temp_table.First;
        // ____________________________________________________ Loop on I/Os ___
        while not temp_table.Eof do
        begin
          if (temp_table.FieldValues['outputfile'] =
              t_espressioniidexp.AsString) then
          begin
            exp_usata := true;
            Break;
          end;
          temp_table.Next;
        end;
        FreeAndNil(temp_table);
      end; // _____________________________________________________ I/Os end ___
      // _____________________________________________ Check used in selects ___
      if not(exp_usata) then
      begin
        temp_table := TClientDataSet.Create(nil);
        t_select.MasterSource := nil;
        temp_table.CloneCursor(t_select, True, False);
        t_select.MasterSource := ds_task;
        temp_table.First;
        // _________________________________________________ Loop on selects ___
        while not temp_table.Eof do
        begin
          if ((temp_table.FieldValues['tipo'] <> 'SQL') and
              (temp_table.FieldValues['init'] = t_espressioniidexp.Value)) or
             (temp_table.FieldValues['rangemin'] = t_espressioniidexp.Value) or
             (temp_table.FieldValues['rangemax'] = t_espressioniidexp.Value) or
             (temp_table.FieldValues['not'] = t_espressioniidexp.Value) or
             (temp_table.FieldValues['like'] = t_espressioniidexp.Value) then
          begin
            exp_usata := true;
            Break;
          end;
          if (temp_table.FieldValues['tipo'] = 'SQL') then
          begin
            // ____________________ Check expresion use in concat text lines ___
            ConcatText.Clear;
            ConcatText.Text := temp_table.FieldValues['sql'];
            for i := 0 to ConcatText.Count - 1 do
            begin
              if ConcatText.Strings[i] = t_espressioniidexp.AsString then
              begin
                exp_usata := true;
                Break;
              end;
            end;
          end;
          temp_table.Next
        end;
        FreeAndNil(temp_table);
      end; // __________________________________________________ Selects end ___
      // _______________________________________ Check used in link criteria ___
      if not(exp_usata) then
      begin
        temp_table := TClientDataSet.Create(nil);
        t_union.MasterSource := nil;
        temp_table.CloneCursor(t_union, True, False);
        t_union.MasterSource := ds_usa_file;
        temp_table.First;
        while not temp_table.Eof do
        begin
          if (temp_table.FieldValues['rangemin'] = t_espressioniidexp.Value) or
             (temp_table.FieldValues['rangemax'] = t_espressioniidexp.Value) or
             (temp_table.FieldValues['not'] = t_espressioniidexp.Value) or
             (temp_table.FieldValues['like'] = t_espressioniidexp.Value) then
          begin
            exp_usata:=true;
            Break;
          end;
          temp_table.Next
        end;
        FreeAndNil(temp_table);
      end; // ____________________________________________ Link criteria end ___
      // _______________________________________________ Check used in forms ___
      if not(exp_usata) then
      begin

      temp_table:=TClientDataSet.Create(nil);
      temp_table.CloneCursor(t_form,True,False);

      temp_table.First;
      while not temp_table.Eof do
      begin
      if (temp_table.FieldValues['visibile'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['dicitura_exp'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['url'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['top_exp'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['left_exp'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['altezza_exp'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['larghezza_exp'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['timer_refresh'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['barra_titolo'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['barra_stato'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['css_finestra'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css_title'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css_title_no'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css_body'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css_status_bar'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css_doc'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css_close'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css_open'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css_exit'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css_resize'] = '[o2exp_'+ t_espressioniidexp.AsString+']')
         then
         begin
          exp_usata:=true;
          Break;
         end;
      temp_table.Next
      end;
      FreeAndNil(temp_table);   //fine form

      end;

      // check controlliform
      if not(exp_usata) then
      begin
      temp_table:=TClientDataSet.Create(nil);
      t_controlliform.MasterSource:=nil;
      temp_table.CloneCursor(t_controlliform,True,False);
      t_controlliform.MasterSource:=ds_form;

      temp_table.First;
      while not temp_table.Eof do
      begin
      if (temp_table.FieldValues['visibile'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['abilitato'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['exp1'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['exp2'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['extra1'] = t_espressioniidexp.AsString) or
         (temp_table.FieldValues['extra2'] = t_espressioniidexp.AsString) or
         (temp_table.FieldValues['extra3'] = t_espressioniidexp.AsString) or
         (temp_table.FieldValues['extra1'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['extra2'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['extra3'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['NavigationBlockVisible'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['SelectVisible'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['SelectEnable'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['SelectConfirmMessage'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['DetailVisible'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['DetailEnable'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['DetailConfirmMessage'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['InsertVisible'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['InsertEnable'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['InsertConfirmMessage'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['DeleteVisible'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['DeleteEnable'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['DeleteConfirmMessage'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['PostVisible'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['PostEnable'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['PostConfirmMessage'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['UndoVisible'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['UndoEnable'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['UndoConfirmMessage'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['submitonchange'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['caption'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['vocecss'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css1'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css2'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css3'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css4'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css5'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css6'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css7'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css8'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css9'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css10'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css11'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css12'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css13'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css14'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['css15'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (PosEx('o2exp_'+ t_espressioniidexp.AsString+']', temp_table.FieldValues['parent_info'])>0) or
          (PosEx('_exp_'+ t_espressioniidexp.AsString+'()', temp_table.FieldValues['parent_info'])>0) or

        (temp_table.FieldValues['maschera'] = '[o2exp_'+ t_espressioniidexp.AsString+']') or
         (temp_table.FieldValues['scelte_possibili'] = '[o2exp_'+ t_espressioniidexp.AsString+']')
         then
         begin

          exp_usata:=true;
          Break;
         end;
      temp_table.Next
      end;
      FreeAndNil(temp_table);   //fine controlli form
      end;

      if not(exp_usata) then
      begin
      // check operazioni
      temp_table:=TClientDataSet.Create(nil);
      t_operazioni.MasterSource:=nil;
      temp_table.CloneCursor(t_operazioni,True,False);
      t_operazioni.MasterSource:=ds_azioni;

      temp_table.First;
      while not temp_table.Eof do
      begin
      if (temp_table.FieldValues['exp4'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['exp5'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['exp6'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['exp7'] = t_espressioniidexp.Value) or
         (temp_table.FieldValues['exp8'] = t_espressioniidexp.Value) or
         (PosEx('[o2exp_'+ t_espressioniidexp.AsString+']', temp_table.FieldValues['callparam'])>0) or
         (PosEx('exp_'+ t_espressioniidexp.AsString+'()', temp_table.FieldValues['callparam'])>0) or
         (PosEx('::'+ t_espressioniidexp.AsString+'::', temp_table.FieldValues['o2ref'])>0)
         then
         begin
          exp_usata:=true;
          Break;
         end;
      temp_table.Next
      end;
      FreeAndNil(temp_table);

      end;
      // fine operazioni

      if not(exp_usata) then
      begin
      // check expression
      temp_table:=TClientDataSet.Create(nil);
      temp_table.CloneCursor(t_espressioni,True,False);

      temp_table.First;
      while not temp_table.Eof do
      begin
      if (PosEx('o2exp('+ t_espressioniidexp.AsString+')', temp_table.FieldValues['expr'])>0) or
         (PosEx('o2exp('+ t_espressioniidexp.AsString+')', temp_table.FieldValues['return'])>0)
         then
         begin
          exp_usata:=true;
          Break;
         end;
      temp_table.Next
      end;
      FreeAndNil(temp_table);
      end;
         //fine expression

      if not(exp_usata) then
      begin
        if FirstTime then
        begin
          Memo2.Lines.Append('');
          Memo2.Lines.Append('   Unused expressions:');
          Memo2.Lines.Append('');
          FirstTime := False;
        end;
        Memo2.Lines.Append('Unused expression: '+ t_espressioniidexp.AsString);
      end;
      t_espressioni.Next
  end;

  in_importazione:=false;
  t_espressioni.EnableControls;

end;

finally
Screen.Cursor:=crDefault;
end;
end;

procedure Tf_checkprg.btn_elimina_expnotusedClick(Sender: TObject);
var i,idlocal:integer;
begin

  for i := 0 to Memo2.Lines.Count - 1 do
  begin
    if (LeftStr(Memo2.Lines[i], 18) = 'Unused expression:') then
    with dm_form do
    begin
      idlocal := StrToInt(MidStr(Memo2.Lines[i], 19, 5));
      t_espressioni.Locate('idexp', idlocal, []);
      t_espressioni.Delete;
    end;
  end;
  check_globale.Execute;
  CheckExpNotUsed.Execute;

end;

end.
