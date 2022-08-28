unit sceltarecordset;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, DBGrids, ComCtrls, Menus, ActnList, DB, jbstr;

type
  Tf_sceltarecordset = class(TForm)
    DBGrid1: TDBGrid;
    ListView1: TListView;
    BitBtn1: TBitBtn;
    pop: TPopupMenu;
    Actions1: TMenuItem;
    Select1: TMenuItem;
    Exit1: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure Actions1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Zoom1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    scelta: string;
    { Public declarations }
  end;

var
  f_sceltarecordset: Tf_sceltarecordset;

implementation

uses dm, Math, sceltaespressioni, import, work;

{$R *.dfm}




procedure Tf_sceltarecordset.BitBtn1Click(Sender: TObject);

begin
  if (dm_form.t_tasknome.Value <> '') and
     (ListView1.Selected.Caption <> '') then
  begin
     scelta      := chr(127) + dm_form.t_tasknome.Value + '::' +
                    ListView1.Selected.Caption;
     ModalResult := mrOk;
  end
  else
  begin
    SysUtils.Abort;
  end;
end;

procedure Tf_sceltarecordset.Actions1Click(Sender: TObject);
begin
  if ListView1.Focused then
  begin
    DBGrid1.SetFocus
  end
  else begin
    ListView1.SetFocus
  end;
end;

procedure Tf_sceltarecordset.Exit1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;



procedure Tf_sceltarecordset.Zoom1Click(Sender: TObject);
var exp_local: integer;
begin
  if dm_form.t_value_listvalore.Value <> '' then exp_local:=  dm_form.t_value_listvalore.AsInteger;
  exp_local:=f_work.call_scelta_exp(exp_local);
  if exp_local <> 0 then
  begin
    dm_form.t_value_list.Edit;
    dm_form.t_value_listvalore.Value := IntToStr(exp_local) ;
  end;
end;



procedure Tf_sceltarecordset.FormKeyPress(Sender: TObject; var Key: char);
begin
  if Key = chr(9) then
  begin
    if DBGrid1.Focused then
    begin
      ListView1.SetFocus
    end
    else begin
      DBGrid1.SetFocus
    end
  end;
end;

procedure Tf_sceltarecordset.FormShow(Sender: TObject);
var
  vista, funzione: string;
  i: integer;
begin

  ListView1.ItemIndex := 0;

  // riposiziona in base a scelta
  if scelta <> '' then
  begin
    funzione := ExtractWord(2, scelta, [':']);
    vista    := StringReplace(ExtractWord(1, scelta, [':']), chr(127), '', [rfReplaceAll]);

    dm_form.t_task.Locate('nome', vista, []);

    for i := 0 to ListView1.Items.Count - 1 do
    begin
      if ListView1.Selected.Caption = funzione then
      begin
        Break
      end
      else begin
        ListView1.ItemIndex := i
      end;

    end;

  end;
  // imposta il focus sul selezionato
  ListView1.ItemFocused := ListView1.Selected;
  if scelta = '' then
  begin
    DBGrid1.SetFocus
  end;

end;

procedure Tf_sceltarecordset.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  // ______________________ Change color for views with prepaered statements ___
  if dm_form.t_taskprepared_read.Value or
     dm_form.t_taskprepared_write.Value then
  begin
    DBGrid1.Canvas.Font.Color := clRed;
  end;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
