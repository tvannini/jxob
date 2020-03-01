object f_sceltadbengine: Tf_sceltadbengine
  Left = 191
  Top = 183
  Width = 219
  Height = 244
  Caption = 'Db engine selection'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 47
    Height = 13
    Caption = 'Gateways'
  end
  object ListBox1: TListBox
    Left = 8
    Top = 24
    Width = 193
    Height = 121
    Ctl3D = False
    ItemHeight = 13
    Items.Strings = (
      'as400'
      'db2'
      'jxsdb'
      'mssql'
      'mysql'
      'oracle'
      'postgres'
      'sqlite3'
      '')
    ParentCtl3D = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 72
    Top = 176
    Width = 75
    Height = 25
    Caption = '&Select'
    ModalResult = 1
    TabOrder = 1
  end
  object PopupMenu1: TPopupMenu
    Left = 8
    Top = 152
    object Select1: TMenuItem
      Caption = 'Select'
      ShortCut = 13
      OnClick = Select1Click
    end
    object Esc1: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = Esc1Click
    end
  end
end
