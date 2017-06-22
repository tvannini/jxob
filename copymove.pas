unit copymove;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tf_copymove = class(TForm)
    GroupBox12: TGroupBox;
    Label72: TLabel;
    Label73: TLabel;
    Button2: TButton;
    move_da: TEdit;
    move_a: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_copymove: Tf_copymove;

implementation

{$R *.dfm}

procedure Tf_copymove.Button2Click(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

procedure Tf_copymove.FormShow(Sender: TObject);
begin
    move_da.Text:='';
    move_a.Text:='';
    move_da.SetFocus;
end;

end.
