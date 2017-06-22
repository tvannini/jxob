unit start;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ShellCtrls, StdCtrls, Mask, JvToolEdit, ExtCtrls,
  Grids, DBGrids;

type
  Tf_start = class(TForm)
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_start: Tf_start;

implementation

uses  dm;

{$R *.dfm}




end.
