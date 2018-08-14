object f_grid_options: Tf_grid_options
  Left = 721
  Top = 171
  Width = 300
  Height = 384
  Caption = 'f_grid_options'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 80
    Width = 201
    Height = 20
    Caption = 'User can change columns visibility:'
  end
  object Label2: TLabel
    Left = 32
    Top = 104
    Width = 201
    Height = 20
    Caption = 'User can change columns order:'
  end
  object Label3: TLabel
    Left = 32
    Top = 128
    Width = 201
    Height = 20
    Caption = 'User can change columns size:'
  end
  object Label4: TLabel
    Left = 32
    Top = 152
    Width = 201
    Height = 20
    Caption = 'User can filter data:'
  end
  object Label5: TLabel
    Left = 32
    Top = 176
    Width = 201
    Height = 20
    Caption = 'User can sort data:'
  end
  object Label6: TLabel
    Left = 32
    Top = 200
    Width = 201
    Height = 20
    Caption = 'User can change rows number:'
  end
  object Label7: TLabel
    Left = 32
    Top = 224
    Width = 201
    Height = 20
    Caption = 'User can export data:'
  end
  object Label8: TLabel
    Left = 32
    Top = 248
    Width = 201
    Height = 20
    Caption = 'User can delete data:'
  end
  object Label9: TLabel
    Left = 32
    Top = 32
    Width = 201
    Height = 20
    Caption = 'Override default grid options:'
  end
  object JvDivider1: TJvDivider
    Left = 32
    Top = 56
    Width = 225
    Height = 9
    Vertical = False
  end
  object JvDivider2: TJvDivider
    Left = 32
    Top = 288
    Width = 225
    Height = 9
    Vertical = False
  end
  object cols_vis: TCheckBox
    Left = 240
    Top = 80
    Width = 25
    Height = 17
    TabOrder = 0
  end
  object cols_ord: TCheckBox
    Left = 240
    Top = 104
    Width = 25
    Height = 17
    TabOrder = 1
  end
  object cols_size: TCheckBox
    Left = 240
    Top = 128
    Width = 25
    Height = 17
    TabOrder = 2
  end
  object recs_filter: TCheckBox
    Left = 240
    Top = 152
    Width = 25
    Height = 17
    TabOrder = 3
  end
  object recs_sort: TCheckBox
    Left = 240
    Top = 176
    Width = 25
    Height = 17
    TabOrder = 4
  end
  object rows_num: TCheckBox
    Left = 240
    Top = 200
    Width = 25
    Height = 17
    TabOrder = 5
  end
  object data_export: TCheckBox
    Left = 240
    Top = 224
    Width = 25
    Height = 17
    TabOrder = 6
  end
  object recs_delete: TCheckBox
    Left = 240
    Top = 248
    Width = 25
    Height = 17
    TabOrder = 7
  end
  object override_defaults: TCheckBox
    Left = 240
    Top = 32
    Width = 25
    Height = 17
    TabOrder = 8
    OnClick = override_defaultsClick
  end
  object Button1: TButton
    Left = 184
    Top = 312
    Width = 75
    Height = 25
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 9
  end
  object Button2: TButton
    Left = 104
    Top = 312
    Width = 75
    Height = 25
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 10
  end
end
