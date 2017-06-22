unit sceltaio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, Menus, ExtCtrls;

type
  Tf_scelta_output = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    Select1: TMenuItem;
    Exit1: TMenuItem;
    RadioGroup1: TRadioGroup;
    procedure BitBtn1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    scelta: string;
    tipo_io: integer;
    { Public declarations }
  end;

var
  f_scelta_output: Tf_scelta_output;

implementation

uses dm;

{$R *.dfm}

procedure Tf_scelta_output.BitBtn1Click(Sender: TObject);
begin
  scelta      := chr(143) + dm_form.t_reportalias.Value +
    chr(144) + dm_form.t_input_outputnome.Value;
  tipo_io     := RadioGroup1.ItemIndex;
  ModalResult := mrOk;
end;

procedure Tf_scelta_output.Exit1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tf_scelta_output.FormShow(Sender: TObject);
begin
  RadioGroup1.ItemIndex := tipo_io;
end;

end.
