object f_message: Tf_message
  Left = 409
  Top = 301
  Width = 148
  Height = 158
  Caption = 'Select'
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
  object BitBtn1: TBitBtn
    Left = 16
    Top = 16
    Width = 105
    Height = 25
    Caption = 'Message box'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object btn_bar: TBitBtn
    Left = 16
    Top = 48
    Width = 105
    Height = 25
    Caption = 'Status bar'
    TabOrder = 1
    OnClick = btn_barClick
  end
  object BitBtn2: TBitBtn
    Left = 16
    Top = 80
    Width = 105
    Height = 25
    Caption = 'Popup'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object PopupMenu1: TPopupMenu
    Left = 8
    Top = 80
    object Exit1: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = Exit1Click
    end
  end
end
