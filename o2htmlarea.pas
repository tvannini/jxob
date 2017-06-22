unit o2htmlarea;

interface

uses
  SysUtils, Classes, Controls, ExtCtrls, Graphics, o2label;

type
  To2htmlareawide = (None, Horizontal, Vertical, Both);

  To2htmlarea = class(TShape)
  private
    fctrltype: string;
    fvisibile: integer;
    fhtml: integer;
    fcss: string;
    fparentinfo: string;
    fparentname: string;
    Fwide: To2htmlareawide;
    ftaborder: TTabOrder;
    fexpand: TCtrlExpand;

    procedure scss(const Value: string);
    procedure shtml(const Value: integer);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
    procedure svisibile(const Value: integer);
    procedure Setwide(const Value: To2htmlareawide);
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
    property Vocecss: string Read fcss Write scss;
    property Parentname: string Read fparentname Write sparentname;
    property Parentinfo: string Read fparentinfo Write sparentinfo;
    property Html: integer Read fhtml Write shtml;
    property Wide: To2htmlareawide read Fwide write Setwide default None;
    property TabOrder: TTabOrder Read ftaborder Write staborder;
    property Expand: TCtrlExpand Read fexpand Write sexpand;

    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('o2', [To2htmlarea]);
end;

{ To2htmlarea }

constructor To2htmlarea.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  fctrltype        := 'HTML-area';
  self.Brush.Style := bsBDiagonal;
end;


procedure To2htmlarea.scss(const Value: string);
begin
  fcss := Value;
end;

procedure To2htmlarea.Setwide(const Value: To2htmlareawide);
begin
  Fwide := Value;
end;

procedure To2htmlarea.shtml(const Value: integer);
begin
  fhtml := Value;
end;

procedure To2htmlarea.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;

procedure To2htmlarea.sparentname(const Value: string);
begin
  fparentname := Value;
end;

procedure To2htmlarea.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;


procedure To2htmlarea.staborder(const Value: TTabOrder);
begin
  ftaborder := Value;
end;


procedure To2htmlarea.sexpand(const Value: TCtrlExpand);
begin
  fexpand := Value;
end;

end.
