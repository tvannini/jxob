unit o2textarea;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, ExtCtrls, o2label;

type
  To2textarea = class(TMemo)
  private
    fctrltype: string;
    fabilitato: integer;
    fvisibile: integer;
    fazione: string;
    fcss: string;
    fparentinfo: string;
    fparentname: string;
    fmask: string;
    fsubmitonchange: integer;
    fhtmlarea: boolean;
    ffield: string;
    fview: string;
    fzoomaction: string;
    ftooltipexp: integer;
    fexpand: TCtrlExpand;

    procedure sabilitato(const Value: integer);
    procedure svisibile(const Value: integer);
    procedure sazione(const Value: string);
    procedure scss(const Value: string);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
    procedure smask(const Value: string);
    procedure ssubmitonchange(const Value: integer);
    procedure shtmlarea(const Value: boolean);
    procedure sfield(const Value: string);
    procedure sview(const Value: string);
    procedure szoomaction(const Value: string);
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
    property Mask: string Read fmask Write smask;
    property Submitonchange: integer Read fsubmitonchange Write ssubmitonchange;
    property Htmlarea: boolean Read fhtmlarea Write shtmlarea;
    property View: string Read fview Write sview;
    property Field: string Read ffield Write sfield;
    property ZoomAction: string Read fzoomaction Write szoomaction;
    property TooltipExp: integer Read ftooltipexp Write stooltipexp;
    property Expand: TCtrlExpand Read fexpand Write sexpand;

  end;


procedure Register;

implementation

procedure To2textarea.sabilitato(const Value: integer);
begin
  fabilitato := Value;
  fctrltype := 'Textarea'; 
end;

procedure Register;
begin
  RegisterComponents('o2', [To2textarea]);
end;

procedure To2textarea.sazione(const Value: string);
begin
  fazione := Value;
end;

procedure To2textarea.scss(const Value: string);
begin
  fcss := Value;
end;


procedure To2textarea.sfield(const Value: string);
begin
  ffield := Value;
end;

procedure To2textarea.shtmlarea(const Value: boolean);
begin
  fhtmlarea := Value;
end;

procedure To2textarea.smask(const Value: string);
begin
  fmask := Value;
end;

procedure To2textarea.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;

procedure To2textarea.sparentname(const Value: string);
begin
  fparentname := Value;
end;

procedure To2textarea.ssubmitonchange(const Value: integer);
begin
  fsubmitonchange := Value;
end;


procedure To2textarea.sview(const Value: string);
begin
  fview := Value;
end;

procedure To2textarea.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;

procedure To2textarea.szoomaction(const Value: string);
begin
  fzoomaction := Value;
end;


procedure To2textarea.stooltipexp(const Value: integer);
begin
  ftooltipexp := Value;
end;


procedure To2textarea.sexpand(const Value: TCtrlExpand);
begin
  fexpand := Value;
end;


end.
