unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm7 = class(TForm)
    lbl1: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    btn4: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    lbl2: TLabel;
    btn5: TButton;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.btn1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into user values(null,"'+edt1.Text+'","'+edt2.Text+'")');
zqry1.ExecSQL ;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from user');
zqry1.Open;
Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm7.btn3Click(Sender: TObject);
begin
if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
zqry1.Delete;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm7.dbgrd1CellClick(Column: TColumn);
begin
 edt1.Text:= zqry1.FieldList[1].AsString;
  edt2.Text:= zqry1.FieldList[2].AsString;
end;

procedure TForm7.btn4Click(Sender: TObject);
begin
 edt1.Clear;
  edt2.Clear;
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
zqry1.Edit;
  zqry1.FieldByName('username').Text := edt1.Text;
  zqry1.FieldByName('password').Text := edt2.Text;
  zqry1.Post;
  ShowMessage('DATA BERHASIL DI UPDATE!');
end;

procedure TForm7.btn5Click(Sender: TObject);
begin
  frxrprt1.ShowReport();
end;

end.
