object f_sceltamodel: Tf_sceltamodel
  Left = 376
  Top = 177
  Width = 448
  Height = 508
  ActiveControl = dbgrid_models
  Caption = 'Select model'
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
  object dbgrid_models: TDBGrid
    Left = 0
    Top = 0
    Width = 440
    Height = 417
    Align = alTop
    DataSource = dm_form.ds_modelli
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idmodello'
        Title.Caption = 'Id'
        Width = 147
        Visible = True
      end
      item
        Color = clBtnFace
        Expanded = False
        FieldName = 'tipo_dato'
        PopupMenu = f_sceltaexpr.PopupMenu1
        Title.Caption = 'Type'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'maschera'
        Title.Caption = 'Mask'
        Width = 150
        Visible = True
      end>
  end
  object btn_select: TBitBtn
    Left = 176
    Top = 440
    Width = 75
    Height = 25
    Caption = '&Select'
    ModalResult = 1
    TabOrder = 1
  end
  object PopupMenu1: TPopupMenu
    Left = 8
    Top = 432
    object Select1: TMenuItem
      Caption = 'Select'
      ShortCut = 13
      OnClick = Select1Click
    end
  end
end
