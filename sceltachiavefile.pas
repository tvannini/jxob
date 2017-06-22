unit sceltachiavefile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Grids, DBGrids, DB, DBClient;

type
  Tf_sceltachiave = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    scelta1: TMenuItem;
    t_indicitestalocal: TClientDataSet;
    ds_local: TDataSource;
    t_indicitestalocalid_tabella: TIntegerField;
    t_indicitestalocalid_indice: TIntegerField;
    t_indicitestalocalnomekey: TStringField;
    t_indicitestalocalmatch: TIntegerField;
    t_indicitestalocalmatchlen: TIntegerField;
    Uscita: TMenuItem;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    e_expr: TEdit;
    lab_expr: TLabel;
    PopupMenu2: TPopupMenu;
    Zoom1: TMenuItem;
    procedure scelta1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UscitaClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    id_tabellasel: integer;
    abilita_expression : Boolean;
    { Public declarations }
  end;

var
  f_sceltachiave: Tf_sceltachiave;

implementation

uses dm, work;

{$R *.dfm}

procedure Tf_sceltachiave.scelta1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tf_sceltachiave.FormShow(Sender: TObject);
begin
  t_indicitestalocal.Filter   := 'id_tabella = ' + IntToStr(id_tabellasel);
  t_indicitestalocal.Filtered := True;
  if not(abilita_expression) then
  begin
   e_expr.Text:='';
   e_expr.Visible:=false;
   lab_expr.Visible:=false;
  end
  else
  begin
   e_expr.Visible:=true;
   lab_expr.Visible:=true;
  end;

  DBGrid1.SetFocus;
end;


procedure Tf_sceltachiave.UscitaClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tf_sceltachiave.Button2Click(Sender: TObject);
var exp_local: integer;
begin
   if e_expr.Text='' then exp_local:=0 else exp_local:=strtoint(e_expr.Text);
   exp_local:=f_work.call_scelta_exp(exp_local);
   if exp_local > 0 then e_expr.Text := IntToStr(exp_local);
end;

procedure Tf_sceltachiave.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  abilita_expression:=false;
end;

end.
