object AppForm: TAppForm
  Left = 823
  Top = 349
  Width = 471
  Height = 367
  Caption = 'MainForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 40
    Top = 72
    Width = 321
    Height = 209
    TabOrder = 0
    object lbl1: TLabel
      Left = 40
      Top = 48
      Width = 54
      Height = 13
      Caption = 'USERNAME'
    end
    object lbl2: TLabel
      Left = 40
      Top = 96
      Width = 57
      Height = 13
      Caption = 'PASSWORD'
    end
    object edt1: TEdit
      Left = 112
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'admin'
    end
    object edt2: TEdit
      Left = 112
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '1234'
    end
    object btn1: TButton
      Left = 40
      Top = 136
      Width = 75
      Height = 25
      Caption = 'LOGIN'
      TabOrder = 2
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 144
      Top = 136
      Width = 73
      Height = 25
      Caption = 'BUAT AKUN'
      TabOrder = 3
      OnClick = btn2Click
    end
  end
  object mm1: TMainMenu
    Left = 16
    Top = 8
    object Menu1: TMenuItem
      Caption = 'Main Menu'
      Visible = False
      object produk: TMenuItem
        Caption = 'Data Produk'
        OnClick = produkClick
      end
      object pesanan: TMenuItem
        Caption = 'Data Pesanan'
        OnClick = pesananClick
      end
      object DataPelanggan1: TMenuItem
        Caption = 'Data Pelanggan'
        OnClick = DataPelanggan1Click
      end
      object DataFaktur1: TMenuItem
        Caption = 'Data Faktur'
        OnClick = DataFaktur1Click
      end
      object DataDetailPesan1: TMenuItem
        Caption = 'Data Detail Pesan'
        OnClick = DataDetailPesan1Click
      end
      object DataUser1: TMenuItem
        Caption = 'Data User'
        OnClick = DataUser1Click
      end
    end
    object Logout1: TMenuItem
      Caption = 'Logout'
      Visible = False
      OnClick = Logout1Click
    end
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    AutoCommit = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'sepeda'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\ACER\Downloads\Zeos703\Zeos703\libmysql.dll'
    Left = 304
    Top = 96
  end
  object zqryLogin: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 304
    Top = 200
  end
  object dLogin: TDataSource
    DataSet = zqryLogin
    Left = 304
    Top = 144
  end
end
