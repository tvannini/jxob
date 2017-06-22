unit dbnavprop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  Tf_dbnavigator = class(TForm)
    e_view: TEdit;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    Select1: TMenuItem;
    Exit1: TMenuItem;
    Label1: TLabel;
    cb_bottoniread: TCheckBox;
    GroupBox1: TGroupBox;
    ed_insert: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    ed_post: TEdit;
    Label4: TLabel;
    ed_delete: TEdit;
    Label5: TLabel;
    ed_undo: TEdit;
    Zoom1: TMenuItem;
    cb_bottoniwrite: TCheckBox;
    Label6: TLabel;
    ed_detail: TEdit;
    Label7: TLabel;
    ed_select: TEdit;
    cb_detail: TCheckBox;
    cb_select: TCheckBox;
    procedure cb_bottoniwriteClick(Sender: TObject);
    procedure e_viewChange(Sender: TObject);
    procedure Zoom1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_dbnavigator: Tf_dbnavigator;

implementation

uses sceltaview, sceltaazione, work;

{$R *.dfm}

procedure Tf_dbnavigator.cb_bottoniwriteClick(Sender: TObject);
begin
   GroupBox1.Visible:=  cb_bottoniwrite.Checked;
end;

procedure Tf_dbnavigator.e_viewChange(Sender: TObject);
begin
  ed_insert.Text:= e_view.Text + '_insert';
  ed_post.Text:= e_view.Text + '_post';
  ed_delete.Text:= e_view.Text + '_delete';
  ed_undo.Text:= e_view.Text + '_undo';
  ed_detail.Text:= e_view.Text + '_detail';
  ed_select.Text:= e_view.Text + '_select';
end;

procedure Tf_dbnavigator.Zoom1Click(Sender: TObject);
begin

 if e_view.Focused then
 begin
  // SCELTA VIEW
  f_sceltaview.ShowModal;
  if f_sceltaview.ModalResult = mrOk then
  begin
      e_view.Text:=f_sceltaview.scelta;
  end;
 end;

 // scelta actions
 if (ed_insert.Focused) or
    (ed_post.Focused) or
    (ed_delete.Focused) or
    (ed_undo.Focused)  or
    (ed_detail.Focused) or
    (ed_select.Focused)
    then
    begin
       if ed_insert.Focused then ed_insert.Text:=f_work.call_scelta_azione(ed_insert.Text);
       if ed_post.Focused then ed_post.Text:=f_work.call_scelta_azione(ed_post.Text);
       if ed_delete.Focused then ed_delete.Text:=f_work.call_scelta_azione(ed_delete.Text);
       if ed_undo.Focused then ed_undo.Text:=f_work.call_scelta_azione(ed_undo.Text);
       if ed_detail.Focused then ed_detail.Text:=f_work.call_scelta_azione(ed_detail.Text);
       if ed_select.Focused then ed_select.Text:=f_work.call_scelta_azione(ed_select.Text);

    end;
 end;

procedure Tf_dbnavigator.Button1Click(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

procedure Tf_dbnavigator.FormShow(Sender: TObject);
begin
  cb_bottoniread.Checked:=True;
  cb_bottoniwrite.Checked:=True;
end;

end.
