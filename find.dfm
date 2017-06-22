object f_find: Tf_find
  Left = 365
  Top = 230
  Width = 283
  Height = 294
  Caption = 'f_find'
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
  object Label1: TLabel
    Left = 16
    Top = 80
    Width = 49
    Height = 13
    Caption = 'Find mode'
  end
  object Label3: TLabel
    Left = 16
    Top = 16
    Width = 57
    Height = 13
    Caption = 'Find or Filter'
  end
  object Label4: TLabel
    Left = 16
    Top = 144
    Width = 40
    Height = 13
    Caption = 'Find text'
  end
  object ListBox1: TListBox
    Left = 16
    Top = 96
    Width = 121
    Height = 33
    ItemHeight = 13
    Items.Strings = (
      'First position'
      'Any position')
    TabOrder = 2
    OnClick = ListBox1Click
  end
  object VolgaFindEdit1: TVolgaFindEdit
    Left = 16
    Top = 160
    Width = 249
    Height = 21
    FindStyle = vfsFilter
    FindMode = vfmAnyPos
    MaxLength = 20
    TabOrder = 0
    OnChange = VolgaFindEdit1Change
  end
  object ListBox2: TListBox
    Left = 16
    Top = 32
    Width = 121
    Height = 33
    ItemHeight = 13
    Items.Strings = (
      'Find'
      'Filter')
    TabOrder = 1
    OnClick = ListBox2Click
  end
end
