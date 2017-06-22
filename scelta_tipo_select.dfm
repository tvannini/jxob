object f_tipo_select: Tf_tipo_select
  Left = 710
  Top = 422
  Width = 168
  Height = 117
  ActiveControl = ListBox1
  Caption = 'Select type'
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
  object ListBox1: TListBox
    Left = 0
    Top = 0
    Width = 160
    Height = 41
    Style = lbOwnerDrawFixed
    Align = alTop
    Ctl3D = False
    ItemHeight = 16
    Items.Strings = (
      'Select'
      'Calculated')
    ParentCtl3D = False
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 56
    Width = 75
    Height = 25
    Caption = '&Select'
    ModalResult = 1
    TabOrder = 1
  end
  object PopupMenu1: TPopupMenu
    Top = 56
    object Select1: TMenuItem
      Caption = 'Select'
      ShortCut = 13
      OnClick = Select1Click
    end
    object Esc1: TMenuItem
      Caption = 'Esc'
      ShortCut = 27
      OnClick = Esc1Click
    end
  end
end
