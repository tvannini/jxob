inherited f_sceltaform: Tf_sceltaform
  Caption = 'Form selection'
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    DataSource = dm_form.ds_form
    Columns = <
      item
        Expanded = False
        FieldName = 'nomeform'
        Title.Caption = 'Name'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dicitura'
        Title.Caption = 'Title'
        Width = 229
        Visible = True
      end>
  end
  inherited Button1: TButton
    Caption = '&Select'
  end
end
