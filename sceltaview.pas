unit sceltaview;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, Menus, ComCtrls, DBClient;

type
  Tf_sceltaview = class(TForm)
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    Select1: TMenuItem;
    Esc1: TMenuItem;
    ListView1: TListView;
    procedure Select1Click(Sender: TObject);
    procedure Esc1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    scelta: string;
    solo_view: Boolean;
    { Public declarations }
  end;

var
  f_sceltaview: Tf_sceltaview;

implementation

uses dm;

{$R *.dfm}

procedure Tf_sceltaview.Select1Click(Sender: TObject);
begin
  if (ListView1.Selected <> nil) and (ListView1.Selected.Caption <> '---') then
  begin
    scelta      := ListView1.Selected.Caption;
    ModalResult := mrOk;
  end
  else
  begin
    ShowMessage('Invalid selection');
  end;
end;


procedure Tf_sceltaview.Esc1Click(Sender: TObject);
begin
  scelta      := '';
  ModalResult := mrCancel;
end;


procedure Tf_sceltaview.FormShow(Sender: TObject);
var temp: TListItem;
begin
  // ____________________________________________________________ Load views ___
  ListView1.Clear;
  // _________________________________________________ Loop on program views ___
  dm_form.t_task.First;
  While not(dm_form.t_task.Eof) do
  begin
    temp         := ListView1.Items.Add;
    temp.Caption := dm_form.t_tasknome.Value;
    temp.SubItems.Append('View');
    // _________________________________________________ Check for selection ___
    if scelta = dm_form.t_tasknome.Value then
    begin
      ListView1.Selected := temp;
    end;
    dm_form.t_task.Next;
  end; // ________________________________________________ End loop on views ___


  if not(solo_view) then
  begin
    // ____________________________________________________ Insert separator ___
    temp         := ListView1.Items.Add;
    temp.Caption := '---';
    // ____________________________________________ Add local variables view ___
    temp         := ListView1.Items.Add;
    temp.Caption := 'prg§_§var';
    temp.SubItems.Append('Local Variables');
    // _________________________________________________ Check for selection ___
    if scelta = 'prg§_§var' then
    begin
      ListView1.Selected := temp;
    end;
    { _____________________________________ Add Session variables view (???) ___
    temp         := ListView1.Items.Add;
    temp.Caption := '_o2SESSION';
    temp.SubItems.Append('Session Variables');
    // _________________________________________________ Check for selection ___
    if scelta = '_o2SESSION' then
    begin
      ListView1.Selected := temp;
    end;
    }
  end;
  if scelta = '' then
  begin
    ListView1.Selected := ListView1.TopItem;
  end;
  ListView1.ItemFocused := ListView1.Selected;
end;

end.
