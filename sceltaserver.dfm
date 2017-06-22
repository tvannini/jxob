object f_sceltaserver: Tf_sceltaserver
  Left = 453
  Top = 240
  Width = 379
  Height = 357
  Caption = 'Server selection'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 16
    Width = 353
    Height = 265
    Ctl3D = False
    DataSource = dm_form.ds_servers
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
        FieldName = 'nomeserver'
        Title.Caption = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tiposerver'
        Title.Caption = 'Tipo'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomefisico'
        Title.Caption = 'Host'
        Width = 118
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 144
    Top = 296
    Width = 75
    Height = 25
    Caption = '&Ok'
    ModalResult = 1
    TabOrder = 1
  end
  object PopupMenu1: TPopupMenu
    Left = 264
    Top = 296
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
