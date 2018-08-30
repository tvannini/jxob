unit oggetti_form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DsnPanel, Buttons, ExtCtrls, dm, DsnProp, DsnSpctr,
  DsnUnit, DsnSubMl, DsnSubGr, DsnSubDp, o2edit, o2label, o2separator, o2image,
  o2agente, o2groupbox, o2textarea, o2checkbox, o2listbox, o2button, DBCtrls,
  o2dbnavigator, ComCtrls, ImgList, ActnList, XPStyleActnCtrls, ActnMan,
  o2table, o2multipage, o2file, JvScrollPanel, JvCaptionPanel, JvComponent,
  o2htmlarea, o2tree, o2document, o2Map, JvPanel, JvTransparentPanel, inifiles,
  CommCtrl, o2imglist, o2progress;

type
  Tf_oggettiform = class(TForm)
    DsnDpstPanel: TPanel;
    Dpst_To2label: To2label;
    Dpst_To2edit: To2edit;
    Dpst_To2button: To2button;
    Dpst_To2checkbox: To2checkbox;
    Dpst_To2textarea: To2textarea;
    Dpst_To2image: To2image;
    Dpst_To2separator: To2separator;
    PageControl1: TPageControl;
    ts_campi: TTabSheet;
    ListView1: TListView;
    Dpst_To2ListBox: To2ListBox;
    Dpst_To2multipage: To2multipage;
    Dpst_To2file: To2file;
    ActionList1: TActionList;
    aggiorna_lista_campi: TAction;
    Dpst_To2htmlarea: To2htmlarea;
    Dpst_To2document: To2document;
    ts_objects: TTabSheet;
    tree_object: TTreeView;
    ricarica_tree_object: TAction;
    Dpst_To2dbnavigator: To2dbnavigator;
    Dpst_To2table: To2table;
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    ts_palette: TTabSheet;
    DsnPanel1: TDsnPanel;
    ArrowButton1: TArrowButton;
    DsnButton11: TDsnButton;
    DsnButton1: TDsnButton;
    DsnButton2: TDsnButton;
    DsnButton4: TDsnButton;
    DsnButton5: TDsnButton;
    DsnButton8: TDsnButton;
    DsnButton9: TDsnButton;
    DsnButton13: TDsnButton;
    DsnButton14: TDsnButton;
    DsnButton3: TDsnButton;
    DsnButton6: TDsnButton;
    DsnButton7: TDsnButton;
    DsnButton15: TDsnButton;
    DsnButton12: TDsnButton;
    Spacer: TPanel;
    TreeImgs: TImageList;
    DsnButton10: TDsnButton;
    DsnButton16: TDsnButton;
    Dpst_To2tree: To2tree;
    DsnButton17: TDsnButton;
    Dpst_To2progress: To2progress;
    Dpst_To2imglist: To2imglist;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure aggiorna_lista_campiExecute(Sender: TObject);
    procedure insert_lista_campi(Sender: TObject; Controllo: TControl);
    procedure BitBtn1Click(Sender: TObject);
    procedure ricarica_tree_objectExecute(Sender: TObject);
    procedure tree_objectChange(Sender: TObject; Node: TTreeNode);
    procedure insert_tree_objectExecute(Sender: TObject;
                                        Controllo: TControl;
                                        ParentNode: TTreeNode);
    procedure PageControl1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DsnPanel1Resize(Sender: TObject);
    procedure ListView1SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure ListView1Compare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_oggettiform: Tf_oggettiform;

implementation

uses area_form, export, work, Math;

{$R *.dfm}


procedure Tf_oggettiform.ComboBox1Change(Sender: TObject);
var
  xxform: TDsnStage;
begin
  f_areaform.DsnSwitch1.DesignOff;
  f_areaform.Dsn8Register1.DsnStage.Color := clWhite;

  xxform := f_areaform.findcomponent('_stage_' + ComboBox1.Text) as TDsnStage;

  f_areaform.Dsn8Register1.DsnStage := xxform;
  xxform.Color := RGB(230, 226, 221);
  f_areaform.DsnSwitch1.DesignOn;

  ultima_form := ComboBox1.Text;
