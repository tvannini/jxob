object Form1: TForm1
  Left = 283
  Top = 143
  Width = 350
  Height = 500
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 133
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Select'
    TabOrder = 0
  end
  object VolgaDBGrid1: TVolgaDBGrid
    Left = 0
    Top = 0
    Width = 342
    Height = 417
    Align = alTop
    AllowInsert = False
    DataSource = dm_form.ds_value_list
    PopupMenu = pop_locate
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        FieldName = 'chiave'
        ReadOnly = True
        Title.Caption = 'Field'
        Visible = True
        Width = 190
      end
      item
        FieldName = 'valore'
        Title.Caption = 'Expression'
        Visible = True
        Width = 99
      end>
  end
  object pop_locate: TPopupMenu
    Left = 8
    Top = 208
    object Zoom1: TMenuItem
      Caption = 'Zoom'
      ShortCut = 116
    end
    object Select1: TMenuItem
      Caption = 'Select'
      ShortCut = 13
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
    end
  end
end
