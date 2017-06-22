object Form1: TForm1
  Left = 388
  Top = 225
  Width = 136
  Height = 161
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 42
    Height = 13
    Caption = 'From line'
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 32
    Height = 13
    Caption = 'To line'
  end
  object Edit1: TEdit
    Left = 56
    Top = 24
    Width = 65
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 56
    Top = 56
    Width = 65
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 96
    Width = 75
    Height = 25
    Caption = '&Repeat'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
