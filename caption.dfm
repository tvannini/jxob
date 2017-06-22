object f_caption: Tf_caption
  Left = 230
  Top = 181
  Width = 338
  Height = 200
  Caption = 'Define Caption'
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
    Left = 8
    Top = 8
    Width = 36
    Height = 13
    Caption = 'Caption'
  end
  object Label2: TLabel
    Left = 8
    Top = 64
    Width = 51
    Height = 13
    Caption = 'Expression'
  end
  object e_caption: TEdit
    Left = 8
    Top = 24
    Width = 313
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
  end
  object e_exp: TEdit
    Left = 8
    Top = 80
    Width = 41
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 128
    Top = 128
    Width = 75
    Height = 25
    Caption = '&Ok'
    TabOrder = 2
    OnClick = SelectClick
  end
  object DBEdit1: TDBEdit
    Left = 64
    Top = 80
    Width = 257
    Height = 21
    BorderStyle = bsNone
    Color = clBtnFace
    DataField = 'return'
    DataSource = dm_form.ds_espressioni
    ReadOnly = True
    TabOrder = 3
  end
  object PopupMenu1: TPopupMenu
    Left = 232
    Top = 120
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
    object Zoom1: TMenuItem
      Caption = 'Zoom'
      ShortCut = 116
      OnClick = Zoom1Click
    end
  end
end
