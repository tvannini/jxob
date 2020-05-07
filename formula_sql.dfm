object f_formula_sql: Tf_formula_sql
  Left = 499
  Top = 160
  Width = 440
  Height = 442
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
  object SQLPages: TPageControl
    Left = 0
    Top = 0
    Width = 430
    Height = 410
    ActivePage = TabSQL
    Style = tsFlatButtons
    TabOrder = 0
    OnChange = SQLPagesChange
    object TabConcat: TTabSheet
      Caption = 'CONCAT'
      object ExpReturnFrame: TGroupBox
        Left = 0
        Top = 275
        Width = 422
        Height = 56
        Align = alBottom
        Caption = 'Expression return'
        TabOrder = 0
        DesignSize = (
          422
          56)
        object ExpReturnStr: TDBEdit
          Left = 10
          Top = 22
          Width = 404
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
        Width = 422
        Height = 257
        Align = alTop
        AllowDelete = False
        AllowInsert = False
        DataSource = dm_form.ds_formulas_sql
        TabOrder = 1
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
        Top = 331
        Width = 422
        Height = 48
        Align = alBottom
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        object BtnConcatOk: TButton
          Left = 328
          Top = 11
          Width = 75
          Height = 25
          Caption = '&OK'
          ModalResult = 1
          TabOrder = 0
          OnClick = ActOKExecute
        end
        object BtnCancel: TButton
          Left = 240
          Top = 11
          Width = 75
          Height = 25
          Caption = '&Cancel'
          ModalResult = 2
          TabOrder = 1
          OnClick = ActExitExecute
        end
      end
    end
    object TabSQL: TTabSheet
      Caption = 'SQL Code'
      ImageIndex = 1
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 97
        Height = 20
        Caption = 'Code Expression:'
      end
      object Panel2: TPanel
        Left = 0
        Top = 331
        Width = 422
        Height = 48
        Align = alBottom
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object BtnSQLOK: TButton
          Left = 328
          Top = 11
          Width = 75
          Height = 25
          Caption = '&OK'
          ModalResult = 1
          TabOrder = 0
          OnClick = ActOKExecute
        end
        object BtnSQLCancel: TButton
          Left = 240
          Top = 11
          Width = 75
          Height = 25
          Caption = '&Cancel'
          ModalResult = 2
          TabOrder = 1
          OnClick = ActExitExecute
        end
      end
      object CodeExp: TEdit
        Left = 112
        Top = 24
        Width = 57
        Height = 20
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        Text = 'CodeExp'
        OnChange = CodeExpChange
        OnKeyDown = CodeExpKeyDown
      end
      object CodeScript: TMemo
        Left = 0
        Top = 51
        Width = 422
        Height = 280
        Align = alBottom
        Ctl3D = False
        Lines.Strings = (
          'CodeScript')
        ParentCtl3D = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 2
      end
    end
  end
  object ActionList1: TActionList
    Left = 40
    Top = 368
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
    Left = 72
    Top = 368
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
