object f_scelta_da_list: Tf_scelta_da_list
  Left = 284
  Top = 114
  Width = 396
  Height = 271
  Caption = 'f_scelta_da_list'
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
  object Panel1: TPanel
    Left = 0
    Top = 203
    Width = 388
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 152
      Top = 8
      Width = 81
      Height = 25
      Caption = '&Ok'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object ListBox1: TListBox
    Left = 0
    Top = 0
    Width = 388
    Height = 203
    Style = lbOwnerDrawFixed
    Align = alClient
    Ctl3D = False
    ItemHeight = 16
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    Sorted = True
    TabOrder = 0
  end
  object PopupMenu1: TPopupMenu
    Left = 16
    Top = 194
    object Select1: TMenuItem
      Caption = 'Select'
      ShortCut = 13
      OnClick = Select1Click
    end
  end
end
