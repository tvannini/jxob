object AboutBox: TAboutBox
  Left = 289
  Top = 178
  BorderStyle = bsDialog
  Caption = 'About Janox Open Builder'
  ClientHeight = 282
  ClientWidth = 266
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 32
    Top = 24
    Width = 200
    Height = 200
    AutoSize = True
  end
  object Copyright: TLabel
    Left = 32
    Top = 200
    Width = 201
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Copyright: Janox.it  2007-'
    Transparent = True
    IsControl = True
  end
  object ProductName: TLabel
    Left = 30
    Top = 144
    Width = 202
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = 'Janox Development'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    IsControl = True
  end
  object Label2: TLabel
    Left = 32
    Top = 184
    Width = 201
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'www.janox.it'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 32
    Top = 160
    Width = 201
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Label1'
    Transparent = True
  end
  object OKButton: TButton
    Left = 95
    Top = 244
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
end
