object f_vers: Tf_vers
  Left = 337
  Top = 285
  Width = 202
  Height = 196
  ActiveControl = BitBtn1
  Caption = 'Import from'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 0
    Width = 194
    Height = 110
    Align = alTop
    Caption = 'Import from release...'
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Current'
      'Previous')
    ParentCtl3D = False
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 64
    Top = 128
    Width = 75
    Height = 25
    Caption = '&Ok'
    ModalResult = 1
    TabOrder = 1
  end
end
