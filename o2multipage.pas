unit o2multipage;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, Graphics, o2label;

type
  To2multipage = class(TTabControl)
  private
    fctrltype: string;
    fvisibile: integer;
    fabilitato: integer;
    fparentinfo: string;
    fparentname: string;
    fcsslabelon: string;
    fcssborder: string;
    fcsslabeloff: string;
    fcssbody: string;
    fheightexpr: integer;
    fwidthexpr: integer;
    fleftexpr: integer;
    ftopexpr: integer;
    ffield: string;
    fview: string;
    fexpand: TCtrlExpand;

    procedure sabilitato(const Value: integer);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
    procedure svisibile(const Value: integer);
    procedure scssbody(const Value: string);
    procedure scssborder(const Value: string);
    procedure scsslabeloff(const Value: string);
    procedure scsslabelon(const Value: string);
    procedure sheightexpr(const Value: integer);
    procedure sleftexpr(const Value: integer);
    procedure stopexpr(const Value: integer);
    procedure swidthexpr(const Value: integer);
    procedure sfield(const Value: string);
    procedure sview(const Value: string);
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
    property Parentname: string Read fparentname Write sparentname;
    property Parentinfo: string Read fparentinfo Write sparentinfo;
    property CssBorder: string Read fcssborder Write scssborder;
    property CssBody: string Read fcssbody Write scssbody;
    property CssLabelOn: string Read fcsslabelon Write scsslabelon;
    property CssLabelOff: string Read fcsslabeloff Write scsslabeloff;
    property TopExpr: integer Read ftopexpr Write stopexpr;
    property LeftExpr: integer Read fleftexpr Write sleftexpr;
    property HeightExpr: integer Read fheightexpr Write sheightexpr;
    property WidthExpr: integer Read fwidthexpr Write swidthexpr;
    property View: string Read fview Write sview;
    property Field: string Read ffield Write sfield;
    property Expand: TCtrlExpand Read fexpand Write sexpand;

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('o2', [To2multipage]);
end;

{ To2multipage }

constructor To2multipage.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  self.Color := clBtnFace;
  fctrltype  := 'Multipage';
end;


procedure To2multipage.sabilitato(const Value: integer);
begin
  fabilitato := Value;
end;


procedure To2multipage.scssbody(const Value: string);
begin
  fcssbody := Value;
end;

procedure To2multipage.scssborder(const Value: string);
begin
  fcssborder := Value;
end;

procedure To2multipage.scsslabeloff(const Value: string);
begin
  fcsslabeloff := Value;
end;

procedure To2multipage.scsslabelon(const Value: string);
begin
  fcsslabelon := Value;
end;

procedure To2multipage.sfield(const Value: string);
begin
  ffield := Value;
end;

procedure To2multipage.sheightexpr(const Value: integer);
begin
  fheightexpr := Value;
end;

procedure To2multipage.sleftexpr(const Value: integer);
begin
  fleftexpr := Value;
end;

procedure To2multipage.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;

procedure To2multipage.sparentname(const Value: string);
begin
  fparentname := Value;
end;


procedure To2multipage.stopexpr(const Value: integer);
begin
  ftopexpr := Value;
end;

procedure To2multipage.sview(const Value: string);
begin
  fview := Value;
end;

procedure To2multipage.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;

procedure To2multipage.swidthexpr(const Value: integer);
begin
  fwidthexpr := Value;
end;


procedure To2multipage.sexpand(const Value: TCtrlExpand);
begin
  fexpand := Value;
end;

end.
