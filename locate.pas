unit locate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, DB, jbstr, StdCtrls, Buttons, VolDBGrid;

type
  Tf_locate = class(TForm)
    pop_locate: TPopupMenu;
    Zoom1: TMenuItem;
    BitBtn1: TBitBtn;
    Select1: TMenuItem;
    Exit1: TMenuItem;
    VolgaDBGrid1: TVolgaDBGrid;
    procedure Zoom1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    scelta, locate_def: string;
    { Public declarations }
  end;

var
  f_locate: Tf_locate;

implementation

uses dm, sceltaespressioni, import, work;

{$R *.dfm}

procedure Tf_locate.Zoom1Click(Sender: TObject);
var exp_local:integer;
begin
  if dm_form.t_value_listvalore.Value <> '' then exp_local:= dm_form.t_value_listvalore.AsInteger else exp_local:=0;
  exp_local:=f_work.call_scelta_exp(exp_local);
  if exp_local <> 0 then
  begin
    dm_form.t_value_list.Edit;
    dm_form.t_value_listvalore.Value := IntToStr(exp_local);
  end;
end;

procedure Tf_locate.FormShow(Sender: TObject);
var
  tabella_main, appoggio, chiave_tmp, valore_tmp: string;
  i: integer;
begin
  dm_form.t_value_list.EmptyDataSet;
  // carica campi del main per eventuale locate
  tabella_main := dm_form.t_usa_file.Lookup('tipo', 'Main', 'con_nome');
  if tabella_main <> '' then
  begin

    dm_form.t_select.First;
    while not (dm_form.t_select.EOF) do
    begin
      if dm_form.t_selecttabella.Value = tabella_main then
      begin
        dm_form.t_value_list.InsertRecord([dm_form.t_selectcon_nome.Value])
      end;
      dm_form.t_select.Next
    end;

    //applica eventuali expressioni di locate già impostate in precedenza
    i := 1;
    appoggio := ExtractWord(i, locate_def, [',']);
    while appoggio <> '' do
    begin
      chiave_tmp := trim(ExtractWord(1, appoggio, ['=']));
      chiave_tmp := copy(chiave_tmp, 2, length(chiave_tmp) - 2);

      valore_tmp := ExtractWord(2, appoggio, ['>']);
      valore_tmp := f_import.decodifica_exp(valore_tmp, dm_form.t_programminome.Value);

      dm_form.t_value_list.Locate('chiave', chiave_tmp, []);
      dm_form.t_value_list.Edit;
      dm_form.t_value_listvalore.Value := valore_tmp;
      Inc(i);
      appoggio := ExtractWord(i, locate_def, [',']);
    end;

  end;

end;


procedure Tf_locate.BitBtn1Click(Sender: TObject);
begin
  locate_def := '';
  dm_form.t_value_list.First;
  while not (dm_form.t_value_list.EOF) do
  begin
    if dm_form.t_value_listvalore.Value <> '' then
    begin
      locate_def := trim(locate_def) + '"' +
        dm_form.t_value_listchiave.Value + '"=>' + dm_form.t_programminome.Value +
        '_exp_' + trim(dm_form.t_value_listvalore.Value) + '(),';
    end;
    dm_form.t_value_list.Next;
  end;
  //leva ultimo carattere
  locate_def  := copy(trim(locate_def), 1, length(trim(locate_def)) - 1);
  ModalResult := mrOk;

end;

procedure Tf_locate.Exit1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
