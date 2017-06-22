unit newview;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
    Tf_newview = class(TForm)
    e_view: TEdit;
    Label1: TLabel;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    Select1: TMenuItem;
    Exit1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Select1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_newview: Tf_newview;

implementation
uses
dm;
{$R *.dfm}

procedure Tf_newview.FormShow(Sender: TObject);
begin
   e_view.Text := '';
   e_view.SetFocus;
end;


procedure Tf_newview.Button1Click(Sender: TObject);
begin
  if (e_view.Text = '') then
  begin
    ShowMessage('Please provide a name for new view');
  end
  else if (dm_form.t_task.Lookup('nome', e_view.Text, 'nome') = e_view.Text) then
  begin
    ShowMessage('View name already exists');
  end
  else
  begin
    ModalResult := mrOk;
  end;
end;


procedure Tf_newview.Select1Click(Sender: TObject);
begin
  Button1.Click
end;


procedure Tf_newview.Exit1Click(Sender: TObject);
begin
  ModalResult := mrCancel
end;

end.
