unit o2navigator;

interface

uses
  SysUtils, Classes, Controls, ExtCtrls, DBCtrls;

type
  To2navigator = class(TDBNavigator)
  private
    fvisibile: integer;
    fparentinfo: string;
    fparentname: string;
    fcssslide: string;
    fcssfirst: string;
    fcssprev: string;
    fcsslast: string;
    fcssnext: string;
    fcssnextpg: string;
    fcssprevpg: string;
    fcssnavbar: string;
    fcssspace: string;
    fview: string;
    procedure svisibile(const Value: integer);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
    procedure scssfirst(const Value: string);
    procedure scsslast(const Value: string);
    procedure scssnavbar(const Value: string);
    procedure scssnext(const Value: string);
    procedure scssnextpg(const Value: string);
    procedure scssprev(const Value: string);
    procedure scssprevpg(const Value: string);
    procedure scssslide(const Value: string);
    procedure scssspace(const Value: string);
    procedure sview(const Value: string);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
    property Visibile: integer Read fvisibile Write svisibile;
    property View: string Read fview Write sview;
    property Parentname: string Read fparentname Write sparentname;
    property Parentinfo: string Read fparentinfo Write sparentinfo;
    property CssSlide: string Read fcssslide Write scssslide;
    property CssNavBar: string Read fcssnavbar Write scssnavbar;
    property CssFirst: string Read fcssfirst Write scssfirst;
    property CssPrevPage: string Read fcssprevpg Write scssprevpg;
    property CssPrev: string Read fcssprev Write scssprev;
    property CssNext: string Read fcssnext Write scssnext;
    property CssNextPage: string Read fcssnextpg Write scssnextpg;
    property CssLast: string Read fcsslast Write scsslast;
    property CssSpace: string Read fcssspace Write scssspace;

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('o2', [To2navigator]);
end;

{ To2navigator }

constructor To2navigator.Create(AOwner: TComponent);
begin
  inherited;
  VisibleButtons := [nbFirst, nbPrior, nbNext, nbLast];
end;


procedure To2navigator.scssfirst(const Value: string);
begin
  fcssfirst := Value;
end;

procedure To2navigator.scsslast(const Value: string);
begin
  fcsslast := Value;
end;

procedure To2navigator.scssnavbar(const Value: string);
begin
  fcssnavbar := Value;
end;

procedure To2navigator.scssnext(const Value: string);
begin
  fcssnext := Value;
end;

procedure To2navigator.scssnextpg(const Value: string);
begin
  fcssnextpg := Value;
end;

procedure To2navigator.scssprev(const Value: string);
begin
  fcssprev := Value;
end;

procedure To2navigator.scssprevpg(const Value: string);
begin
  fcssprevpg := Value;
end;

procedure To2navigator.scssslide(const Value: string);
begin
  fcssslide := Value;
end;

procedure To2navigator.scssspace(const Value: string);
begin
  fcssspace := Value;
end;

procedure To2navigator.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;

procedure To2navigator.sparentname(const Value: string);
begin
  fparentname := Value;
end;


procedure To2navigator.sview(const Value: string);
begin
  fview := Value;
end;

procedure To2navigator.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;

end.
