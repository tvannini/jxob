object f_tstrings: Tf_tstrings
  Left = 192
  Top = 107
  Width = 198
  Height = 288
  Caption = 'List of values'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 190
    Height = 220
    Align = alClient
    Ctl3D = False
    Lines.Strings = (
      'Memo1')
    ParentCtl3D = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 220
    Width = 190
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 56
      Top = 8
      Width = 81
      Height = 25
      Caption = '&Ok'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
end
