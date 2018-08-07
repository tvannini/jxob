unit o2progress;

interface

uses
  Windows, SysUtils, Classes, Controls, ExtCtrls, Graphics, o2label;

type

  To2progress = class(TPanel)
  private
    fctrltype: string;
    fvisibile: integer;
    fvalue: integer;
    fstartact: string;
    fendact: string;
    fcss: string;
    fparentinfo: string;
    fparentname: string;
    fexpand: TCtrlExpand;

    procedure svalue(const Value: integer);
    procedure sstartact(const Value: string);
    procedure sendact(const Value: string);
    procedure scss(const Value: string);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
    procedure svisibile(const Value: integer);
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
    property Value: integer Read fvalue Write svalue;
    property StartAct: string Read fstartact Write sstartact;
    property EndAct: string Read fendact Write sendact;
    property Vocecss: string Read fcss Write scss;
    property Parentname: string Read fparentname Write sparentname;
    property Parentinfo: string Read fparentinfo Write sparentinfo;
    property Expand: TCtrlExpand Read fexpand Write sexpand;

    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('o2', [To2progress]);
end;

{ To2progress }

constructor To2progress.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  fctrltype := 'Progress bar';
  Color     := RGB(207, 213, 218);
end;


procedure To2progress.scss(const Value: string);
begin
  fcss := Value;
end;

procedure To2progress.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;

procedure To2progress.sparentname(const Value: string);
begin
  fparentname := Value;
end;

procedure To2progress.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;

procedure To2progress.svalue(const Value: integer);
begin
  fvalue := Value;
end;

procedure To2progress.sstartact(const Value: string);
begin
  fstartact := Value;
end;

procedure To2progress.sendact(const Value: string);
begin
  fendact := Value;
end;

procedure To2progress.sexpand(const Value: TCtrlExpand);
begin
  fexpand := Value;
end;

end.
