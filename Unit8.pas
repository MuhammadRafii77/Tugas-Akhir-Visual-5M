unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TForm8 = class(TForm)
    lbl1: TLabel;
    lbl3: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.btn1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into user values(null,"'+edt1.Text+'","'+edt2.Text+'")');
zqry1.ExecSQL ;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from user');
  zqry1.Open;
  Showmessage('Akun Berhasil Dibuat')
end;

end.
