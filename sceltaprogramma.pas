unit sceltaprogramma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Grids, DBGrids, DBCtrls, DB, DBClient,
  ComCtrls, StrUtils;

type
  Tf_sceltaprogramma = class(TForm)
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    scelta1: TMenuItem;
    Uscita: TMenuItem;
    e_expr: TEdit;
    Label1: TLabel;
    Expr1: TMenuItem;
    cb_persistent: TCheckBox;
    prgs: TListBox;
    procedure UscitaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
var
  SR: TSearchRec;
begin
  prgs.Clear;
  if FindFirst(f_work.prgdir + '*.prg', faAnyFile, SR) = 0 then
  begin
    repeat
      if SR.Name <> '_o2viewmodels.prg' then
      begin
        prgs.AddItem(LeftStr(SR.Name, Length(SR.Name) - 4), nil);
      end;
    until FindNext(SR) <> 0;
    FindClose(SR);
  end;
  // __________________________________________________ Set selection if any ___
  if scelta <> '' then
  begin
    prgs.ItemIndex := prgs.Items.IndexOf(scelta);
  end
  else begin
    prgs.ItemIndex := 0;
  end;
  prgs.SetFocus;

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
  if e_expr.Text <> '' then
  begin
    scelta:='[o2exp_' + trim(e_expr.Text) + ']';
  end
  else
  begin
    scelta := prgs.Items[prgs.ItemIndex];
  end;
  ModalResult := mrOk;
end;

end.
