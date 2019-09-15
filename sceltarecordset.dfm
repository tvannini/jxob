object f_sceltarecordset: Tf_sceltarecordset
  Left = 423
  Top = 242
  Width = 435
  Height = 378
  Caption = 'Recordset options'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 209
    Height = 297
    Ctl3D = False
    DataSource = dm_form.ds_task
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyPress = FormKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'View name'
        Width = 188
        Visible = True
      end>
  end
  object ListView1: TListView
    Left = 208
    Top = 0
    Width = 209
    Height = 297
    Columns = <
      item
        Caption = 'Action on recordset'
        Width = 190
      end>
    Ctl3D = False
    Items.Data = {
      1A0200001200000000000000FFFFFFFFFFFFFFFF000000000000000005466972
      737400000000FFFFFFFFFFFFFFFF00000000000000000D50726576696F757320
      7061676500000000FFFFFFFFFFFFFFFF00000000000000000C50726576696F75
      7320726F7700000000FFFFFFFFFFFFFFFF0000000000000000084E6578742072
      6F7700000000FFFFFFFFFFFFFFFF0000000000000000094E6578742070616765
      00000000FFFFFFFFFFFFFFFF0000000000000000044C61737400000000FFFFFF
      FFFFFFFFFF0000000000000000064C6F6361746500000000FFFFFFFFFFFFFFFF
      00000000000000000000000000FFFFFFFFFFFFFFFF00000000000000000E5072
      657061726520696E7365727400000000FFFFFFFFFFFFFFFF0000000000000000
      08506F737420726F7700000000FFFFFFFFFFFFFFFF00000000000000000A4465
      6C65746520726F7700000000FFFFFFFFFFFFFFFF000000000000000004556E64
      6F00000000FFFFFFFFFFFFFFFF00000000000000000752656672657368000000
      00FFFFFFFFFFFFFFFF00000000000000000F44656C65746520616C6C20726F77
      7300000000FFFFFFFFFFFFFFFF0000000000000000094C6F636B20726F777300
      000000FFFFFFFFFFFFFFFF000000000000000009416767726567617465000000
      00FFFFFFFFFFFFFFFF00000000000000000B42756C6B20696E73657274000000
      00FFFFFFFFFFFFFFFF00000000000000000842756C6B20656E64}
    ReadOnly = True
    TabOrder = 1
    ViewStyle = vsReport
    OnKeyPress = FormKeyPress
  end
  object BitBtn1: TBitBtn
    Left = 176
    Top = 312
    Width = 75
    Height = 25
    Caption = '&Select'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object pop: TPopupMenu
    Left = 32
    Top = 304
    object Actions1: TMenuItem
      Caption = 'Change list'
      ShortCut = 16393
      OnClick = Actions1Click
    end
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
