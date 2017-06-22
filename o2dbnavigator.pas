unit o2dbnavigator;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, o2label;

type
  To2dbnavigator = class(TScrollBar)
  private
    fctrltype: string;
    fvisibile: integer;
    fcssprev: string;
    fcssfirst: string;
    fparentname: string;
    fcssprevpg: string;
    fcssslide: string;
    fcssnext: string;
    fcsslast: string;
    fcssnextpg: string;
    fview: string;
    fcssspace: string;
    fcssnavbar: string;
    fnavblockvisibile: integer;
    fInsertvisibile: integer;
    fUndoenable: integer;
    fDeletevisibile: integer;
    fDeleteenable: integer;
    fPostenable: integer;
    fPostvisibile: integer;
    fInsertenable: integer;
    fUndovisibile: integer;
    fcssundo: string;
    fPostaction: string;
    fcssinsert: string;
    fDeleteaction: string;
    fcssdelete: string;
    fInsertaction: string;
    fUndoaction: string;
    fUndoconfirmmessage: string;
    fdeleteconfirmmessage: string;
    fpostconfirmmessage: string;
    fInsertconfirmmessage: string;
    fcsspost: string;
    fDetailenable: integer;
    fSelectvisibile: integer;
    fDetailvisibile: integer;
    fSelectenable: integer;
    fSelectconfirmmessage: string;
    fSelectaction: string;
    fDetailaction: string;
    fDetailconfirmmessage: string;
    fcssselect: string;
    fcssdetail: string;
    fparentinfo: string;
    fexpand: TCtrlExpand;

    procedure scssfirst(const Value: string);
    procedure scsslast(const Value: string);
    procedure scssnavbar(const Value: string);
    procedure scssnext(const Value: string);
    procedure scssnextpg(const Value: string);
    procedure scssprev(const Value: string);
    procedure scssprevpg(const Value: string);
    procedure scssslide(const Value: string);
    procedure scssspace(const Value: string);
    procedure sparentname(const Value: string);
    procedure sview(const Value: string);
    procedure svisibile(const Value: integer);
    procedure scssdelete(const Value: string);
    procedure scssinsert(const Value: string);
    procedure scsspost(const Value: string);
    procedure scssundo(const Value: string);
    procedure sDeleteaction(const Value: string);
    procedure sDeleteenable(const Value: integer);
    procedure sDeletevisibile(const Value: integer);
    procedure sInsertaction(const Value: string);
    procedure sInsertenable(const Value: integer);
    procedure sInsertvisibile(const Value: integer);
    procedure snavblockvisibile(const Value: integer);
    procedure sPostaction(const Value: string);
    procedure sPostenable(const Value: integer);
    procedure sPostvisibile(const Value: integer);
    procedure sUndoaction(const Value: string);
    procedure sUndoenable(const Value: integer);
    procedure sUndovisibile(const Value: integer);
    procedure sdeleteactionconfirmmessage(const Value: string);
    procedure sInsertactionconfirmmessage(const Value: string);
    procedure spostactionconfirmmessage(const Value: string);
    procedure sUndoactionconfirmmessage(const Value: string);
    procedure sDetailaction(const Value: string);
    procedure sDetailactionconfirmmessage(const Value: string);
    procedure sDetailenable(const Value: integer);
    procedure sDetailvisibile(const Value: integer);
    procedure sSelectaction(const Value: string);
    procedure sSelectactionconfirmmessage(const Value: string);
    procedure sSelectenable(const Value: integer);
    procedure sSelectvisibile(const Value: integer);
    procedure scssdetail(const Value: string);
    procedure scssselect(const Value: string);
    procedure sparentinfo(const Value: string);
    procedure sexpand(const Value: TCtrlExpand);

    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
    property CtrlType: string Read fctrltype;
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
    property CssInsert: string Read fcssinsert Write scssinsert;
    property CssPost: string Read fcsspost Write scsspost;
    property CssDelete: string Read fcssdelete Write scssdelete;
    property CssUndo: string Read fcssundo Write scssundo;
    property CssSpace: string Read fcssspace Write scssspace;
    property CssDetail: string Read fcssdetail Write scssdetail;
    property CssSelect: string Read fcssselect Write scssselect;



    property NavigationBlockVisible: integer Read fnavblockvisibile Write snavblockvisibile;


    property InsertVisible: integer Read fInsertvisibile Write sInsertvisibile;
    property InsertEnable: integer Read fInsertenable Write sInsertenable;
    property InsertAction: string Read fInsertaction Write sInsertaction;
    property InsertConfirmMessage: string Read fInsertconfirmmessage Write sInsertactionconfirmmessage;

    property PostVisible: integer Read fPostvisibile Write sPostvisibile;
    property PostEnable: integer Read fPostenable Write sPostenable;
    property PostAction: string Read fPostaction Write sPostaction;
    property PostConfirmMessage: string Read fpostconfirmmessage Write spostactionconfirmmessage;


    property DeleteVisible: integer Read fDeletevisibile Write sDeletevisibile;
    property DeleteEnable: integer Read fDeleteenable Write sDeleteenable;
    property DeleteAction: string Read fDeleteaction Write sDeleteaction;
    property DeleteConfirmMessage: string Read fdeleteconfirmmessage Write sdeleteactionconfirmmessage;

    property UndoVisible: integer Read fUndovisibile Write sUndovisibile;
    property UndoEnable: integer Read fUndoenable Write sUndoenable;
    property UndoAction: string Read fUndoaction Write sUndoaction;
    property UndoConfirmMessage: string Read fUndoconfirmmessage Write sUndoactionconfirmmessage;
    property SelectVisible: integer Read fSelectvisibile Write sSelectvisibile;
    property SelectEnable: integer Read fSelectenable Write sSelectenable;
    property SelectAction: string Read fSelectaction Write sSelectaction;
    property SelectConfirmMessage: string Read fSelectconfirmmessage Write sSelectactionconfirmmessage;
    property DetailVisible: integer Read fDetailvisibile Write sDetailvisibile;
    property DetailEnable: integer Read fDetailenable Write sDetailenable;
    property DetailAction: string Read fDetailaction Write sDetailaction;
    property DetailConfirmMessage: string Read fDetailconfirmmessage Write sDetailactionconfirmmessage;

    property Expand: TCtrlExpand Read fexpand Write sexpand;



  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('o2', [To2dbnavigator]);
