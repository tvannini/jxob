unit o2combobox;

interface

uses
  SysUtils, Classes, Controls, StdCtrls;

type
  To2combobox = class(TComboBox)
  private
    fabilitato: integer;
    fvisibile: integer;
    fazione: string;
    fcss: string;
    fscelte: string;
    fparentinfo: string;
    fparentname: string;
    fmask: string;
    fsubmitonchange: integer;
    frows: integer;
    fcssdisabled: string;
    fcssfocused: string;
    procedure sabilitato(const Value: integer);
    procedure svisibile(const Value: integer);
    procedure sazione(const Value: string);
    procedure scss(const Value: string);
    procedure sscelte(const Value: string);
    procedure smask(const Value: string);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
    procedure ssubmitonchange(const Value: integer);
    procedure srows(const Value: integer);
    procedure scssdisabled(const Value: string);
    procedure scssfocused(const Value: string);

  published
    property Abilitato: integer Read fabilitato Write sabilitato;
    property Visibile: integer Read fvisibile Write svisibile;
    property Rows: integer Read frows Write srows;

    property Azione: string Read fazione Write sazione;
    property Vocecss: string Read fcss Write scss;
    property CssFocused: string Read fcssfocused Write scssfocused;
    property CssDisabled: string Read fcssdisabled Write scssdisabled;
    property Scelte: string Read fscelte Write sscelte;
    property Parentname: string Read fparentname Write sparentname;
    property Parentinfo: string Read fparentinfo Write sparentinfo;
    property Mask: string Read fmask Write smask;
    property Submitonchange: integer Read fsubmitonchange Write ssubmitonchange;
  end;


procedure Register;

implementation

procedure To2combobox.sabilitato(const Value: integer);
begin
  fabilitato := Value;
end;

procedure Register;
begin
  RegisterComponents('o2', [To2combobox]);
end;

procedure To2combobox.sazione(const Value: string);
begin
  fazione := Value;
end;

procedure To2combobox.scss(const Value: string);
begin
  fcss := Value;
end;

procedure To2combobox.scssdisabled(const Value: string);
begin
  fcssdisabled := Value;
end;

procedure To2combobox.scssfocused(const Value: string);
begin
  fcssfocused := Value;
end;

procedure To2combobox.smask(const Value: string);
begin
  fmask := Value;
end;

procedure To2combobox.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;

procedure To2combobox.sparentname(const Value: string);
begin
  fparentname := Value;
end;

procedure To2combobox.srows(const Value: integer);
begin
  frows := Value;
end;

procedure To2combobox.sscelte(const Value: string);
begin
  fscelte := Value;
end;

procedure To2combobox.ssubmitonchange(const Value: integer);
begin
  fsubmitonchange := Value;
end;

procedure To2combobox.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;

end.
