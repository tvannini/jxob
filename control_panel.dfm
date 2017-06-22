object f_controlpanel: Tf_controlpanel
  Left = 362
  Top = 191
  Width = 255
  Height = 131
  BorderIcons = []
  Caption = 'Apache webserver is running...'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 32
    Width = 150
    Height = 13
    Caption = 'Close Apache Console to stop it'
  end
  object Label2: TLabel
    Left = 48
    Top = 11
    Width = 160
    Height = 13
    Caption = 'Apache is running on TCP port 82'
  end
  object Button1: TButton
    Left = 88
    Top = 64
    Width = 75
    Height = 25
    Caption = '&Close me'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ActionList1: TActionList
    object act_start_apache: TAction
      OnExecute = act_start_apacheExecute
    end
  end
  object start_apache: TJvCreateProcess
    CommandLine = 'apache2\bin\apache.exe'
    CreationFlags = [cfNewConsole, cfSeparateWdm]
    Top = 32
  end
end
