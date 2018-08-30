unit o2imglist;

interface

uses
  Windows, SysUtils, Classes, Controls, ExtCtrls, Graphics, o2label;

type

  To2imglist = class(TPanel)
  private
    fctrltype: string;
    fvisibile: integer;
    fimg_items: integer;
    fazione: string;
    fazione_del: string;
    fimg_item_width: Integer;
    fimg_item_height: Integer;
    fcss: string;
    fparentinfo: string;
    fparentname: string;
    ftaborder: TTabOrder;
    ffield: string;
    fview: string;
    fexpand: TCtrlExpand;

    procedure simg_items(const Value: integer);
    procedure sazione(const Value: string);
    procedure sazione_del(const Value: string);
    procedure simg_item_width(const Value: Integer);
    procedure simg_item_height(const Value: Integer);
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
  published
    property CtrlType: string Read fctrltype;
    property Visibile: integer Read fvisibile Write svisibile;
    property ImgItems: integer Read fimg_items Write simg_items;
    property Azione: string Read fazione Write sazione;
    property Delete: string Read fazione_del Write sazione_del;
    property ImgItemWidth: Integer Read fimg_item_width Write simg_item_width;
    property ImgItemHeight: Integer Read fimg_item_height Write simg_item_height;
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
  RegisterComponents('o2', [To2imglist]);
end;

{ To2imglist }

constructor To2imglist.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  fctrltype := 'Images lister';
  Color     := RGB(240, 240, 236);
end;


procedure To2imglist.scss(const Value: string);
begin
  fcss := Value;
end;

procedure To2imglist.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;

procedure To2imglist.sparentname(const Value: string);
begin
  fparentname := Value;
end;

procedure To2imglist.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;


procedure To2imglist.staborder(const Value: TTabOrder);
begin
  ftaborder := Value;
end;

procedure To2imglist.sview(const Value: string);
begin
  fview := Value;
end;

procedure To2imglist.sfield(const Value: string);
begin
  ffield := Value;
end;

procedure To2imglist.simg_items(const Value: integer);
begin
  fimg_items := Value;
end;

procedure To2imglist.sazione(const Value: string);
begin
  fazione := Value;
end;

procedure To2imglist.sazione_del(const Value: string);
begin
  fazione_del := Value;
end;

procedure To2imglist.simg_item_width(const Value: Integer);
begin
  fimg_item_width := Value;
end;

procedure To2imglist.simg_item_height(const Value: Integer);
begin
  fimg_item_height := Value;
end;

procedure To2imglist.sexpand(const Value: TCtrlExpand);
begin
  fexpand := Value;
end;

end.
