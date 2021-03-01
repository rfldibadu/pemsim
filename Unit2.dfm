object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
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
    Left = 56
    Top = 48
    Width = 28
    Height = 13
    Caption = 'Nilai a'
  end
  object Label2: TLabel
    Left = 56
    Top = 85
    Width = 28
    Height = 13
    Caption = 'Nilai b'
  end
  object Label3: TLabel
    Left = 56
    Top = 126
    Width = 29
    Height = 13
    Caption = 'Nilai N'
  end
  object Label4: TLabel
    Left = 264
    Top = 46
    Width = 28
    Height = 13
    Caption = 'Nilai X'
  end
  object Label5: TLabel
    Left = 264
    Top = 83
    Width = 28
    Height = 13
    Caption = 'Nilai Y'
  end
  object Label6: TLabel
    Left = 520
    Top = 16
    Width = 49
    Height = 13
    Caption = 'KORELASI'
  end
  object Label7: TLabel
    Left = 472
    Top = 46
    Width = 26
    Height = 13
    Caption = 'Nilai r'
  end
  object Label8: TLabel
    Left = 472
    Top = 112
    Width = 45
    Height = 13
    Caption = 'Koef  Det'
  end
  object Button1: TButton
    Left = 656
    Top = 370
    Width = 83
    Height = 25
    Caption = 'Previous Page'
    TabOrder = 0
    OnClick = Button1Click
  end
  object nilaiA: TEdit
    Left = 96
    Top = 43
    Width = 75
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object nilaiB: TEdit
    Left = 96
    Top = 80
    Width = 75
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object nilaiN: TEdit
    Left = 96
    Top = 121
    Width = 75
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object NilaiX: TEdit
    Left = 304
    Top = 43
    Width = 75
    Height = 21
    TabOrder = 4
    TextHint = '*input X'
  end
  object NilaiY: TEdit
    Left = 304
    Top = 80
    Width = 75
    Height = 21
    ReadOnly = True
    TabOrder = 5
  end
  object Button2: TButton
    Left = 304
    Top = 107
    Width = 75
    Height = 25
    Caption = 'Hitung Nilai Y'
    TabOrder = 6
    OnClick = Button2Click
  end
  object NilaiR: TEdit
    Left = 544
    Top = 43
    Width = 75
    Height = 21
    ReadOnly = True
    TabOrder = 7
  end
  object Button3: TButton
    Left = 544
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Hitung Nilai R'
    TabOrder = 8
    OnClick = Button3Click
  end
  object NilaiDet: TEdit
    Left = 544
    Top = 109
    Width = 75
    Height = 21
    ReadOnly = True
    TabOrder = 9
  end
  object Button4: TButton
    Left = 544
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Hitung Det'
    TabOrder = 10
    OnClick = Button4Click
  end
end
