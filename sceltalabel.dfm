object f_sceltalabel: Tf_sceltalabel
  Left = 240
  Top = 152
  Width = 535
  Height = 480
  Caption = 'Label selection'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 527
    Height = 359
    Align = alClient
    DataSource = dm_form.ds_labels
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
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'label'
        Title.Caption = 'Label'
        Width = 437
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 527
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 68
      Height = 13
      Caption = 'Text to search'
    end
    object e_trovalabel: TEdit
      Left = 80
      Top = 8
      Width = 321
      Height = 21
      TabOrder = 0
      Text = '%'
    end
    object Button3: TButton
      Left = 416
      Top = 8
      Width = 75
      Height = 25
      Caption = 'filtra'
      TabOrder = 1
      OnClick = filtraExecute
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 400
    Width = 527
    Height = 46
    Align = alBottom
    TabOrder = 2
    object Button1: TButton
      Left = 186
      Top = 8
      Width = 77
      Height = 25
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 0
    end
    object Button2: TButton
      Left = 272
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Ok'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object ActionList1: TActionList
    Left = 464
    Top = 416
    object filtra: TAction
      Caption = 'filtra'
      OnExecute = filtraExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 416
    Top = 424
    object Select1: TMenuItem
      Caption = 'Select'
      ShortCut = 13
      OnClick = Button2Click
    end
    object Exite1: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = Exite1Click
    end
  end
end
