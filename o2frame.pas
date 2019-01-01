unit o2frame;

interface

uses
  Windows, SysUtils, Classes, Controls, ExtCtrls, Graphics, o2label;

type

  To2frame = class(TPanel)
  private
    fctrltype: string;
    fvisibile: integer;
    fabilitato: integer;
    fcss: string;
    fparentinfo: string;
    fparentname: string;
    ftaborder: TTabOrder;
    fexpand: TCtrlExpand;

    procedure svisibile(const Value: integer);
    procedure sabilitato(const Value: integer);
    procedure scss(const Value: string);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
    procedure staborder(const Value: TTabOrder);
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
    property Abilitato: integer Read fabilitato Write sabilitato;
    property Css: string Read fcss Write scss;
    property Parentname: string Read fparentname Write sparentname;
    property Parentinfo: string Read fparentinfo Write sparentinfo;
    property TabOrder: TTabOrder Read ftaborder Write staborder;
    property Expand: TCtrlExpand Read fexpand Write sexpand;

    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('o2', [To2frame]);
end;

{ To2frame }

constructor To2frame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  fctrltype  := 'Frame';
  AutoSize   := False;
  Color      := RGB(224, 229, 237);
  BevelInner := bvSpace;
  BevelOuter := bvLowered;
end;


procedure To2frame.scss(const Value: string);
begin
  fcss := Value;
end;

procedure To2frame.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;

procedure To2frame.sparentname(const Value: string);
begin
  fparentname := Value;
end;

procedure To2frame.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;

procedure To2frame.sabilitato(const Value: integer);
begin
  fabilitato := Value;
end;

procedure To2frame.staborder(const Value: TTabOrder);
begin
  ftaborder := Value;
end;

procedure To2frame.sexpand(const Value: TCtrlExpand);
begin
  fexpand := Value;
end;

end.
