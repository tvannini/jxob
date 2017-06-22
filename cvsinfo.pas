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
begin
  f_work.CVSCheckInData := Trim(cvs_worksheet.Text) + ' - ' +
                           Trim(cvs_comment.Text);
  ModalResult := mrOk;
end;

procedure Tf_CVSInfo.FormShow(Sender: TObject);
begin
  cvs_comment.Text   := '';
  cvs_worksheet.Text := '';
  cvs_comment.SetFocus;
end;

end.
