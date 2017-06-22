object f_parametri_in: Tf_parametri_in
  Left = 473
  Top = 233
  Width = 333
  Height = 593
  Caption = 'Input Parameter'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 325
    Height = 489
    Align = alTop
    DataSource = dm_form.ds_parametri
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
        FieldName = 'id'
        Title.Caption = 'Id'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Name'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 120
    Top = 512
    Width = 75
    Height = 25
    Caption = '&Select'
    ModalResult = 1
    TabOrder = 1
  end
  object PopupMenu1: TPopupMenu
    Left = 264
    Top = 520
    object Select1: TMenuItem
      Caption = 'Select'
      ShortCut = 13
      OnClick = Select1Click
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = Exit1Click
    end
  end
end
