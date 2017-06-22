object f_sceltaprotocollo: Tf_sceltaprotocollo
  Left = 229
  Top = 192
  Width = 597
  Height = 448
  Caption = 'f_sceltaprotocollo'
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
    Top = 0
    Width = 561
    Height = 241
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 240
    Width = 561
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'direction'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 248
    Top = 384
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
