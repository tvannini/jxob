unit cvsinfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ActnList;

type
  Tf_CVSInfo = class(TForm)
    cvs_comment: TMemo;
    Label1: TLabel;
    cvs_worksheet: TEdit;
    Label2: TLabel;
    line: TShape;
    BtnOK: TButton;
    BtnCancel: TButton;
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_CVSInfo: Tf_CVSInfo;

implementation

uses
  work;

{$R *.dfm}

procedure Tf_CVSInfo.BtnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tf_CVSInfo.BtnOKClick(Sender: TObject);
var
  i, words: integer;
  s: string;
begin
  // _______________________________________________________ Git integration ___
  if f_work.gitIntegrated then
  begin
    if Trim(cvs_comment.Text) = '' then
    begin
      ShowMessage('Please provide a commit message!');
      Exit;
    end
    else
    begin
     // _____________________________________________________ Compose result ___
     f_work.CVSCheckInData := Trim(cvs_comment.Text);
    end;
  end
  else
  // _______________________________________________ Generic CVS integration ___
  begin
    // ______________________________________________ Count words in message ___
    s     := Trim(cvs_comment.Text);
    words := 0;
    for i := 1 to Length(s) do
    begin
      if s[i] = ' ' then
      begin
        Inc(words);
      end;
    end;
    Inc(words);
    // ____________________________________________ Check minimal conditions ___
    if (words < 3) and (Length(s) < 20) then
    begin
      ShowMessage('Comment is too short.' + #13 + #10 +
                  'Please write something more..!');
      Exit;
    end
    else if Trim(cvs_worksheet.Text) = '' then
    begin
      ShowMessage('Please provide a worksheet code!');
      Exit;
    end;
    // ______________________________________________________ Compose result ___
    f_work.CVSCheckInData := Trim(cvs_worksheet.Text) + ' - ' +
                             Trim(cvs_comment.Text);
  end;
  ModalResult := mrOk;
end;

procedure Tf_CVSInfo.FormShow(Sender: TObject);
begin
  cvs_comment.Text   := '';
  cvs_worksheet.Text := '';
  if f_work.gitIntegrated then
  begin
    Label2.Visible        := False;
    cvs_worksheet.Visible := False;
    cvs_comment.Height    := 180;
  end;
  cvs_comment.SetFocus;
end;

end.
