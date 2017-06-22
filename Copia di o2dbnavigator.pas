unit o2dbnavigator;

interface

uses
  SysUtils, Classes, Controls, StdCtrls;

type
  To2dbnavigator = class(TScrollBar)
  private
    fvisibile: integer;
    fcssprev: string;
    fcssfirst: string;
    fparentname: string;
    fcssprevpg: string;
    fcssslide: string;
    fcssnext: string;
    fcsslast: string;
    fparentinfo: string;
    fcssnextpg: string;
    fview: string;
    fcssspace: string;
    fcssnavbar: string;
    ffirstvisibile: integer;
    fPrevPageenable: integer;
    fNextvisibile: integer;
    fNextPageenable: integer;
    fLastenable: integer;
    ffirstenable: integer;
    fNextPagevisibile: integer;
    fPrevPagevisibile: integer;
    fNextenable: integer;
    fPreviousvisibile: integer;
    fLastvisibile: integer;
    fPreviousenable: integer;
    fPreviousaction: string;
    fNextaction: string;
    fPrevPageaction: string;
    fNextPageaction: string;
    ffirstaction: string;
    fLastaction: string;
    fPostenable: integer;
    fInsertenable: integer;
    fDeletevisibile: integer;
    fUndoenable: integer;
    fInsertvisibile: integer;
    fUndovisibile: integer;
    fPostvisibile: integer;
    fDeleteenable: integer;
    fUndoaction: string;
    fDeleteaction: string;
    fPostaction: string;
    fInsertaction: string;
    fcssprevdis: string;
    fcssfirstdis: string;
    fcssdeletedis: string;
    fcssdelete: string;
    fcssinsert: string;
    fcssnextpgdis: string;
    fcssnextdis: string;
    fcssundo: string;
    fcssprevpgdis: string;
    fcsslastdis: string;
    fcssinsertdis: string;
    fcssundodis: string;
    procedure scssfirst(const Value: string);
    procedure scsslast(const Value: string);
    procedure scssnavbar(const Value: string);
    procedure scssnext(const Value: string);
    procedure scssnextpg(const Value: string);
    procedure scssprev(const Value: string);
    procedure scssprevpg(const Value: string);
    procedure scssslide(const Value: string);
    procedure scssspace(const Value: string);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
    procedure sview(const Value: string);
    procedure svisibile(const Value: integer);
    procedure sfirstaction(const Value: string);
    procedure sfirstenable(const Value: integer);
    procedure sfirstvisibile(const Value: integer);
    procedure sLastaction(const Value: string);
    procedure sLastenable(const Value: integer);
    procedure sLastvisibile(const Value: integer);
    procedure sNextaction(const Value: string);
    procedure sNextenable(const Value: integer);
    procedure sNextPageaction(const Value: string);
    procedure sNextPageenable(const Value: integer);
    procedure sNextPagevisibile(const Value: integer);
    procedure sNextvisibile(const Value: integer);
    procedure sPreviousaction(const Value: string);
    procedure sPreviousenable(const Value: integer);
    procedure sPreviousvisibile(const Value: integer);
    procedure sPrevPageaction(const Value: string);
    procedure sPrevPageenable(const Value: integer);
    procedure sPrevPagevisibile(const Value: integer);
    procedure sDeleteaction(const Value: string);
    procedure sDeleteenable(const Value: integer);
    procedure sDeletevisibile(const Value: integer);
    procedure sInsertaction(const Value: string);
    procedure sInsertenable(const Value: integer);
    procedure sInsertvisibile(const Value: integer);
    procedure sPostaction(const Value: string);
    procedure sPostenable(const Value: integer);
    procedure sPostvisibile(const Value: integer);
    procedure sUndoaction(const Value: string);
    procedure sUndoenable(const Value: integer);
    procedure sUndovisibile(const Value: integer);
    procedure scssdelete(const Value: string);
    procedure scssdeletedis(const Value: string);
    procedure scssfirstdis(const Value: string);
    procedure scssinsert(const Value: string);
    procedure scssinsertdis(const Value: string);
    procedure scsslastdis(const Value: string);
    procedure scssnextdis(const Value: string);
    procedure scssnextpgdis(const Value: string);
    procedure scsspost(const Value: string);
    procedure scsspostdis(const Value: string);
    procedure scssprevdis(const Value: string);
    procedure scssprevpgdis(const Value: string);
    procedure scssundo(const Value: string);
    procedure scssundodis(const Value: string);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
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
    property CssInsert: string Read fcssinsert Write scssinsert;
    property CssPost: string Read fcssinsert Write scsspost;
    property CssDelete: string Read fcssdelete Write scssdelete;
    property CssUndo: string Read fcssundo Write scssundo;

    property CssFirstDisabled: string Read fcssfirstdis Write scssfirstdis;
    property CssPrevPageDisabled: string Read fcssprevpgdis Write scssprevpgdis;
    property CssPrevDisabled: string Read fcssprevdis Write scssprevdis;
    property CssNextDisabled: string Read fcssnextdis Write scssnextdis;
    property CssNextPageDisabled: string Read fcssnextpgdis Write scssnextpgdis;
    property CssLastDisabled: string Read fcsslastdis Write scsslastdis;
    property CssInsertDisabled: string Read fcssinsertdis Write scssinsertdis;
    property CssPostDisabled: string Read fcssinsertdis Write scsspostdis;
    property CssDeleteDisabled: string Read fcssdeletedis Write scssdeletedis;
    property CssUndoDisabled: string Read fcssundodis Write scssundodis;


    property CssSpace: string Read fcssspace Write scssspace;


    property FirstVisible: integer Read ffirstvisibile Write sfirstvisibile;
    property FirstEnable: integer Read ffirstenable Write sfirstenable;
    property FirstAction: string Read ffirstaction Write sfirstaction;

    property PrevPageVisible: integer Read fPrevPagevisibile Write sPrevPagevisibile;
    property PrevPageEnable: integer Read fPrevPageenable Write sPrevPageenable;
    property PrevPageAction: string Read fPrevPageaction Write sPrevPageaction;

    property PrevVisible: integer Read fPreviousvisibile Write sPreviousvisibile;
    property PrevEnable: integer Read fPreviousenable Write sPreviousenable;
    property PrevAction: string Read fPreviousaction Write sPreviousaction;


    property NextVisible: integer Read fNextvisibile Write sNextvisibile;
    property NextEnable: integer Read fNextenable Write sNextenable;
    property NextAction: string Read fNextaction Write sNextaction;


    property NextPageVisible: integer Read fNextPagevisibile Write sNextPagevisibile;
    property NextPageEnable: integer Read fNextPageenable Write sNextPageenable;
    property NextPageAction: string Read fNextPageaction Write sNextPageaction;


    property LastVisible: integer Read fLastvisibile Write sLastvisibile;
    property LastEnable: integer Read fLastenable Write sLastenable;
    property LastAction: string Read fLastaction Write sLastaction;



    property InsertVisible: integer Read fInsertvisibile Write sInsertvisibile;
    property InsertEnable: integer Read fInsertenable Write sInsertenable;
    property InsertAction: string Read fInsertaction Write sInsertaction;

    property PostVisible: integer Read fPostvisibile Write sPostvisibile;
    property PostEnable: integer Read fPostenable Write sPostenable;
    property PostAction: string Read fPostaction Write sPostaction;


    property DeleteVisible: integer Read fDeletevisibile Write sDeletevisibile;
    property DeleteEnable: integer Read fDeleteenable Write sDeleteenable;
    property DeleteAction: string Read fDeleteaction Write sDeleteaction;

    property UndoVisible: integer Read fUndovisibile Write sUndovisibile;
    property UndoEnable: integer Read fUndoenable Write sUndoenable;
    property UndoAction: string Read fUndoaction Write sUndoaction;

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('o2', [To2dbnavigator]);
end;

