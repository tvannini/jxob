unit sceltadb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dm, sceltaserver, Menus, StdCtrls, Grids, DBGrids;

type
  Tf_sceltadb = class(Tf_sceltaserver)
    procedure Uscita1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_sceltadb: Tf_sceltadb;

implementation

{$R *.dfm}

procedure Tf_sceltadb.Uscita1Click(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

end.
