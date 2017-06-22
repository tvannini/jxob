object f_parametri: Tf_parametri
  Left = 481
  Top = 141
  Width = 700
  Height = 715
  Caption = 'Parameters'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ExpReturnFrame: TGroupBox
    Left = 0
    Top = 448
    Width = 692
    Height = 56
    Align = alBottom
    Caption = 'Expression return'
    TabOrder = 2
    DesignSize = (
      692
      56)
    object ExpReturnStr: TDBEdit
      Left = 10
      Top = 22
      Width = 670
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
    Width = 692
    Height = 448
    Align = alClient
    AllowDelete = False
    AllowInsert = False
    DataSource = dm_form.ds_tmp_callparams
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
        ReadOnly = True
        Title.Caption = '#'
        Visible = True
        Width = 30
      end
      item
        FieldName = 'Name'
        ReadOnly = True
        Title.Caption = 'Parameter'
        Visible = True
        Width = 150
      end
      item
        FieldName = 'Model'
        ReadOnly = True
        Title.Caption = 'Data model'
        Visible = True
        Width = 150
      end
      item
        FieldName = 'Exp'
        Title.Caption = 'Expression'
        Visible = True
        Width = 70
      end
      item
        FieldName = 'Field'
        Title.Caption = 'Field or variable reference'
        Visible = True
        Width = 230
      end>
  end
  object programma: TMemo
    Left = 600
    Top = 200
    Width = 65
    Height = 49
    Lines.Strings = (
      'programma')
    TabOrder = 3
    Visible = False
    WordWrap = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 504
    Width = 692
    Height = 184
    Align = alBottom
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Label4: TLabel
      Left = 8
      Top = 16
      Width = 71
      Height = 13
      Caption = 'Program notes:'
    end
    object BtnOk: TButton
      Left = 608
      Top = 139
      Width = 75
      Height = 25
      Caption = '&OK'
      ModalResult = 1
      TabOrder = 0
      OnClick = ActOKExecute
    end
    object memo_noteprg: TMemo
      Left = 8
      Top = 34
      Width = 593
      Height = 130
      Ctl3D = False
      Lines.Strings = (
        'memo_noteprg')
      ParentCtl3D = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object BtnCancel: TButton
      Left = 608
      Top = 99
      Width = 75
      Height = 25
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
      OnClick = ActExitExecute
    end
  end
  object ActionList1: TActionList
    Left = 600
    Top = 264
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
    Left = 632
    Top = 264
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
