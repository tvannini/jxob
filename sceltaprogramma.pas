unit sceltaprogramma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Grids, DBGrids, DBCtrls, DB, DBClient,
  ComCtrls, StrUtils, JvComponent, JvSearchFiles, Jclstrings;

type
  Tf_sceltaprogramma = class(TForm)
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    scelta1: TMenuItem;
    Uscita: TMenuItem;
    ListView1: TListView;
    JvSearchFile1: TJvSearchFiles;
    e_expr: TEdit;
    Label1: TLabel;
    Expr1: TMenuItem;
    cb_persistent: TCheckBox;
    procedure UscitaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvSearchFile1FindFile(Sender: TObject; const AName: string);
    procedure e_exprDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public

  scelta: String;
    { Public declarations }
  end;

var
  f_sceltaprogramma: Tf_sceltaprogramma;

implementation

uses work, sceltaespressioni, dm;

{$R *.dfm}


procedure Tf_sceltaprogramma.UscitaClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;


procedure Tf_sceltaprogramma.FormShow(Sender: TObject);
begin
  ListView1.Clear;
  JvSearchFile1.RootDirectory       := f_work.prgdir;
  JvSearchFile1.FileParams.FileMask := '*.prg';
  JvSearchFile1.Search();
  if scelta <> '' then
  begin
    ListView1.Selected := ListView1.FindCaption(-1,
                                                scelta,
                                                false,
                                                false,
                                                false);
  end;
  if ListView1.Selected = nil then
  begin
    ListView1.Selected := ListView1.TopItem;
  end;
  ListView1.Scroll(0, ListView1.Selected.GetPosition.Y - 100);
  ListView1.ItemFocused := ListView1.Selected;

end;


procedure Tf_sceltaprogramma.JvSearchFile1FindFile(Sender: TObject;
                                                   const AName: string);
var
  nomeprg: string;
begin
  nomeprg := trim(copy(AName, length(f_work.prgdir) + 1, 300));
  nomeprg := strtoken(nomeprg, '.');
  if nomeprg <> '_o2viewmodels' then
  begin
    ListView1.AddItem(nomeprg, nil);
  end;

end;


procedure Tf_sceltaprogramma.e_exprDblClick(Sender: TObject);
var exp_local:integer;
begin
  if e_expr.Text <> '' then exp_local:=StrToInt(e_expr.Text);
  exp_local:=f_work.call_scelta_exp(exp_local);
  if exp_local <> 0 then
  begin
    e_expr.Text := inttostr(exp_local);
  end;
end;

procedure Tf_sceltaprogramma.Button1Click(Sender: TObject);
begin
  // aggiorna scelta
  if e_expr.Text <> '' then
   scelta:='[o2exp_'+trim(e_expr.Text) +']'
   else
   scelta:=ListView1.Selected.Caption;

  ModalResult:=mrOk;
end;

end.
