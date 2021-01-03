object f_sceltachiave: Tf_sceltachiave
  Left = 421
  Top = 279
  Width = 587
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
    Width = 125
    Height = 13
    Caption = 'Index name by expression:'
  end
  object Label1: TLabel
    Left = 280
    Top = 10
    Width = 77
    Height = 13
    Caption = 'Index segments:'
  end
  object Button1: TButton
    Left = 248
    Top = 352
    Width = 75
    Height = 25
    Caption = '&Ok'
    ModalResult = 1
    TabOrder = 1
  end
  object e_expr: TEdit
    Left = 160
    Top = 312
    Width = 49
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    PopupMenu = PopupMenu2
    TabOrder = 0
  end
  object DBGrid1: TMTDBGrid
    Left = 0
    Top = 0
    Width = 273
    Height = 300
    Cursor = crDefault
    Ctl3D = False
    DataSource = dm_form.ds_indicitesta_all
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = selectOk
    MTOptions = [mtCheck]
    MTRichEditForMemo = False
    MTPicOption = pNone
    MTSizeTextAsMemo = 0
    Columns = <
      item
        Expanded = False
        FieldName = 'id_indice'
        ReadOnly = True
        Title.Caption = '#'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomekey'
        ReadOnly = True
        Title.Caption = 'Index name'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'unique'
        ReadOnly = True
        Title.Caption = 'Unique'
        Width = 40
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 280
    Top = 32
    Width = 300
    Height = 267
    Align = alCustom
    Ctl3D = False
    DataSource = dm_form.ds_indici_all
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
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
        Width = 50
        Visible = True
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 488
    Top = 312
    object scelta1: TMenuItem
      Caption = 'Select'
      ShortCut = 13
      OnClick = selectOk
    end
    object Uscita: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = UscitaClick
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 440
    Top = 312
    object Zoom1: TMenuItem
      Caption = 'Zoom'
      ShortCut = 116
      OnClick = ExprZoom
    end
  end
end
