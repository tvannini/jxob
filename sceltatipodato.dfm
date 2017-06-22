object f_selecttype: Tf_selecttype
  Left = 326
  Top = 158
  Width = 187
  Height = 204
  Caption = 'Select type'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ListView1: TListView
    Left = 0
    Top = 0
    Width = 179
    Height = 113
    Align = alTop
    Columns = <
      item
        Caption = 'Type'
        Width = 100
      end>
    Ctl3D = False
    Items.Data = {
      AA0000000600000000000000FFFFFFFFFFFFFFFF000000000000000005416C70
      686100000000FFFFFFFFFFFFFFFF0000000000000000064E756D626572000000
      00FFFFFFFFFFFFFFFF0000000000000000044461746500000000FFFFFFFFFFFF
      FFFF00000000000000000454696D6500000000FFFFFFFFFFFFFFFF0000000000
      000000074C6F676963616C00000000FFFFFFFFFFFFFFFF00000000000000000A
      53747275637475726564}
    TabOrder = 0
    ViewStyle = vsReport
  end
  object BitBtn1: TBitBtn
    Left = 56
    Top = 128
    Width = 75
    Height = 25
    Caption = '&Select'
    TabOrder = 1
    OnClick = Select1Click
  end
  object PopupMenu1: TPopupMenu
    Left = 24
    Top = 128
    object Select1: TMenuItem
      Caption = 'Select'
      ShortCut = 13
      OnClick = Select1Click
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = Exit1Click
    end
  end
end
