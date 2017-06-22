unit Caption;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Mask, DBCtrls, StdCtrls;

type
  Tf_caption = class(TForm)
    e_caption: TEdit;
    e_exp: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    DBEdit1: TDBEdit;
    PopupMenu1: TPopupMenu;
    Select: TMenuItem;
    Exit1: TMenuItem;
    Zoom1: TMenuItem;
    procedure Exit1Click(Sender: TObject);
    procedure SelectClick(Sender: TObject);
    procedure Zoom1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_caption: Tf_caption;

implementation

uses dm, sceltaespressioni, work;

{$R *.dfm}

procedure Tf_caption.Exit1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tf_caption.SelectClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tf_caption.Zoom1Click(Sender: TObject);
var exp_local:integer;
begin

  if e_exp.Text <> '' then exp_local:=strtoint(e_exp.Text);
  exp_local:=f_work.call_scelta_exp(exp_local);
  if exp_local <> 0 then
  begin
    e_exp.Text := inttostr(exp_local)
  end;
end;

procedure Tf_caption.FormShow(Sender: TObject);
begin
  //agevola
  e_caption.SetFocus;
  e_caption.SelStart:=StrLen(PChar(string(e_caption.Text)));

  DBEdit1.Visible:=e_exp.Text <> '';

end;

end.
