object f_sceltaexpr: Tf_sceltaexpr
  Left = 345
  Top = 164
  Width = 810
  Height = 615
  Caption = 'Expression selection'
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
  object Panel1: TPanel
    Left = 0
    Top = 547
    Width = 802
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 152
      Top = 8
      Width = 200
      Height = 25
      DataSource = dm_form.ds_espressioni
      TabOrder = 0
      Visible = False
    end
    object Button1: TButton
      Left = 359
      Top = 8
      Width = 90
      Height = 25
      Caption = '&Select'
      ModalResult = 1
      TabOrder = 1
    end
    object Button2: TButton
      Left = 704
      Top = 8
      Width = 90
      Height = 25
      Caption = '&Change script'
      TabOrder = 2
      OnClick = modifica_expExecute
    end
    object Button3: TButton
      Left = 7
      Top = 8
      Width = 90
      Height = 25
      Caption = 'C&ross ref (F10)'
      TabOrder = 3
      OnClick = Crossreference1Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 358
    Width = 802
    Height = 189
    ActivePage = ts_script
    Align = alBottom
    TabOrder = 1
    OnChange = PageControl1Change
    object ts_script: TTabSheet
      Caption = 'Full script'
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 794
        Height = 161
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Color = clBtnFace
        Ctl3D = False
        DataField = 'estesa'
        DataSource = dm_form.ds_espressioni
        ParentCtl3D = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object ts_checkresult: TTabSheet
      Caption = 'Check result'
      ImageIndex = 1
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 794
        Height = 161
        Align = alClient
        Ctl3D = False
        Lines.Strings = (
          'Memo1')
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object dbgrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 802
    Height = 349
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    PopupMenu = PopupMenu1
    TabOrder = 2
    object dbgrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dm_form.ds_espressioni
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsData.Appending = True
      OptionsSelection.InvertSelect = False
      OptionsView.GroupByBox = False
      object dbgrid1DBTableView1idexp: TcxGridDBColumn
        Caption = 'Id'
        DataBinding.FieldName = 'idexp'
        Width = 57
      end
      object dbgrid1DBTableView1return: TcxGridDBColumn
        Caption = 'Return'
        DataBinding.FieldName = 'return'
        Width = 700
      end
    end
    object dbgrid1Level1: TcxGridLevel
      GridView = dbgrid1DBTableView1
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 349
    Width = 802
    Height = 9
    AlignSplitter = salBottom
    Control = PageControl1
  end
  object PopupMenu1: TPopupMenu
    Left = 672
    Top = 400
    object scelta1: TMenuItem
      Caption = 'Scelta'
      ShortCut = 13
      OnClick = scelta1Click
    end
    object Zoom1: TMenuItem
      Caption = 'Zoom'
      ShortCut = 116
      OnClick = Zoom1Click
    end
    object Esc1: TMenuItem
      Caption = 'Esc'
      ShortCut = 27
      OnClick = Esc1Click
    end
    object New1: TMenuItem
      Caption = 'New'
      ShortCut = 115
      OnClick = New1Click
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      ShortCut = 114
      OnClick = Delete1Click
    end
    object Cancel: TMenuItem
      Caption = 'Cancel'
      ShortCut = 117
      OnClick = CancelClick
    end
    object Crossreference1: TMenuItem
      Caption = 'Cross reference'
      ShortCut = 121
      OnClick = Crossreference1Click
    end
  end
  object ActionList1: TActionList
    Left = 728
    Top = 424
    object modifica_exp: TAction
      Caption = 'modifica_exp'
      OnExecute = modifica_expExecute
    end
    object check_exp: TAction
      Caption = 'check_exp'
      OnExecute = check_expExecute
    end
  end
  object comando: TDosCommand
    OnTerminated = comandoTerminated
    InputToOutput = False
    MaxTimeAfterBeginning = 0
    MaxTimeAfterLastOutput = 0
    Left = 584
    Top = 555
  end
end
