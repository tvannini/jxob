unit tabdef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus, JvComponent, JvScrollPanel;

type
  Tf_tabdef = class(TForm)
    e_line: TEdit;
    e_dacol: TEdit;
    e_acol: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    e_label: TEdit;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    Label5: TLabel;
    e_css: TEdit;
    PopupMenu1: TPopupMenu;
    Zoom1: TMenuItem;
    Label6: TLabel;
    e_cssheader: TEdit;
    Label7: TLabel;
    e_footer: TEdit;
    Label8: TLabel;
    ed_cssfooter: TEdit;
    Return1: TMenuItem;
    Label9: TLabel;
    e_tooltip: TEdit;
    JvDivider1: TJvDivider;
    JvDivider2: TJvDivider;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    e_action: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure Zoom1Click(Sender: TObject);
    procedure Return1Click(Sender: TObject);
  private
    { Private declarations }
  public
    scelta: string;
    { Public declarations }
  end;

var
  f_tabdef: Tf_tabdef;

implementation

uses StrUtils, dm, import, jbStr, scelta_css, sceltaespressioni, work;

{$R *.dfm}

procedure Tf_tabdef.BitBtn1Click(Sender: TObject);
var
  templabel, tempfooter, tempcssfooter, tempcss, tempcssheader,
  temptooltip, tempaction: string;
begin

  if LeftStr(e_label.Text, 7) = '[o2exp_' then
  begin
    templabel := dm_form.t_programminome.Value + '_exp_' +
      leftstr(extractword(2, trim(e_label.Text), ['_']), length(
      extractword(2, trim(e_label.Text), ['_'])) - 1) + '()';
  end
  else begin
    templabel := '"' + e_label.Text + '"'
  end;

  if LeftStr(e_tooltip.Text, 7) = '[o2exp_' then
  begin
    temptooltip := dm_form.t_programminome.Value + '_exp_' +
                   leftstr(extractword(2,
                                       trim(e_tooltip.Text), ['_']),
                           length(extractword(2,
                                              trim(e_tooltip.Text), ['_'])) - 1)
                   + '()';
  end
  else begin
    temptooltip := '"' + e_tooltip.Text + '"'
  end;

  if LeftStr(e_footer.Text, 7) = '[o2exp_' then
  begin
    tempfooter := dm_form.t_programminome.Value + '_exp_' +
      leftstr(extractword(2, trim(e_footer.Text), ['_']), length(
      extractword(2, trim(e_footer.Text), ['_'])) - 1) + '()';
  end
  else begin
    tempfooter := '"' + e_footer.Text + '"'
  end;

  if LeftStr(e_css.Text, 7) = '[o2exp_' then
  begin
    tempcss := dm_form.t_programminome.Value + '_exp_' +
      leftstr(extractword(2, trim(e_css.Text), ['_']), length(
      extractword(2, trim(e_css.Text), ['_'])) - 1) + '()';
  end
  else begin
    tempcss := '"' + e_css.Text + '"'
  end;

  if LeftStr(e_cssheader.Text, 7) = '[o2exp_' then
  begin
    tempcssheader := dm_form.t_programminome.Value + '_exp_' +
      leftstr(extractword(2, trim(e_cssheader.Text), ['_']), length(
      extractword(2, trim(e_cssheader.Text), ['_'])) - 1) + '()';
  end
  else begin
    tempcssheader := '"' + e_cssheader.Text + '"'
  end;

  if LeftStr(ed_cssfooter.Text, 7) = '[o2exp_' then
  begin
    tempcssfooter := dm_form.t_programminome.Value + '_exp_' +
      leftstr(extractword(2, trim(ed_cssfooter.Text), ['_']), length(
      extractword(2, trim(ed_cssfooter.Text), ['_'])) - 1) + '()';
  end
  else begin
    tempcssfooter := '"' + ed_cssfooter.Text + '"'
  end;
  tempaction := '"' + e_action.Text + '"';
  scelta     := '"' + LeftPadCh(e_line.Text, chr(48), 2) + '"§"' +
                      LeftPadCh(e_dacol.Text, chr(48), 2) + '"§"' +
                      LeftPadCh(e_acol.Text, chr(48), 2) + '"§' +
                      templabel + '§' +
                      BoolToStr(CheckBox1.Checked, True) + '§' +
                      tempcss + '§' +
                      BoolToStr(False) + '§' +
                      tempcssheader + '§' +
                      tempfooter + '§' +
                      tempcssfooter + '§' +
                      temptooltip + '§' +
                      tempaction;

  ModalResult := mrOk;
end;


procedure Tf_tabdef.Zoom1Click(Sender: TObject);
var exp_local: integer;
    action_local, str_local: string;
begin
  if e_label.Focused then
  begin
     exp_local := f_work.call_scelta_exp();
     if exp_local <> 0 then
     begin
       e_label.Text := '[o2exp_' + IntToStr(exp_local) + ']';
     end;
  end
  else if e_action.Focused then
  begin
    action_local := f_work.call_scelta_azione(e_action.Text);
    if action_local <> '' then
    begin
      e_action.Text := action_local;
    end;
  end
  else if e_tooltip.Focused then
  begin
     exp_local := f_work.call_scelta_exp();
     if exp_local <> 0 then
     begin
       e_tooltip.Text := '[o2exp_' + IntToStr(exp_local) + ']';
     end;
  end
  else if e_footer.Focused then
  begin
     exp_local := f_work.call_scelta_exp();
     if exp_local <> 0 then
     begin
       e_footer.Text := '[o2exp_' + IntToStr(exp_local) + ']';
     end;
  end
  else
  begin

    if e_css.Focused then str_local:=e_css.Text;
    if e_cssheader.Focused then str_local:=e_cssheader.Text;
    if ed_cssfooter.Focused then str_local:=ed_cssfooter.Text;

    if LeftStr(str_local, 7) = '[o2exp_' then
    f_scelta_css.e_expr.Text:= f_import.decodifica_exp(str_local,dm_form.t_programminome.Value)
    else f_scelta_css.e_expr.Text:='';

    f_scelta_css.ShowModal;
    if f_scelta_css.ModalResult = mrOk then
    begin
      if e_css.Focused then e_css.Text := f_scelta_css.vreturn;
      if e_cssheader.Focused then e_cssheader.Text := f_scelta_css.vreturn;
      if ed_cssfooter.Focused then ed_cssfooter.Text := f_scelta_css.vreturn;

    end;
  end;
end;


procedure Tf_tabdef.Return1Click(Sender: TObject);
begin
  BitBtn1.Click;
end;

end.
