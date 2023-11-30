unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, frxClass, frxDBSet;

type
  TForm1 = class(TForm)
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    btn4: TButton;
    btn5: TButton;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    lbl1: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  id : string;
implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into produk values(null,"'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'")');
zqry1.ExecSQL ;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from produk');
zqry1.Open;
Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
zqry1.Edit;
  zqry1.FieldByName('nama_produk').Text := edt2.Text;
  zqry1.FieldByName('harga').Text := edt3.Text;
  zqry1.FieldByName('stok').Text := edt4.Text;
  zqry1.Post;
  ShowMessage('DATA BERHASIL DI UPDATE!');
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
zqry1.Delete;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
  edt2.Text:= zqry1.FieldList[1].AsString;
  edt3.Text:= zqry1.FieldList[2].AsString;
  edt4.Text:= zqry1.FieldList[3].AsString;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin

  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
frxrprt1.ShowReport();    
end;

end.
