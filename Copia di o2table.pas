unit o2table;

interface

uses
  SysUtils, Classes, Controls, ExtCtrls, JvComponent, JvCaptionPanel;

type
  To2table = class(TJvCaptionPanel)
  private
    fcss_head: string;
    fcss_tab: string;
    fcss_mouseoverline: string;
    fcss_div: string;
    fcss_alternate: string;
    fcss_body: string;
    fcss_line: string;
    fcss_currentline: string;
    fheightexpr: integer;
    fwidthexpr: integer;
    fleftexpr: integer;
    ftopexpr: integer;
    fview: string;
    fNorecordmessage: string;
    findicator: integer;
    procedure scss_alternate(const Value: string);
    procedure scss_body(const Value: string);
    procedure scss_currentline(const Value: string);
    procedure scss_div(const Value: string);
    procedure scss_head(const Value: string);
    procedure scss_line(const Value: string);
    procedure scss_mouseoverline(const Value: string);
    procedure scss_tab(const Value: string);
    procedure sheightexpr(const Value: integer);
    procedure sleftexpr(const Value: integer);
    procedure stopexpr(const Value: integer);
    procedure swidthexpr(const Value: integer);
    procedure sview(const Value: string);
    procedure sNorecordmessage(const Value: string);
    procedure sindicator(const Value: integer);
  private
    fvisibile: integer;
    fabilitato: integer;
    fcss: string;
    fparentname: string;
    fparentinfo: string;
  //  fazione: string;
    procedure sabilitato(const Value: integer);
    procedure sazione(const Value: string);
    procedure scss(const Value: string);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
    procedure svisibile(const Value: integer);
    property TopExpr: integer Read ftopexpr Write stopexpr;
    property LeftExpr: integer Read fleftexpr Write sleftexpr;
    property HeightExpr: integer Read fheightexpr Write sheightexpr;
    property WidthExpr: integer Read fwidthexpr Write swidthexpr;

    { Private declarations }
  protected
    { Protected declarations }
  public
    constructor Create(AOwner: TComponent); override;
    { Public declarations }
  published
    property Abilitato: integer Read fabilitato Write sabilitato;
    property Visibile: integer Read fvisibile Write svisibile;
  //  property Azione: string Read fazione Write sazione;
    property Parentname: string Read fparentname Write sparentname;
    property Parentinfo: string Read fparentinfo Write sparentinfo;
    property CssDiv: string Read fcss_div Write scss_div;
    property CssTab: string Read fcss_tab Write scss_tab;
    property CssHead: string Read fcss_head Write scss_head;
    property CssBody: string Read fcss_body Write scss_body;
    property CssLine: string Read fcss_line Write scss_line;
    property CssAlternate: string Read fcss_alternate Write scss_alternate;
    property CssMouseOverLine: string Read fcss_mouseoverline Write scss_mouseoverline;
    property CssCurrentLine: string Read fcss_currentline Write scss_currentline;
    property View: string Read fview Write sview;
    property NoRecordMessage: string Read fNorecordmessage Write sNorecordmessage;
    property HideIndicator: integer Read findicator Write sindicator;


  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('o2', [To2table]);
end;

{ To2table }

constructor To2table.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  CaptionPosition := dpTop;
  Caption := 'Table:';
end;

procedure To2table.sabilitato(const Value: integer);
begin
  fabilitato := Value;
end;

procedure To2table.sazione(const Value: string);
begin
  //fazione := Value;
end;

procedure To2table.scss(const Value: string);
begin
  fcss := Value;
end;

procedure To2table.scss_alternate(const Value: string);
begin
  fcss_alternate := Value;
end;

procedure To2table.scss_body(const Value: string);
begin
  fcss_body := Value;
end;

procedure To2table.scss_currentline(const Value: string);
begin
  fcss_currentline := Value;
end;

procedure To2table.scss_div(const Value: string);
begin
  fcss_div := Value;
end;

procedure To2table.scss_head(const Value: string);
begin
  fcss_head := Value;
end;

procedure To2table.scss_line(const Value: string);
begin
  fcss_line := Value;
end;

procedure To2table.scss_mouseoverline(const Value: string);
begin
  fcss_mouseoverline := Value;
end;

procedure To2table.scss_tab(const Value: string);
begin
  fcss_tab := Value;
end;

procedure To2table.sheightexpr(const Value: integer);
begin
  fheightexpr := Value;
end;

procedure To2table.sindicator(const Value: integer);
begin
  findicator := Value;
end;

procedure To2table.sleftexpr(const Value: integer);
begin
  fleftexpr := Value;
end;

procedure To2table.sNorecordmessage(const Value: string);
begin
  fNorecordmessage := Value;
end;

procedure To2table.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;

procedure To2table.sparentname(const Value: string);
begin
  fparentname := Value;
end;





procedure To2table.stopexpr(const Value: integer);
begin
  ftopexpr := Value;
end;

procedure To2table.sview(const Value: string);
begin
  fview := Value;
end;

procedure To2table.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;

procedure To2table.swidthexpr(const Value: integer);
begin
  fwidthexpr := Value;
end;

end.
