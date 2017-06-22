object f_tabdef: Tf_tabdef
  Left = 426
  Top = 157
  Width = 268
  Height = 461
  Caption = 'Column options'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 20
    Height = 13
    Caption = 'Line'
  end
  object Label2: TLabel
    Left = 88
    Top = 8
    Width = 60
    Height = 13
    Caption = 'From column'
  end
  object Label3: TLabel
    Left = 160
    Top = 8
    Width = 50
    Height = 13
    Caption = 'To column'
  end
  object Label4: TLabel
    Left = 16
    Top = 56
    Width = 54
    Height = 13
    Caption = 'Column title'
  end
  object Label5: TLabel
    Left = 16
    Top = 200
    Width = 36
    Height = 13
    Caption = 'Css line'
  end
  object Label6: TLabel
    Left = 16
    Top = 248
    Width = 53
    Height = 13
    Caption = 'Css header'
  end
  object Label7: TLabel
    Left = 16
    Top = 152
    Width = 65
    Height = 13
    Caption = 'Column footer'
  end
  object Label8: TLabel
    Left = 16
    Top = 296
    Width = 47
    Height = 13
    Caption = 'Css footer'
  end
  object Label9: TLabel
    Left = 16
    Top = 104
    Width = 146
    Height = 13
    Caption = 'Column description (tooltip text)'
  end
  object e_line: TEdit
    Left = 16
    Top = 24
    Width = 50
    Height = 21
    Ctl3D = False
    Enabled = False
    ParentCtl3D = False
    TabOrder = 9
  end
  object e_dacol: TEdit
    Left = 88
    Top = 24
    Width = 50
    Height = 21
    Ctl3D = False
    Enabled = False
    ParentCtl3D = False
    TabOrder = 10
  end
  object e_acol: TEdit
    Left = 160
    Top = 24
    Width = 50
    Height = 21
    Ctl3D = False
    Enabled = False
    ParentCtl3D = False
    TabOrder = 11
  end
  object BitBtn1: TBitBtn
    Left = 102
    Top = 400
    Width = 75
    Height = 25
    Caption = '&Ok'
    TabOrder = 8
    OnClick = BitBtn1Click
  end
  object e_label: TEdit
    Left = 16
    Top = 72
    Width = 225
    Height = 21
    Ctl3D = False
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    TabOrder = 0
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 344
    Width = 113
    Height = 20
    Caption = 'Hide sort button'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 6
  end
  object e_css: TEdit
    Left = 16
    Top = 216
    Width = 225
    Height = 21
    Ctl3D = False
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    TabOrder = 3
    OnDblClick = Zoom1Click
  end
  object CheckBox2: TCheckBox
    Left = 16
    Top = 368
    Width = 146
    Height = 20
    Caption = 'Hide repeated values'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 7
  end
  object e_cssheader: TEdit
    Left = 16
    Top = 264
    Width = 225
    Height = 21
    Ctl3D = False
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    TabOrder = 4
    OnDblClick = Zoom1Click
  end
  object e_footer: TEdit
    Left = 16
    Top = 168
    Width = 225
    Height = 21
    Ctl3D = False
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    TabOrder = 2
  end
  object ed_cssfooter: TEdit
    Left = 16
    Top = 312
    Width = 225
    Height = 21
    Ctl3D = False
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    TabOrder = 5
    OnDblClick = Zoom1Click
  end
  object e_tooltip: TEdit
    Left = 16
    Top = 120
    Width = 225
    Height = 21
    Ctl3D = False
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    TabOrder = 1
  end
  object PopupMenu1: TPopupMenu
    Left = 216
    Top = 16
    object Zoom1: TMenuItem
      Caption = 'Zoom'
      ShortCut = 116
      OnClick = Zoom1Click
    end
    object Return1: TMenuItem
      Caption = 'Return'
      ShortCut = 13
      OnClick = Return1Click
    end
  end
end
