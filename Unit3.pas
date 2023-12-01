unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Mask, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection;

type
  TAppForm = class(TForm)
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    mm1: TMainMenu;
    Menu1: TMenuItem;
    produk: TMenuItem;
    pesanan: TMenuItem;
    DataPelanggan1: TMenuItem;
    DataFaktur1: TMenuItem;
    DataDetailPesan1: TMenuItem;
    Logout1: TMenuItem;
    DataUser1: TMenuItem;
    con1: TZConnection;
    zqryLogin: TZQuery;
    dLogin: TDataSource;
    btn2: TButton;
    procedure pesananClick(Sender: TObject);
    procedure produkClick(Sender: TObject);
    procedure DataPelanggan1Click(Sender: TObject);
    procedure DataFaktur1Click(Sender: TObject);
    procedure DataDetailPesan1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
    procedure DataUser1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AppForm: TAppForm;
   Username, Password: string;

implementation

uses Unit1, Unit2, Unit4, Unit5, Unit6, Unit7, Unit8;

{$R *.dfm}


procedure TAppForm.pesananClick(Sender: TObject);
begin
 if Form2=nil then
  Form2:=TForm2.Create(Application);
  Form2.Show;
end;

procedure TAppForm.produkClick(Sender: TObject);
begin
if Form1=nil then
  Form1:=TForm1.Create(Application);
  Form1.Show;
end;

procedure TAppForm.DataPelanggan1Click(Sender: TObject);
begin
if Form4=nil then
  Form4:=TForm4.Create(Application);
  Form4.Show;
end;

procedure TAppForm.DataFaktur1Click(Sender: TObject);
begin
if Form5=nil then
  Form5:=TForm5.Create(Application);
  Form5.Show;
end;

procedure TAppForm.DataDetailPesan1Click(Sender: TObject);
begin
 if Form6=nil then
  Form6:=TForm6.Create(Application);
  Form6.Show;
end;
 procedure TAppForm.btn1Click(Sender: TObject);
begin
  // if (edt1.Text='admin') and (edt2.Text='1234') then
   Menu1.Visible:=True;
   grp1.Visible:=False;
   Logout1.Visible:=True;
   // Mengambil data dari form
  username := edt1.Text;
  password := edt2.Text;

  // Menyusun query SQL dengan parameterized query untuk menghindari SQL injection
  zqryLogin.SQL.Text := 'SELECT * FROM user WHERE username = :username AND password = :password';

  // Clear parameter dan mengisi nilai parameter
  zqryLogin.Params.ParamByName('username').AsString := username;
  zqryLogin.Params.ParamByName('password').AsString := password;

  // Mengeksekusi query
  zqryLogin.Open;

  // Mengecek apakah terdapat data yang sesuai
  if (zqryLogin.RecordCount > 0) then
  begin
    // Lakukan tindakan setelah login berhasil
    // Contoh: tampilkan pesan atau buka form utama
    ShowMessage('Berhasil Login');
  end
  else
  begin
    ShowMessage('Login Gagal. Periksa username dan password Anda.');
  end;



end;

procedure TAppForm.Logout1Click(Sender: TObject);
begin
  Menu1.Visible:=False;
   grp1.Visible:=True;
   Logout1.Visible:=False;
    Showmessage(' BERHASIL LOGOUT');
end;

procedure TAppForm.DataUser1Click(Sender: TObject);
begin
if Form7=nil then
  Form7:=TForm7.Create(Application);
  Form7.Show;
end;

procedure TAppForm.btn2Click(Sender: TObject);
begin
  if Form8=nil then
  Form8:=TForm8.Create(Application);
  Form8.Show;
end;

end.
