unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    edt3: TEdit;
    btn4: TButton;
    btn5: TButton;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    lbl4: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  id : string;
implementation

{$R *.dfm}

procedure TForm4.btn1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into pelanggan values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'")');
zqry1.ExecSQL ;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pelanggan');
zqry1.Open;
Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
  zqry1.Edit;
  zqry1.FieldByName('nama_pelanggan').Text := edt1.Text;
  zqry1.FieldByName('alamat').Text := edt2.Text;
  zqry1.FieldByName('telepon').Text := edt3.Text;
  zqry1.Post;
  ShowMessage('DATA BERHASIL DI UPDATE!');
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
zqry1.Delete;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text:= zqry1.FieldList[1].AsString;
  edt2.Text:= zqry1.FieldList[2].AsString;
  edt3.Text:= zqry1.FieldList[3].AsString;
end;

procedure TForm4.btn5Click(Sender: TObject);
begin
 frxrprt1.ShowReport();
end;

end.
