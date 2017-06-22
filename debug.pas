unit debug;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DBCtrls;

type
  Tf_debug = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid3: TDBGrid;
    DBMemo1: TDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_debug: Tf_debug;

implementation
uses dm;

{$R *.dfm}


end.
