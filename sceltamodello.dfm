object f_sceltamodel: Tf_sceltamodel
  Left = 377
  Top = 167
  Width = 949
  Height = 675
  Caption = 'Select model'
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
  object dbgrid_models: TcxGrid
    Left = 0
    Top = 0
    Width = 941
    Height = 594
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    PopupMenu = PopupMenu1
    TabOrder = 0
    object dbgrid_modelsDBTableView1: TcxGridDBTableView
      DataController.DataSource = dm_form.ds_modelli
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.IncSearch = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.GroupByBox = False
      object dbgrid_modelsDBTableView1idmodello: TcxGridDBColumn
        Caption = 'Alias'
        DataBinding.FieldName = 'idmodello'
        Width = 121
      end
      object dbgrid_modelsDBTableView1tipo_dato: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'tipo_dato'
      end
      object dbgrid_modelsDBTableView1maschera: TcxGridDBColumn
        Caption = 'Mask'
        DataBinding.FieldName = 'maschera'
        Width = 363
      end
      object dbgrid_modelsDBTableView1DBColumn1: TcxGridDBColumn
        Caption = 'Zoom program'
        DataBinding.FieldName = 'nomeprgscelta'
      end
    end
    object dbgrid_modelsLevel1: TcxGridLevel
      GridView = dbgrid_modelsDBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 594
    Width = 941
    Height = 54
    Align = alBottom
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 48
      Top = 24
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object Label1: TLabel
      Left = 8
      Top = 9
      Width = 51
      Height = 13
      Caption = 'Expression'
    end
    object btn_select: TBitBtn
      Left = 423
      Top = 21
      Width = 75
      Height = 25
      Caption = '&Select'
      TabOrder = 0
      OnClick = btn_selectClick
    end
    object e_modelexp: TEdit
      Left = 8
      Top = 25
      Width = 41
      Height = 19
      TabOrder = 1
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 392
    Top = 472
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
    object Group1: TMenuItem
      Caption = 'Group'
      OnClick = Group1Click
    end
  end
  object ActionList1: TActionList
    Left = 360
    Top = 464
    object scelta_expr: TAction
      Caption = 'scelta_expr'
      OnExecute = scelta_exprExecute
    end
  end
end
