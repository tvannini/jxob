object f_listbox: Tf_listbox
  Left = 317
  Top = 220
  Width = 633
  Height = 355
  Caption = 'List of Items'
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
  object BitBtn1: TBitBtn
    Left = 235
    Top = 288
    Width = 75
    Height = 25
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 315
    Top = 288
    Width = 75
    Height = 25
    Caption = '&Ok'
    ModalResult = 1
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 408
    Top = 24
    Width = 185
    Height = 161
    Caption = 'From View'
    TabOrder = 2
    object Label2: TLabel
      Left = 8
      Top = 20
      Width = 52
      Height = 13
      Caption = 'View name'
    end
    object Label3: TLabel
      Left = 8
      Top = 65
      Width = 49
      Height = 13
      Caption = 'Value field'
    end
    object Label4: TLabel
      Left = 8
      Top = 110
      Width = 43
      Height = 13
      Caption = 'Text field'
    end
    object e_view: TEdit
      Left = 8
      Top = 35
      Width = 169
      Height = 21
      TabOrder = 0
    end
    object e_key: TEdit
      Left = 8
      Top = 80
      Width = 169
      Height = 21
      TabOrder = 1
    end
    object e_text: TEdit
      Left = 8
      Top = 125
      Width = 169
      Height = 21
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 408
    Top = 200
    Width = 185
    Height = 57
    Caption = 'By expression'
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 28
      Width = 51
      Height = 13
      Caption = 'Expression'
    end
    object e_exp: TEdit
      Left = 80
      Top = 24
      Width = 49
      Height = 21
      PopupMenu = PopupMenu1
      TabOrder = 0
      OnDblClick = Zoom1Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 8
    Width = 377
    Height = 249
    Caption = 'List'
    TabOrder = 4
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 373
      Height = 232
      Align = alClient
      DataSource = dm_form.ds_value_list
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'chiave'
          Title.Caption = 'Value'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valore'
          Title.Caption = 'Text'
          Width = 228
          Visible = True
        end>
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 384
    Top = 8
    object Zoom1: TMenuItem
      Caption = 'Zoom'
      ShortCut = 116
      OnClick = Zoom1Click
    end
  end
end
