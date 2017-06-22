unit control_panel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  JvComponent, JvSysComp, ActnList, Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  Tf_controlpanel = class(TForm)
    ActionList1: TActionList;
    start_apache: TJvCreateProcess;
    act_start_apache: TAction;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure act_start_apacheExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_controlpanel: Tf_controlpanel;

implementation

uses StrUtils;

{$R *.dfm}







procedure Tf_controlpanel.FormShow(Sender: TObject);
begin
  act_start_apache.Execute;
end;




procedure Tf_controlpanel.act_start_apacheExecute(Sender: TObject);
begin
  if start_apache.State <> psRunning then
  begin
    start_apache.Run
  end;
end;



procedure Tf_controlpanel.Button1Click(Sender: TObject);
begin
// f_controlpanel.Hide;
Application.Terminate
end;

end.
