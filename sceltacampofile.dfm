object f_sceltacampo: Tf_sceltacampo
  Left = 421
  Top = 279
  Width = 504
  Height = 477
  Caption = 'Field selection'
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 496
    Height = 402
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dm_form.ds_campi
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1id_campo: TcxGridDBColumn
        Caption = 'Id'
        DataBinding.FieldName = 'id_campo'
        Width = 43
      end
      object cxGrid1DBTableView1nomecampo: TcxGridDBColumn
        Caption = 'Field name'
        DataBinding.FieldName = 'nomecampo'
        Width = 150
      end
      object cxGrid1DBTableView1dbname: TcxGridDBColumn
        Caption = 'Physical name'
        DataBinding.FieldName = 'dbname'
        Width = 150
      end
      object cxGrid1DBTableView1picture: TcxGridDBColumn
        Caption = 'Datatype'
        DataBinding.FieldName = 'picture'
        Width = 130
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 402
    Width = 496
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 216
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Ok'
      TabOrder = 0
      OnClick = scelta1Click
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
  end
end
