unit sceltachiavefile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Grids, DBGrids, DB, DBClient, MTDBGrid;

type
  Tf_sceltachiave = class(TForm)
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    scelta1: TMenuItem;
    Uscita: TMenuItem;
    e_expr: TEdit;
    lab_expr: TLabel;
    PopupMenu2: TPopupMenu;
    Zoom1: TMenuItem;
    DBGrid1: TMTDBGrid;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    procedure selectOk(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UscitaClick(Sender: TObject);
    procedure ExprZoom(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    abilita_expression : Boolean;
    ActualKey, ResultKey : String;
  end;

var
  f_sceltachiave: Tf_sceltachiave;

implementation

uses dm, work;

{$R *.dfm}

procedure Tf_sceltachiave.selectOk(Sender: TObject);
begin
  ResultKey   := dm_form.t_indicitesta_allnomekey.Value;
  ModalResult := mrOk;
end;


procedure Tf_sceltachiave.FormShow(Sender: TObject);
var
  i: integer;
begin
  ResultKey := '';
  i         := 0;
  with dm_form do
  begin
    t_indicitesta_all.CreateDataSet;
    t_indici_all.CreateDataSet;
    // __________________________________ Insert records from unique indexes ___
    t_indicitesta.First;
    while not (t_indicitesta.Eof) do
    begin
      t_indicitesta_all.Insert;
      t_indicitesta_allid_tabella.Value := t_indicitestaid_tabella.Value;
      t_indicitesta_allid_indice.Value  := t_indicitestaid_indice.Value;
      t_indicitesta_allnomekey.Value    := t_indicitestanomekey.Value;
      t_indicitesta_allunique.Value     := true;
      t_indicitesta_all.Post;
      Inc(i);
      t_indicitesta.Next;
    end;
    // _________________________ Insert records from unique indexes segments ___
    t_indici.MasterSource := nil;
    t_indici.First;
    while not (t_indici.Eof) do
    begin
      t_indici_all.Insert;
      t_indici_allid_tabella.Value  := t_indiciid_tabella.Value;
      t_indici_allid_indice.Value   := t_indiciid_indice.Value;
      t_indici_allid_segmento.Value := t_indiciid_segmento.Value;
      t_indici_allsegmento.Value    := t_indicisegmento.Value;
      t_indici_alldirezione.Value   := t_indicidirezione.Value;
      t_indici_all.Post;
      t_indici.Next;
    end;
    t_indici.MasterSource := ds_indicitesta;
  end;
  // _____________________________________ All indexes for selection in view ___
  if abilita_expression then
  begin
    e_expr.Visible   := true;
    lab_expr.Visible := true;
    with dm_form do
    begin
      // ____________________________ Insert records from not unique indexes ___
      t_indicitestanu.First;
      while not (t_indicitestanu.Eof) do
      begin
        t_indicitesta_all.Insert;
        t_indicitesta_allid_tabella.Value := t_indicitestanuid_tabella.Value;
        t_indicitesta_allid_indice.Value  := t_indicitestanuid_indice.Value + i;
        t_indicitesta_allnomekey.Value    := t_indicitestanunomekey.Value;
        t_indicitesta_allunique.Value     := false;
        t_indicitesta_all.Post;
        t_indicitestanu.Next;
      end;
      // ___________________ Insert records from not unique indexes segments ___
      t_indicinu.MasterSource := nil;
      t_indicinu.First;
      while not (t_indicinu.Eof) do
      begin
        t_indici_all.Insert;
        t_indici_allid_tabella.Value  := t_indicinuid_tabella.Value;
        t_indici_allid_indice.Value   := t_indicinuid_indice.Value + i;
        t_indici_allid_segmento.Value := t_indicinuid_segmento.Value;
        t_indici_allsegmento.Value    := t_indicinusegmento.Value;
        t_indici_alldirezione.Value   := t_indicinudirezione.Value;
        t_indici_all.Post;
        t_indicinu.Next;
      end;
      t_indicinu.MasterSource := ds_indicitestanu;
    end;
  end
  else
  begin
    e_expr.Text      := '';
    e_expr.Visible   := false;
    lab_expr.Visible := false;
  end;
  // _________________________________________________ Locate current record ___
  if ActualKey <> '' then
  begin
    dm_form.t_indicitesta_all.Locate('nomekey', ActualKey, []);
  end
  else
  begin
    dm_form.t_indicitesta_all.First;
  end;
  DBGrid1.SetFocus;
end;


procedure Tf_sceltachiave.UscitaClick(Sender: TObject);
begin
  ResultKey   := '';
  ModalResult := mrCancel;
end;


procedure Tf_sceltachiave.ExprZoom(Sender: TObject);
var exp_local: integer;
begin
   if e_expr.Text = '' then
   begin
     exp_local := 0
   end
   else
   begin
     exp_local := strtoint(e_expr.Text);
   end;
   exp_local := f_work.call_scelta_exp(exp_local);
   if exp_local > 0 then
   begin
     e_expr.Text := IntToStr(exp_local);
   end;
end;


procedure Tf_sceltachiave.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dm_form.t_indicitesta_all.EmptyDataSet;
  dm_form.t_indicitesta_all.Close;
  dm_form.t_indici_all.EmptyDataSet;
  dm_form.t_indici_all.Close;
  abilita_expression := false;
  ActualKey          := '';
end;

end.
