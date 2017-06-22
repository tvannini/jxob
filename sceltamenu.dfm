object f_sceltamenu: Tf_sceltamenu
  Left = 298
  Top = 165
  Width = 387
  Height = 540
  Caption = 'Menu selection'
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
  object TreeView1: TTreeView
    Left = 0
    Top = 0
    Width = 379
    Height = 457
    Align = alTop
    Ctl3D = False
    Indent = 19
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 152
    Top = 472
    Width = 75
    Height = 25
    Caption = '&Select'
    TabOrder = 1
    OnClick = SelectClick
  end
  object PopupMenu1: TPopupMenu
    Left = 248
    Top = 464
    object Select: TMenuItem
      Caption = 'Select'
      ShortCut = 13
      OnClick = SelectClick
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = Exit1Click
    end
  end
end
