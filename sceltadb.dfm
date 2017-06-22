inherited f_sceltadb: Tf_sceltadb
  Left = 346
  Width = 483
  Caption = 'Database selection'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    Top = 8
    Width = 457
    Ctl3D = False
    DataSource = dm_form.ds_databases
    ParentCtl3D = False
    Columns = <
      item
        Expanded = False
        FieldName = 'nomedb'
        Title.Caption = 'Database'
        Width = 137
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'server'
        Title.Caption = 'Server'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomefisicodb'
        Title.Caption = 'Physical name'
        Visible = True
      end>
  end
  inherited Button1: TButton
    Left = 192
    Caption = '&Select'
  end
  inherited PopupMenu1: TPopupMenu
    Left = 368
  end
end
