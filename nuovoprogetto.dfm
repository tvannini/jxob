object f_nuovoprogetto: Tf_nuovoprogetto
  Left = 772
  Top = 225
  Width = 541
  Height = 303
  Caption = 'New Project'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 16
    Width = 81
    Height = 13
    Caption = 'Application name'
  end
  object Label2: TLabel
    Left = 20
    Top = 145
    Width = 126
    Height = 13
    Caption = 'Application Root Directory '
  end
  object Label3: TLabel
    Left = 20
    Top = 80
    Width = 94
    Height = 13
    Caption = 'Janox runtime folder'
  end
  object e_nomeprogetto: TEdit
    Left = 20
    Top = 32
    Width = 241
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    Text = 'newproject'
  end
  object BitBtn1: TBitBtn
    Left = 224
    Top = 228
    Width = 75
    Height = 25
    Caption = '&Generate'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object Memo1: TMemo
    Left = 368
    Top = 8
    Width = 129
    Height = 57
    Lines.Strings = (
      '<?php'
      ''
      '?>')
    TabOrder = 2
    Visible = False
  end
  object JvDirectoryJx: TJvDirectoryEdit
    Left = 20
    Top = 96
    Width = 481
    Height = 19
    ButtonFlat = False
    Ctl3D = False
    NumGlyphs = 1
    ParentCtl3D = False
    TabOrder = 3
  end
  object JvDirectoryEditApp: TJvDirectoryEdit
    Left = 20
    Top = 160
    Width = 481
    Height = 19
    ButtonFlat = False
    Ctl3D = False
    NumGlyphs = 1
    ParentCtl3D = False
    TabOrder = 4
  end
end
