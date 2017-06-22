object f_sceltastatiview: Tf_sceltastatiview
  Left = 192
  Top = 175
  Width = 501
  Height = 400
  Caption = 'Task expression'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 249
    Height = 273
    TabStop = False
    Ctl3D = False
    DataSource = dm_form.ds_task
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'View Name'
        Width = 224
        Visible = True
      end>
  end
  object RadioGroup1: TRadioGroup
    Left = 264
    Top = 16
    Width = 217
    Height = 257
    Caption = 'Options'
    Ctl3D = False
    Items.Strings = (
      'Viewmod'
      'Mode'
      'Visible lines'
      'First Rowid in main table'
      'Last Rowid in main table'
      'Total number of filtered row in main'
      'Current row in recordset')
    ParentCtl3D = False
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 256
    Top = 320
    Width = 75
    Height = 25
    Caption = '&Ok'
    TabOrder = 2
    OnClick = selezioneExecute
  end
  object BitBtn2: TBitBtn
    Left = 168
    Top = 320
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object ActionList1: TActionList
    Left = 424
    Top = 320
    object selezione: TAction
      Caption = 'selezione'
      ShortCut = 13
      OnExecute = selezioneExecute
    end
    object switch: TAction
      Caption = 'switch'
      ShortCut = 16393
      OnExecute = switchExecute
    end
    object exit: TAction
      Caption = 'exit'
      ShortCut = 27
      OnExecute = exitExecute
    end
  end
end
