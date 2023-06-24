unit o2file;

interface

uses
  SysUtils, Classes, Controls, ExtCtrls, o2label;

type
  To2file = class(THeader)
  private
    fctrltype: string;
    fvisibile: integer;
    fabilitato: integer;
    fparentinfo: string;
    fcss: string;
    fparentname: string;
    fsubmitonchange: integer;
    fsave_as: integer;
    ffield: string;
    fview: string;
    fexpand: TCtrlExpand;
    fmultiple: Boolean;

    procedure sabilitato(const Value: integer);
    procedure scss(const Value: string);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
    procedure svisibile(const Value: integer);
    procedure ssubmitonchange(const Value: integer);
    procedure ssave_as(const Value: integer);
    procedure sfield(const Value: string);
    procedure sview(const Value: string);
    procedure sexpand(const Value: TCtrlExpand);
    procedure smultiple(const Value: Boolean);

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
    property Vocecss: string Read fcss Write scss;
    property Parentname: string Read fparentname Write sparentname;
    property Parentinfo: string Read fparentinfo Write sparentinfo;
    property Submitonchange: integer Read fsubmitonchange Write ssubmitonchange;
    property Save_as: integer Read fsave_as Write ssave_as;
    property View: string Read fview Write sview;
    property Field: string Read ffield Write sfield;
    property Expand: TCtrlExpand Read fexpand Write sexpand;
    property Multiple: Boolean Read fmultiple Write smultiple;

    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('o2', [To2file]);
end;

{ To2file }

constructor To2file.Create(AOwner: TComponent);
begin
  inherited;
  fctrltype := 'File upload';
end;


procedure To2file.sabilitato(const Value: integer);
begin
  fabilitato := Value;
end;


procedure To2file.scss(const Value: string);
begin
  fcss := Value;
end;

procedure To2file.sfield(const Value: string);
begin
  ffield := Value;
end;


procedure To2file.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;


procedure To2file.sparentname(const Value: string);
begin
  fparentname := Value;
end;


procedure To2file.ssave_as(const Value: integer);
begin
  fsave_as := Value;
end;


procedure To2file.ssubmitonchange(const Value: integer);
begin
  fsubmitonchange := Value;
end;


procedure To2file.sview(const Value: string);
begin
  fview := Value;
end;

procedure To2file.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;


procedure To2file.sexpand(const Value: TCtrlExpand);
begin
  fexpand := Value;
end;


procedure To2file.smultiple(const Value: Boolean);
begin
  fmultiple := Value;
end;

end.


