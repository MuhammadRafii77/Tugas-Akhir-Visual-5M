object Form8: TForm8
  Left = 502
  Top = 220
  Width = 1305
  Height = 675
  Caption = 'Form8'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 80
    Top = 144
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
  end
  object lbl3: TLabel
    Left = 80
    Top = 96
    Width = 54
    Height = 13
    Caption = 'USERNAME'
  end
  object lbl2: TLabel
    Left = 168
    Top = 40
    Width = 163
    Height = 21
    Caption = 'FORM BUAT AKUN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 184
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 184
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 104
    Top = 208
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = btn1Click
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
    Left = 392
    Top = 40
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 392
    Top = 152
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 392
    Top = 96
  end
end
