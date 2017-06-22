unit o2agente;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, ExtCtrls;

type
  To2agente = class(TPanel)
  private
    fabilitato: integer;
    fvisibile: integer;
    fazione: string;
    frifage: string;
    fcss: string;
    fparentinfo: string;
    fparentname: string;
    procedure sabilitato(const Value: integer);
    procedure svisibile(const Value: integer);
    procedure sazione(const Value: string);
    procedure srifage(const Value: string);
    procedure scss(const Value: string);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
  published
    property Abilitato: integer Read fabilitato Write sabilitato;
    property Visibile: integer Read fvisibile Write svisibile;
    property Azione: string Read fazione Write sazione;
    property Rifagente: string Read frifage Write srifage;
    property Vocecss: string Read fcss Write scss;
    property Parentname: string Read fparentname Write sparentname;
    property Parentinfo: string Read fparentinfo Write sparentinfo;
  end;


procedure Register;

implementation

procedure To2agente.sabilitato(const Value: integer);
begin
  fabilitato := Value;
end;

procedure Register;
begin
  RegisterComponents('o2', [To2agente]);
end;

procedure To2agente.sazione(const Value: string);
begin
  fazione := Value;
end;

procedure To2agente.scss(const Value: string);
begin
  fcss := Value;
end;

procedure To2agente.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;

procedure To2agente.sparentname(const Value: string);
begin
  fparentname := Value;
end;

procedure To2agente.srifage(const Value: string);
begin
  frifage := Value;
end;


procedure To2agente.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;

end.