end;


procedure Tf_oggettiform.FormActivate(Sender: TObject);
begin
  BitBtn1.Enabled := f_work.mycheck(dm_form.t_programminome.Value + '.prg');
end;

{
procedure Tf_oggettiform.aggiorna_lista_campiExecute_old(Sender: TObject);
var
  campo: TListItem;
  nomeform, nometask: string;
begin
  listview1.Clear;
  with dm_form do
  begin
    t_select.MasterSource := nil;
    t_select.Filter := 'prg = ' + chr(39) + t_programminome.Value + chr(39);

    t_controlliform.MasterSource := nil;
    t_controlliform.Filter := 'prg = ' + chr(39) + t_programminome.Value + chr(39);

    t_select.Filtered := True;
    t_controlliform.Filtered := True;

    //carica listview
    t_select.First;
    while not (t_select.EOF) do
    begin

      nometask := t_task.Lookup('id', t_selectidtask.Value, 'nome');

      campo := listview1.Items.Add;
      campo.Caption := t_selectcon_nome.Value;
      campo.SubItems.Add(t_task.Lookup('id', t_selectidtask.Value, 'nome'));

      nomeform := '';
      if t_controlliform.Lookup('riferimento', '[' + nometask + '::' +
        t_selectcon_nome.Value + ']', 'nomeform') <> null then
      begin
        nomeform := t_controlliform.Lookup('riferimento', '[' + nometask + '::' +
          t_selectcon_nome.Value + ']', 'nomeform')
      end;

      if nomeform = '' then
      begin
        campo.ImageIndex := 1
      end;
      if nomeform = ComboBox1.Text then
      begin
        campo.ImageIndex := 3
      end;
      if (nomeform <> ComboBox1.Text) and (nomeform <> '') then
      begin
        campo.ImageIndex := 2
      end;

      t_select.Next
    end;

    t_select.Filter   := '';
    t_select.Filtered := False;
    t_select.MasterSource := ds_task;

    //virtual del task
    t_variabili_prg.First;
    while not t_variabili_prg.EOF do
    begin
      campo := listview1.Items.Add;
      campo.Caption := t_variabili_prgalias.Value;
      campo.SubItems.Add('prg§_§var');

      nomeform := '';
      if t_controlliform.Lookup('riferimento', '[prg§_§var::' +
        t_variabili_prgalias.Value + ']', 'nomeform') <> null then
      begin
        nomeform := t_controlliform.Lookup('riferimento', '[prg§_§var::' +
          t_variabili_prgalias.Value + ']', 'nomeform')
      end;
      if nomeform = '' then
      begin
        campo.ImageIndex := 1
      end;
      if nomeform = ComboBox1.Text then
      begin
        campo.ImageIndex := 3
      end;
      if (nomeform <> ComboBox1.Text) and (nomeform <> '') then
      begin
        campo.ImageIndex := 2
      end;

      t_variabili_prg.Next;
    end;

    t_controlliform.Filter   := '';
    t_controlliform.Filtered := False;
    t_controlliform.MasterSource := ds_form;

  end;

end;
}

procedure Tf_oggettiform.BitBtn1Click(Sender: TObject);
begin
  dm_form.tmp_postab.EmptyDataSet;
  f_areaform.salva_form.Execute;
  f_export.prg_exportExecute(self, '');
end;


procedure Tf_oggettiform.ricarica_tree_objectExecute(Sender: TObject);
var
  xform    : TDsnStage;
  RootNode : TTreeNode;
  CtrlObj  : TControl;
  i        : Integer;
begin
  tree_object.Items.Clear;
  RootNode := tree_object.Items.AddChild(tree_object.TopItem,
                                         ComboBox1.Text + ' (Form)');
  RootNode.ImageIndex := 0;
  xform := f_areaform.findcomponent('_stage_' + ComboBox1.Text) as TDsnStage;
  for i := 0 to xform.ControlCount - 1 do
  begin
    CtrlObj := xform.Controls[i];
    if CtrlObj.Name <> '' then
    begin
      insert_tree_objectExecute(self, CtrlObj, RootNode);
    end;
  end;
  // _____________________________________________ Set treeview items height ___
  tree_object.Perform(TVM_SETITEMHEIGHT, 20, 0);
  tree_object.FullExpand;
