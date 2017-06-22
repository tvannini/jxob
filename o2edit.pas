unit o2edit;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, o2label;

type
  To2edit = class(TEdit)
  private
    fctrltype: string;
    fabilitato: integer;
    fvisibile: integer;
    fazione: string;
    fcss: string;
    fmask: string;
    fparentinfo: string;
    fparentname: string;
    fsubmitonchange: integer;
    fpassword: boolean;
    ffield: string;
    fview: string;
    fzoomaction: string;
    ftooltipexp: integer;
    fexpand: TCtrlExpand;

    procedure sabilitato(const Value: integer);
    procedure svisibile(const Value: integer);
    procedure sazione(const Value: string);
    procedure scss(const Value: string);
    procedure smask(const Value: string);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
    procedure ssubmitonchange(const Value: integer);
    procedure spassword(const Value: boolean);
    procedure sfield(const Value: string);
    procedure sview(const Value: string);
    procedure szoomaction(const Value: string);
    procedure stooltipexp(const Value: integer);
    procedure sexpand(const Value: TCtrlExpand);

  public
    constructor Create(AOwner: TComponent); override;
  published
    property CtrlType: string Read fctrltype;
    property Abilitato: integer Read fabilitato Write sabilitato;
    property Visibile: integer Read fvisibile Write svisibile;
    property Azione: string Read fazione Write sazione;
    property Vocecss: string Read fcss Write scss;
    property Mask: string Read fmask Write smask;
    property Parentname: string Read fparentname Write sparentname;
    property Parentinfo: string Read fparentinfo Write sparentinfo;
    property Submitonchange: integer Read fsubmitonchange Write ssubmitonchange;
    property Password: boolean Read fpassword Write spassword;
    property View: string Read fview Write sview;
    property Field: string Read ffield Write sfield;
    property ZoomAction: string Read fzoomaction Write szoomaction;
    property TooltipExp: integer Read ftooltipexp Write stooltipexp;
    property Expand: TCtrlExpand Read fexpand Write sexpand;

  end;

procedure Register;

implementation

constructor To2edit.Create(AOwner: TComponent);
begin
  inherited;
  AutoSize  := false;
  fctrltype := 'Edit';
end;


procedure To2edit.sabilitato(const Value: integer);
begin
  fabilitato := Value;
end;


procedure Register;
begin
  RegisterComponents('o2', [To2edit]);
end;


procedure To2edit.sazione(const Value: string);
begin
  fazione := Value;
end;


procedure To2edit.scss(const Value: string);
begin
  fcss := Value;
end;


procedure To2edit.sfield(const Value: string);
begin
  ffield := Value;
end;


procedure To2edit.smask(const Value: string);
begin
  fmask := Value;
end;


procedure To2edit.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;


procedure To2edit.sparentname(const Value: string);
begin
  fparentname := Value;
end;


procedure To2edit.spassword(const Value: boolean);
begin
  fpassword := Value;
end;


procedure To2edit.ssubmitonchange(const Value: integer);
begin
  fsubmitonchange := Value;
end;


procedure To2edit.sview(const Value: string);
begin
  fview := Value;
end;


procedure To2edit.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;


procedure To2edit.szoomaction(const Value: string);
begin
  fzoomaction := Value;
end;


procedure To2edit.stooltipexp(const Value: integer);
begin
  ftooltipexp := Value;
end;


procedure To2edit.sexpand(const Value: TCtrlExpand);
begin
  fexpand := Value;
end;

end.
