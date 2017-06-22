unit wizmask;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tf_wizmask = class(TForm)
    alpha: TMemo;
    number: TMemo;
    date: TMemo;
    time: TMemo;
    logical: TMemo;
    structured: TMemo;
    Panel1: TPanel;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_wizmask: Tf_wizmask;

implementation

{$R *.dfm}

end.
