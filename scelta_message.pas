unit scelta_message;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus;

type
  Tf_message = class(TForm)
    BitBtn1: TBitBtn;
    btn_bar: TBitBtn;
    PopupMenu1: TPopupMenu;
    Exit1: TMenuItem;
    BitBtn2: TBitBtn;
    btn_report: TBitBtn;
    procedure btn_barClick(Sender: TObject);
    procedure btn_reportClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    scelta: string;
    { Public declarations }
  end;

var
  f_message: Tf_message;

implementation

{$R *.dfm}

procedure Tf_message.btn_barClick(Sender: TObject);
begin
  scelta      := 'Status bar';
  ModalResult := mrOk;
end;

procedure Tf_message.btn_reportClick(Sender: TObject);
begin
  scelta      := 'Report';
  ModalResult := mrOk;
end;

procedure Tf_message.BitBtn1Click(Sender: TObject);
begin
  scelta      := 'Box';
  ModalResult := mrOk;
end;

procedure Tf_message.Exit1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tf_message.BitBtn2Click(Sender: TObject);
begin
  scelta:='Popup';
  ModalResult:=mrok;
end;

end.
