unit o2image;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, ExtCtrls, jpeg, o2label;

type
  To2image = class(TPanel)
  private
    fctrltype: string;
    fabilitato: integer;
    fvisibile: integer;
    fazione: string;
    fcss: string;
    fparentinfo: string;
    fparentname: string;
    ffile_name: integer;
    fsubmitonchange: integer;
    fimage: TImage;
    fpath: string;
    fdir: string;
    flabel: string;
    fmessaggio: string;
    ffile_name_roll: integer;
    fexpand: TCtrlExpand;

    procedure sabilitato(const Value: integer);
    procedure svisibile(const Value: integer);
    procedure sazione(const Value: string);
    procedure scss(const Value: string);
    procedure sparentinfo(const Value: string);
    procedure sparentname(const Value: string);
    procedure sfile_name(const Value: integer);
    procedure ssubmitonchange(const Value: integer);
    procedure simage(const Value: TImage);
    procedure spath(const Value: string);
    procedure sdir(const Value: string);
    procedure slabel(const Value: string);
    procedure smessaggio(const Value: string);
    procedure sfile_name_roll(const Value: integer);
    procedure sexpand(const Value: TCtrlExpand);

  public
    constructor Create(AOwner: TComponent); override;

  published
    property CtrlType: string Read fctrltype;
    property Abilitato: integer Read fabilitato Write sabilitato;
    property Visibile: integer Read fvisibile Write svisibile;
    property Azione: string Read fazione Write sazione;
    property Vocecss: string Read fcss Write scss;
    property Parentname: string Read fparentname Write sparentname;
    property Parentinfo: string Read fparentinfo Write sparentinfo;
    property File_name: integer Read ffile_name Write sfile_name;
    property File_name_rollover: integer Read ffile_name_roll Write sfile_name_roll;
    property Submitonchange: integer Read fsubmitonchange Write ssubmitonchange;
    property Immagine: TImage Read fimage Write simage;
    property ImageFile: string Read fpath Write spath;
    property ImageDir: string Read fdir Write sdir;
    property o2Label: string Read flabel Write slabel;
    property Messaggio: string Read fmessaggio Write smessaggio;
    property Expand: TCtrlExpand Read fexpand Write sexpand;

  end;


procedure Register;

implementation

uses Graphics;

constructor To2image.Create(AOwner: TComponent);
begin
  inherited;
  fctrltype         := 'Image';
  Immagine          := TImage.Create(Self);
  Immagine.Parent   := Self;
  Immagine.AutoSize := True;
  ImageDir          := 'c:\';
end;


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


procedure To2image.sdir(const Value: string);
begin
  fdir := Value;
end;


procedure To2image.sfile_name(const Value: integer);
begin
  ffile_name := Value;
end;


procedure To2image.sfile_name_roll(const Value: integer);
begin
  ffile_name_roll := Value;
end;


procedure To2image.simage(const Value: TImage);
begin
  fimage := Value;
end;


procedure To2image.slabel(const Value: string);
begin
  flabel := Value;
end;


procedure To2image.smessaggio(const Value: string);
begin
  fmessaggio := Value;
end;


procedure To2image.sparentinfo(const Value: string);
begin
  fparentinfo := Value;
end;


procedure To2image.sparentname(const Value: string);
begin
  fparentname := Value;
end;


procedure To2image.spath(const Value: string);
begin
  fpath := Value;
  if FileExists(ImageDir + Value) then
  begin
    Immagine.Picture.LoadFromFile(ImageDir + Value);
  end;
  if Immagine.Picture.Height <> 0 then
  begin
    Self.Height := Immagine.Picture.Height;
  end;
  if Immagine.Picture.Width <> 0 then
  begin
    Self.Width := Immagine.Picture.Width;
  end;
end;


procedure To2image.ssubmitonchange(const Value: integer);
begin
  fsubmitonchange := Value;
end;


procedure To2image.svisibile(const Value: integer);
begin
  fvisibile := Value;
end;


procedure To2image.sexpand(const Value: TCtrlExpand);
begin
  fexpand := Value;
end;

end.
