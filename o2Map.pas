unit o2Map;

interface

uses
  SysUtils, Classes, Controls, ExtCtrls, o2label;

type
  To2Map = class(TBevel)
  private
    fctrltype: string;
    fvisibile: integer;
    fabilitato: integer;
    fcss: string;
    fmsg: string;
    fparentinfo: string;
    fazione: string;
    fparentname: string;
    fexpand: TCtrlExpand;

    procedure sabilitato(const Value: integer);
    procedure sazione(const Value: string);
    procedure scss(const Value: string);
    procedure smsg(const Value: string);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
    procedure svisibile(const Value: integer);
    procedure sexpand(const Value: TCtrlExpand);

    { Private declarations }
  protected
    { Protected declarations }
  public
    constructor Create(AOwner: TComponent); override;
  published
    property CtrlType: string Read fctrltype;
    property Abilitato: integer Read fabilitato Write sabilitato;
    property Visibile: integer Read fvisibile Write svisibile;
    property Azione: string Read fazione Write sazione;
    property Vocecss: string Read fcss Write scss;
    property Messaggio: string Read fmsg Write smsg;
    property Parentname: string Read fparentname Write sparentname;
    property Parentinfo: string Read fparentinfo Write sparentinfo;
    property Expand: TCtrlExpand Read fexpand Write sexpand;

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('o2', [To2Map]);
end;

{ To2Map }

constructor To2Map.Create(AOwner: TComponent);
begin
  inherited;
  Self.Style := bsRaised;
  Self.Shape := bsFrame;
  fctrltype  := 'Image map';
end;

procedure To2Map.sabilitato(const Value: integer);
begin
  fabilitato := Value;
end;

procedure To2Map.sazione(const Value: string);
begin
  fazione := Value;
end;

procedure To2Map.scss(const Value: string);
begin
  fcss := Value;
end;

procedure To2Map.smsg(const Value: string);
begin
  fmsg := Value;
end;

procedure To2Map.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;

procedure To2Map.sparentname(const Value: string);
begin
  fparentname := Value;
end;

procedure To2Map.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;


procedure To2Map.sexpand(const Value: TCtrlExpand);
begin
  fexpand := Value;
end;

end.
