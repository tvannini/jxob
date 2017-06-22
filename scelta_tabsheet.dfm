object f_scelta_tabsheet: Tf_scelta_tabsheet
  Left = 192
  Top = 107
  Width = 156
  Height = 258
  Caption = 'Tabsheet selection'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 0
    Top = 0
    Width = 145
    Height = 177
    ItemHeight = 13
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 192
    Width = 75
    Height = 25
    Caption = '&Select'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object PopupMenu1: TPopupMenu
    Left = 112
    Top = 200
    object Select1: TMenuItem
      Caption = 'Select'
      ShortCut = 13
      OnClick = BitBtn1Click
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = Exit1Click
    end
  end
end
