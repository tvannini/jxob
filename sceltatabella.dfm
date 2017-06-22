object f_sceltatabella: Tf_sceltatabella
  Left = 325
  Top = 219
  Width = 683
  Height = 576
  Caption = 'Table selection'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 675
    Height = 508
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    PopupMenu = PopupMenu1
    TabOrder = 0
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dm_form.ds_tabelle
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
      object cxGrid1DBTableView1Id: TcxGridDBColumn
        DataBinding.FieldName = 'Id'
      end
      object cxGrid1DBTableView1Nome: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'Nome'
        Width = 149
      end
      object cxGrid1DBTableView1Nome_fisico: TcxGridDBColumn
        Caption = 'Physical name'
        DataBinding.FieldName = 'Nome_fisico'
        Width = 151
      end
      object cxGrid1DBTableView1database: TcxGridDBColumn
        Caption = 'Database'
        DataBinding.FieldName = 'database'
        Width = 121
      end
      object cxGrid1DBTableView1folder: TcxGridDBColumn
        Caption = 'Folder'
        DataBinding.FieldName = 'folder'
        Width = 150
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
  object Panel1: TPanel
    Left = 0
    Top = 508
    Width = 675
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Button1: TButton
      Left = 300
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Select'
      ModalResult = 1
      TabOrder = 0
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 328
    Top = 400
    object scelta1: TMenuItem
      Caption = 'Select'
      ShortCut = 13
      OnClick = DBGrid1DblClick
    end
    object esc1: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = esc1Click
    end
  end
end
