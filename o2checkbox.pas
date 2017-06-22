unit o2checkbox;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, o2label;

type
  To2checkbox = class(TCheckBox)
  private
    fctrltype: string;
    fabilitato: integer;
    fvisibile: integer;
    fazione: string;
    fcss: string;
    fparentinfo: string;
    fparentname: string;
    fsubmitonchange: integer;
    ffield: string;
    fview: string;
    ftooltipexp: integer;
    fexpand: TCtrlExpand;

    procedure sabilitato(const Value: integer);
    procedure svisibile(const Value: integer);
    procedure sazione(const Value: string);
    procedure scss(const Value: string);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
    procedure ssubmitonchange(const Value: integer);
    procedure sfield(const Value: string);
    procedure sview(const Value: string);
    procedure stooltipexp(const Value: integer);
    procedure sexpand(const Value: TCtrlExpand);

  published
    property CtrlType: string Read fctrltype;
    property Abilitato: integer Read fabilitato Write sabilitato;
    property Visibile: integer Read fvisibile Write svisibile;
    property Azione: string Read fazione Write sazione;
    property Vocecss: string Read fcss Write scss;
    property Parentname: string Read fparentname Write sparentname;
    property Parentinfo: string Read fparentinfo Write sparentinfo;
    property Submitonchange: integer Read fsubmitonchange Write ssubmitonchange;
    property View: string Read fview Write sview;
    property Field: string Read ffield Write sfield;
    property TooltipExp: integer Read ftooltipexp Write stooltipexp;
    property Expand: TCtrlExpand Read fexpand Write sexpand;

  end;


procedure Register;

implementation

procedure To2checkbox.sabilitato(const Value: integer);
begin
  fabilitato := Value;
  fctrltype  := 'Checkbox';
end;

procedure Register;
begin
  RegisterComponents('o2', [To2checkbox]);
end;

procedure To2checkbox.sazione(const Value: string);
begin
  fazione := Value;
end;

procedure To2checkbox.scss(const Value: string);
begin
  fcss := Value;
end;

procedure To2checkbox.sfield(const Value: string);
begin
  ffield := Value;
end;

procedure To2checkbox.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;

procedure To2checkbox.sparentname(const Value: string);
begin
  fparentname := Value;
end;

procedure To2checkbox.ssubmitonchange(const Value: integer);
begin
  fsubmitonchange := Value;
end;


procedure To2checkbox.sview(const Value: string);
begin
  fview := Value;
end;

procedure To2checkbox.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;


procedure To2checkbox.stooltipexp(const Value: integer);
begin
  ftooltipexp := Value;
end;


procedure To2checkbox.sexpand(const Value: TCtrlExpand);
begin
  fexpand := Value;
end;


end.
