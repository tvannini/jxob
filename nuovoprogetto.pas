unit nuovoprogetto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ShellCtrls, Mask, JvToolEdit;

type
  Tf_nuovoprogetto = class(TForm)
    e_nomeprogetto: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Memo1: TMemo;
    Label3: TLabel;
    JvDirectoryJx: TJvDirectoryEdit;
    JvDirectoryEditApp: TJvDirectoryEdit;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_nuovoprogetto: Tf_nuovoprogetto;

implementation

uses dm, export, work, import;

{$R *.dfm}

{*
 * Creates a new application project
 *}
procedure Tf_nuovoprogetto.BitBtn1Click(Sender: TObject);
begin
  if (e_nomeprogetto.Text = '') or (JvDirectoryEditApp.Text = '') then
  begin
    MessageDlg('Please input a project name and an existing directory.',
               mtError, [mbOK], 1)
  end
  else
  begin
    with f_work do
    begin
      // _______________________________________ Set new project directories ___
      workdir := JvDirectoryEditApp.Text + '\';
      prgdir  := workdir + 'prgs\';
      userdir := prgdir + e_user.Text + '\';
      // ____________ Create Janox structure directories (htdocs, prgs, ...) ___
      if not (DirectoryExists(workdir + 'htdocs\')) then
        CreateDir(workdir + 'htdocs\');
      if not (DirectoryExists(workdir + 'htdocs\css')) then
        CreateDir(workdir + 'htdocs\css');
      if not (DirectoryExists(workdir + 'htdocs\img')) then
        CreateDir(workdir + 'htdocs\img');
      if not (DirectoryExists(workdir + 'models')) then
        CreateDir(workdir + 'models');
      if not (DirectoryExists(workdir + 'prgs\')) then
        CreateDir(workdir + 'prgs\');
      // ________________________________________ Create developer directory ___
      if not (DirectoryExists(userdir)) then
        CreateDir(userdir);
      // ____________________________________ Set project name and main file ___
      progetto             := e_nomeprogetto.Text;
      OpenDialog1.FileName := workdir + 'htdocs\' + progetto + '.php';
      // _________________________________________________ Preset CDS tables ___
      inizializza_tabelle.Execute;
    end;
    // ________________________________________________ Set project defaults ___
    with dm_form do
    begin
      t_applicazione.Edit;
      // __________________________________________ Set default repositories ___
      t_applicazionedbs.Value      := 'db_repository.inc';
      t_applicazionemenus.Value    := 'menu_repository.inc';
      t_applicazionemodels.Value   := 'mod_repository.inc';
      t_applicazionetables.Value   := 'file_repository.inc';
      t_applicazioneappvars.Value  := 'var_repository.inc';
      t_applicazioneviews.Value    := 'view_repository.inc';
      // ____________________________________________ Set default properties ___
      t_applicazionetitolo.Value   := e_nomeprogetto.Text;
      t_applicazionevalidate.Value := 1;
      t_applicazioneo2_alias.Value := '/janox';
      t_applicazione.Post
    end;
    // ______________________________________________________ Create project ___
    // _________________________________________________ Application options ___
    f_export.app_export.Execute;
    f_import.app_import.Execute;
    // __________________________ Force to use main (no developer) directory ___
    f_work.userdir := f_work.prgdir;
    // __________________________________ Preset default server and database ___
    dm_form.t_servers.InsertRecord(['default', 'sqlite3', '', '', '', 0]);
    dm_form.t_databases.InsertRecord(['default', 'default', '', '', false,
                                      true]);
    f_export.db_export.Execute;
    // ______________________________________ Import to create system tables ___
    f_import.tables_import.Execute;
    f_export.tables_export.Execute;
    f_import.models_import.Execute;
    f_export.models_export.Execute;
    f_export.appvars_export.Execute;
    // _________________________________________________ Create default menu ___
    dm_form.t_menu.InsertRecord(['base', '', 0, 'Base', 'M', '', '']);
    f_export.menu_export.Execute;
    // _____________________________________ TODO: Remove or make it to work ___
    Memo1.Lines.SaveToFile(f_work.userdir + 'view_repository.inc');
    ModalResult := mrOk;
  end;
end; // _________________________________ End create new application project ___

end.
