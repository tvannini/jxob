unit o2label;

interface

uses
  SysUtils, Classes, Controls, StdCtrls;

type
  TCtrlExpand = (NoExpand, HorizontalExpand, VerticalExpand, BothExpand);

  To2label  = class(TLabel)
  private
    fctrltype: string;
    fabilitato: integer;
    fvisibile: integer;
    fcss: string;
    fparentinfo: string;
    fparentname: string;
    flabel: string;
    ftooltipexp: integer;
    fexpand: TCtrlExpand;

    procedure sabilitato(const Value: integer);
    procedure svisibile(const Value: integer);
    procedure scss(const Value: string);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
    procedure slabel(const Value: string);
    procedure stooltipexp(const Value: integer);
    procedure sexpand(const Value: TCtrlExpand);

 public
   constructor Create(AOwner: TComponent); override;
  published
    property CtrlType: string Read fctrltype;
    property Abilitato: integer Read fabilitato Write sabilitato;
    property Visibile: integer Read fvisibile Write svisibile;
    property Vocecss: string Read fcss Write scss;
    property Parentname: string Read fparentname Write sparentname;
    property Parentinfo: string Read fparentinfo Write sparentinfo;
    property o2Label: string Read flabel Write slabel;
    property TooltipExp: integer Read ftooltipexp Write stooltipexp;
    property Expand: TCtrlExpand Read fexpand Write sexpand;

  end;


procedure Register;

implementation

constructor To2label.Create(AOwner: TComponent);
begin
  inherited;
  AutoSize  := false;
  fctrltype := 'Label';
end;

procedure To2label.sabilitato(const Value: integer);
begin
  fabilitato := Value;
end;

procedure Register;
begin
  RegisterComponents('o2', [To2label]);
end;


procedure To2label.scss(const Value: string);
begin
  fcss := Value;
end;

procedure To2label.slabel(const Value: string);
begin
  flabel := Value;
  Caption     := Value;
end;

procedure To2label.sparentinfo(const Value: string);
begin
  fparentinfo := Value;

end;

procedure To2label.sparentname(const Value: string);
begin
  fparentname := Value;
end;

procedure To2label.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;


procedure To2label.stooltipexp(const Value: integer);
begin
  ftooltipexp := Value;
end;


procedure To2label.sexpand(const Value: TCtrlExpand);
begin
  fexpand := Value;
end;

end.
