unit phpeditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvEditor, JvHLEditor, JvComponent,
  Menus, ExtCtrls;

type
  Tf_phpeditor = class(TForm)
    phpeditor: TJvHLEditor;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    Sceltacampi1: TMenuItem;
    Panel1: TPanel;
    Exit1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    Return1: TMenuItem;
    Viewsstate1: TMenuItem;
    procedure Sceltacampi1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_phpeditor: Tf_phpeditor;

implementation

uses work, sceltacampiprg, dm;

{$R *.dfm}



procedure Tf_phpeditor.Sceltacampi1Click(Sender: TObject);
var
  appoggio: string;
begin

  If (f_work.call_scelta_campoprg('', true, true, true, true)) <> '' then
  begin

    if (f_sceltacampiprg.PageControl1.ActivePage <> f_sceltacampiprg.ts_fields) then
    begin
      phpeditor.InsertText(f_sceltacampiprg.scelta);
    end
    else if f_sceltacampiprg.ListView1.Selected.SubItems.Strings[0] =
      'Parameter' then
    begin
      phpeditor.InsertText('o2par(' +
        f_sceltacampiprg.ListView1.Selected.SubItems.Strings[1] + ')')
    end
    else begin

      if f_sceltacampiprg.varprev then
      begin
        appoggio := 'o2pre'
      end
      else begin
        appoggio := 'o2val'
      end;

      if (dm_form.t_programminome.Value <> '_o2viewmodels') or
        (f_sceltacampiprg.ListView1.Selected.SubItems.Strings[1] = '_o2SESSION') then
      begin
        phpeditor.InsertText(appoggio + '(' + chr(39) +
          f_sceltacampiprg.ListView1.Selected.SubItems.Strings[1] + chr(39) + ',' +
          chr(39) + f_sceltacampiprg.ListView1.Selected.Caption + chr(39) + ')')
      end
      else begin
        phpeditor.InsertText(appoggio + '(' +
          f_sceltacampiprg.ListView1.Selected.SubItems.Strings[1] + '_o2self' + ',' +
          f_sceltacampiprg.ListView1.Selected.SubItems.Strings[1] + '_o2self' + '."_".' +
          chr(39) + f_sceltacampiprg.ListView1.Selected.Caption + chr(39) + ')')
      end;

    end;
    dm_form.t_select.MasterSource := dm_form.ds_task;
  end;

end;

procedure Tf_phpeditor.Button1Click(Sender: TObject);
begin

  ModalResult := mrOk;
end;


procedure Tf_phpeditor.Exit1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;


procedure Tf_phpeditor.FormShow(Sender: TObject);
begin
  // focus su editor
  phpeditor.SetFocus;

end;

end.