end;


procedure Tf_oggettiform.tree_objectChange(Sender: TObject; Node: TTreeNode);
var
  CtrlObj: TControl;
begin
  CtrlObj := Node.Data;
  if CtrlObj <> nil then
  begin
    {
    if not CtrlObj.Visible then
    begin
      if CtrlObj.Parent.ClassName = 'To2multipage' then
      begin
        (CtrlObj.Parent as To2multipage).TabIndex := 2;
      end;
    end;
    }
    f_areaform.Dsn8Register1.DsnInspector.ChangeTarget(CtrlObj);
  end;
end;


procedure Tf_oggettiform.insert_tree_objectExecute(Sender: TObject;
                                                   Controllo: TControl;
                                                   ParentNode: TTreeNode);
var
  CtrlObj  : TControl;
  CtrlCont : TWinControl;
  CtrlNode : TTreeNode;
  CtrlType : String;
  ImgIdx   : Integer;
  i        : Integer;
begin
  if (Controllo.Name <> '') then
  begin
    CtrlCont := nil;
    if Controllo.ClassName = 'To2label' then
    begin
      CtrlType := 'Label';
      ImgIdx   := 8;
    end
    else if Controllo.ClassName = 'To2edit' then
    begin
      CtrlType := 'Edit';
      ImgIdx   := 5;
    end
    else if Controllo.ClassName = 'To2textarea' then
    begin
      CtrlType := 'Textarea';
      ImgIdx   := 13;
    end
    else if Controllo.ClassName = 'To2checkbox' then
    begin
      CtrlType := 'Checkbox';
      ImgIdx   := 2;
    end
    else if Controllo.ClassName = 'To2separator' then
    begin
      CtrlType := 'Separator';
      ImgIdx   := 11;
    end
    else if Controllo.ClassName = 'To2image' then
    begin
      CtrlType := 'Image';
      ImgIdx   := 7;
      CtrlCont := Controllo as TWinControl;
    end
    else if Controllo.ClassName = 'To2file' then
    begin
      CtrlType := 'File upload';
      ImgIdx   := 14;
    end
    else if Controllo.ClassName = 'To2multipage' then
    begin
      CtrlType := 'Multipage';
      ImgIdx   := 9;
      CtrlCont := Controllo as TWinControl;
    end
    else if Controllo.ClassName = 'To2htmlarea' then
    begin
      CtrlType := 'HTML-area';
      ImgIdx   := 6;
    end
    else if Controllo.ClassName = 'To2tree' then
    begin
      CtrlType := 'Treeview';
      ImgIdx   := 15;
    end
    else if Controllo.ClassName = 'To2imglist' then
    begin
      CtrlType := 'Images lister';
      ImgIdx   := 16;
    end
    else if Controllo.ClassName = 'To2document' then
    begin
      CtrlType := 'Embedded document';
      ImgIdx   := 4;
    end
    else if Controllo.ClassName = 'To2Map' then
    begin
      CtrlType := 'Image map';
      ImgIdx   := 1;
    end
    else if Controllo.ClassName = 'To2button' then
    begin
      CtrlType := 'Button';
      ImgIdx   := 1;
    end
    else if Controllo.ClassName = 'To2ListBox' then
    begin
      CtrlType := 'List/combo-box';
      ImgIdx   := 3;
    end
    else if Controllo.ClassName = 'To2dbnavigator' then
    begin
      CtrlType := 'Navigator';
      ImgIdx   := 10;
    end
    else if Controllo.ClassName = 'To2table' then
    begin
      CtrlType := 'Grid';
      CtrlCont := Controllo as TWinControl;
      ImgIdx   := 12;
    end
    else
    begin
      CtrlType := 'Unknown';
      ImgIdx   := -1;
    end;
    CtrlNode               := tree_object.Items.AddChild(ParentNode,
                                                         Controllo.Name +
                                                         ' (' + CtrlType + ')');
    CtrlNode.Data          := Controllo;
    CtrlNode.ImageIndex    := ImgIdx;
    CtrlNode.SelectedIndex := ImgIdx;
    if CtrlCont <> nil then
    begin
      for i := 0 to CtrlCont.ControlCount - 1 do
      begin
        CtrlObj := CtrlCont.Controls[i];
        insert_tree_objectExecute(self, CtrlObj, CtrlNode);
      end;
    end;
  end;
