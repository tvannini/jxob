object f_dbnavigator: Tf_dbnavigator
  Left = 373
  Top = 210
  Width = 385
  Height = 455
  Caption = 'DBNavigator wizard'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 8
    Width = 23
    Height = 13
    Caption = 'View'
  end
  object Label6: TLabel
    Left = 72
    Top = 280
    Width = 62
    Height = 13
    Caption = 'Detail action:'
  end
  object Label7: TLabel
    Left = 72
    Top = 336
    Width = 65
    Height = 13
    Caption = 'Select action:'
  end
  object e_view: TEdit
    Left = 32
    Top = 24
    Width = 209
    Height = 21
    TabOrder = 0
    OnChange = e_viewChange
  end
  object Button1: TButton
    Left = 151
    Top = 384
    Width = 75
    Height = 25
    Caption = '&Ok'
    TabOrder = 1
    OnClick = Button1Click
  end
  object cb_bottoniread: TCheckBox
    Left = 32
    Top = 64
    Width = 297
    Height = 17
    Caption = 'Include navigation buttons (Fisrt,Prev,Next,Last, etc.)'
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 64
    Top = 120
    Width = 257
    Height = 121
    Caption = 'Actions'
    TabOrder = 3
    object Label2: TLabel
      Left = 8
      Top = 24
      Width = 61
      Height = 13
      Caption = 'Insert action:'
    end
    object Label3: TLabel
      Left = 8
      Top = 48
      Width = 56
      Height = 13
      Caption = 'Post action:'
    end
    object Label4: TLabel
      Left = 8
      Top = 72
      Width = 66
      Height = 13
      Caption = 'Delete action:'
    end
    object Label5: TLabel
      Left = 8
      Top = 96
      Width = 61
      Height = 13
      Caption = 'Undo action:'
    end
    object ed_insert: TEdit
      Left = 88
      Top = 20
      Width = 137
      Height = 21
      TabOrder = 0
    end
    object ed_post: TEdit
      Left = 88
      Top = 44
      Width = 137
      Height = 21
      TabOrder = 1
    end
    object ed_delete: TEdit
      Left = 88
      Top = 68
      Width = 137
      Height = 21
      TabOrder = 2
    end
    object ed_undo: TEdit
      Left = 88
      Top = 92
      Width = 137
      Height = 21
      TabOrder = 3
    end
  end
  object cb_bottoniwrite: TCheckBox
    Left = 32
    Top = 96
    Width = 321
    Height = 17
    Caption = 'Include Recordset actions buttons (Post, Insert, Delete, Undo)'
    Checked = True
    State = cbChecked
    TabOrder = 4
    OnClick = cb_bottoniwriteClick
  end
  object ed_detail: TEdit
    Left = 152
    Top = 276
    Width = 137
    Height = 21
    TabOrder = 5
  end
  object ed_select: TEdit
    Left = 152
    Top = 332
    Width = 137
    Height = 21
    TabOrder = 6
  end
  object cb_detail: TCheckBox
    Left = 32
    Top = 256
    Width = 137
    Height = 17
    Caption = 'Include Detail button'
    Checked = True
    State = cbChecked
    TabOrder = 7
  end
  object cb_select: TCheckBox
    Left = 32
    Top = 312
    Width = 137
    Height = 17
    Caption = 'Include Select button'
    Checked = True
    State = cbChecked
    TabOrder = 8
  end
  object PopupMenu1: TPopupMenu
    Left = 328
    Top = 8
    object Select1: TMenuItem
      Caption = 'Select'
      ShortCut = 13
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
    end
    object Zoom1: TMenuItem
      Caption = 'Zoom'
      ShortCut = 116
      OnClick = Zoom1Click
    end
  end
end
