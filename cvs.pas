unit cvs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvComponent, JvSearchFiles, StdCtrls, Buttons, ComCtrls;

type
  Tf_cvs = class(TForm)
    JvSearchFile1: TJvSearchFiles;
    ListView1: TListView;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure JvSearchFile1FindFile(Sender: TObject; const AName: string);

  private
    user: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_cvs: Tf_cvs;

implementation

{$R *.dfm}

uses work;

procedure Tf_cvs.BitBtn1Click(Sender: TObject);
begin
  ListView1.Items.Clear;
  JvSearchFile1.RootDirectory := f_work.tempdir;
  JvSearchFile1.Search;
end;

procedure Tf_cvs.JvSearchFile1FindFile(Sender: TObject; const AName: string);
var
  riga: TListItem;
  prgname, user: string;
begin
  riga := ListView1.Items.Add();
  riga.Caption := AName;

end;



end.
