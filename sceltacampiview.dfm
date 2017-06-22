object f_scelta_campiview: Tf_scelta_campiview
  Left = 648
  Top = 213
  Width = 306
  Height = 432
  Caption = 'Field of View selection'
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
  object BitBtn1: TBitBtn
    Left = 112
    Top = 352
    Width = 75
    Height = 25
    Caption = '&Select'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Memo1: TMemo
    Left = 48
    Top = 328
    Width = 121
    Height = 17
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
    Visible = False
    WordWrap = False
  end
  object ListBox1: TListBox
    Left = 0
    Top = 0
    Width = 298
    Height = 313
    Align = alTop
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    TabOrder = 2
  end
  object PopupMenu1: TPopupMenu
    Left = 240
    Top = 344
    object Select1: TMenuItem
      Caption = 'Select'
      ShortCut = 13
      OnClick = BitBtn1Click
    end
    object Esc1: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = Esc1Click
    end
  end
  object ActionList1: TActionList
    Top = 320
    object carica_lista: TAction
      Caption = 'carica_lista'
      OnExecute = carica_listaExecute
    end
    object prova: TAction
      Caption = 'prova'
      OnExecute = provaExecute
    end
  end
end
