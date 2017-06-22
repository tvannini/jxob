object f_conversioni: Tf_conversioni
  Left = 602
  Top = 216
  Width = 477
  Height = 563
  Caption = 'Application conversion utility'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 19
    Top = 30
    Width = 189
    Height = 13
    Caption = 'Application will be updated from version:'
  end
  object Label2: TLabel
    Left = 299
    Top = 30
    Width = 49
    Height = 13
    Caption = 'to version:'
  end
  object Label4: TLabel
    Left = 19
    Top = 64
    Width = 175
    Height = 13
    Caption = 'All application files will be backed up.'
  end
  object Label5: TLabel
    Left = 19
    Top = 92
    Width = 216
    Height = 13
    Caption = 'Be sure that nobody is working on the project.'
  end
  object log: TMemo
    Left = 0
    Top = 192
    Width = 469
    Height = 344
    Align = alBottom
    BevelInner = bvNone
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object apprel: TEdit
    Left = 219
    Top = 30
    Width = 70
    Height = 19
    BevelInner = bvNone
    BevelOuter = bvNone
    Ctl3D = False
    Enabled = False
    ParentCtl3D = False
    TabOrder = 1
    Text = 'apprel'
  end
  object o2rel: TEdit
    Left = 355
    Top = 30
    Width = 70
    Height = 19
    BevelInner = bvNone
    BevelOuter = bvNone
    Ctl3D = False
    Enabled = False
    ParentCtl3D = False
    TabOrder = 2
    Text = 'o2rel'
  end
  object Button1: TButton
    Left = 182
    Top = 139
    Width = 115
    Height = 30
    Caption = 'Convert Application'
    TabOrder = 3
    OnClick = Button1Click
  end
  object comando: TDosCommand
    InputToOutput = False
    MaxTimeAfterBeginning = 0
    MaxTimeAfterLastOutput = 0
    Left = 336
    Top = 75
  end
  object ActionList1: TActionList
    Left = 400
    Top = 72
    object converte_singolo_prg: TAction
      Caption = 'converte_singolo_prg'
    end
  end
end
