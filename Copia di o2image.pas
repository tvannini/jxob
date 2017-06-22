unit o2image;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, ExtCtrls;

type
  To2image = class(TImage)
  private
    fabilitato: integer;
    fvisibile: integer;
    fazione: string;
    fcss: string;
    fparentinfo: string;
    fparentname: string;
    ffile_name: integer;
    ftext: string;
    fsubmitonchange: integer;
    procedure sabilitato(const Value: integer);
    procedure svisibile(const Value: integer);
    procedure sazione(const Value: string);
    procedure scss(const Value: string);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
    procedure sfile_name(const Value: integer);
    procedure stext(const Value: string);
    procedure ssubmitonchange(const Value: integer);
  published
    property Abilitato: integer Read fabilitato Write sabilitato;
    property Visibile: integer Read fvisibile Write svisibile;
    property Azione: string Read fazione Write sazione;
    property Vocecss: string Read fcss Write scss;
    property Parentname: string Read fparentname Write sparentname;
    property Parentinfo: string Read fparentinfo Write sparentinfo;
    property File_name: integer Read ffile_name Write sfile_name;
    property Text: string Read ftext Write stext;
    property Submitonchange: integer Read fsubmitonchange Write ssubmitonchange;

  end;


procedure Register;

implementation


procedure To2image.sabilitato(const Value: integer);
begin
  fabilitato := Value;
end;

procedure Register;
begin
  RegisterComponents('o2', [To2image]);
end;

procedure To2image.sazione(const Value: string);
begin
  fazione := Value;
end;

procedure To2image.scss(const Value: string);
begin
  fcss := Value;
end;

procedure To2image.sfile_name(const Value: integer);
begin
  ffile_name := Value;
end;

procedure To2image.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;

procedure To2image.sparentname(const Value: string);
begin
  fparentname := Value;
end;

procedure To2image.ssubmitonchange(const Value: integer);
begin
  fsubmitonchange := Value;
end;

procedure To2image.stext(const Value: string);
begin
  ftext := Value;
end;

procedure To2image.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;

end.
