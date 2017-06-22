unit itemslist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, ValEdit, Menus, DBGrids,jbstr;

type
  Tf_listbox = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PopupMenu1: TPopupMenu;
    Zoom1: TMenuItem;
    GroupBox1: TGroupBox;
    e_view: TEdit;
    e_key: TEdit;
    e_text: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    e_exp: TEdit;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    procedure Zoom1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    stringa_opzioni: TStringList;
    { Public declarations }
  end;

var
  f_listbox: Tf_listbox;

implementation

uses sceltaespressioni, dm, sceltaview, sceltacampiprg, work;

{$R *.dfm}


procedure Tf_listbox.Zoom1Click(Sender: TObject);
var exp_num : integer;
begin
   // ___________________________________________________ Zoom on view field ___
   if e_view.Focused then
   begin
     f_sceltaview.scelta := e_view.Text;
     f_sceltaview.ShowModal;
     if f_sceltaview.ModalResult = mrOk then
     begin
       e_view.Text := f_sceltaview.scelta
     end;
   end
   // ___________________________________________________ Zoom on code field ___
   else if e_key.Focused then
   begin
     if (f_work.call_scelta_campoprg(e_key.Text,
                                     false,
                                     false,
                                     false,
                                     true,
                                     e_view.Text)) <> '' then
     begin
       e_key.Text  := f_sceltacampiprg.ListView1.Selected.Caption;
       e_view.Text := StringReplace(ExtractWord(1,
                                                f_sceltacampiprg.scelta,
                                                [chr(129)]),
                                    chr(127),
                                    '',
                                    [rfReplaceAll]);
     end;
   end
   // ____________________________________________ Zoom on description field ___
   else if e_text.Focused then
   begin
     if (f_work.call_scelta_campoprg(e_text.Text,
                                     false,
                                     false,
                                     false,
                                     true,
                                     e_view.Text)) <> '' then
     begin
       e_text.Text := f_sceltacampiprg.ListView1.Selected.Caption;
       e_view.Text := StringReplace(ExtractWord(1,
                                                f_sceltacampiprg.scelta,
                                                [chr(129)]),
                                    chr(127),
                                    '',
                                    [rfReplaceAll]);
     end;
   end
   // ___________________________________________________ Zoom on expression ___
   else if e_exp.Focused then
   begin
    if e_exp.Text = '' then
    begin
      exp_num := 0
    end
    else
    begin
      exp_num := StrToInt(e_exp.Text);
    end;
    exp_num := f_work.call_scelta_exp(exp_num);
    if exp_num <> 0 then
    begin
      e_exp.Text := IntToStr(exp_num);
    end;
   end;
end;

procedure Tf_listbox.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 27 then
  begin
    BitBtn1.SetFocus();
  end
end;

end.