end;

{ To2dbnavigator }

constructor To2dbnavigator.Create(AOwner: TComponent);
begin
  inherited;
  fctrltype := 'Navigator';
end;


procedure To2dbnavigator.scssdelete(const Value: string);
begin
  fcssdelete := Value;
end;

procedure To2dbnavigator.scssdetail(const Value: string);
begin
  fcssdetail := Value;
end;

procedure To2dbnavigator.scssfirst(const Value: string);
begin
  fcssfirst := Value;
end;

procedure To2dbnavigator.scssinsert(const Value: string);
begin
  fcssinsert := Value;
end;

procedure To2dbnavigator.scsslast(const Value: string);
begin
  fcsslast := Value;
end;

procedure To2dbnavigator.scssnavbar(const Value: string);
begin
  fcssnavbar := Value;
end;

procedure To2dbnavigator.scssnext(const Value: string);
begin
  fcssnext := Value;
end;

procedure To2dbnavigator.scssnextpg(const Value: string);
begin
  fcssnextpg := Value;
end;

procedure To2dbnavigator.scsspost(const Value: string);
begin
  fcsspost := Value;
end;

procedure To2dbnavigator.scssprev(const Value: string);
begin
  fcssprev := Value;
end;

procedure To2dbnavigator.scssprevpg(const Value: string);
begin
  fcssprevpg := Value;
