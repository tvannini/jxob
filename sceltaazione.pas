unit sceltaazione;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, StdCtrls, DB, DBCtrls, Buttons, DBClient,
  Mask;

type
  Tf_sceltaazione = class(TForm)
    ListView1: TListView;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    select: TMenuItem;
    Zoom1: TMenuItem;
    Esc1: TMenuItem;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    loop_task: TEdit;
    end_expr: TEdit;
    nuova_act: TButton;
    cb_repeat: TComboBox;
    Label3: TLabel;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure selectClick(Sender: TObject);
    procedure end_exprDblClick(Sender: TObject);
    procedure loop_taskDblClick(Sender: TObject);
    procedure Zoom1Click(Sender: TObject);
    procedure Esc1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure nuova_actClick(Sender: TObject);
    procedure cb_repeatChange(Sender: TObject);
  private
    { Private declarations }
  public
    p_azione, p_nome_task, p_dir_task, p_expfine: string;
    abilita_esegui_in_batch: boolean;
    { Public declarations }
  end;

var
  f_sceltaazione: Tf_sceltaazione;


implementation

uses dm, sceltaespressioni, sceltaview, Math, work;


{$R *.dfm}

procedure Tf_sceltaazione.FormShow(Sender: TObject);
var
  temp_table: TClientDataSet;

  azione: TListItem;
  azione_selezionata: TListItem;
  nodoazioni: TTreeNode;
begin

  listview1.Clear;

  with dm_form do
  begin

    //carica listview
    temp_table := TClientDataSet.Create(nil);
    temp_table.CloneCursor(t_azioni, True, False);

    temp_table.First;
    while not (temp_table.EOF) do
    begin
      azione := listview1.Items.Add;
      azione.Caption := temp_table.FieldValues['azione'];
      if (temp_table.FieldValues['azione'] = p_azione) then
      begin
        azione_selezionata := azione;
      end;
      temp_table.Next
    end;

    if (azione_selezionata <> nil) and (p_azione <> '') then
    begin
      ListView1.Selected := azione_selezionata ;
      ListView1.Selected.Focused:=true;
    end;

    if abilita_esegui_in_batch then
    begin

      if p_expfine = 'True' then

      begin
        end_expr.Text:='';
        cb_repeat.ItemIndex:=0;
      end;

      if p_expfine = 'False' then
      begin
        end_expr.Text:='';
        cb_repeat.ItemIndex:=1;

      end;

      if (p_expfine <> 'True') and (p_expfine <> 'False') then
      begin

         end_expr.Text:= p_expfine;
         cb_repeat.ItemIndex:=2;
      end;

      loop_task.Text    := p_nome_task;
//      loop_dir.Text     := p_dir_task;
      end_expr.Enabled  := True;
      loop_task.Enabled := True;
//      loop_dir.Enabled  := True;

    end
    else
    begin
      end_expr.Text     := '';
      loop_task.Text    := '';
//      loop_dir.Text     := '';
      end_expr.Enabled  := False;
      loop_task.Enabled := False;
//      loop_dir.Enabled  := False;
    end;

  end;
  // piazza 0 su expression null

  if (ListView1.Selected = nil) and (ListView1.Items.Count > 0) then
  begin
   ListView1.ItemIndex:=0;
   ListView1.ItemFocused:=ListView1.Selected;
  end;
  if end_expr.Text = '' then end_expr.Text := '0';
  if (cb_repeat.Text = 'By expression') then   end_expr.Enabled := True else end_expr.Enabled:=false;
  ListView1.SetFocus;
end;

procedure Tf_sceltaazione.selectClick(Sender: TObject);
var
i: integer;
tmp_nodo: TTreeNode;
trovato: boolean;
begin
  if cb_repeat.Text <> 'By expression' then end_expr.Text := cb_repeat.Text;

  // se arriva da execute action aggiunge al nodo selezionato sempre
  if abilita_esegui_in_batch then
  begin
   // elimina eventuale precedente azione
   if p_azione <> '' then f_work.eliminasubitemtree(f_work.nodo_ultimo_selezionato, p_azione);
   tmp_nodo:=f_work.supertree.Items.AddChild(f_work.nodo_ultimo_selezionato, ListView1.Selected.Caption);
   tmp_nodo.ImageIndex := 29;
   tmp_nodo.SelectedIndex := 29;
  end
  //altrimenti aggiunge al nodo action solo se non esiste già
  else
  begin
   for i:= 1 to f_work.nodo_azioni.Count do
   begin
       if i = 1 then
       tmp_nodo:= f_work.nodo_azioni.getFirstChild()
       else
       tmp_nodo:= f_work.nodo_azioni.GetNextChild(tmp_nodo);
       if tmp_nodo.Text = ListView1.Selected.Caption then
        begin
            trovato:=true;
            Break;
        end;

   end;
   if not(trovato) then
   begin
       tmp_nodo:=f_work.supertree.Items.AddChild(f_work.nodo_azioni, ListView1.Selected.Caption);
       tmp_nodo.SelectedIndex:=29;
       tmp_nodo.ImageIndex:=29;

   end;
  end;
  ModalResult := mrOk;
end;

procedure Tf_sceltaazione.end_exprDblClick(Sender: TObject);
var exp_local: integer;
begin
  if end_expr.Text <> '' then   exp_local:= strtoint(end_expr.Text) ;
  exp_local:=f_work.call_scelta_exp(exp_local);
  if exp_local <> 0 then
  begin
    end_expr.Text := inttostr(exp_local)
  end;
end;

procedure Tf_sceltaazione.loop_taskDblClick(Sender: TObject);
begin
  f_sceltaview.scelta:=loop_task.Text;
  f_sceltaview.solo_view:=True;

  f_Sceltaview.ShowModal;
  if f_sceltaview.ModalResult = mrOk then
  begin
    loop_task.Text := f_sceltaview.scelta;
  end;
end;

procedure Tf_sceltaazione.Zoom1Click(Sender: TObject);
begin
  if end_expr.Focused then
  begin
    end_exprDblClick(Self)
  end;
  if loop_task.Focused then
  begin
    loop_taskDblClick(Self)
  end;
end;

procedure Tf_sceltaazione.Esc1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tf_sceltaazione.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  abilita_esegui_in_batch := False;
end;



procedure Tf_sceltaazione.nuova_actClick(Sender: TObject);
var
 parentLocal: TTreeNode;
 listItemLocal: TListItem;
 nomeAzioneLocal: string;
begin
  nomeAzioneLocal := f_work.new_actionExecute(self);
  if nomeAzioneLocal <> '' then
  begin
    listItemLocal          := ListView1.Items.Add;
    listItemLocal.Caption  := nomeAzioneLocal;
    listItemLocal.Selected := true;
    listItemLocal.Focused  := true;
    ListView1.SetFocus;
  end;
end;

procedure Tf_sceltaazione.cb_repeatChange(Sender: TObject);
begin
  end_expr.Enabled:= cb_repeat.Text = 'By expression'
end;

end.
