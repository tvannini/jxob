unit conversioni;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvComponent, JvSearchFiles, JclStrings, jbstr, ComCtrls,
  ShellCtrls, FileCtrl, ActnList, DosCommand;

type
  Tf_conversioni = class(TForm)
    log: TMemo;
    Label1: TLabel;
    apprel: TEdit;
    Label2: TLabel;
    o2rel: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    comando: TDosCommand;
    ActionList1: TActionList;
    converte_singolo_prg: TAction;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    nomeprg: string;
    unittmp: TForm;
    { Private declarations }
  public
    build_1_local, build_2_local, build_3_local: integer;
    build_local: string;
    { Public declarations }
  end;

var
  f_conversioni: Tf_conversioni;

implementation

{$R *.dfm}

uses work, import, import_0_0_0, export;

procedure Tf_conversioni.Button1Click(Sender: TObject);
var
  indice_release: integer;
begin
  if MessageDlg('Proceed with application conversion?',
                mtConfirmation,
                mbOKCancel,
                1) = mrOk then
  begin
    log.Clear;
    comando.OutputLines := log.Lines;
    comando.CommandLine := '"' +
                           ExtractFileDir(Application.ExeName) +
                           '\php.exe" "' +
                           ExtractFileDir(Application.ExeName) +
                           '\jxconv.php" "' +
                           f_work.workdir + '\htdocs\' +
                           f_work.progetto + '.php"';
    Screen.Cursor       := crHourGlass;
    comando.Execute;
    Screen.Cursor       := crDefault;
  end;
end;


procedure Tf_conversioni.FormShow(Sender: TObject);
begin
  o2rel.Text  := f_work.build;
  apprel.Text := f_import.build_file;
  // _________________________________________________________ Nothing to do ___
  if (apprel = o2rel) then
  begin
    Button1.Enabled := False;
  end;
end;

end.
