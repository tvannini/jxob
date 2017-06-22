unit o2htmltable;

interface

uses
  SysUtils, Classes, Controls, ExtCtrls, CellPanel;

type
  To2htmltable = class(TCellPanel)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    constructor Create(AOwner: TComponent); override;
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('o2', [To2htmltable]);
end;

{ To2htmltable }

constructor To2htmltable.Create(AOwner: TComponent);
begin
  inherited;
  InsertCol;
  Repaint;
end;

end.
