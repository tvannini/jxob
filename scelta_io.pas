unit scelta_io;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  Tf_sceltaprotocollo = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    scelta: string;
    { Public declarations }
  end;

var
  f_sceltaprotocollo: Tf_sceltaprotocollo;

implementation

uses dm;

{$R *.dfm}

procedure Tf_sceltaprotocollo.BitBtn1Click(Sender: TObject);
begin
  scelta      := dm_form.t_reportalias.Value + '::' + dm_form.t_input_outputnome.Value;
  ModalResult := mrOk;
end;

end.
