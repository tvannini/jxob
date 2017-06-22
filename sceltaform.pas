unit sceltaform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sceltaserver, Menus, StdCtrls, Grids, DBGrids;

type
  Tf_sceltaform = class(Tf_sceltaserver)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_sceltaform: Tf_sceltaform;

implementation

uses dm;

{$R *.dfm}

end.
 