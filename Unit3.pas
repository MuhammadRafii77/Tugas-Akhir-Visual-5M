unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Mask;

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
    procedure pesananClick(Sender: TObject);
    procedure produkClick(Sender: TObject);
    procedure DataPelanggan1Click(Sender: TObject);
    procedure DataFaktur1Click(Sender: TObject);
    procedure DataDetailPesan1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
    procedure DataUser1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AppForm: TAppForm;
   Username, Password: string;

implementation

uses Unit1, Unit2, Unit4, Unit5, Unit6, Unit7;

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
   if (edt1.Text='admin') and (edt2.Text='1234') then
   Menu1.Visible:=True;
   grp1.Visible:=False;
   Logout1.Visible:=True;
   Showmessage(' BERHASIL LOGIN');
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

end.
