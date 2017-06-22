unit o2groupbox;

interface

uses
  SysUtils, Classes, Controls, StdCtrls;

type
  To2groupbox = class(Tgroupbox)
  private
    fabilitato: integer;
    fvisibile: integer;
    fazione: integer;
    fparentinfo: string;
    fparentname: string;
    procedure sabilitato(const Value: integer);
    procedure svisibile(const Value: integer);
    procedure sazione(const Value: integer);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
  published
    property Abilitato: integer Read fabilitato Write sabilitato;
    property Visibile: integer Read fvisibile Write svisibile;
    property Azione: integer Read fazione Write sazione;
    property Parentname: string Read fparentname Write sparentname;
    property Parentinfo: string Read fparentinfo Write sparentinfo;
  end;


procedure Register;

implementation

procedure To2groupbox.sabilitato(const Value: integer);
begin
  fabilitato := Value;
end;

procedure Register;
begin
  RegisterComponents('o2', [To2groupbox]);
end;

procedure To2groupbox.sazione(const Value: integer);
begin
  fazione := Value;
end;

procedure To2groupbox.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;

procedure To2groupbox.sparentname(const Value: string);
begin
  fparentname := Value;
end;

procedure To2groupbox.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;

end.
