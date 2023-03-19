unit preferences;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, inifiles, StdCtrls, ComCtrls, ShellCtrls, ExtCtrls, Buttons,
  JvCombobox, JvColorCombo, ActnList, FileCtrl, JvBaseDlg,
  JvSelectDirectory;

type
  Tf_config = class(TForm)
    e_def_user: TEdit;
    Label1: TLabel;
    Button1: TButton;
    PageControl1: TPageControl;
    ts_generale: TTabSheet;
    Panel1: TPanel;
    ts_actions: TTabSheet;
    gb_oper_colors: TGroupBox;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    cl_box_call: TJvColorComboBox;
    Label4: TLabel;
    cl_box_goto: TJvColorComboBox;
    Label5: TLabel;
    Label6: TLabel;
    cl_box_close: TJvColorComboBox;
    Label7: TLabel;
    cl_box_exeact: TJvColorComboBox;
    Label8: TLabel;
    cl_box_exescr: TJvColorComboBox;
    Label9: TLabel;
    cl_box_update: TJvColorComboBox;
    Label10: TLabel;
    cl_box_ret: TJvColorComboBox;
    Label11: TLabel;
    cl_box_setmenu: TJvColorComboBox;
    Label12: TLabel;
    cl_box_msg: TJvColorComboBox;
    Label13: TLabel;
    cl_box_io: TJvColorComboBox;
    Label14: TLabel;
    cl_box_print: TJvColorComboBox;
    Label15: TLabel;
    cl_box_rec: TJvColorComboBox;
    Label16: TLabel;
    cl_box_rem: TJvColorComboBox;
    Label17: TLabel;
    cl_box_dbg: TJvColorComboBox;
    ActionList1: TActionList;
    carica_ini: TAction;
    OpenDialog_path: TOpenDialog;
    e_reppath: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    e_jxrntpath: TEdit;
    Label20: TLabel;
    e_temppath: TEdit;
    PathButton1: TButton;
    PathButton2: TButton;
    PathButton3: TButton;
    Panel2: TPanel;
    Label2: TLabel;
    e_iniFile: TEdit;
    DialogSelectDir: TJvSelectDirectory;
    e_cvs: TCheckBox;
    TabSheet1: TTabSheet;
    Label21: TLabel;
    e_brackets: TComboBox;
    e_layer: TComboBox;
    Label22: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure carica_iniExecute(Sender: TObject);
    procedure PathButton1Click(Sender: TObject);
    procedure PathButton2Click(Sender: TObject);
    procedure PathButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_config: Tf_config;

implementation

uses work, TypInfo;

{$R *.dfm}

procedure Tf_config.FormShow(Sender: TObject);
begin
  carica_ini.Execute();
  e_iniFile.Text := f_work.settings.FileName;
end;


{**
 * Save settings to INI file
 *}
procedure Tf_config.Button1Click(Sender: TObject);
var
  iniColor: String;
  i: integer;
