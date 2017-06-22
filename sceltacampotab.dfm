object f_sceltacampotab: Tf_sceltacampotab
  Left = 192
  Top = 114
  Width = 648
  Height = 680
  ActiveControl = cxGrid1
  Caption = 'Field selection'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 607
    Width = 640
    Height = 46
    Align = alBottom
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Button1: TButton
      Left = 282
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Select'
      ModalResult = 1
      TabOrder = 0
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 640
    Height = 607
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderWidth = 1
    PopupMenu = PopupMenu1
    TabOrder = 0
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dm_form.ds_campi
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1id_campo: TcxGridDBColumn
        Caption = '#'
        DataBinding.FieldName = 'id_campo'
        Width = 46
      end
      object cxGrid1DBTableView1nomecampo: TcxGridDBColumn
        Caption = 'Field alias'
        DataBinding.FieldName = 'nomecampo'
        Width = 200
      end
      object cxGrid1DBTableView1dbname: TcxGridDBColumn
        Caption = 'Physical name'
        DataBinding.FieldName = 'dbname'
        Width = 200
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        Caption = 'Datatype'
        DataBinding.FieldName = 'picture'
        Width = 170
      end
    end
    object cxGrid1TableView1: TcxGridTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 408
    object scelta1: TMenuItem
      Caption = 'Select'
      ShortCut = 13
      OnClick = scelta1Click
    end
    object Uscita: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = UscitaClick
    end
    object Zoom1: TMenuItem
      Caption = 'Zoom'
      ShortCut = 116
      OnClick = Zoom1Click
    end
  end
end
