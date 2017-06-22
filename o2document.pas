unit o2document;

interface

uses
  SysUtils, Classes, Controls, ExtCtrls, o2label;

type
  To2document = class(TImage)
  private
    { Private declarations }
    fctrltype: string;
    fvisibile: integer;
    fpath: integer;
    fcss: string;
    fparentinfo: string;
    fparentname: string;
    fexpand: TCtrlExpand;

    procedure scss(const Value: string);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
    procedure spath(const Value: integer);
    procedure svisibile(const Value: integer);
    procedure sexpand(const Value: TCtrlExpand);

  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    property CtrlType: string Read fctrltype;
    property Visibile: integer Read fvisibile Write svisibile;
    property Vocecss: string Read fcss Write scss;
    property Parentname: string Read fparentname Write sparentname;
    property Parentinfo: string Read fparentinfo Write sparentinfo;
    property Path: integer Read fpath Write spath;
    property Expand: TCtrlExpand Read fexpand Write sexpand;

    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('o2', [To2document]);
end;

{ To2document }

constructor To2document.Create(AOwner: TComponent);
begin
  inherited;
  fctrltype := 'Document';
end;


procedure To2document.scss(const Value: string);
begin
  fcss := Value;
end;

procedure To2document.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;

procedure To2document.sparentname(const Value: string);
begin
  fparentname := Value;
end;

procedure To2document.spath(const Value: integer);
begin
  fpath := Value;
end;

procedure To2document.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;


procedure To2document.sexpand(const Value: TCtrlExpand);
begin
  fexpand := Value;
end;

end.
