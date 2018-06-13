object f_tabdef: Tf_tabdef
  Left = 651
  Top = 181
  Width = 382
  Height = 354
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
    Top = 20
    Width = 38
    Height = 13
    Caption = 'Column:'
  end
  object Label2: TLabel
    Left = 152
    Top = 20
    Width = 5
    Height = 13
    Caption = ')'
  end
  object Label3: TLabel
    Left = 248
    Top = 20
    Width = 9
    Height = 13
    Caption = '-'
  end
  object Label4: TLabel
    Left = 16
    Top = 56
    Width = 100
    Height = 13
    Caption = 'Title:'
  end
  object Label5: TLabel
    Left = 16
    Top = 152
    Width = 74
    Height = 13
    Caption = 'Line CSS class:'
  end
  object Label6: TLabel
    Left = 16
    Top = 176
    Width = 100
    Height = 13
    Caption = 'Header CSS class:'
  end
  object Label7: TLabel
    Left = 16
    Top = 128
    Width = 100
    Height = 13
    Caption = 'Footer:'
  end
  object Label8: TLabel
    Left = 16
    Top = 200
    Width = 100
    Height = 13
    Caption = 'Footer CSS class:'
  end
  object Label9: TLabel
    Left = 16
    Top = 104
    Width = 100
    Height = 13
    Caption = 'Description (tooltip):'
  end
  object JvDivider1: TJvDivider
    Left = 16
    Top = 40
    Width = 337
    Height = 9
    Vertical = False
  end
  object JvDivider2: TJvDivider
    Left = 16
    Top = 256
    Width = 337
    Height = 9
    Vertical = False
  end
  object Label10: TLabel
    Left = 128
    Top = 20
    Width = 3
    Height = 13
    Caption = '('
  end
  object Label11: TLabel
    Left = 16
    Top = 224
    Width = 100
    Height = 13
    Caption = 'Hide sort button:'
  end
  object Label12: TLabel
    Left = 16
    Top = 80
    Width = 100
    Height = 13
    Caption = 'Header action:'
  end
  object e_line: TEdit
    Left = 136
    Top = 20
    Width = 15
    Height = 20
    BevelEdges = []
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = False
    Enabled = False
    ParentCtl3D = False
    TabOrder = 9
  end
  object e_dacol: TEdit
    Left = 216
    Top = 20
    Width = 30
    Height = 20
    BevelEdges = []
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = False
    Enabled = False
    ParentCtl3D = False
    TabOrder = 10
  end
  object e_acol: TEdit
    Left = 264
    Top = 20
    Width = 30
    Height = 20
    BevelEdges = []
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = False
    Enabled = False
    ParentCtl3D = False
    TabOrder = 11
  end
  object BitBtn1: TBitBtn
    Left = 158
    Top = 288
    Width = 75
    Height = 25
    Caption = '&Ok'
    TabOrder = 8
    OnClick = BitBtn1Click
  end
  object e_label: TEdit
    Left = 128
    Top = 56
    Width = 225
    Height = 20
    Ctl3D = False
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    TabOrder = 0
  end
  object CheckBox1: TCheckBox
    Left = 128
    Top = 224
    Width = 25
    Height = 20
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 7
  end
  object e_css: TEdit
    Left = 128
    Top = 152
    Width = 225
    Height = 20
    Ctl3D = False
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    TabOrder = 4
    OnDblClick = Zoom1Click
  end
  object e_cssheader: TEdit
    Left = 128
    Top = 176
    Width = 225
    Height = 20
    Ctl3D = False
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    TabOrder = 5
    OnDblClick = Zoom1Click
  end
  object e_footer: TEdit
    Left = 128
    Top = 128
    Width = 225
    Height = 20
    Ctl3D = False
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    TabOrder = 3
  end
  object ed_cssfooter: TEdit
    Left = 128
    Top = 200
    Width = 225
    Height = 20
    Ctl3D = False
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    TabOrder = 6
    OnDblClick = Zoom1Click
  end
  object e_tooltip: TEdit
    Left = 128
    Top = 104
    Width = 225
    Height = 20
    Ctl3D = False
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    TabOrder = 2
  end
  object e_action: TEdit
    Left = 128
    Top = 80
    Width = 225
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    TabOrder = 1
  end
  object PopupMenu1: TPopupMenu
    Left = 325
    Top = 224
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
