object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 403
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 280
    Top = 51
    Width = 42
    Height = 13
    Caption = 'Jumlah X'
  end
  object Label2: TLabel
    Left = 280
    Top = 298
    Width = 42
    Height = 13
    Caption = 'Jumlah Y'
  end
  object Label3: TLabel
    Left = 440
    Top = 51
    Width = 56
    Height = 13
    Caption = 'Jumlah X^2'
  end
  object Label4: TLabel
    Left = 440
    Top = 298
    Width = 56
    Height = 13
    Caption = 'Jumlah Y^2'
  end
  object Label5: TLabel
    Left = 257
    Top = 169
    Width = 68
    Height = 13
    Caption = 'Jumlah (X * Y)'
  end
  object Panel1: TPanel
    Left = 440
    Top = 143
    Width = 273
    Height = 129
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 21
    object Label8: TLabel
      Left = 112
      Top = 8
      Width = 59
      Height = 13
      Caption = 'Nilai A dan B'
    end
    object Label6: TLabel
      Left = 24
      Top = 40
      Width = 29
      Height = 13
      Caption = 'Nilai A'
    end
    object Label7: TLabel
      Left = 24
      Top = 96
      Width = 28
      Height = 13
      Caption = 'Nilai B'
    end
  end
  object Button1: TButton
    Left = 338
    Top = 78
    Width = 75
    Height = 25
    Caption = 'Sum X'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 48
    Width = 169
    Height = 112
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_nilaiX'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nilaix'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 48
    Top = 231
    Width = 169
    Height = 114
    DataSource = DataSource2
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_nilaiY'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nilaiY'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 166
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBNavigator2: TDBNavigator
    Left = 16
    Top = 351
    Width = 240
    Height = 25
    TabOrder = 4
  end
  object sumX: TEdit
    Left = 338
    Top = 48
    Width = 75
    Height = 21
    ReadOnly = True
    TabOrder = 5
  end
  object SumY: TEdit
    Left = 338
    Top = 295
    Width = 75
    Height = 21
    ReadOnly = True
    TabOrder = 6
  end
  object Button2: TButton
    Left = 338
    Top = 325
    Width = 75
    Height = 25
    Caption = 'Sum Y'
    TabOrder = 7
    OnClick = Button2Click
  end
  object SumX2: TEdit
    Left = 514
    Top = 48
    Width = 75
    Height = 21
    ReadOnly = True
    TabOrder = 8
  end
  object Button3: TButton
    Left = 514
    Top = 78
    Width = 75
    Height = 25
    Caption = 'Sum X^2'
    TabOrder = 9
    OnClick = Button3Click
  end
  object SumY2: TEdit
    Left = 514
    Top = 295
    Width = 75
    Height = 21
    ReadOnly = True
    TabOrder = 10
  end
  object Button4: TButton
    Left = 514
    Top = 325
    Width = 75
    Height = 25
    Caption = 'Sum Y^2'
    TabOrder = 11
    OnClick = Button4Click
  end
  object SumXY: TEdit
    Left = 341
    Top = 166
    Width = 75
    Height = 21
    ReadOnly = True
    TabOrder = 12
  end
  object xy2: TButton
    Left = 341
    Top = 196
    Width = 75
    Height = 25
    Caption = '(X*Y) ^ 2'
    TabOrder = 13
    OnClick = xy2Click
  end
  object konstanta: TEdit
    Left = 514
    Top = 182
    Width = 75
    Height = 21
    ReadOnly = True
    TabOrder = 14
  end
  object nilaiA: TButton
    Left = 608
    Top = 180
    Width = 75
    Height = 25
    Caption = 'Cari Nilai a'
    TabOrder = 15
    OnClick = nilaiAClick
  end
  object Koefisien: TEdit
    Left = 514
    Top = 237
    Width = 75
    Height = 21
    ReadOnly = True
    TabOrder = 16
  end
  object nilaib: TButton
    Left = 608
    Top = 235
    Width = 75
    Height = 25
    Caption = 'Cari Nilai b'
    TabOrder = 17
    OnClick = nilaibClick
  end
  object Catatan: TMemo
    Left = 634
    Top = 8
    Width = 105
    Height = 105
    Lines.Strings = (
      'Catatan :'
      'Button "Cari nilai a" '
      'dan "Cari nilai b" '
      'ditekan'
      'setelah setiap '
      'komponen edit '
      'telah terisi')
    TabOrder = 18
  end
  object BitBtn2: TBitBtn
    Left = 554
    Top = 370
    Width = 89
    Height = 25
    Caption = 'Next Page'
    TabOrder = 19
    OnClick = bitbtn2Click
  end
  object BitBtn1: TBitBtn
    Left = 657
    Top = 370
    Width = 89
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 20
    OnClick = BitBtn1Click
  end
  object zconn: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Catalog = ''
    Connected = True
    HostName = ''
    Port = 3306
    Database = 'pemsim'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    Left = 8
  end
  object ZQ_X: TZQuery
    Connection = zconn
    Active = True
    SQL.Strings = (
      'SELECT * FROM x')
    Params = <>
    Left = 56
  end
  object DataSource1: TDataSource
    DataSet = ZQ_X
    Left = 112
  end
  object ZQ_Y: TZQuery
    Connection = zconn
    Active = True
    SQL.Strings = (
      'SELECT * FROM y')
    Params = <>
    Left = 168
  end
  object DataSource2: TDataSource
    DataSet = ZQ_Y
    Left = 224
  end
end
