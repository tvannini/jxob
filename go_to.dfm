object f_goto: Tf_goto
  Left = 410
  Top = 276
  Width = 176
  Height = 151
  Caption = 'Goto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 48
    Top = 32
    Width = 75
    Height = 25
    Caption = '&Program'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 48
    Top = 64
    Width = 75
    Height = 25
    Caption = '&Url'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object PopupMenu1: TPopupMenu
    Top = 8
    object Exit: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = ExitClick
    end
  end
end
