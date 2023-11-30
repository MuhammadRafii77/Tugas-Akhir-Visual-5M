unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, ComCtrls, Grids, DBGrids, StdCtrls,
  frxClass, frxDBSet;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    dtp1: TDateTimePicker;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    lbl4: TLabel;
    btn4: TButton;
    btn5: TButton;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
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
  Form5: TForm5;
  id : string;

implementation

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into faktur values(null,"'+edt1.Text+'","'+edt2.Text+'","'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'")');
zqry1.ExecSQL ;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from faktur');
zqry1.Open;
Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
  zqry1.Edit;
  zqry1.FieldByName('id_pesanan').Text := edt1.Text;
  zqry1.FieldByName('total_harga').Text := edt2.Text;
  zqry1.Post;
  ShowMessage('DATA BERHASIL DI UPDATE!');
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
  if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
zqry1.Delete;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text:=zqry1.Fields[1].AsString;
  edt2.Text:=zqry1.Fields[2].AsString;
  dtp1.date:=zqry1.Fields[3].AsDateTime;
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;

end;

procedure TForm5.btn5Click(Sender: TObject);
begin
  frxrprt1.ShowReport();
end;

end.
