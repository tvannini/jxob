program o2controlpanel;

uses
  Forms,
  control_panel in 'control_panel.pas' {f_controlpanel};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tf_controlpanel, f_controlpanel);
  Application.Run;
end.
