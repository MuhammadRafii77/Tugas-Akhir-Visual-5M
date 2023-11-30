unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm6 = class(TForm)
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    lbl1: TLabel;
    c1: TComboBox;
    dbgrd1: TDBGrid;
    lbl5: TLabel;
    btn4: TButton;
    btn5: TButton;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  id : string;
implementation

{$R *.dfm}


procedure TForm6.btn1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into detail_pesanan values(null,"'+edt1.Text+'","'+edt2.Text+'","'+c1.Text+'","'+edt3.Text+'")');
zqry1.ExecSQL ;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from detail_pesanan');
zqry1.Open;
Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
zqry1.Delete;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
 zqry1.Edit;
  zqry1.FieldByName('nama_produk').Text := edt1.Text;
  zqry1.FieldByName('jumlah').Text := edt2.Text;
  zqry1.FieldByName('status').Text := c1.Text;
  zqry1.FieldByName('total_harga').Text := edt3.Text;
  zqry1.Post;
  ShowMessage('DATA BERHASIL DI UPDATE!');
end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
 edt1.Text:=zqry1.Fields[1].AsString;
  edt2.Text:=zqry1.Fields[2].AsString;
  c1.Text:=zqry1.Fields[3].AsString;
  edt3.Text:=zqry1.Fields[4].AsString;
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
c1.Clear;
edt3.Clear;
end;

procedure TForm6.btn5Click(Sender: TObject);
begin
 frxrprt1.ShowReport();
end;

end.
