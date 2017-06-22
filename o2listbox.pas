unit o2ListBox;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, o2label;

type
  To2ListBox = class(TListBox)
  private
    fctrltype: string;
    fvisibile: integer;
    fabilitato: integer;
    fazione: string;
    fcss: string;
    fscelte: string;
    fparentinfo: string;
    fparentname: string;
    flines: integer;
    fsubmitonchange: integer;
    ffield: string;
    fview: string;
    fzoomaction: string;
    ftooltipexp: integer;
    fexpand: TCtrlExpand;

    procedure sabilitato(const Value: integer);
    procedure sazione(const Value: string);
    procedure scss(const Value: string);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
    procedure sscelte(const Value: string);
    procedure svisibile(const Value: integer);
    procedure slines(const Value: integer);
    procedure ssubmitonchange(const Value: integer);
    procedure sfield(const Value: string);
    procedure sview(const Value: string);
    procedure szoomaction(const Value: string);
    procedure stooltipexp(const Value: integer);
    procedure sexpand(const Value: TCtrlExpand);

    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    property CtrlType: string Read fctrltype;
    property Abilitato: integer Read fabilitato Write sabilitato;
    property Visibile: integer Read fvisibile Write svisibile;
    property Rows: integer Read flines Write slines;
    property Azione: string Read fazione Write sazione;
    property Vocecss: string Read fcss Write scss;
    property Scelte: string Read fscelte Write sscelte;
    property Parentname: string Read fparentname Write sparentname;
    property Parentinfo: string Read fparentinfo Write sparentinfo;
    property Submitonchange: integer Read fsubmitonchange Write ssubmitonchange;
    property View: string Read fview Write sview;
    property Field: string Read ffield Write sfield;
    property ZoomAction: string Read fzoomaction Write szoomaction;    
    property TooltipExp: integer Read ftooltipexp Write stooltipexp;
    property Expand: TCtrlExpand Read fexpand Write sexpand;

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('o2', [To2ListBox]);
end;

{ To2ListBox }

constructor To2ListBox.Create(AOwner: TComponent);
begin
  inherited;
  fctrltype := 'List/combo-box';
end;


procedure To2ListBox.sabilitato(const Value: integer);
begin
  fabilitato := Value;
end;

procedure To2ListBox.sazione(const Value: string);
begin
  fazione := Value;
end;

procedure To2ListBox.scss(const Value: string);
begin
  fcss := Value;
end;


procedure To2ListBox.sfield(const Value: string);
begin
  ffield := Value;
end;

procedure To2ListBox.slines(const Value: integer);
begin
  flines := Value;
end;

procedure To2ListBox.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;

procedure To2ListBox.sparentname(const Value: string);
begin
  fparentname := Value;
end;

procedure To2ListBox.sscelte(const Value: string);
begin
  fscelte := Value;
end;

procedure To2ListBox.ssubmitonchange(const Value: integer);
begin
  fsubmitonchange := Value;
end;


procedure To2ListBox.sview(const Value: string);
begin
  fview := Value;
end;

procedure To2ListBox.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;

procedure To2ListBox.szoomaction(const Value: string);
begin
  fzoomaction := Value;
end;


procedure To2ListBox.stooltipexp(const Value: integer);
begin
  ftooltipexp := Value;
end;


procedure To2ListBox.sexpand(const Value: TCtrlExpand);
begin
  fexpand := Value;
end;


end.
