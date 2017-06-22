object f_importfrom: Tf_importfrom
  Left = 192
  Top = 114
  Width = 566
  Height = 425
  Caption = 'f_import'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 75
    Height = 13
    Caption = 'Source program'
  end
  object Edit1: TEdit
    Left = 8
    Top = 24
    Width = 457
    Height = 21
    TabOrder = 0
    OnDblClick = Edit1DblClick
  end
  object Button1: TButton
    Left = 528
    Top = 32
    Width = 25
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 65
    Width = 558
    Height = 326
    ActivePage = ts_viste
    Align = alBottom
    TabOrder = 2
    object ts_viste: TTabSheet
      Caption = 'Views'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 550
        Height = 257
        Align = alTop
        DataSource = dm_form.ds_task
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
            FieldName = 'id'
            Title.Caption = '#'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'View Name'
            Width = 248
            Visible = True
          end>
      end
      object imp_view: TButton
        Left = 200
        Top = 272
        Width = 75
        Height = 25
        Caption = 'Import'
        TabOrder = 1
        OnClick = imp_viewClick
      end
    end
    object ts_forms: TTabSheet
      Caption = 'Forms'
      ImageIndex = 1
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 550
        Height = 249
        Align = alTop
        DataSource = dm_form.ds_form
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
            FieldName = 'nomeform'
            Title.Caption = 'Form Name'
            Width = 145
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dicitura'
            Title.Caption = 'Title'
            Width = 335
            Visible = True
          end>
      end
      object imp_form: TButton
        Left = 208
        Top = 264
        Width = 75
        Height = 25
        Caption = 'imp_form'
        TabOrder = 1
        OnClick = imp_formClick
      end
    end
    object ts_actions: TTabSheet
      Caption = 'Actions'
      ImageIndex = 2
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 550
        Height = 257
        Align = alTop
        DataSource = dm_form.ds_azioni
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
            FieldName = 'azione'
            Title.Caption = 'Action Name'
            Width = 267
            Visible = True
          end>
      end
      object imp_action: TButton
        Left = 224
        Top = 272
        Width = 75
        Height = 25
        Caption = 'imp_action'
        TabOrder = 1
        OnClick = imp_actionClick
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'o2Program|*.prg'
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Title = 'Select program file to import'
    Left = 528
    Top = 8
  end
end
