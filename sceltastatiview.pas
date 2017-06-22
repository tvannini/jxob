unit sceltastatiview;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ActnList,
  ActnMan, XPStyleActnCtrls;

type
  Tf_sceltastatiview = class(TForm)
    DBGrid1: TDBGrid;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ActionList1: TActionList;
    selezione: TAction;
    switch: TAction;
    exit: TAction;
    procedure selezioneExecute(Sender: TObject);
    procedure switchExecute(Sender: TObject);
    procedure exitExecute(Sender: TObject);
  private
    { Private declarations }
  public
    funzione: string;
    { Public declarations }
  end;

var
  f_sceltastatiview: Tf_sceltastatiview;

implementation

uses dm, Math;

{$R *.dfm}



procedure Tf_sceltastatiview.selezioneExecute(Sender: TObject);
begin

  if RadioGroup1.ItemIndex = 0 then
  begin
    funzione := ''
  end;
  if RadioGroup1.ItemIndex = 1 then
  begin
    funzione := 'mode'
  end;
  if RadioGroup1.ItemIndex = 2 then
  begin
    funzione := 'lines'
  end;
  if RadioGroup1.ItemIndex = 3 then
  begin
    funzione := 'ini'
  end;
  if RadioGroup1.ItemIndex = 4 then
  begin
    funzione := 'end'
  end;
  if RadioGroup1.ItemIndex = 5 then
  begin
    funzione := 'tot'
  end;
  if RadioGroup1.ItemIndex = 6 then
  begin
    funzione := 'sel'
  end;

  ModalResult := mrOk;
end;

procedure Tf_sceltastatiview.switchExecute(Sender: TObject);
begin
  if RadioGroup1.Focused then
  begin
    DBGrid1.SetFocus
  end
  else begin
    RadioGroup1.SetFocus
  end;
end;

procedure Tf_sceltastatiview.exitExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
 