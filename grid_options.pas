unit grid_options;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvComponent, JvScrollPanel;

type
  Tf_grid_options = class(TForm)
    cols_vis: TCheckBox;
    cols_ord: TCheckBox;
    cols_size: TCheckBox;
    recs_filter: TCheckBox;
    recs_sort: TCheckBox;
    rows_num: TCheckBox;
    data_export: TCheckBox;
    recs_delete: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    override_defaults: TCheckBox;
    Label9: TLabel;
    JvDivider1: TJvDivider;
    JvDivider2: TJvDivider;
    Button1: TButton;
    Button2: TButton;
    procedure override_defaultsClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_grid_options: Tf_grid_options;

implementation

{$R *.dfm}

procedure Tf_grid_options.override_defaultsClick(Sender: TObject);
begin
  if override_defaults.Checked then
  begin
    cols_vis.Enabled    := True;
    cols_ord.Enabled    := True;
    cols_size.Enabled   := True;
    recs_filter.Enabled := True;
    recs_sort.Enabled   := True;
    recs_delete.Enabled := True;
    rows_num.Enabled    := True;
    data_export.Enabled := True;
  end
  else
  begin
    cols_vis.Enabled    := False;
    cols_ord.Enabled    := False;
    cols_size.Enabled   := False;
    recs_filter.Enabled := False;
    recs_sort.Enabled   := False;
    recs_delete.Enabled := False;
    rows_num.Enabled    := False;
    data_export.Enabled := False;
  end;
end;

end.
