object Form1: TForm1
  Left = 325
  Top = 144
  Width = 870
  Height = 500
  Caption = 'o2::Navigator'
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
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 29
    Width = 862
    Height = 437
    Align = alClient
    TabOrder = 0
    OnBeforeNavigate2 = WebBrowser1BeforeNavigate2
    ControlData = {
      4C000000175900002A2D00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126202000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 862
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 1
  end
end
