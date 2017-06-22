object f_getdef: Tf_getdef
  Left = 289
  Top = 46
  Width = 959
  Height = 812
  Caption = 'Get tables definition'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 33
    Width = 951
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 337
    Width = 951
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 36
    Width = 951
    Height = 301
    Align = alTop
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds_db
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1tabname: TcxGridDBColumn
        Caption = 'Table name'
        DataBinding.FieldName = 'tabname'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Memo1: TMemo
    Left = 832
    Top = 544
    Width = 97
    Height = 81
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
    Visible = False
    WordWrap = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 951
    Height = 33
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 2
    object Button1: TButton
      Left = 272
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Retrieve tables'
      TabOrder = 0
      OnClick = Button1Click
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 8
      Top = 8
      Width = 233
      Height = 21
      KeyField = 'nomedb'
      ListField = 'nomedb'
      ListSource = dm_form.ds_databases
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 340
    Width = 951
    Height = 445
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 3
    object DBGrid_field: TDBGrid
      Left = 24
      Top = 36
      Width = 713
      Height = 417
      DataSource = ds_tab
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'fieldindex'
          ReadOnly = True
          Title.Caption = '#'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fieldname'
          ReadOnly = True
          Title.Caption = 'Fieldname'
          Width = 176
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fieldtype'
          ReadOnly = True
          Title.Caption = 'Type'
          Width = 106
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fieldsize'
          ReadOnly = True
          Title.Caption = 'Size'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fielddefault'
          ReadOnly = True
          Title.Caption = 'Default'
          Width = 72
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'datamodel'
          Title.Caption = 'Model ('#39#39' to exclude field)'
          Visible = True
        end>
    end
    object Button2: TButton
      Left = 736
      Top = 36
      Width = 89
      Height = 25
      Caption = 'Get'
      TabOrder = 1
      OnClick = Button2Click
    end
    object bt_selcampi: TButton
      Left = 832
      Top = 416
      Width = 89
      Height = 25
      Caption = 'bt_selcampi'
      TabOrder = 2
      OnClick = bt_selcampiClick
    end
  end
  object db: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 720
    object dbtabindex: TIntegerField
      FieldName = 'tabindex'
    end
    object dbtabname: TStringField
      FieldName = 'tabname'
      Size = 100
    end
    object dbselection: TStringField
      FieldName = 'selection'
      Size = 1
    end
  end
  object ds_db: TDataSource
    DataSet = db
    Left = 760
  end
  object ds_tab: TDataSource
    DataSet = tabella
    Left = 856
    Top = 560
  end
  object tabella: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'fieldindex'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'fieldname'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'fieldtype'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'fieldsize'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'fielddefault'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'selection'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'datamodel'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 888
    Top = 568
    object tabellafieldindex: TIntegerField
      FieldName = 'fieldindex'
    end
    object tabellafieldname: TStringField
      FieldName = 'fieldname'
      Size = 100
    end
    object tabellafieldtype: TStringField
      FieldName = 'fieldtype'
      Size = 30
    end
    object tabellafieldsize: TStringField
      FieldName = 'fieldsize'
      Size = 10
    end
    object tabellafielddefault: TStringField
      FieldName = 'fielddefault'
      Size = 30
    end
    object tabellaselection: TStringField
      FieldName = 'selection'
      Size = 1
    end
    object tabelladatamodel: TStringField
      FieldName = 'datamodel'
      Size = 30
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 816
    Top = 608
    object Zoom1: TMenuItem
      Caption = 'Zoom'
      ShortCut = 116
      OnClick = Zoom1Click
    end
  end
  object ActionList1: TActionList
    Left = 792
    object ret_fields: TAction
      Caption = 'ret_fields'
      OnExecute = ret_fieldsExecute
    end
  end
end