{ To2dbnavigator }

procedure To2dbnavigator.scssdelete(const Value: string);
begin
  fcssdelete := Value;
end;

procedure To2dbnavigator.scssdeletedis(const Value: string);
begin
  fcssdeletedis := Value;
end;

procedure To2dbnavigator.scssfirst(const Value: string);
begin
  fcssfirst := Value;
end;

procedure To2dbnavigator.scssfirstdis(const Value: string);
begin
  fcssfirstdis := Value;
end;

procedure To2dbnavigator.scssinsert(const Value: string);
begin
  fcssinsert := Value;
end;

procedure To2dbnavigator.scssinsertdis(const Value: string);
begin
  fcssinsertdis := Value;
end;

procedure To2dbnavigator.scsslast(const Value: string);
begin
  fcsslast := Value;
end;

procedure To2dbnavigator.scsslastdis(const Value: string);
begin
  fcsslastdis := Value;
end;

procedure To2dbnavigator.scssnavbar(const Value: string);
begin
  fcssnavbar := Value;
end;

procedure To2dbnavigator.scssnext(const Value: string);
begin
  fcssnext := Value;
end;

procedure To2dbnavigator.scssnextdis(const Value: string);
begin
  fcssnextdis := Value;
end;

procedure To2dbnavigator.scssnextpg(const Value: string);
begin
  fcssnextpg := Value;