end;


procedure Tf_oggettiform.aggiorna_lista_campiExecute(Sender: TObject);
var
  xform    : TDsnStage;
  RootNode : TTreeNode;
  CtrlObj  : TControl;
  i        : Integer;
begin
  ListView1.Clear;
  xform := f_areaform.findcomponent('_stage_' + ComboBox1.Text) as TDsnStage;
  for i := 0 to xform.ControlCount - 1 do
  begin
    CtrlObj := xform.Controls[i];
    if CtrlObj.Name <> '' then
    begin
      insert_lista_campi(self, CtrlObj);
    end;
  end;
end;


procedure Tf_oggettiform.insert_lista_campi(Sender: TObject;
                                            Controllo: TControl);
var
  CtrlObj     : TControl;
  CtrlCont    : TWinControl;
  CtrlType    : String;
  NewItem     : TListItem;
  ViewName    : String;
  FieldName   : String;
  ImgIdx      : Integer;
  i           : Integer;
  o2edit      : To2edit;
  o2textarea  : To2textarea;
  o2combo     : To2ListBox;
  o2check     : To2checkbox;
  o2multipage : To2multipage;
  o2table     : To2table;
  o2tree      : To2tree;
  o2nav       : To2dbnavigator;
begin
  if (Controllo.Name <> '') then
  begin
    CtrlCont  := nil;
    ViewName  := '';
    FieldName := '';
    if Controllo.ClassName = 'To2label' then
    begin
      CtrlType := 'Label';
      ImgIdx   := 8;
    end
    else if Controllo.ClassName = 'To2edit' then
    begin
      CtrlType  := 'Edit';
      ImgIdx    := 5;
      o2edit    := Controllo as To2edit;
      FieldName := o2edit.Field;
      ViewName  := o2edit.View;
    end
    else if Controllo.ClassName = 'To2textarea' then
    begin
      CtrlType   := 'Textarea';
      ImgIdx     := 13;
      o2textarea := Controllo as To2textarea;
      FieldName  := o2textarea.Field;
      ViewName   := o2textarea.View;
    end
    else if Controllo.ClassName = 'To2checkbox' then
    begin
      CtrlType  := 'Checkbox';
      ImgIdx    := 2;
      o2check   := Controllo as To2checkbox;
      FieldName := o2check.Field;
      ViewName  := o2check.View;
    end
    else if Controllo.ClassName = 'To2separator' then
    begin
      CtrlType := 'Separator';
      ImgIdx   := 11;
    end
    else if Controllo.ClassName = 'To2image' then
    begin
      CtrlType := 'Image';
      ImgIdx   := 7;
      CtrlCont := Controllo as TWinControl;
    end
    else if Controllo.ClassName = 'To2file' then
    begin
      CtrlType := 'File upload';
      ImgIdx   := 14;
    end
    else if Controllo.ClassName = 'To2multipage' then
    begin
      CtrlType    := 'Multipage';
      ImgIdx      := 9;
      CtrlCont    := Controllo as TWinControl;
      o2multipage := Controllo as To2multipage;
      FieldName   := o2multipage.Field;
      ViewName    := o2multipage.View;
    end
    else if Controllo.ClassName = 'To2htmlarea' then
    begin
      CtrlType := 'HTML-area';
      ImgIdx   := 6;
    end
    else if Controllo.ClassName = 'To2tree' then
    begin
      CtrlType    := 'Treeview';
      ImgIdx      := 15;
      o2tree      := Controllo as To2tree;
      FieldName   := o2tree.Field;
      ViewName    := o2tree.View;
    end
    else if Controllo.ClassName = 'To2document' then
    begin
      CtrlType := 'Embedded document';
      ImgIdx   := 4;
    end
    else if Controllo.ClassName = 'To2Map' then
    begin
      CtrlType := 'Image map';
      ImgIdx   := 1;
    end
    else if Controllo.ClassName = 'To2button' then
    begin
      CtrlType := 'Button';
      ImgIdx   := 1;
    end
    else if Controllo.ClassName = 'To2ListBox' then
    begin
      CtrlType  := 'List/combo-box';
      ImgIdx    := 3;
      o2combo   := Controllo as To2ListBox;
      FieldName := o2combo.Field;
      ViewName  := o2combo.View;
    end
    else if Controllo.ClassName = 'To2dbnavigator' then
    begin
      CtrlType  := 'Navigator';
      ImgIdx    := 10;
      o2nav     := Controllo as To2dbnavigator;
      FieldName := '---';
      ViewName  := o2nav.View;
    end
    else if Controllo.ClassName = 'To2table' then
    begin
      CtrlType  := 'Grid';
      CtrlCont  := Controllo as TWinControl;
      ImgIdx    := 12;
      o2table   := Controllo as To2table;
      FieldName := '---';
      ViewName  := o2table.View;
    end
    else
    begin
      CtrlType := 'Unknown';
      ImgIdx   := -1;
    end;
    if ViewName <> '' then
    begin
       if ViewName = 'prg§_§var' then
       begin
         ViewName := '(Local)';
       end;
       NewItem := listview1.Items.Add;
       NewItem.Caption := '';
       NewItem.SubItems.Add(ViewName);
       NewItem.SubItems.Add(FieldName);
       NewItem.SubItems.Add(Controllo.Name);
       NewItem.ImageIndex := ImgIdx;
       NewItem.Data       := Controllo; 
    end;
    if CtrlCont <> nil then
    begin
      for i := 0 to CtrlCont.ControlCount - 1 do
      begin
        CtrlObj := CtrlCont.Controls[i];
        insert_lista_campi(self, CtrlObj);
      end;
    end;
  end;