begin
  f_work.settings.WriteString('O2_ENV', 'default_user', e_def_user.Text);
  f_work.settings.WriteString('O2_ENV', 'jxrnt', e_jxrntpath.Text);
  f_work.settings.WriteInteger('O2_ENV', 'layer', e_layer.ItemIndex);
  f_work.settings.WriteString('O2_ENV', 'design_report', e_reppath.Text);
  f_work.settings.WriteBool('O2_ENV', 'cvs_versioning', e_cvs.Checked);
  // __________________________________________ Save brackets mode in editor ___
  if e_brackets.ItemIndex = 1 then
  begin
    f_work.settings.WriteString('Editor', 'brackets', 'O');
  end
  else if e_brackets.ItemIndex = 2 then
  begin
    f_work.settings.WriteString('Editor', 'brackets', 'B');
  end
  else
  begin
    f_work.settings.WriteString('Editor', 'brackets', 'N');
  end;
  e_temppath.Text := Trim(e_temppath.Text);
  if (e_temppath.Text <> '') and
     (e_temppath.Text[Length(e_temppath.Text)] <> '\') then
  begin
    e_temppath.Text := e_temppath.Text + '\';
  end;
  f_work.settings.WriteString('O2_ENV', 'temp_dir', e_temppath.Text);
  // _________________________________ Save colors for operations in actions ___
  for i := 0 to gb_oper_colors.ControlCount - 1 do
  begin
    if gb_oper_colors.Controls[i].ClassName = 'TJvColorComboBox' then
    begin
      iniColor := ColorToString(GetPropValue(gb_oper_colors.Controls[i],
                                             'ColorValue',
                                             False));
      f_work.settings.WriteString('Operators_color',
                                  gb_oper_colors.Controls[i].Name,
                                  iniColor)
    end;
  end;
  f_work.settings.UpdateFile;
  ModalResult := mrOk;
end;

{**
 * Set default colors for operations in actions
 *}
procedure Tf_config.BitBtn1Click(Sender: TObject);
begin
  cl_box_call.ColorValue    := clBlack;
  cl_box_goto.ColorValue    := clBlack;
  cl_box_close.ColorValue   := clBlack;
  cl_box_exeact.ColorValue  := clTeal;
  cl_box_exescr.ColorValue  := clTeal;
  cl_box_update.ColorValue  := clBlue;
  cl_box_ret.ColorValue     := clBlue;
  cl_box_setmenu.ColorValue := clBlue;
  cl_box_msg.ColorValue     := clGray;
  cl_box_io.ColorValue      := clMaroon;
  cl_box_print.ColorValue   := clMaroon;
  cl_box_rec.ColorValue     := clRed;
  cl_box_rem.ColorValue     := clSilver;
  cl_box_dbg.ColorValue     := clGreen;
end;


{**
 * Load preferences from INI settings
 *}
procedure Tf_config.carica_iniExecute(Sender: TObject);
var
  iniColor, brackets : String;
  i : Integer;
begin
  e_def_user.Text   := f_work.settings.ReadString('O2_ENV',
                                                  'default_user',
                                                  'supervisor');
  e_reppath.Text    := f_work.settings.ReadString('O2_ENV',
                                                  'design_report',
                                                  '');
  e_jxrntpath.Text  := f_work.settings.ReadString('O2_ENV', 'jxrnt', '');
  e_layer.ItemIndex := f_work.settings.ReadInteger('O2_ENV', 'layer', 0);
  e_temppath.Text   := f_work.settings.ReadString('O2_ENV', 'temp_dir', '');
  e_cvs.Checked     := f_work.settings.ReadBool('O2_ENV',
                                                'cvs_versioning',
                                                false);
  brackets          := f_work.settings.ReadString('Editor', 'brackets', 'N');
  // _____________________________________________________ Only open bracket ___
  if brackets = 'O' then
  begin
    e_brackets.ItemIndex := 1;
  end
  // _________________________________________ Both, open and close brackets ___
  else if brackets = 'B' then
  begin
    e_brackets.ItemIndex := 2;
  end
  // ___________________________________________________________ No brackets ___
  else
  begin
    e_brackets.ItemIndex := 0;
  end;
  // __________________________________ Set colors for operations in actions ___
  for i := 0 to gb_oper_colors.ControlCount - 1 do
  begin
    if gb_oper_colors.Controls[i].ClassName = 'TJvColorComboBox' then
    begin
      iniColor := f_work.settings.ReadString('Operators_color',
                                             gb_oper_colors.Controls[i].Name,
                                             'clBlack');
      SetPropValue(gb_oper_colors.Controls[i],
                   'ColorValue',
                   StringToColor(iniColor));
    end;
  end;
end;


{*
 * Select path to Report Manager executable
 *}
procedure Tf_config.PathButton1Click(Sender: TObject);
begin
  OpenDialog_path.InitialDir := ExtractFileDir(e_reppath.Text);
  if OpenDialog_path.Execute then
  begin
    e_reppath.Text := OpenDialog_path.FileName;
  end;
end;


{*
 * Select path to Janox runtime
 *}
procedure Tf_config.PathButton2Click(Sender: TObject);
begin
  OpenDialog_path.InitialDir := ExtractFileDir(e_jxrntpath.Text);
  if OpenDialog_path.Execute then
  begin
    e_jxrntpath.Text := OpenDialog_path.FileName;
  end;
end;


{*
 * Select path to temporary directory
 *}
procedure Tf_config.PathButton3Click(Sender: TObject);
begin
  DialogSelectDir.InitialDir := e_temppath.Text;
  if DialogSelectDir.Execute then
  begin
    e_temppath.Text := DialogSelectDir.Directory;
  end;
end;

end.

