object f_copymove: Tf_copymove
  Left = 370
  Top = 287
  Width = 181
  Height = 178
  Caption = 'Select row'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox12: TGroupBox
    Left = 0
    Top = 0
    Width = 173
    Height = 144
    Align = alClient
    Caption = 'Move rows'
    TabOrder = 0
    object Label72: TLabel
      Left = 16
      Top = 32
      Width = 43
      Height = 13
      Caption = 'From row'
    end
    object Label73: TLabel
      Left = 16
      Top = 64
      Width = 33
      Height = 13
      Caption = 'To row'
    end
    object Button2: TButton
      Left = 45
      Top = 104
      Width = 81
      Height = 25
      Caption = '&Move'
      TabOrder = 2
      OnClick = Button2Click
    end
    object move_da: TEdit
      Left = 64
      Top = 28
      Width = 33
      Height = 21
      TabOrder = 0
    end
    object move_a: TEdit
      Left = 64
      Top = 60
      Width = 33
      Height = 21
      TabOrder = 1
    end
  end
end