end;

procedure To2dbnavigator.scssselect(const Value: string);
begin
  fcssselect := Value;
end;

procedure To2dbnavigator.scssslide(const Value: string);
begin
  fcssslide := Value;
end;

procedure To2dbnavigator.scssspace(const Value: string);
begin
  fcssspace := Value;
end;

procedure To2dbnavigator.scssundo(const Value: string);
begin
  fcssundo := Value;
end;

procedure To2dbnavigator.sDeleteaction(const Value: string);
begin
  fDeleteaction := Value;
end;

procedure To2dbnavigator.sdeleteactionconfirmmessage(const Value: string);
begin
  fdeleteconfirmmessage := Value;
end;

procedure To2dbnavigator.sDeleteenable(const Value: integer);
begin
  fDeleteenable := Value;
end;

procedure To2dbnavigator.sDeletevisibile(const Value: integer);
begin
  fDeletevisibile := Value;
end;

procedure To2dbnavigator.sDetailaction(const Value: string);
begin
  fDetailaction := Value;
end;

procedure To2dbnavigator.sDetailactionconfirmmessage(const Value: string);
begin
  fDetailconfirmmessage := Value;
end;

procedure To2dbnavigator.sDetailenable(const Value: integer);
begin
  fDetailenable := Value;
end;

procedure To2dbnavigator.sDetailvisibile(const Value: integer);
begin
  fDetailvisibile := Value;
end;

procedure To2dbnavigator.sInsertaction(const Value: string);
begin
  fInsertaction := Value;
end;

procedure To2dbnavigator.sInsertactionconfirmmessage(const Value: string);
begin
  fInsertconfirmmessage := Value;
end;

procedure To2dbnavigator.sInsertenable(const Value: integer);
begin
  fInsertenable := Value;
end;

procedure To2dbnavigator.sInsertvisibile(const Value: integer);
begin
  fInsertvisibile := Value;
end;

procedure To2dbnavigator.snavblockvisibile(const Value: integer);
begin
  fnavblockvisibile := Value;
end;


procedure To2dbnavigator.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;

procedure To2dbnavigator.sparentname(const Value: string);
begin
  fparentname := Value;
end;

procedure To2dbnavigator.sPostaction(const Value: string);
begin
  fPostaction := Value;
end;

procedure To2dbnavigator.spostactionconfirmmessage(const Value: string);
begin
  fpostconfirmmessage := Value;
end;

procedure To2dbnavigator.sPostenable(const Value: integer);
begin
  fPostenable := Value;
end;

procedure To2dbnavigator.sPostvisibile(const Value: integer);
begin
  fPostvisibile := Value;
end;

procedure To2dbnavigator.sSelectaction(const Value: string);
begin
  fSelectaction := Value;
end;

procedure To2dbnavigator.sSelectactionconfirmmessage(const Value: string);
begin
  fSelectconfirmmessage := Value;
end;

procedure To2dbnavigator.sSelectenable(const Value: integer);
begin
  fSelectenable := Value;
end;

procedure To2dbnavigator.sSelectvisibile(const Value: integer);
begin
  fSelectvisibile := Value;
end;

procedure To2dbnavigator.sUndoaction(const Value: string);
begin
  fUndoaction := Value;
end;

procedure To2dbnavigator.sUndoactionconfirmmessage(const Value: string);
begin
  fUndoconfirmmessage := Value;
end;

procedure To2dbnavigator.sUndoenable(const Value: integer);
begin
  fUndoenable := Value;
end;

procedure To2dbnavigator.sUndovisibile(const Value: integer);
begin
  fUndovisibile := Value;
end;

procedure To2dbnavigator.sview(const Value: string);
begin
  fview := Value;
end;

procedure To2dbnavigator.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;


procedure To2dbnavigator.sexpand(const Value: TCtrlExpand);
begin
  fexpand := Value;
end;

end.
