unit o2button;

interface

uses
  Windows, SysUtils, Classes, Controls, StdCtrls, o2label;

type
  To2buttonStyle = (Standard, Href);
  To2Shortcuts   = (None,F1,F2,F3,F4,F5,F6,F7,F8,F9,F10,F11,F12);

  To2button = class(TButton)
  private
    fctrltype: string;
    fabilitato: integer;
    fvisibile: integer;
    fazione: string;
    fcss: string;
    fmsg: string;
    fparentinfo: string;
    fparentname: string;
//    ftaborder: integer;
    fstyle: To2buttonStyle;
    flabel: string;
    fshortcut: To2Shortcuts;
    ftooltipexp: integer;
    fexpand: TCtrlExpand;

    procedure sabilitato(const Value: integer);
    procedure svisibile(const Value: integer);
    procedure sazione(const Value: string);
    procedure scss(const Value: string);
    procedure smsg(const Value: string);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
//    procedure staborder(const Value: integer);
    procedure SetStyle(const Value: To2buttonStyle);
    procedure slabel(const Value: string);
    procedure sshortcut(const Value: To2Shortcuts);
    procedure stooltipexp(const Value: integer);
    procedure sexpand(const Value: TCtrlExpand);

  public
    constructor Create(AOwner: TComponent); override;
  published
    property CtrlType: string Read fctrltype;
    property Abilitato: integer Read fabilitato Write sabilitato;
    property Visibile: integer Read fvisibile Write svisibile;
//    property TabOrder: integer Read ftaborder Write staborder;
    property Azione: string Read fazione Write sazione;
    property Vocecss: string Read fcss Write scss;
    property Messaggio: string Read fmsg Write smsg;
    property Parentname: string Read fparentname Write sparentname;
    property Parentinfo: string Read fparentinfo Write sparentinfo;
    property Format: To2buttonStyle read FStyle write SetStyle default Standard;
    property o2Label: string Read flabel Write slabel;
    property Shortcut: To2Shortcuts Read fshortcut Write sshortcut;

    function StyleAsString(const Value: To2buttonStyle): String;
    function StringAsStyle(Value: string): To2buttonStyle;

    function ShortcutAsString(const Value: To2Shortcuts): String;
    function StringAsShortcut(Value: string): To2Shortcuts;
    property TooltipExp: integer Read ftooltipexp Write stooltipexp;

    property Expand: TCtrlExpand Read fexpand Write sexpand;

  end;




procedure Register;

implementation

constructor To2button.Create(AOwner: TComponent);
begin
  inherited;
  fctrltype  := 'Button';
  self.Color := RGB(128, 128, 128)
end;


procedure To2button.sabilitato(const Value: integer);
begin
  fabilitato := Value;
end;

procedure Register;
begin
  RegisterComponents('o2', [To2button]);
end;

procedure To2button.sazione(const Value: string);
begin
  fazione := Value;
end;

procedure To2button.scss(const Value: string);
begin
  fcss := Value;
end;

procedure To2button.SetStyle(const Value: To2buttonStyle);
begin
  FStyle := Value;
end;

function To2button.ShortcutAsString(const Value: To2Shortcuts): String;
begin
  if Value=None then Result:='';
  if Value=F1 then Result:='F1';
  if Value=F2 then Result:='F2';
  if Value=F3 then Result:='F3';
  if Value=F4 then Result:='F4';
  if Value=F5 then Result:='F5';
  if Value=F6 then Result:='F6';
  if Value=F7 then Result:='F7';
  if Value=F8 then Result:='F8';
  if Value=F9 then Result:='F9';
  if Value=F10 then Result:='F10';
  if Value=F11 then Result:='F11';
  if Value=F12 then Result:='F12';
end;

procedure To2button.slabel(const Value: string);
begin
  flabel := Value;
  Caption     := Value;
end;

procedure To2button.smsg(const Value: string);
begin
  fmsg := Value;
end;


procedure To2button.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;

procedure To2button.sparentname(const Value: string);
begin
  fparentname := Value;
end;


{procedure To2button.staborder(const Value: integer);
begin
  ftaborder := Value;
end;
}


procedure To2button.sshortcut(const Value: To2Shortcuts);
begin
  fshortcut:=Value;
end;

function To2button.StringAsShortcut(Value: string): To2Shortcuts;
begin
  if Value='' then Result:=None;
  if Value='F1' then Result:=F1;
  if Value='F2' then Result:=F2;
  if Value='F3' then Result:=F3;
  if Value='F4' then Result:=F4;
  if Value='F5' then Result:=F5;
  if Value='F6' then Result:=F6;
  if Value='F7' then Result:=F7;
  if Value='F8' then Result:=F8;
  if Value='F9' then Result:=F9;
  if Value='F10' then Result:=F10;
  if Value='F11' then Result:=F11;
  if Value='F12' then Result:=F12;
end;

function To2button.StringAsStyle(Value: string): To2buttonStyle;
begin
  if Value='Href' then Result:=Href else Result:=Standard;
end;

function To2button.StyleAsString(const Value: To2buttonStyle): String;
begin
  if Value = Standard then Result:='Standard' else Result:='Href';
end;

procedure To2button.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;


procedure To2button.stooltipexp(const Value: integer);
begin
  ftooltipexp := Value;
end;


procedure To2button.sexpand(const Value: TCtrlExpand);
begin
  fexpand := Value;
end;

end.
