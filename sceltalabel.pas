unit sceltalabel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, ActnList, Menus;

type
  Tf_sceltalabel = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    e_trovalabel: TEdit;
    Button3: TButton;
    ActionList1: TActionList;
    filtra: TAction;
    Label1: TLabel;
    PopupMenu1: TPopupMenu;
    Select1: TMenuItem;
    Exite1: TMenuItem;
    procedure Button2Click(Sender: TObject);
    procedure filtraExecute(Sender: TObject);
    procedure Exite1Click(Sender: TObject);
  private
    { Private declarations }
  public
    scelta_id, scelta_metodo: string;
    { Public declarations }
  end;

var
  f_sceltalabel: Tf_sceltalabel;

implementation

uses dm;

{$R *.dfm}

procedure Tf_sceltalabel.Button2Click(Sender: TObject);
begin
  scelta_id     := dm_form.t_labelsid.AsString;
  scelta_metodo := 'o2exp::lab("' + scelta_id + '")';
  ModalResult   := mrOk;
end;

procedure Tf_sceltalabel.filtraExecute(Sender: TObject);
begin
  dm_form.t_labels.Filter   := 'label like ' + chr(39) + e_trovalabel.Text + chr(39);
  dm_form.t_labels.Filtered := True;
end;

procedure Tf_sceltalabel.Exite1Click(Sender: TObject);
begin
  ModalResult := mrCancel
end;

end.
