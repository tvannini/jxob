object f_formula_sql_concat: Tf_formula_sql_concat
  Left = 481
  Top = 141
  Width = 487
  Height = 423
  Caption = 'SQL Concat'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ExpReturnFrame: TGroupBox
    Left = 0
    Top = 292
    Width = 479
    Height = 56
    Align = alBottom
    Caption = 'Expression return'
    TabOrder = 2
    DesignSize = (
      479
      56)
    object ExpReturnStr: TDBEdit
      Left = 10
      Top = 22
      Width = 457
      Height = 19
      Anchors = [akLeft, akTop, akRight]
      Ctl3D = False
      DataField = 'return'
      DataSource = dm_form.ds_espressioni
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object ParamsGrid: TVolgaDBGrid
    Left = 0
    Top = 0
    Width = 479
    Height = 292
    Align = alClient
    AllowDelete = False
    AllowInsert = False
    DataSource = dm_form.ds_formulas_sql
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = ParamsGridCellClick
    OnDrawColumnCell = ParamsGridDrawColumnCell
    OnDblClick = ParamsGridDblClick
    OnKeyDown = ParamsGridKeyDown
    OnKeyPress = ParamsGridKeyPress
    OnKeyUp = ParamsGridKeyUp
    Columns = <
      item
        FieldName = 'ID'
        Title.Caption = '#'
        Visible = True
        Width = 37
      end
      item
        FieldName = 'Exp'
        Title.Caption = 'Expression'
        Visible = True
        Width = 70
      end
      item
        FieldName = 'Field'
        Title.Caption = 'View field'
        Visible = True
        Width = 230
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 348
    Width = 479
    Height = 48
    Align = alBottom
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object BtnOk: TButton
      Left = 392
      Top = 11
      Width = 75
      Height = 25
      Caption = '&OK'
      ModalResult = 1
      TabOrder = 0
      OnClick = ActOKExecute
    end
    object BtnCancel: TButton
      Left = 304
      Top = 11
      Width = 75
      Height = 25
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
      OnClick = ActExitExecute
    end
  end
  object ActionList1: TActionList
    Left = 328
    Top = 128
    object ActExit: TAction
      Caption = 'ActExit'
      ShortCut = 27
      OnExecute = ActExitExecute
    end
    object ActOK: TAction
      Caption = 'ActOK'
      ShortCut = 13
      OnExecute = ActOKExecute
    end
  end
  object FreeParsPopup: TPopupMenu
    Left = 360
    Top = 128
    object Delete1: TMenuItem
      Caption = 'eliminazione'
      ShortCut = 114
      OnClick = Delete1Click
    end
    object Insert1: TMenuItem
      Caption = 'creazione'
      ShortCut = 115
      OnClick = Insert1Click
    end
    object Cancel1: TMenuItem
      Caption = 'annullamento'
      ShortCut = 117
      OnClick = Cancel1Click
    end
  end
end
