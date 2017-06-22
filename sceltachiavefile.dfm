object f_sceltachiave: Tf_sceltachiave
  Left = 421
  Top = 279
  Width = 589
  Height = 426
  Caption = 'Index Selection'
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
  object lab_expr: TLabel
    Left = 8
    Top = 316
    Width = 122
    Height = 13
    Caption = 'Index name by expression'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 273
    Height = 297
    TabStop = False
    Ctl3D = False
    DataSource = dm_form.ds_indicitesta
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = scelta1Click
    Columns = <
      item
        Expanded = False
        FieldName = 'id_indice'
        Title.Caption = '#'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomekey'
        Title.Caption = 'IndexName'
        Width = 205
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 280
    Top = 352
    Width = 75
    Height = 25
    Caption = '&Ok'
    ModalResult = 1
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 280
    Top = 16
    Width = 297
    Height = 281
    Caption = 'Index segments'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    object DBGrid2: TDBGrid
      Left = 1
      Top = 14
      Width = 295
      Height = 266
      Align = alClient
      Ctl3D = False
      DataSource = dm_form.ds_indici
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id_segmento'
          Title.Caption = '#'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'segmento'
          Title.Caption = 'Field'
          Width = 165
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'direzione'
          Title.Caption = 'Direction'
          Visible = True
        end>
    end
  end
  object e_expr: TEdit
    Left = 136
    Top = 312
    Width = 49
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    PopupMenu = PopupMenu2
    TabOrder = 1
  end
  object PopupMenu1: TPopupMenu
    Left = 488
    Top = 328
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
  object t_indicitestalocal: TClientDataSet
    Active = True
    Aggregates = <>
    FileName = 'indicitesta.cds'
    Params = <>
    Left = 544
    Top = 328
    Data = {
      7A0000009619E0BD0100000018000000050000000000030000007A000A69645F
      746162656C6C6104000100000000000969645F696E6469636504000100000000
      00076E6F6D656B65790100490000000100055749445448020002001E00056D61
      7463680400010000000000086D617463686C656E04000100000000000000}
    object t_indicitestalocalid_tabella: TIntegerField
      FieldName = 'id_tabella'
    end
    object t_indicitestalocalid_indice: TIntegerField
      FieldName = 'id_indice'
    end
    object t_indicitestalocalnomekey: TStringField
      FieldName = 'nomekey'
      Size = 30
    end
    object t_indicitestalocalmatch: TIntegerField
      FieldName = 'match'
    end
    object t_indicitestalocalmatchlen: TIntegerField
      FieldName = 'matchlen'
    end
  end
  object ds_local: TDataSource
    DataSet = t_indicitestalocal
    Left = 520
    Top = 328
  end
  object PopupMenu2: TPopupMenu
    Left = 440
    Top = 328
    object Zoom1: TMenuItem
      Caption = 'Zoom'
      ShortCut = 116
      OnClick = Button2Click
    end
  end
end
