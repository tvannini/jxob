unit o2tree;

interface

uses
  Windows, SysUtils, Classes, Controls, ExtCtrls, Graphics, o2label;

type
  To2treeActivation = (None, All, Leaves, Folders);

  To2tree = class(TPanel)
  private
    fctrltype: string;
    fvisibile: integer;
    fnodes: integer;
    factivation: To2treeActivation;
    fazione: string;
    fcss: string;
    fparentinfo: string;
    fparentname: string;
    ftaborder: TTabOrder;
    ffield: string;
    fview: string;
    fexpand: TCtrlExpand;

    procedure snodes(const Value: integer);
    procedure SetActivation(const Value: To2treeActivation);
    procedure sazione(const Value: string);
    procedure scss(const Value: string);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
    procedure svisibile(const Value: integer);
    procedure staborder(const Value: TTabOrder);
    procedure sfield(const Value: string);
    procedure sview(const Value: string);
    procedure sexpand(const Value: TCtrlExpand);

    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    function TreeActAsString(const Value: To2treeActivation): String;
    function StringAsTreeAct(Value: String): To2treeActivation;
  published
    property CtrlType: string Read fctrltype;
    property Visibile: integer Read fvisibile Write svisibile;
    property Nodes: integer Read fnodes Write snodes;
    property Activation: To2treeActivation read factivation write SetActivation default None;
    property Azione: string Read fazione Write sazione;
    property Vocecss: string Read fcss Write scss;
    property Parentname: string Read fparentname Write sparentname;
    property Parentinfo: string Read fparentinfo Write sparentinfo;
    property TabOrder: TTabOrder Read ftaborder Write staborder;
    property View: string Read fview Write sview;
    property Field: string Read ffield Write sfield;
    property Expand: TCtrlExpand Read fexpand Write sexpand;

    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('o2', [To2tree]);
end;

{ To2tree }

constructor To2tree.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  fctrltype := 'Treeview';
  Color     := RGB(240, 236, 236);
end;


procedure To2tree.scss(const Value: string);
begin
  fcss := Value;
end;

procedure To2tree.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;

procedure To2tree.sparentname(const Value: string);
begin
  fparentname := Value;
end;

procedure To2tree.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;


procedure To2tree.staborder(const Value: TTabOrder);
begin
  ftaborder := Value;
end;

procedure To2tree.sview(const Value: string);
begin
  fview := Value;
end;

procedure To2tree.sfield(const Value: string);
begin
  ffield := Value;
end;

procedure To2tree.snodes(const Value: integer);
begin
  fnodes := Value;
end;

procedure To2tree.SetActivation(const Value: To2treeActivation);
begin
  FActivation := Value;
end;

procedure To2tree.sazione(const Value: string);
begin
  fazione := Value;
end;

procedure To2tree.sexpand(const Value: TCtrlExpand);
begin
  fexpand := Value;
end;


function To2tree.StringAsTreeAct(Value: String): To2treeActivation;
begin
  if Value = '1' then
  begin
    Result := All;
  end
  else if Value = '2' then
  begin
    Result := Leaves;
  end
  else if Value = '3' then
  begin
    Result := Folders;
  end
  else
  begin
    Result := None;
  end;
end;


function To2tree.TreeActAsString(const Value: To2treeActivation): String;
begin
  if Value = All then
  begin
    Result := '1';
  end
  else if Value = Leaves then
  begin
    Result := '2';
  end
  else if Value = Folders then
  begin
    Result := '3';
  end
  else
  begin
    Result := '0';
  end
end;

end.
