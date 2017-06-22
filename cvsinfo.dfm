object f_CVSInfo: Tf_CVSInfo
  Left = 684
  Top = 230
  BorderStyle = bsDialog
  Caption = 'f_CVSInfo'
  ClientHeight = 294
  ClientWidth = 424
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
    Left = 16
    Top = 16
    Width = 47
    Height = 13
    Caption = 'Comment:'
  end
  object Label2: TLabel
    Left = 216
    Top = 208
    Width = 55
    Height = 13
    Caption = 'Worksheet:'
  end
  object line: TShape
    Left = 16
    Top = 240
    Width = 393
    Height = 1
  end
  object cvs_comment: TMemo
    Left = 16
    Top = 40
    Width = 393
    Height = 150
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
  end
  object cvs_worksheet: TEdit
    Left = 288
    Top = 208
    Width = 121
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
  end
  object BtnOK: TButton
    Left = 320
    Top = 256
    Width = 90
    Height = 25
    Caption = '&OK'
    TabOrder = 2
    OnClick = BtnOKClick
  end
  object BtnCancel: TButton
    Left = 224
    Top = 256
    Width = 90
    Height = 25
    Caption = '&Cancel'
    TabOrder = 3
    OnClick = BtnCancelClick
  end
end
