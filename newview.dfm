object f_newview: Tf_newview
  Left = 406
  Top = 270
  Width = 269
  Height = 153
  BorderIcons = [biSystemMenu]
  Caption = 'New view'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 55
    Height = 13
    Caption = 'View name:'
  end
  object e_view: TEdit
    Left = 24
    Top = 32
    Width = 209
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    Text = 'e_view'
  end
  object Button1: TButton
    Left = 96
    Top = 80
    Width = 75
    Height = 25
    Caption = '&Ok'
    TabOrder = 1
    OnClick = Button1Click
  end
  object PopupMenu1: TPopupMenu
    Left = 208
    Top = 56
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
