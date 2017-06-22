unit find;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, VolFndEd;

type
  Tf_find = class(TForm)
    ListBox1: TListBox;
    VolgaFindEdit1: TVolgaFindEdit;
    Label1: TLabel;
    ListBox2: TListBox;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure VolgaFindEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_find: Tf_find;

implementation
uses work;
{$R *.dfm}

procedure Tf_find.Button1Click(Sender: TObject);
begin
//
end;

procedure Tf_find.FormShow(Sender: TObject);
begin
  ListBox1.ItemIndex:=0;
    ListBox2.ItemIndex:=0;
  // determina datasource e field
  VolgaFindEdit1.DataSource:= f_work.dbnav.DataSource;
  VolgaFindEdit1.DataField:=f_work.campo_in_grid_tabelle;
end;



procedure Tf_find.ListBox2Click(Sender: TObject);
begin
{  VolgaFindEdit1.ClearSearch;
  if ListBox2.ItemIndex = 0 then VolgaFindEdit1.FindStyle:=vfsNavigate else VolgaFindEdit1.FindStyle:=vfsFilter;
  VolgaFindEdit1.Find(VolgaFindEdit1.Text);}
end;

procedure Tf_find.ListBox1Click(Sender: TObject);
begin
{  VolgaFindEdit1.ClearSearch;
  if ListBox1.ItemIndex = 0 then VolgaFindEdit1.FindMode:=vfmFirstPos else VolgaFindEdit1.FindMode:=vfmAnyPos;
  VolgaFindEdit1.Find(VolgaFindEdit1.Text);}
end;

procedure Tf_find.VolgaFindEdit1Change(Sender: TObject);
begin
    VolgaFindEdit1.Find(VolgaFindEdit1.Text)
end;

end.
