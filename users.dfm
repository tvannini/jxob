object f_users: Tf_users
  Left = 192
  Top = 107
  Width = 366
  Height = 388
  Caption = 'Users'
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
    Left = 8
    Top = 8
    Width = 345
    Height = 289
    DataSource = dm_form.ds_utenti
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'user'
        Title.Caption = 'Username'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'password'
        Title.Caption = 'Password'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 136
    Top = 328
    Width = 75
    Height = 25
    Caption = '&Ok'
    ModalResult = 1
    TabOrder = 1
  end
end
