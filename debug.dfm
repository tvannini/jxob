object f_debug: Tf_debug
  Left = 114
  Top = 110
  Width = 1102
  Height = 669
  Caption = 'f_debug'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 1
    Width = 1097
    Height = 136
    DataSource = dm_form.ds_form
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid3: TDBGrid
    Left = 0
    Top = 144
    Width = 1089
    Height = 409
    DataSource = dm_form.ds_operazioni
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBMemo1: TDBMemo
    Left = 0
    Top = 552
    Width = 1073
    Height = 89
    DataField = 'callparam'
    DataSource = dm_form.ds_operazioni
    TabOrder = 2
  end
end
