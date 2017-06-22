object f_sceltaview: Tf_sceltaview
  Left = 441
  Top = 254
  Width = 431
  Height = 366
  Caption = 'View select'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 168
    Top = 296
    Width = 81
    Height = 25
    Caption = '&Select'
    TabOrder = 1
    OnClick = Select1Click
  end
  object ListView1: TListView
    Left = 0
    Top = 0
    Width = 423
    Height = 281
    Align = alTop
    Columns = <
      item
        Caption = 'View Name'
        Width = 250
      end
      item
        Caption = 'Type'
        Width = 150
      end>
    Ctl3D = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    ViewStyle = vsReport
  end
  object PopupMenu1: TPopupMenu
    Left = 384
    Top = 296
    object Select1: TMenuItem
      Caption = 'Select'
      ShortCut = 13
      OnClick = Select1Click
    end
    object Esc1: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = Esc1Click
    end
  end
end
