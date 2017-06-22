unit missingpars;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sceltaespressioni, StdCtrls;

type
  Tf_missing_params = class(TForm)
    FillExp: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BtnCancel: TButton;
    BtnOK: TButton;
    procedure FormShow(Sender: TObject);
    procedure FillExpKeyPress(Sender: TObject; var Key: Char);
    procedure FillExpKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FillExpChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_missing_params: Tf_missing_params;

implementation

uses dm;

{$R *.dfm}

procedure Tf_missing_params.FormShow(Sender: TObject);
begin
  FillExp.Text  := '';
  BtnOK.Enabled := false;
end;

procedure Tf_missing_params.FillExpKeyPress(Sender: TObject; var Key: Char);
begin
  // __________________________________________________ ESC cancel operation ___
  if Ord(Key) = 27 then
  begin
    ModalResult := mrCancel;
    f_missing_params.Close;
  end
  // ___________________________________________________ Accept only numbers ___
  else if not (Key in [#8, '0'..'9']) then
  begin
    Key := #0;
  end;
end;

procedure Tf_missing_params.FillExpKeyUp(Sender: TObject;
                                         var Key: Word;
                                         Shift: TShiftState);
begin
  if Ord(Key) = 116 then
  begin
    f_sceltaexpr.ShowModal;
    if f_sceltaexpr.ModalResult = mrOk then
    begin
      FillExp.Text := IntToStr(dm_form.t_espressioniidexp.Value);
    end
    else
    begin
      FillExp.Text := '';
    end;
  end;
end;

procedure Tf_missing_params.FillExpChange(Sender: TObject);
begin
  if FillExp.Text <> '' then
  begin
    BtnOK.Enabled := true;
  end
  else
  begin
    BtnOK.Enabled := false;
  end;
end;

end.
