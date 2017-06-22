object f_sceltafiletask: Tf_sceltafiletask
  Left = 453
  Top = 240
  Width = 423
  Height = 532
  Caption = 'Table selection'
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
    Top = 0
    Width = 415
    Height = 447
    Align = alClient
    Ctl3D = False
    DataSource = dm_form.ds_usa_file
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'tipo'
        Title.Caption = 'Type'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'con_nome'
        Title.Caption = 'Alias'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tabella'
        Title.Caption = 'Table name'
        Width = 126
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 447
    Width = 415
    Height = 58
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Button1: TButton
      Left = 170
      Top = 17
      Width = 75
      Height = 25
      Caption = '&Ok'
      ModalResult = 1
      TabOrder = 0
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 256
    Top = 416
    object scelta1: TMenuItem
      Caption = 'Select'
      ShortCut = 13
      OnClick = DBGrid1DblClick
    end
    object Uscita1: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = Uscita1Click
    end
  end
end
