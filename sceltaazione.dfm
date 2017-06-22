object f_sceltaazione: Tf_sceltaazione
  Left = 358
  Top = 175
  Width = 503
  Height = 555
  ActiveControl = ListView1
  Caption = 'Action selection'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ListView1: TListView
    Left = 0
    Top = 0
    Width = 250
    Height = 528
    Align = alLeft
    Columns = <
      item
        Caption = 'Action Name'
        Width = 200
      end>
    Ctl3D = False
    TabOrder = 0
    ViewStyle = vsReport
  end
  object BitBtn1: TBitBtn
    Left = 408
    Top = 488
    Width = 75
    Height = 25
    Caption = '&Ok'
    TabOrder = 2
    OnClick = selectClick
  end
  object GroupBox1: TGroupBox
    Left = 264
    Top = 96
    Width = 217
    Height = 129
    Caption = 'Repeat action'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Label2: TLabel
      Left = 7
      Top = 75
      Width = 64
      Height = 13
      Caption = 'Loop on view'
    end
    object Label3: TLabel
      Left = 8
      Top = 25
      Width = 65
      Height = 13
      Caption = 'End condition'
    end
    object Label1: TLabel
      Left = 152
      Top = 25
      Width = 21
      Height = 13
      Caption = 'Expr'
    end
    object loop_task: TEdit
      Left = 8
      Top = 95
      Width = 193
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnDblClick = loop_taskDblClick
    end
    object end_expr: TEdit
      Left = 152
      Top = 45
      Width = 49
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnDblClick = end_exprDblClick
    end
    object cb_repeat: TComboBox
      Left = 8
      Top = 45
      Width = 129
      Height = 21
      Style = csOwnerDrawFixed
      Ctl3D = False
      ItemHeight = 15
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 0
      Text = 'True'
      OnChange = cb_repeatChange
      Items.Strings = (
        'True'
        'False'
        'By expression')
    end
  end
  object nuova_act: TButton
    Left = 272
    Top = 16
    Width = 75
    Height = 25
    Caption = '&New action'
    TabOrder = 3
    OnClick = nuova_actClick
  end
  object PopupMenu1: TPopupMenu
    Left = 360
    Top = 8
    object select: TMenuItem
      Caption = 'Select'
      ShortCut = 13
      OnClick = selectClick
    end
    object Zoom1: TMenuItem
      Caption = 'Zoom'
      ShortCut = 116
      OnClick = Zoom1Click
    end
    object Esc1: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = Esc1Click
    end
  end
end