end;


procedure Tf_oggettiform.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePage = ts_objects then
  begin
    ricarica_tree_object.Execute;
  end
  else if PageControl1.ActivePage = ts_campi then
  begin
     aggiorna_lista_campiExecute(self);
  end;
end;


procedure Tf_oggettiform.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caNone;
end;


procedure Tf_oggettiform.DsnPanel1Resize(Sender: TObject);
var
  i, row, col, size, space, marginLeft, marginTop: integer;
begin
  size       := DsnPanel1.BtnWidth;
  space      := DsnPanel1.Width;
  marginLeft := BitBtn1.Left;
  marginTop  := 5;
  row        := 0;
  col        := 0;
  for i := 0 to DsnPanel1.ControlCount - 1 do
  begin
    DsnPanel1.Controls[i].Left := size * col + marginLeft;
    DsnPanel1.Controls[i].top  := size * row + marginTop;
    if ((size * (col + 2)) + marginLeft) > space then
    begin
      col := 0;
      Inc(row);
    end
    else
    begin
      Inc(col);
    end;
  end;
end;

procedure Tf_oggettiform.ListView1SelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
var
  CtrlObj : TControl;
begin
  if Selected then
  begin
    CtrlObj := Item.Data;
    if CtrlObj <> nil then
    begin
      f_areaform.Dsn8Register1.DsnInspector.ChangeTarget(CtrlObj);
    end;
  end;
end;

procedure Tf_oggettiform.ListView1Compare(Sender: TObject;
                                          Item1, Item2: TListItem;
                                          Data: Integer;
                                          var Compare: Integer);
var
  S1, S2: string;
begin
  S1 := Item1.SubItems[0] + '_' + Item1.SubItems[1];
  S2 := Item2.SubItems[0] + '_' + Item2.SubItems[1];
  Compare := CompareText(S1, S2);
end;

end.
