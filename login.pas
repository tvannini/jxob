unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvGIF, ExtCtrls, StdCtrls, inifiles,JclSysInfo;

type
    Tf_login = class(TForm)
    Image1: TImage;
    e_user: TEdit;
    Button3: TButton;
    IniTextOri: TMemo;
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure e_userKeyPress(Sender: TObject; var Key: Char);
    procedure Button3KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_login   : Tf_login;
  strBuffer : TStringList;
  loginOK   : Boolean;

implementation

uses work;

{$R *.dfm}

{**
 * Initializes global informations and show login form.
 * Called on executable start up.
 * Reads .INI file and create settings object.
 *}
procedure Tf_login.FormShow(Sender: TObject);
var
  workDir, iniFile, paramIniFile, newIniFile : String;
begin
  workDir      := ExtractFileDir(Application.ExeName) + '\';
  newIniFile   := ChangeFileExt(Application.ExeName, '.ini');
  paramIniFile := ParamStr(1);
  // __________________________________________ INI file passed as parameter ___
  if (paramIniFile <> '') and FileExists(workDir + paramIniFile) then
  begin
    iniFile := workDir + paramIniFile;
  end
  // ____________________________________________ New version INI file found ___
  else if FileExists(newIniFile) then
  begin
    iniFile := newIniFile;
  end
  // _____________________________________________ Old o2generator.ini found ___
  else if FileExists(workDir + 'o2generator.ini') then
  begin
   iniFile := workDir + 'o2generator.ini';
  end
  // _____________________________________ No INI file found, create new one ___
  else
  begin
    iniFile   := newIniFile;
    strBuffer := TStringList.Create;
    strBuffer.Add(IniTextOri.Lines.GetText);
    strBuffer.SaveToFile(iniFile);
    ShowMessage('JANOX OPEN BUILDER' + chr(10) +
                'No INI configuration file found.' + chr(10) +
                'New one created in Builder folder.');
  end;
  // _________________________________________ Create settings from INI file ___
  f_work.settings := TIniFile.Create(iniFile);
  // _________________________________________________________ Set developer ___
  e_user.Text     := LowerCase(f_work.settings.ReadString('O2_ENV',
                                                          'default_user',
                                                          'supervisor'));
  // _________________________________________________ Set Development Layer ___
  f_work.layer := f_work.settings.ReadInteger('O2_ENV', 'layer', 0);
  // ____________________________________________________ Set temp directory ___
  if f_work.tempdir = '' then
  begin
    f_work.tempdir := f_work.settings.ReadString('O2_ENV', 'temp_dir', '');
  end;
  if f_work.tempdir = '' then
  begin
    f_work.tempdir := GetWindowsTempFolder + '\';
  end;
  // _____________________________________ Set design form screen resolution ___
  f_work.e_res_x.Text := f_work.settings.ReadString('Forms',
                                                    'Resolution_x',
                                                    '1024');
  f_work.e_res_y.Text := f_work.settings.ReadString('Forms',
                                                    'Resolution_y',
                                                    '768');
  loginOK := False;

end;


procedure Tf_login.Button3Click(Sender: TObject);
begin
  f_work.e_user := e_user;
  loginOK       := True;
  f_work.Show;
  f_work.Button3.Click();
  ModalResult := mrOk;
end;


{**
 * Used to provide Enter (confirm) and Esc (exit) keypress on developer field
 *}
procedure Tf_login.e_userKeyPress(Sender: TObject; var Key: Char);
begin
   // ___________________________________________ Use Enter to confirm login ___
   if Key = Chr(13) then
   begin
     f_login.Button3Click(Sender);
   end;
   // ___________________________________________________ Use Esc to to exit ___
   if Key = Chr(27) then
   begin
     Application.Terminate;
   end;
end;


{**
 * Used to provide Esc (exit) keypress on login button
 *}
procedure Tf_login.Button3KeyPress(Sender: TObject; var Key: Char);
begin
   // ___________________________________________________ Use Esc to to exit ___
   if Key = Chr(27) then
   begin
     Application.Terminate;
   end;
end;

procedure Tf_login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not loginOK then
  begin
    Application.Terminate;
  end;
end;

end.
