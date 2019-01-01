unit o2flowbox;

interface

uses
  SysUtils, Classes, Controls, ComCtrls, Graphics, o2label;

type
  To2flowbox = class(TTabControl)
  private
    fctrltype: string;
    fvisibile: integer;
    fparentinfo: string;
    fparentname: string;
    fcss: string;
    fheightexpr: integer;
    fwidthexpr: integer;
    fleftexpr: integer;
    ftopexpr: integer;
    fexpand: TCtrlExpand;

    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
    procedure svisibile(const Value: integer);
    procedure scss(const Value: string);
    procedure sheightexpr(const Value: integer);
    procedure sleftexpr(const Value: integer);
    procedure stopexpr(const Value: integer);
    procedure swidthexpr(const Value: integer);
    procedure sexpand(const Value: TCtrlExpand);

    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    property CtrlType: string Read fctrltype;
    property Visibile: integer Read fvisibile Write svisibile;
    property Parentname: string Read fparentname Write sparentname;
    property Parentinfo: string Read fparentinfo Write sparentinfo;
    property Css: string Read fcss Write scss;
    property TopExpr: integer Read ftopexpr Write stopexpr;
    property LeftExpr: integer Read fleftexpr Write sleftexpr;
    property HeightExpr: integer Read fheightexpr Write sheightexpr;
    property WidthExpr: integer Read fwidthexpr Write swidthexpr;
    property Expand: TCtrlExpand Read fexpand Write sexpand;

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('o2', [To2flowbox]);
end;

{ To2flowbox }

constructor To2flowbox.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  self.Color := $00DAD5CF;
  fctrltype  := 'Flowbox';
end;


procedure To2flowbox.scss(const Value: string);
begin
  fcss := Value;
end;

procedure To2flowbox.sheightexpr(const Value: integer);
begin
  fheightexpr := Value;
end;

procedure To2flowbox.sleftexpr(const Value: integer);
begin
  fleftexpr := Value;
end;

procedure To2flowbox.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;

procedure To2flowbox.sparentname(const Value: string);
begin
  fparentname := Value;
end;

procedure To2flowbox.stopexpr(const Value: integer);
begin
  ftopexpr := Value;
end;

procedure To2flowbox.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;

procedure To2flowbox.swidthexpr(const Value: integer);
begin
  fwidthexpr := Value;
end;

procedure To2flowbox.sexpand(const Value: TCtrlExpand);
begin
  fexpand := Value;
end;

end.
