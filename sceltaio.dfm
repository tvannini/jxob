object f_scelta_output: Tf_scelta_output
  Left = 192
  Top = 107
  Width = 692
  Height = 506
  Caption = 'Output I/O'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 272
    Width = 69
    Height = 13
    Caption = 'on this I/O File'
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 77
    Height = 13
    Caption = 'Output Protocol:'
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 96
    Width = 417
    Height = 169
    DataSource = dm_form.ds_report
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'alias'
        Title.Caption = 'Alias'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo'
        Title.Caption = 'Category'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 16
    Top = 288
    Width = 625
    Height = 120
    DataSource = dm_form.ds_input_output
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'I/O Name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo'
        Title.Caption = 'Category'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'direction'
        Title.Caption = 'Direction'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 296
    Top = 424
    Width = 75
    Height = 25
    Caption = '&Ok'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 16
    Width = 185
    Height = 57
    Caption = 'Type'
    Items.Strings = (
      'Definition'
      'Line')
    TabOrder = 3
  end
  object PopupMenu1: TPopupMenu
    Left = 504
    Top = 128
    object Select1: TMenuItem
      Caption = 'Select'
      ShortCut = 13
      OnClick = BitBtn1Click
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = Exit1Click
    end
  end
end
