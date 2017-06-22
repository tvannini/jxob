unit o2separator;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, JvComponent, JvScrollPanel, o2label;

type
  To2separator = class(TJvDivider)
  private
    fctrltype: string;
    fvisibile: integer;
    fcss: string;
    fparentinfo: string;
    fparentname: string;
    fexpand: TCtrlExpand;

    procedure svisibile(const Value: integer);
    procedure scss(const Value: string);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
    procedure sexpand(const Value: TCtrlExpand);

  public
    constructor Create(AOwner: TComponent); override;
  published
    property CtrlType: string Read fctrltype;
    property Visibile: integer Read fvisibile Write svisibile;
    property Vocecss: string Read fcss Write scss;
    property Parentname: string Read fparentname Write sparentname;
    property Parentinfo: string Read fparentinfo Write sparentinfo;
    property Expand: TCtrlExpand Read fexpand Write sexpand;

  end;


procedure Register;

implementation


procedure Register;
begin
  RegisterComponents('o2', [To2separator]);
end;

constructor To2separator.Create(AOwner: TComponent);
begin
  inherited;
  fctrltype := 'Separator';
end;


procedure To2separator.scss(const Value: string);
begin
  fcss := Value;
end;

procedure To2separator.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;

procedure To2separator.sparentname(const Value: string);
begin
  fparentname := Value;
end;

procedure To2separator.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;


procedure To2separator.sexpand(const Value: TCtrlExpand);
begin
  fexpand := Value;
end;

end.