end;

procedure To2dbnavigator.scssnextpgdis(const Value: string);
begin
  fcssnextpgdis := Value;
end;

procedure To2dbnavigator.scsspost(const Value: string);
begin
  fcssinsert := Value;
end;

procedure To2dbnavigator.scsspostdis(const Value: string);
begin
  fcssinsertdis := Value;
end;

procedure To2dbnavigator.scssprev(const Value: string);
begin
  fcssprev := Value;
end;

procedure To2dbnavigator.scssprevdis(const Value: string);
begin
  fcssprevdis := Value;
end;

procedure To2dbnavigator.scssprevpg(const Value: string);
begin
  fcssprevpg := Value;
end;

procedure To2dbnavigator.scssprevpgdis(const Value: string);
begin
  fcssprevpgdis := Value;
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

procedure To2dbnavigator.scssundodis(const Value: string);
begin
  fcssundodis := Value;
end;

procedure To2dbnavigator.sDeleteaction(const Value: string);
begin
  fDeleteaction := Value;
end;

procedure To2dbnavigator.sDeleteenable(const Value: integer);
begin
  fDeleteenable := Value;
end;

procedure To2dbnavigator.sDeletevisibile(const Value: integer);
begin
  fDeletevisibile := Value;
end;

procedure To2dbnavigator.sfirstaction(const Value: string);
begin
  ffirstaction := Value;
end;

procedure To2dbnavigator.sfirstenable(const Value: integer);
begin
  ffirstenable := Value;
end;

procedure To2dbnavigator.sfirstvisibile(const Value: integer);
begin
  ffirstvisibile := Value;
end;

procedure To2dbnavigator.sInsertaction(const Value: string);
begin
  fInsertaction := Value;
end;

procedure To2dbnavigator.sInsertenable(const Value: integer);
begin
  fInsertenable := Value;
end;

procedure To2dbnavigator.sInsertvisibile(const Value: integer);
begin
  fInsertvisibile := Value;
end;

procedure To2dbnavigator.sLastaction(const Value: string);
begin
  fLastaction := Value;
end;

procedure To2dbnavigator.sLastenable(const Value: integer);
begin
  fLastenable := Value;
end;

procedure To2dbnavigator.sLastvisibile(const Value: integer);
begin
  fLastvisibile := Value;
end;

procedure To2dbnavigator.sNextaction(const Value: string);
begin
  fNextaction := Value;
end;

procedure To2dbnavigator.sNextenable(const Value: integer);
begin
  fNextenable := Value;
end;

procedure To2dbnavigator.sNextPageaction(const Value: string);
begin
  fNextPageaction := Value;
end;

procedure To2dbnavigator.sNextPageenable(const Value: integer);
begin
  fNextPageenable := Value;
end;

procedure To2dbnavigator.sNextPagevisibile(const Value: integer);
begin
  fNextPagevisibile := Value;
end;

procedure To2dbnavigator.sNextvisibile(const Value: integer);
begin
  fNextvisibile := Value;
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

procedure To2dbnavigator.sPostenable(const Value: integer);
begin
  fPostenable := Value;
end;

procedure To2dbnavigator.sPostvisibile(const Value: integer);
begin
  fPostvisibile := Value;
end;

procedure To2dbnavigator.sPreviousaction(const Value: string);
begin
  fPreviousaction := Value;
end;

procedure To2dbnavigator.sPreviousenable(const Value: integer);
begin
  fPreviousenable := Value;
end;

procedure To2dbnavigator.sPreviousvisibile(const Value: integer);
begin
  fPreviousvisibile := Value;
end;

procedure To2dbnavigator.sPrevPageaction(const Value: string);
begin
  fPrevPageaction := Value;
end;

procedure To2dbnavigator.sPrevPageenable(const Value: integer);
begin
  fPrevPageenable := Value;
end;

procedure To2dbnavigator.sPrevPagevisibile(const Value: integer);
begin
  fPrevPagevisibile := Value;
end;

procedure To2dbnavigator.sUndoaction(const Value: string);
begin
  fUndoaction := Value;
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

end.
