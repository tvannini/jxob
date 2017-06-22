object f_missing_params: Tf_missing_params
  Left = 611
  Top = 315
  Width = 493
  Height = 184
  Caption = 'Missing parameters'
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
    Left = 32
    Top = 32
    Width = 220
    Height = 21
    Caption = 'ATTENTION! Parameters sequence is broken.'
  end
  object Label2: TLabel
    Left = 32
    Top = 72
    Width = 248
    Height = 21
    Caption = 'Provide a NULL expression to fill missing parameters:'
  end
  object FillExp: TEdit
    Left = 304
    Top = 72
    Width = 50
    Height = 21
    TabOrder = 0
    Text = 'FillExp'
    OnChange = FillExpChange
    OnKeyPress = FillExpKeyPress
    OnKeyUp = FillExpKeyUp
  end
  object BtnCancel: TButton
    Left = 376
    Top = 112
    Width = 75
    Height = 25
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object BtnOK: TButton
    Left = 376
    Top = 72
    Width = 75
    Height = 25
    Caption = '&Fill missing'
    ModalResult = 1
    TabOrder = 1
  end
end
