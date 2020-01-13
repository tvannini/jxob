object dm_form: Tdm_form
  OldCreateOrder = False
  Left = 362
  Top = 145
  Height = 805
  Width = 1050
  object ds_tabelle: TDataSource
    DataSet = t_tabelle
    Left = 184
    Top = 208
  end
  object ds_campi: TDataSource
    DataSet = t_campi
    Left = 256
    Top = 208
  end
  object ds_indicitesta: TDataSource
    DataSet = t_indicitesta
    Left = 328
    Top = 208
  end
  object ds_indici: TDataSource
    DataSet = t_indici
    Left = 400
    Top = 208
  end
  object ds_databases: TDataSource
    DataSet = t_databases
    Left = 112
    Top = 208
  end
  object ds_task: TDataSource
    DataSet = t_task
    Left = 552
    Top = 200
  end
  object ds_usa_file: TDataSource
    DataSet = t_usa_file
    Left = 632
    Top = 200
  end
  object ds_select: TDataSource
    DataSet = t_select
    Left = 792
    Top = 200
  end
  object t_tabelle: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Id'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Nome_fisico'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'database'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'chiaveprimaria'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'match'
        DataType = ftInteger
      end
      item
        Name = 'matchlen'
        DataType = ftInteger
      end
      item
        Name = 'folder'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
        Fields = 'Id'
        Options = [ixUnique]
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Id'
    Params = <>
    StoreDefs = True
    AfterInsert = t_tabelleAfterInsert
    AfterEdit = t_tabelleAfterEdit
    BeforeDelete = t_tabelleBeforeDelete
    AfterDelete = t_tabelleAfterDelete
    OnNewRecord = t_tabelleNewRecord
    Left = 184
    Top = 160
    object t_tabelleId: TIntegerField
      FieldName = 'Id'
      OnSetText = t_tabelleIdSetText
    end
    object t_tabelleNome: TStringField
      FieldName = 'Nome'
      OnChange = t_tabelleNomeChange
      OnSetText = t_tabelleNomeSetText
      Size = 30
    end
    object t_tabelleNome_fisico: TStringField
      FieldName = 'Nome_fisico'
      OnSetText = t_tabelleNome_fisicoSetText
      Size = 30
    end
    object t_tabelledatabase: TStringField
      FieldName = 'database'
      Size = 30
    end
    object t_tabellechiaveprimaria: TStringField
      FieldName = 'chiaveprimaria'
      Size = 30
    end
    object t_tabellematch: TIntegerField
      FieldName = 'match'
    end
    object t_tabellematchlen: TIntegerField
      FieldName = 'matchlen'
    end
    object t_tabellefolder: TStringField
      FieldName = 'folder'
      Size = 200
    end
  end
  object t_campi: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id_tabella'
        DataType = ftInteger
      end
      item
        Name = 'id_campo'
        DataType = ftInteger
      end
      item
        Name = 'nomecampo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'dbname'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'tipo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'size'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'match'
        DataType = ftInteger
      end
      item
        Name = 'matchlen'
        DataType = ftInteger
      end
      item
        Name = 'picture'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 't_campiIndex1'
        Fields = 'id_tabella;id_campo'
      end>
    IndexFieldNames = 'id_tabella;id_campo'
    MasterFields = 'Id'
    MasterSource = ds_tabelle
    Params = <
      item
        DataType = ftUnknown
        ParamType = ptUnknown
      end>
    StoreDefs = True
    AfterInsert = t_campiAfterInsert
    AfterEdit = t_campiAfterEdit
    AfterDelete = t_campiAfterDelete
    OnNewRecord = t_campiNewRecord
    Left = 256
    Top = 160
    object t_campiid_tabella: TIntegerField
      FieldName = 'id_tabella'
    end
    object t_campiid_campo: TIntegerField
      FieldName = 'id_campo'
    end
    object t_campinomecampo: TStringField
      FieldName = 'nomecampo'
      OnChange = t_campinomecampoChange
      OnSetText = t_campinomecampoSetText
      Size = 30
    end
    object t_campidbname: TStringField
      DisplayWidth = 50
      FieldName = 'dbname'
      OnSetText = t_campidbnameSetText
      Size = 50
    end
    object t_campitipo: TStringField
      FieldName = 'tipo'
      Size = 1
    end
    object t_campisize: TStringField
      FieldName = 'size'
      Size = 5
    end
    object t_campimatch: TIntegerField
      FieldName = 'match'
    end
    object t_campimatchlen: TIntegerField
      FieldName = 'matchlen'
    end
    object t_campipicture: TStringField
      FieldName = 'picture'
      Size = 30
    end
  end
  object t_indicitesta: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id_tabella'
        DataType = ftInteger
      end
      item
        Name = 'id_indice'
        DataType = ftInteger
      end
      item
        Name = 'nomekey'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 't_indicitestaIndex3'
        Fields = 'id_tabella;id_indice'
      end>
    IndexFieldNames = 'id_tabella;id_indice'
    MasterFields = 'Id'
    MasterSource = ds_tabelle
    Params = <>
    StoreDefs = True
    AfterInsert = t_indicitestaAfterInsert
    AfterEdit = t_indicitestaAfterEdit
    BeforeDelete = t_indicitestaBeforeDelete
    OnNewRecord = t_indicitestaNewRecord
    Left = 328
    Top = 160
    object t_indicitestaid_tabella: TIntegerField
      FieldName = 'id_tabella'
    end
    object t_indicitestaid_indice: TIntegerField
      FieldName = 'id_indice'
    end
    object t_indicitestanomekey: TStringField
      FieldName = 'nomekey'
      OnSetText = t_indicitestanomekeySetText
      Size = 30
    end
  end
  object t_indici: TClientDataSet
    Aggregates = <>
    FileName = 'indici.cds'
    FieldDefs = <
      item
        Name = 'id_tabella'
        DataType = ftInteger
      end
      item
        Name = 'id_indice'
        DataType = ftInteger
      end
      item
        Name = 'id_segmento'
        DataType = ftInteger
      end
      item
        Name = 'segmento'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'direzione'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 't_indiciIndex1'
        Fields = 'id_tabella;id_indice;id_segmento'
      end>
    IndexFieldNames = 'id_tabella;id_indice;id_segmento'
    MasterFields = 'id_tabella;id_indice'
    MasterSource = ds_indicitesta
    Params = <>
    StoreDefs = True
    AfterInsert = t_indiciAfterInsert
    AfterEdit = t_indiciAfterEdit
    AfterDelete = t_indiciAfterDelete
    OnNewRecord = t_indiciNewRecord
    Left = 400
    Top = 160
    object t_indiciid_tabella: TIntegerField
      FieldName = 'id_tabella'
    end
    object t_indiciid_indice: TIntegerField
      FieldName = 'id_indice'
    end
    object t_indiciid_segmento: TIntegerField
      FieldName = 'id_segmento'
    end
    object t_indicisegmento: TStringField
      FieldName = 'segmento'
      Size = 30
    end
    object t_indicidirezione: TStringField
      DefaultExpression = #39'A'#39
      FieldName = 'direzione'
      Required = True
      EditMask = '>L'
      Size = 1
    end
  end
  object t_databases: TClientDataSet
    Aggregates = <>
    FileName = 'databases.cds'
    FieldDefs = <
      item
        Name = 'nomedb'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'server'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'nomefisicodb'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'owner'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'asp'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'check_esist_tab'
        DataType = ftBoolean
      end>
    IndexDefs = <
      item
        Name = 't_databasesIndex1'
        Fields = 'nomedb'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 't_databasesIndex1'
    Params = <>
    StoreDefs = True
    AfterInsert = t_databasesAfterInsert
    AfterEdit = t_databasesAfterEdit
    AfterDelete = t_databasesAfterDelete
    OnNewRecord = t_databasesNewRecord
    Left = 112
    Top = 160
    object t_databasesnomedb: TStringField
      FieldName = 'nomedb'
      OnSetText = t_databasesnomedbSetText
      Size = 30
    end
    object t_databasesserver: TStringField
      FieldName = 'server'
      Size = 30
    end
    object t_databasesnomefisicodb: TStringField
      DisplayWidth = 30
      FieldName = 'nomefisicodb'
      Size = 30
    end
    object t_databasesowner: TStringField
      FieldName = 'owner'
    end
    object t_databasesasp: TStringField
      FieldName = 'asp'
      Size = 10
    end
    object t_databasescheck_esist_tab: TBooleanField
      FieldName = 'check_esist_tab'
    end
  end
  object t_task: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'prg'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'nome'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'righevis'
        DataType = ftInteger
      end
      item
        Name = 'modo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'tipo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'matchpos'
        DataType = ftInteger
      end
      item
        Name = 'recordprefix'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'recordsufix'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'post_auto'
        DataType = ftBoolean
      end
      item
        Name = 'righevisexp'
        DataType = ftInteger
      end
      item
        Name = 'autoaggregate'
        DataType = ftBoolean
      end>
    IndexDefs = <
      item
        Name = 't_taskIndex1'
        Fields = 'prg;id'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 't_taskIndex2'
        Fields = 'prg;nome'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'prg;id'
    MasterFields = 'nome'
    MasterSource = ds_programmi
    Params = <>
    StoreDefs = True
    AfterInsert = t_taskAfterInsert
    AfterEdit = t_taskAfterEdit
    BeforeDelete = t_taskBeforeDelete
    AfterDelete = t_taskAfterDelete
    OnNewRecord = t_taskNewRecord
    Left = 552
    Top = 152
    object t_taskprg: TStringField
      DisplayWidth = 8
      FieldName = 'prg'
      Size = 100
    end
    object t_taskid: TIntegerField
      DisplayWidth = 8
      FieldName = 'id'
    end
    object t_tasknome: TStringField
      DisplayWidth = 21
      FieldName = 'nome'
      OnSetText = t_tasknomeSetText
      Size = 30
    end
    object t_taskrighevis: TIntegerField
      DefaultExpression = '10'
      DisplayWidth = 15
      FieldName = 'righevis'
    end
    object t_taskmodo: TStringField
      DefaultExpression = #39'Read'#39
      DisplayWidth = 36
      FieldName = 'modo'
      Size = 30
    end
    object t_tasktipo: TStringField
      DefaultExpression = #39'Online'#39
      DisplayWidth = 36
      FieldName = 'tipo'
      Size = 30
    end
    object t_taskmatchpos: TIntegerField
      DisplayWidth = 12
      FieldName = 'matchpos'
    end
    object t_taskrecordprefix: TStringField
      DefaultExpression = #39#39
      DisplayWidth = 60
      FieldName = 'recordprefix'
      Size = 50
    end
    object t_taskrecordsufix: TStringField
      DefaultExpression = #39#39
      DisplayWidth = 60
      FieldName = 'recordsufix'
      Size = 50
    end
    object t_taskpost_auto: TBooleanField
      DisplayWidth = 10
      FieldName = 'post_auto'
    end
    object t_taskrighevisexp: TIntegerField
      FieldName = 'righevisexp'
    end
    object t_taskautoaggregate: TBooleanField
      FieldName = 'autoaggregate'
    end
  end
  object t_usa_file: TClientDataSet
    Aggregates = <>
    FileName = 'usa_file.cds'
    FieldDefs = <
      item
        Name = 'prg'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'idtask'
        DataType = ftInteger
      end
      item
        Name = 'idriga'
        DataType = ftInteger
      end
      item
        Name = 'tipo'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'con_nome'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'tabella'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'chiave'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'chiave_exp'
        DataType = ftInteger
      end
      item
        Name = 'dbname_exp'
        DataType = ftInteger
      end
      item
        Name = 'tablename_exp'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 't_usa_fileIndex3'
        Fields = 'prg;idtask;idriga'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'prg;idtask;idriga'
    MasterFields = 'prg;id'
    MasterSource = ds_task
    Params = <>
    StoreDefs = True
    AfterInsert = t_usa_fileAfterInsert
    AfterEdit = t_usa_fileAfterEdit
    BeforeDelete = t_usa_fileBeforeDelete
    AfterDelete = t_usa_fileAfterDelete
    OnNewRecord = t_usa_fileNewRecord
    Left = 632
    Top = 152
    object t_usa_fileprg: TStringField
      DisplayWidth = 5
      FieldName = 'prg'
      Size = 100
    end
    object t_usa_fileidtask: TIntegerField
      DisplayWidth = 12
      FieldName = 'idtask'
    end
    object t_usa_fileidriga: TIntegerField
      FieldName = 'idriga'
    end
    object t_usa_filetipo: TStringField
      DefaultExpression = #39'Main'#39
      DisplayWidth = 12
      FieldName = 'tipo'
      Required = True
      Size = 10
    end
    object t_usa_filecon_nome: TStringField
      DefaultExpression = #39#39
      DisplayWidth = 36
      FieldName = 'con_nome'
      OnSetText = t_usa_filecon_nomeSetText
      Size = 30
    end
    object t_usa_filetabella: TStringField
      DefaultExpression = #39#39
      DisplayWidth = 36
      FieldName = 'tabella'
      Size = 30
    end
    object t_usa_filechiave: TStringField
      DefaultExpression = #39#39
      DisplayWidth = 36
      FieldName = 'chiave'
      Size = 30
    end
    object t_usa_filechiave_exp: TIntegerField
      FieldName = 'chiave_exp'
    end
    object t_usa_filedbname_exp: TIntegerField
      FieldName = 'dbname_exp'
    end
    object t_usa_filetablename_exp: TIntegerField
      FieldName = 'tablename_exp'
    end
  end
  object t_select: TClientDataSet
    Aggregates = <>
    FileName = 'select.cds'
    FieldDefs = <
      item
        Name = 'prg'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'idtask'
        DataType = ftInteger
      end
      item
        Name = 'idcampo'
        DataType = ftInteger
      end
      item
        Name = 'tipo'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'con_nome'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'tabella'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'campo'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'init'
        DataType = ftInteger
      end
      item
        Name = 'rangemin'
        DataType = ftInteger
      end
      item
        Name = 'rangemax'
        DataType = ftInteger
      end
      item
        Name = 'not'
        DataType = ftInteger
      end
      item
        Name = 'like'
        DataType = ftInteger
      end
      item
        Name = 'sql'
        DataType = ftString
        Size = 500
      end>
    IndexDefs = <
      item
        Name = 't_selectIndex1'
        Fields = 'prg;idtask;idcampo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 't_selectIndex2'
        Fields = 'prg;idtask;con_nome'
        Options = [ixUnique]
      end>
    IndexName = 't_selectIndex1'
    MasterFields = 'prg;id'
    MasterSource = ds_task
    Params = <>
    StoreDefs = True
    BeforeInsert = t_selectBeforeInsert
    AfterInsert = t_selectAfterInsert
    AfterEdit = t_selectAfterEdit
    BeforePost = t_selectBeforePost
    AfterPost = t_selectAfterPost
    BeforeDelete = t_selectBeforeDelete
    AfterDelete = t_selectAfterDelete
    OnNewRecord = t_selectNewRecord
    Left = 792
    Top = 152
    object t_selectprg: TStringField
      DisplayWidth = 17
      FieldName = 'prg'
      Size = 100
    end
    object t_selectidtask: TIntegerField
      DisplayWidth = 15
      FieldName = 'idtask'
    end
    object t_selectidcampo: TIntegerField
      DisplayWidth = 15
      FieldName = 'idcampo'
    end
    object t_selecttipo: TStringField
      DisplayWidth = 43
      FieldName = 'tipo'
      Required = True
      Size = 30
    end
    object t_selectcon_nome: TStringField
      DisplayWidth = 43
      FieldName = 'con_nome'
      OnSetText = t_selectcon_nomeSetText
      Size = 100
    end
    object t_selecttabella: TStringField
      DisplayWidth = 43
      FieldName = 'tabella'
      Size = 30
    end
    object t_selectcampo: TStringField
      DisplayWidth = 43
      FieldName = 'campo'
      Size = 50
    end
    object t_selectinit: TIntegerField
      DisplayWidth = 15
      FieldName = 'init'
    end
    object t_selectrangemin: TIntegerField
      DisplayWidth = 15
      FieldName = 'rangemin'
    end
    object t_selectrangemax: TIntegerField
      DisplayWidth = 15
      FieldName = 'rangemax'
    end
    object t_selectnot: TIntegerField
      DisplayWidth = 15
      FieldName = 'not'
    end
    object t_selectlike: TIntegerField
      DisplayWidth = 15
      FieldName = 'like'
    end
    object t_selectsql: TStringField
      FieldName = 'sql'
      Size = 500
    end
  end
  object t_servers: TClientDataSet
    Aggregates = <>
    FileName = 'servers.cds'
    FieldDefs = <
      item
        Name = 'nomeserver'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'tiposerver'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'nomefisico'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'utente'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'password'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'chunksize'
        DataType = ftLargeint
      end>
    IndexDefs = <
      item
        Name = 't_serversIndex1'
        Fields = 'nomeserver'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 't_serversIndex1'
    Params = <>
    StoreDefs = True
    AfterInsert = t_serversAfterInsert
    AfterEdit = t_serversAfterEdit
    AfterDelete = t_serversAfterDelete
    OnNewRecord = t_serversNewRecord
    Left = 40
    Top = 160
    object t_serversnomeserver: TStringField
      DisplayWidth = 19
      FieldName = 'nomeserver'
      OnSetText = t_serversnomeserverSetText
      Size = 30
    end
    object t_serverstiposerver: TStringField
      DisplayWidth = 20
      FieldName = 'tiposerver'
      Size = 30
    end
    object t_serversnomefisico: TStringField
      DisplayWidth = 300
      FieldName = 'nomefisico'
      Size = 300
    end
    object t_serversutente: TStringField
      DisplayWidth = 22
      FieldName = 'utente'
      Size = 30
    end
    object t_serverspassword: TStringField
      DisplayWidth = 36
      FieldName = 'password'
      Size = 30
    end
    object t_serverschunksize: TLargeintField
      FieldName = 'chunksize'
    end
  end
  object ds_servers: TDataSource
    DataSet = t_servers
    Left = 40
    Top = 208
  end
  object t_form: TClientDataSet
    Aggregates = <>
    FileName = 'form.cds'
    FieldDefs = <
      item
        Name = 'prg'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'nomeform'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'posizione'
        DataType = ftInteger
      end
      item
        Name = 'parentform'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'menu'
        DataType = ftBoolean
      end
      item
        Name = 'visibile'
        DataType = ftInteger
      end
      item
        Name = 'dicitura'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'top'
        DataType = ftInteger
      end
      item
        Name = 'left'
        DataType = ftInteger
      end
      item
        Name = 'altezza'
        DataType = ftInteger
      end
      item
        Name = 'larghezza'
        DataType = ftInteger
      end
      item
        Name = 'tmpselez'
        DataType = ftBoolean
      end
      item
        Name = 'css_finestra'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'css_title'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'css_title_no'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'css_body'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'css_status_bar'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'url'
        DataType = ftInteger
      end
      item
        Name = 'css_doc'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'css_close'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'css_open'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'css_exit'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'css_resize'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'dicitura_exp'
        DataType = ftInteger
      end
      item
        Name = 'vertalign'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'orizzalign'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'barra_titolo'
        DataType = ftInteger
      end
      item
        Name = 'barra_stato'
        DataType = ftInteger
      end
      item
        Name = 'top_exp'
        DataType = ftInteger
      end
      item
        Name = 'left_exp'
        DataType = ftInteger
      end
      item
        Name = 'altezza_exp'
        DataType = ftInteger
      end
      item
        Name = 'larghezza_exp'
        DataType = ftInteger
      end
      item
        Name = 'closeclick_action'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'refresh_action'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'timer_refresh'
        DataType = ftInteger
      end
      item
        Name = 'css_corner'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <
      item
        Name = 't_formIndex1'
        Fields = 'prg;nomeform'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 't_formIndex2'
        Fields = 'prg;posizione'
      end>
    IndexName = 't_formIndex2'
    MasterFields = 'nome'
    MasterSource = ds_programmi
    Params = <>
    StoreDefs = True
    AfterInsert = t_formAfterInsert
    AfterEdit = t_formAfterEdit
    BeforeDelete = t_formBeforeDelete
    AfterDelete = t_formAfterDelete
    OnNewRecord = t_formNewRecord
    Left = 632
    Top = 528
    object t_formprg: TStringField
      DisplayWidth = 7
      FieldName = 'prg'
      Size = 100
    end
    object t_formnomeform: TStringField
      DisplayWidth = 30
      FieldName = 'nomeform'
      OnSetText = t_formnomeformSetText
      Size = 150
    end
    object t_formposizione: TIntegerField
      FieldName = 'posizione'
    end
    object t_formparentform: TStringField
      FieldName = 'parentform'
      Size = 150
    end
    object t_formmenu: TBooleanField
      FieldName = 'menu'
    end
    object t_formvisibile: TIntegerField
      FieldName = 'visibile'
    end
    object t_formdicitura: TStringField
      DisplayWidth = 30
      FieldName = 'dicitura'
      Size = 100
    end
    object t_formtop: TIntegerField
      DefaultExpression = '100'
      DisplayWidth = 6
      FieldName = 'top'
    end
    object t_formleft: TIntegerField
      DefaultExpression = '300'
      DisplayWidth = 6
      FieldName = 'left'
    end
    object t_formaltezza: TIntegerField
      DefaultExpression = '400'
      DisplayWidth = 7
      FieldName = 'altezza'
    end
    object t_formlarghezza: TIntegerField
      DefaultExpression = '400'
      DisplayWidth = 9
      FieldName = 'larghezza'
    end
    object t_formtmpselez: TBooleanField
      DisplayWidth = 11
      FieldName = 'tmpselez'
    end
    object t_formcss_finestra: TStringField
      FieldName = 'css_finestra'
      Size = 40
    end
    object t_formcss_title: TStringField
      FieldName = 'css_title'
      Size = 40
    end
    object t_formcss_title_no: TStringField
      FieldName = 'css_title_no'
      Size = 40
    end
    object t_formcss_body: TStringField
      FieldName = 'css_body'
      Size = 40
    end
    object t_formcss_status_bar: TStringField
      FieldName = 'css_status_bar'
      Size = 40
    end
    object t_formurl: TIntegerField
      FieldName = 'url'
    end
    object t_formcss_doc: TStringField
      FieldName = 'css_doc'
      Size = 40
    end
    object t_formcss_close: TStringField
      FieldName = 'css_close'
      Size = 40
    end
    object t_formcss_open: TStringField
      FieldName = 'css_open'
      Size = 40
    end
    object t_formcss_exit: TStringField
      FieldName = 'css_exit'
      Size = 40
    end
    object t_formcss_resize: TStringField
      FieldName = 'css_resize'
      Size = 40
    end
    object t_formdicitura_exp: TIntegerField
      FieldName = 'dicitura_exp'
    end
    object t_formvertalign: TStringField
      DefaultExpression = #39'Top'#39
      FieldName = 'vertalign'
      Size = 30
    end
    object t_formorizzalign: TStringField
      DefaultExpression = #39'Center'#39
      FieldName = 'orizzalign'
      Size = 30
    end
    object t_formbarra_titolo: TIntegerField
      FieldName = 'barra_titolo'
    end
    object t_formbarra_stato: TIntegerField
      FieldName = 'barra_stato'
    end
    object t_formtop_exp: TIntegerField
      FieldName = 'top_exp'
    end
    object t_formleft_exp: TIntegerField
      FieldName = 'left_exp'
    end
    object t_formaltezza_exp: TIntegerField
      FieldName = 'altezza_exp'
    end
    object t_formlarghezza_exp: TIntegerField
      FieldName = 'larghezza_exp'
    end
    object t_formcloseclick_action: TStringField
      FieldName = 'closeclick_action'
      Size = 60
    end
    object t_formrefresh_action: TStringField
      FieldName = 'refresh_action'
      Size = 40
    end
    object t_formtimer_refresh: TIntegerField
      FieldName = 'timer_refresh'
    end
    object t_formcss_corner: TStringField
      FieldName = 'css_corner'
      Size = 40
    end
  end
  object ds_form: TDataSource
    DataSet = t_form
    Left = 632
    Top = 576
  end
  object t_controlliform: TClientDataSet
    Aggregates = <>
    FileName = 'controlliform.cds'
    FieldDefs = <
      item
        Name = 'prg'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'nomeform'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'nomecontrollo'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'tipo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'top'
        DataType = ftInteger
      end
      item
        Name = 'left'
        DataType = ftInteger
      end
      item
        Name = 'altezza'
        DataType = ftInteger
      end
      item
        Name = 'larghezza'
        DataType = ftInteger
      end
      item
        Name = 'visibile'
        DataType = ftInteger
      end
      item
        Name = 'abilitato'
        DataType = ftInteger
      end
      item
        Name = 'caption'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'riferimento'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'azione'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'scelte_possibili'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'vocecss'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'maschera'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'taborder'
        DataType = ftInteger
      end
      item
        Name = 'parent'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'parent_info'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'extra1'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'extra2'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'submitonchange'
        DataType = ftInteger
      end
      item
        Name = 'boolean1'
        DataType = ftBoolean
      end
      item
        Name = 'css1'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'css2'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'css3'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'css4'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'css5'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'css6'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'css7'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'css8'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'css9'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'css10'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'extra3'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'css11'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'css12'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'css13'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'css14'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'css15'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NavigationBlockVisible'
        DataType = ftInteger
      end
      item
        Name = 'InsertVisible'
        DataType = ftInteger
      end
      item
        Name = 'InsertEnable'
        DataType = ftInteger
      end
      item
        Name = 'InsertAction'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'InsertConfirmMessage'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'PostVisible'
        DataType = ftInteger
      end
      item
        Name = 'PostEnable'
        DataType = ftInteger
      end
      item
        Name = 'PostAction'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PostConfirmMessage'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'DeleteVisible'
        DataType = ftInteger
      end
      item
        Name = 'DeleteEnable'
        DataType = ftInteger
      end
      item
        Name = 'DeleteAction'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DeleteConfirmMessage'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'UndoVisible'
        DataType = ftInteger
      end
      item
        Name = 'UndoEnable'
        DataType = ftInteger
      end
      item
        Name = 'UndoAction'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'UndoConfirmMessage'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Norecordmessage'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'DetailVisible'
        DataType = ftInteger
      end
      item
        Name = 'DetailEnable'
        DataType = ftInteger
      end
      item
        Name = 'DetailAction'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DetailConfirmMessage'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'SelectVisible'
        DataType = ftInteger
      end
      item
        Name = 'SelectEnable'
        DataType = ftInteger
      end
      item
        Name = 'SelectAction'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SelectConfirmMessage'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'exp1'
        DataType = ftInteger
      end
      item
        Name = 'exp2'
        DataType = ftInteger
      end
      item
        Name = 'ZoomAction'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TooltipExp'
        DataType = ftInteger
      end
      item
        Name = 'Expand'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'GridOptions'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PinCols'
        DataType = ftSmallint
      end>
    IndexDefs = <
      item
        Name = 't_controlliformIndex1'
        Fields = 'prg;nomeform;parent;parent_info;taborder'
      end>
    IndexFieldNames = 'prg;nomeform;parent;parent_info;taborder'
    MasterFields = 'prg;nomeform'
    MasterSource = ds_form
    Params = <>
    StoreDefs = True
    AfterInsert = t_controlliformAfterInsert
    AfterEdit = t_controlliformAfterEdit
    AfterDelete = t_controlliformAfterDelete
    Left = 712
    Top = 528
    object t_controlliformprg: TStringField
      DisplayWidth = 12
      FieldName = 'prg'
      Size = 100
    end
    object t_controlliformnomeform: TStringField
      DisplayWidth = 24
      FieldName = 'nomeform'
      Size = 150
    end
    object t_controlliformnomecontrollo: TStringField
      DisplayWidth = 48
      FieldName = 'nomecontrollo'
      OnSetText = t_controlliformnomecontrolloSetText
      Size = 40
    end
    object t_controlliformtipo: TStringField
      DisplayWidth = 24
      FieldName = 'tipo'
    end
    object t_controlliformtop: TIntegerField
      DisplayWidth = 12
      FieldName = 'top'
    end
    object t_controlliformleft: TIntegerField
      DisplayWidth = 12
      FieldName = 'left'
    end
    object t_controlliformaltezza: TIntegerField
      DisplayWidth = 12
      FieldName = 'altezza'
    end
    object t_controlliformlarghezza: TIntegerField
      DisplayWidth = 12
      FieldName = 'larghezza'
    end
    object t_controlliformvisibile: TIntegerField
      DisplayWidth = 12
      FieldName = 'visibile'
    end
    object t_controlliformabilitato: TIntegerField
      DisplayWidth = 12
      FieldName = 'abilitato'
    end
    object t_controlliformcaption: TStringField
      DisplayWidth = 240
      FieldName = 'caption'
      Size = 200
    end
    object t_controlliformriferimento: TStringField
      DisplayWidth = 120
      FieldName = 'riferimento'
      Size = 100
    end
    object t_controlliformazione: TStringField
      DisplayWidth = 48
      FieldName = 'azione'
      Size = 40
    end
    object t_controlliformscelte_possibili: TStringField
      DisplayWidth = 240
      FieldName = 'scelte_possibili'
      Size = 200
    end
    object t_controlliformvocecss: TStringField
      DisplayWidth = 60
      FieldName = 'vocecss'
      Size = 50
    end
    object t_controlliformmaschera: TStringField
      DisplayWidth = 36
      FieldName = 'maschera'
      Size = 30
    end
    object t_controlliformtaborder: TIntegerField
      DisplayWidth = 12
      FieldName = 'taborder'
    end
    object t_controlliformparent: TStringField
      DisplayWidth = 48
      FieldName = 'parent'
      Size = 150
    end
    object t_controlliformparent_info: TStringField
      DisplayWidth = 240
      FieldName = 'parent_info'
      Size = 250
    end
    object t_controlliformextra1: TStringField
      DisplayWidth = 600
      FieldName = 'extra1'
      Size = 500
    end
    object t_controlliformextra2: TStringField
      DisplayWidth = 60
      FieldName = 'extra2'
      Size = 50
    end
    object t_controlliformsubmitonchange: TIntegerField
      DisplayWidth = 16
      FieldName = 'submitonchange'
    end
    object t_controlliformboolean1: TBooleanField
      DisplayWidth = 9
      FieldName = 'boolean1'
    end
    object t_controlliformcss1: TStringField
      DisplayWidth = 60
      FieldName = 'css1'
      Size = 50
    end
    object t_controlliformcss2: TStringField
      DisplayWidth = 60
      FieldName = 'css2'
      Size = 50
    end
    object t_controlliformcss3: TStringField
      DisplayWidth = 60
      FieldName = 'css3'
      Size = 50
    end
    object t_controlliformcss4: TStringField
      DisplayWidth = 60
      FieldName = 'css4'
      Size = 50
    end
    object t_controlliformcss5: TStringField
      DisplayWidth = 60
      FieldName = 'css5'
      Size = 50
    end
    object t_controlliformcss6: TStringField
      DisplayWidth = 60
      FieldName = 'css6'
      Size = 50
    end
    object t_controlliformcss7: TStringField
      DisplayWidth = 60
      FieldName = 'css7'
      Size = 50
    end
    object t_controlliformcss8: TStringField
      DisplayWidth = 60
      FieldName = 'css8'
      Size = 50
    end
    object t_controlliformcss9: TStringField
      DisplayWidth = 60
      FieldName = 'css9'
      Size = 50
    end
    object t_controlliformcss10: TStringField
      DisplayWidth = 60
      FieldName = 'css10'
      Size = 50
    end
    object t_controlliformextra3: TStringField
      FieldName = 'extra3'
      Size = 200
    end
    object t_controlliformcss11: TStringField
      FieldName = 'css11'
      Size = 50
    end
    object t_controlliformcss12: TStringField
      FieldName = 'css12'
      Size = 50
    end
    object t_controlliformcss13: TStringField
      FieldName = 'css13'
      Size = 50
    end
    object t_controlliformcss14: TStringField
      FieldName = 'css14'
      Size = 50
    end
    object t_controlliformcss15: TStringField
      FieldName = 'css15'
      Size = 50
    end
    object t_controlliformNavigationBlockVisible: TIntegerField
      FieldName = 'NavigationBlockVisible'
    end
    object t_controlliformInsertVisible: TIntegerField
      FieldName = 'InsertVisible'
    end
    object t_controlliformInsertEnable: TIntegerField
      FieldName = 'InsertEnable'
    end
    object t_controlliformInsertAction: TStringField
      FieldName = 'InsertAction'
      Size = 50
    end
    object t_controlliformInsertConfirmMessage: TStringField
      FieldName = 'InsertConfirmMessage'
      Size = 200
    end
    object t_controlliformPostVisible: TIntegerField
      FieldName = 'PostVisible'
    end
    object t_controlliformPostEnable: TIntegerField
      FieldName = 'PostEnable'
    end
    object t_controlliformPostAction: TStringField
      FieldName = 'PostAction'
      Size = 50
    end
    object t_controlliformPostConfirmMessage: TStringField
      FieldName = 'PostConfirmMessage'
      Size = 200
    end
    object t_controlliformDeleteVisible: TIntegerField
      FieldName = 'DeleteVisible'
    end
    object t_controlliformDeleteEnable: TIntegerField
      FieldName = 'DeleteEnable'
    end
    object t_controlliformDeleteAction: TStringField
      FieldName = 'DeleteAction'
      Size = 50
    end
    object t_controlliformDeleteConfirmMessage: TStringField
      FieldName = 'DeleteConfirmMessage'
      Size = 200
    end
    object t_controlliformUndoVisible: TIntegerField
      FieldName = 'UndoVisible'
    end
    object t_controlliformUndoEnable: TIntegerField
      FieldName = 'UndoEnable'
    end
    object t_controlliformUndoAction: TStringField
      FieldName = 'UndoAction'
      Size = 50
    end
    object t_controlliformUndoConfirmMessage: TStringField
      FieldName = 'UndoConfirmMessage'
      Size = 200
    end
    object t_controlliformNorecordmessage: TStringField
      FieldName = 'Norecordmessage'
      Size = 200
    end
    object t_controlliformDetailVisible: TIntegerField
      FieldName = 'DetailVisible'
    end
    object t_controlliformDetailEnable: TIntegerField
      FieldName = 'DetailEnable'
    end
    object t_controlliformDetailAction: TStringField
      FieldName = 'DetailAction'
      Size = 50
    end
    object t_controlliformDetailConfirmMessage: TStringField
      FieldName = 'DetailConfirmMessage'
      Size = 100
    end
    object t_controlliformSelectVisible: TIntegerField
      FieldName = 'SelectVisible'
    end
    object t_controlliformSelectEnable: TIntegerField
      FieldName = 'SelectEnable'
    end
    object t_controlliformSelectAction: TStringField
      FieldName = 'SelectAction'
      Size = 50
    end
    object t_controlliformSelectConfirmMessage: TStringField
      FieldName = 'SelectConfirmMessage'
      Size = 200
    end
    object t_controlliformexp1: TIntegerField
      FieldName = 'exp1'
    end
    object t_controlliformexp2: TIntegerField
      FieldName = 'exp2'
    end
    object t_controlliformZoomAction: TStringField
      FieldName = 'ZoomAction'
      Size = 50
    end
    object t_controlliformTooltipExp: TIntegerField
      FieldName = 'TooltipExp'
    end
    object t_controlliformExpand: TStringField
      FieldName = 'Expand'
      Size = 1
    end
    object t_controlliformGridOptions: TStringField
      FieldName = 'GridOptions'
      Size = 50
    end
    object t_controlliformPinCols: TSmallintField
      FieldName = 'PinCols'
    end
  end
  object ds_controlliform: TDataSource
    DataSet = t_controlliform
    Left = 712
    Top = 576
  end
  object t_agenti: TClientDataSet
    Aggregates = <>
    FileName = 'operators.cds'
    FieldDefs = <
      item
        Name = 'prg'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'idtask'
        DataType = ftInteger
      end
      item
        Name = 'connome'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'tipoagente'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 't_agentiIndex1'
        Fields = 'idtask;connome'
      end>
    IndexFieldNames = 'prg;idtask'
    MasterFields = 'prg;id'
    MasterSource = ds_task
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 136
    Top = 648
    object t_agentiprg: TStringField
      FieldName = 'prg'
      Size = 40
    end
    object t_agentiidtask: TIntegerField
      FieldName = 'idtask'
    end
    object t_agenticonnome: TStringField
      FieldName = 'connome'
      Size = 40
    end
    object t_agentitipoagente: TStringField
      FieldName = 'tipoagente'
      Size = 30
    end
  end
  object ds_agenti: TDataSource
    DataSet = t_agenti
    Left = 136
    Top = 696
  end
  object t_espressioni: TClientDataSet
    Aggregates = <>
    FileName = 'espressioni.cds'
    FieldDefs = <
      item
        Name = 'prg'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'idexp'
        DataType = ftInteger
      end
      item
        Name = 'expr'
        DataType = ftMemo
      end
      item
        Name = 'return'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <
      item
        Name = 't_espressioniIndex3'
        Fields = 'prg;idexp'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 't_espressioniIndex3'
    MasterFields = 'nome'
    MasterSource = ds_programmi
    Params = <>
    StoreDefs = True
    BeforeInsert = t_espressioniBeforeInsert
    AfterInsert = t_espressioniAfterInsert
    AfterEdit = t_espressioniAfterEdit
    AfterDelete = t_espressioniAfterDelete
    OnCalcFields = t_espressioniCalcFields
    OnNewRecord = t_espressioniNewRecord
    Left = 632
    Top = 272
    object t_espressioniprg: TStringField
      FieldName = 'prg'
      Size = 100
    end
    object t_espressioniidexp: TIntegerField
      DisplayWidth = 12
      FieldName = 'idexp'
    end
    object t_espressioniexpr: TMemoField
      DisplayWidth = 33
      FieldName = 'expr'
      BlobType = ftMemo
    end
    object t_espressionireturn: TStringField
      FieldName = 'return'
      OnChange = t_espressionireturnChange
      Size = 255
    end
    object t_espressioniestesa: TStringField
      FieldKind = fkCalculated
      FieldName = 'estesa'
      Size = 8000
      Calculated = True
    end
  end
  object ds_espressioni: TDataSource
    DataSet = t_espressioni
    Left = 632
    Top = 320
  end
  object t_programmi: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'nome'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ref'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'folder'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'modulo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'tipo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'data_modifica'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'note'
        DataType = ftString
        Size = 2048
      end>
    IndexDefs = <
      item
        Name = 't_programmiIndex1'
        Fields = 'nome'
      end>
    IndexName = 't_programmiIndex1'
    Params = <>
    StoreDefs = True
    AfterEdit = t_programmiAfterEdit
    BeforeDelete = t_programmiBeforeDelete
    Left = 632
    Top = 24
    object t_programminome: TStringField
      DisplayWidth = 100
      FieldName = 'nome'
      Size = 100
    end
    object t_programmiref: TStringField
      DisplayWidth = 100
      FieldName = 'ref'
      Size = 100
    end
    object t_programmifolder: TStringField
      DisplayWidth = 50
      FieldName = 'folder'
      Size = 200
    end
    object t_programmimodulo: TStringField
      FieldName = 'modulo'
      Size = 30
    end
    object t_programmitipo: TStringField
      FieldName = 'tipo'
      Size = 30
    end
    object t_programmidata_modifica: TStringField
      FieldName = 'data_modifica'
      Size = 40
    end
    object t_programminote: TStringField
      FieldName = 'note'
      Size = 2048
    end
  end
  object ds_programmi: TDataSource
    DataSet = t_programmi
    Left = 632
    Top = 72
  end
  object t_azioni: TClientDataSet
    Aggregates = <>
    FileName = 'azioni.cds'
    FieldDefs = <
      item
        Name = 'prg'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'azione'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'fine'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'exp_fine'
        DataType = ftInteger
      end
      item
        Name = 'chunk_size'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 't_azioniIndex1'
        Fields = 'prg;azione'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'prg;azione'
    MasterFields = 'nome'
    MasterSource = ds_programmi
    Params = <>
    StoreDefs = True
    AfterInsert = t_azioniAfterInsert
    AfterEdit = t_azioniAfterEdit
    BeforeDelete = t_azioniBeforeDelete
    AfterDelete = t_azioniAfterDelete
    Left = 632
    Top = 400
    object t_azioniprg: TStringField
      DisplayWidth = 17
      FieldName = 'prg'
      Size = 100
    end
    object t_azioniazione: TStringField
      DisplayWidth = 25
      FieldName = 'azione'
      OnChange = t_azioniazioneChange
      OnSetText = t_azioniazioneSetText
      Size = 40
    end
    object t_azionifine: TStringField
      FieldName = 'fine'
    end
    object t_azioniexp_fine: TIntegerField
      FieldName = 'exp_fine'
    end
    object t_azionichunk_size: TIntegerField
      FieldName = 'chunk_size'
    end
  end
  object ds_azioni: TDataSource
    DataSet = t_azioni
    Left = 632
    Top = 448
  end
  object t_operazioni: TClientDataSet
    Aggregates = <>
    FileName = 'operazioni.cds'
    FieldDefs = <
      item
        Name = 'prg'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'azione'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'o2ref'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'deferred'
        DataType = ftInteger
      end
      item
        Name = 'callparam'
        DataType = ftMemo
      end
      item
        Name = 'exp1'
        DataType = ftInteger
      end
      item
        Name = 'exp2'
        DataType = ftInteger
      end
      item
        Name = 'exp3'
        DataType = ftInteger
      end
      item
        Name = 'operazione'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'tipologia'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'service'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'exp4'
        DataType = ftInteger
      end
      item
        Name = 'exp5'
        DataType = ftInteger
      end
      item
        Name = 'exp6'
        DataType = ftInteger
      end
      item
        Name = 'exp7'
        DataType = ftInteger
      end
      item
        Name = 'exp8'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 't_operazioniIndex3'
        Fields = 'prg;azione;id'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'prg;azione;id'
    MasterFields = 'prg;azione'
    MasterSource = ds_azioni
    Params = <>
    StoreDefs = True
    BeforeInsert = t_operazioniBeforeInsert
    AfterInsert = t_operazioniAfterInsert
    AfterEdit = t_operazioniAfterEdit
    BeforePost = t_operazioniBeforePost
    AfterPost = t_operazioniAfterPost
    BeforeDelete = t_operazioniBeforeDelete
    AfterDelete = t_operazioniAfterDelete
    OnCalcFields = t_operazioniCalcFields
    OnNewRecord = t_operazioniNewRecord
    Left = 712
    Top = 400
    object t_operazioniprg: TStringField
      DisplayWidth = 4
      FieldName = 'prg'
      Size = 100
    end
    object t_operazioniazione: TStringField
      DisplayWidth = 6
      FieldName = 'azione'
      Size = 40
    end
    object t_operazioniid: TIntegerField
      DisplayWidth = 3
      FieldName = 'id'
    end
    object t_operazionio2ref: TStringField
      DisplayWidth = 46
      FieldName = 'o2ref'
      Size = 200
    end
    object t_operazionideferred: TIntegerField
      DisplayWidth = 12
      FieldName = 'deferred'
    end
    object t_operazionicallparam: TMemoField
      DisplayWidth = 9
      FieldName = 'callparam'
      BlobType = ftMemo
    end
    object t_operazioniexp1: TIntegerField
      DefaultExpression = '0'
      DisplayWidth = 5
      FieldName = 'exp1'
    end
    object t_operazioniexp2: TIntegerField
      DefaultExpression = '0'
      DisplayWidth = 5
      FieldName = 'exp2'
    end
    object t_operazioniexp3: TIntegerField
      DefaultExpression = '0'
      DisplayWidth = 5
      FieldName = 'exp3'
    end
    object t_operazionioperazione: TStringField
      DisplayWidth = 18
      FieldName = 'operazione'
      Required = True
      Visible = False
      Size = 30
    end
    object t_operazionitipologia: TStringField
      DisplayWidth = 48
      FieldName = 'tipologia'
      Size = 40
    end
    object t_operazioniservice: TStringField
      DisplayWidth = 60
      FieldName = 'service'
      Size = 50
    end
    object t_operazioniexp4: TIntegerField
      FieldName = 'exp4'
    end
    object t_operazioniexp5: TIntegerField
      FieldName = 'exp5'
    end
    object t_operazioniexp6: TIntegerField
      FieldName = 'exp6'
    end
    object t_operazioniexp7: TIntegerField
      FieldName = 'exp7'
    end
    object t_operazioniexp8: TIntegerField
      FieldName = 'exp8'
    end
    object t_operazionioperazione_look: TStringField
      DisplayWidth = 24
      FieldKind = fkLookup
      FieldName = 'operazione_look'
      LookupDataSet = tab_ope
      LookupKeyFields = 'operazione'
      LookupResultField = 'operazione'
      KeyFields = 'operazione'
      Lookup = True
    end
    object t_operazionio2ref_wide: TStringField
      DisplayWidth = 36
      FieldKind = fkCalculated
      FieldName = 'o2ref_wide'
      Size = 100
      Calculated = True
    end
    object t_operazioniview_calc: TStringField
      DisplayWidth = 48
      FieldKind = fkCalculated
      FieldName = 'view_calc'
      Size = 40
      Calculated = True
    end
    object t_operazionifield_calc: TStringField
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'field_calc'
      Size = 50
      Calculated = True
    end
  end
  object ds_operazioni: TDataSource
    DataSet = t_operazioni
    Left = 712
    Top = 448
  end
  object t_applicazione: TClientDataSet
    Aggregates = <>
    FileName = 'applicazione.cds'
    FieldDefs = <
      item
        Name = 'o2_alias'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'app_version'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'titolo'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'pagina_default'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'pagina_loginfailed'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'pagina_prima'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'pagina_dopo'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'css'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'timeout'
        DataType = ftInteger
      end
      item
        Name = 'default_menu'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'dbs'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'tables'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'models'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'menus'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'validate'
        DataType = ftInteger
      end
      item
        Name = 'appvars'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'sessiontype'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'path_reporter'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'path_license'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'views'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'startprg'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'reqprg'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'appshareroot'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'posmenu'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ssideincfile'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'htmlheadfile'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'htmlcset'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'combo2lookup'
        DataType = ftBoolean
      end
      item
        Name = 'ajaxmenu'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'split_rep'
        DataType = ftBoolean
      end
      item
        Name = 'profiling'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'decimals'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'thousands'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'msg_del'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'msg_undo'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'msg_norec'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'doc'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    AfterEdit = t_applicazioneAfterEdit
    Left = 40
    Top = 24
    object t_applicazioneo2_alias: TStringField
      FieldName = 'o2_alias'
      Size = 80
    end
    object t_applicazioneapp_version: TStringField
      FieldName = 'app_version'
      Size = 50
    end
    object t_applicazionetitolo: TStringField
      FieldName = 'titolo'
      Size = 200
    end
    object t_applicazionepagina_default: TStringField
      FieldName = 'pagina_default'
      Size = 40
    end
    object t_applicazionepagina_loginfailed: TStringField
      FieldName = 'pagina_loginfailed'
      Size = 40
    end
    object t_applicazionepagina_prima: TStringField
      FieldName = 'pagina_prima'
      Size = 40
    end
    object t_applicazionepagina_dopo: TStringField
      FieldName = 'pagina_dopo'
      Size = 40
    end
    object t_applicazionecss: TStringField
      FieldName = 'css'
      Size = 40
    end
    object t_applicazionetimeout: TIntegerField
      FieldName = 'timeout'
    end
    object t_applicazionedefault_menu: TStringField
      FieldName = 'default_menu'
      Size = 40
    end
    object t_applicazionedbs: TStringField
      FieldName = 'dbs'
      Size = 50
    end
    object t_applicazionetables: TStringField
      FieldName = 'tables'
      Size = 50
    end
    object t_applicazionemodels: TStringField
      FieldName = 'models'
      Size = 50
    end
    object t_applicazionemenus: TStringField
      FieldName = 'menus'
      Size = 50
    end
    object t_applicazionevalidate: TIntegerField
      FieldName = 'validate'
    end
    object t_applicazioneappvars: TStringField
      FieldName = 'appvars'
      Size = 50
    end
    object t_applicazionesessiontype: TStringField
      FieldName = 'sessiontype'
      Size = 2
    end
    object t_applicazionepath_reporter: TStringField
      FieldName = 'path_reporter'
      Size = 100
    end
    object t_applicazionepath_license: TStringField
      FieldName = 'path_license'
      Size = 100
    end
    object t_applicazioneviews: TStringField
      FieldName = 'views'
      Size = 60
    end
    object t_applicazionestartprg: TStringField
      FieldName = 'startprg'
      Size = 50
    end
    object t_applicazionereqprg: TStringField
      FieldName = 'reqprg'
      Size = 50
    end
    object t_applicazioneappshareroot: TStringField
      FieldName = 'appshareroot'
      Size = 200
    end
    object t_applicazioneposmenu: TStringField
      FieldName = 'posmenu'
    end
    object t_applicazionessideinc: TStringField
      FieldName = 'ssideincfile'
      Size = 80
    end
    object t_applicazionehtmlheadfile: TStringField
      FieldName = 'htmlheadfile'
      Size = 80
    end
    object t_applicazionehtmlcset: TStringField
      FieldName = 'htmlcset'
      Size = 50
    end
    object t_applicazionecombo2lookup: TBooleanField
      FieldName = 'combo2lookup'
    end
    object t_applicazioneajaxmenu: TStringField
      FieldName = 'ajaxmenu'
      Size = 10
    end
    object t_applicazionesplit_rep: TBooleanField
      FieldName = 'split_rep'
    end
    object t_applicazioneprofiling: TStringField
      FieldName = 'profiling'
      Size = 10
    end
    object t_applicazionedecimals: TStringField
      FieldName = 'decimals'
      Size = 1
    end
    object t_applicazionethousands: TStringField
      FieldName = 'thousands'
      Size = 1
    end
    object t_applicazionemsg_del: TStringField
      FieldName = 'msg_del'
      Size = 200
    end
    object t_applicazionemsg_undo: TStringField
      FieldName = 'msg_undo'
      Size = 200
    end
    object t_applicazionemsg_norec: TStringField
      FieldName = 'msg_norec'
      Size = 200
    end
    object t_applicazionedoc: TBooleanField
      FieldName = 'doc'
    end
  end
  object ds_applicazione: TDataSource
    DataSet = t_applicazione
    Left = 40
    Top = 72
  end
  object t_menu: TClientDataSet
    Aggregates = <>
    FileName = 'menu.cds'
    Filtered = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'id_padre'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'posizione'
        DataType = ftInteger
      end
      item
        Name = 'label'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'tipo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'valore'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'icona'
        DataType = ftString
        Size = 240
      end>
    IndexDefs = <
      item
        Name = 't_menuIndex1'
        Fields = 'id'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 't_menuIndex2'
        Fields = 'posizione'
      end>
    IndexName = 't_menuIndex2'
    Params = <>
    StoreDefs = True
    AfterInsert = t_menuAfterEdit
    AfterEdit = t_menuAfterEdit
    AfterDelete = t_menuAfterEdit
    OnNewRecord = t_menuNewRecord
    Left = 256
    Top = 24
    object t_menuid: TStringField
      FieldName = 'id'
      Size = 40
    end
    object t_menuid_padre: TStringField
      FieldName = 'id_padre'
      Size = 40
    end
    object t_menuposizione: TIntegerField
      FieldName = 'posizione'
    end
    object t_menulabel: TStringField
      DisplayWidth = 30
      FieldName = 'label'
      Size = 30
    end
    object t_menutipo: TStringField
      DisplayWidth = 30
      FieldName = 'tipo'
      Size = 30
    end
    object t_menuvalore: TStringField
      DisplayWidth = 40
      FieldName = 'valore'
      Size = 40
    end
    object t_menuicona: TStringField
      FieldName = 'icona'
      Size = 200
    end
  end
  object ds_menu: TDataSource
    DataSet = t_menu
    Left = 256
    Top = 72
  end
  object t_agentitab: TClientDataSet
    Aggregates = <>
    FileName = 'operators_tab.cds'
    FieldDefs = <
      item
        Name = 'prg'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'idtask'
        DataType = ftInteger
      end
      item
        Name = 'nome_agente'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'campo'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'label'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'riga'
        DataType = ftInteger
      end
      item
        Name = 'col_da'
        DataType = ftInteger
      end
      item
        Name = 'col_a'
        DataType = ftInteger
      end
      item
        Name = 'align'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'checkbox'
        DataType = ftBoolean
      end>
    IndexDefs = <
      item
        Name = 't_agentitabIndex3'
        Fields = 'prg;idtask;nome_agente;riga;col_da;col_a'
      end>
    IndexName = 't_agentitabIndex3'
    MasterFields = 'prg;idtask;connome'
    MasterSource = ds_agenti
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 216
    Top = 648
    object t_agentitabprg: TStringField
      FieldName = 'prg'
      Size = 100
    end
    object t_agentitabidtask: TIntegerField
      FieldName = 'idtask'
    end
    object t_agentitabnome_agente: TStringField
      FieldName = 'nome_agente'
      Size = 40
    end
    object t_agentitabcampo: TStringField
      FieldName = 'campo'
      Size = 40
    end
    object t_agentitablabel: TStringField
      FieldName = 'label'
      Size = 40
    end
    object t_agentitabriga: TIntegerField
      FieldName = 'riga'
    end
    object t_agentitabcol_da: TIntegerField
      FieldName = 'col_da'
    end
    object t_agentitabcol_a: TIntegerField
      FieldName = 'col_a'
    end
    object t_agentitabalign: TStringField
      FieldName = 'align'
    end
    object t_agentitabcheckbox: TBooleanField
      FieldName = 'checkbox'
    end
  end
  object ds_agentitab: TDataSource
    DataSet = t_agentitab
    Left = 216
    Top = 696
  end
  object ds_variabili_prg: TDataSource
    DataSet = t_variabili_prg
    Left = 792
    Top = 72
  end
  object ds_variabili_app: TDataSource
    DataSet = t_variabili_app
    Left = 184
    Top = 72
  end
  object t_variabili_prg: TClientDataSet
    Aggregates = <>
    FileName = 'var_prg.cds'
    FieldDefs = <
      item
        Name = 'prg'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'alias'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'picture'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'action'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <
      item
        Name = 't_variabili_prgIndex1'
        Fields = 'prg;alias'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 't_variabili_prgIndex1'
    MasterFields = 'nome'
    MasterSource = ds_programmi
    Params = <>
    StoreDefs = True
    AfterInsert = t_variabili_prgAfterInsert
    AfterEdit = t_variabili_prgAfterEdit
    AfterDelete = t_variabili_prgAfterDelete
    Left = 792
    Top = 24
    object t_variabili_prgprg: TStringField
      FieldName = 'prg'
      Size = 100
    end
    object t_variabili_prgalias: TStringField
      FieldName = 'alias'
      OnSetText = t_variabili_prgaliasSetText
      Size = 40
    end
    object t_variabili_prgpicture: TStringField
      FieldName = 'picture'
      Size = 30
    end
  end
  object t_variabili_app: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'alias'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'tipo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'valore'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <
      item
        Name = 't_variabili_appIndex1'
        Fields = 'alias'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 't_variabili_appIndex1'
    Params = <>
    StoreDefs = True
    AfterInsert = t_variabili_appAfterInsert
    AfterEdit = t_variabili_appAfterEdit
    AfterDelete = t_variabili_appAfterDelete
    Left = 184
    Top = 24
    object t_variabili_appalias: TStringField
      FieldName = 'alias'
      OnSetText = t_variabili_appaliasSetText
      Size = 40
    end
    object t_variabili_apptipo: TStringField
      FieldName = 'tipo'
      Size = 30
    end
    object t_variabili_appvalore: TStringField
      FieldName = 'valore'
      Size = 200
    end
  end
  object t_union: TClientDataSet
    Aggregates = <>
    FileName = 'union.cds'
    FieldDefs = <
      item
        Name = 'prg'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'idtask'
        DataType = ftInteger
      end
      item
        Name = 'idrigatab'
        DataType = ftInteger
      end
      item
        Name = 'idcampo'
        DataType = ftInteger
      end
      item
        Name = 'campo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'rangemin'
        DataType = ftInteger
      end
      item
        Name = 'rangemax'
        DataType = ftInteger
      end
      item
        Name = 'not'
        DataType = ftInteger
      end
      item
        Name = 'like'
        DataType = ftInteger
      end
      item
        Name = 'init'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 't_unionIndex1'
        Fields = 'prg;idtask;idrigatab'
      end>
    IndexFieldNames = 'prg;idtask;idrigatab'
    MasterFields = 'prg;idtask;idriga'
    MasterSource = ds_usa_file
    Params = <>
    StoreDefs = True
    AfterInsert = t_unionAfterInsert
    AfterEdit = t_unionAfterEdit
    AfterDelete = t_unionAfterDelete
    OnNewRecord = t_unionNewRecord
    Left = 712
    Top = 152
    object t_unionprg: TStringField
      DisplayWidth = 18
      FieldName = 'prg'
      Size = 100
    end
    object t_unionidtask: TIntegerField
      DisplayWidth = 12
      FieldName = 'idtask'
    end
    object t_unionidrigatab: TIntegerField
      FieldName = 'idrigatab'
    end
    object t_unionidcampo: TIntegerField
      DisplayWidth = 12
      FieldName = 'idcampo'
    end
    object t_unioncampo: TStringField
      DisplayWidth = 36
      FieldName = 'campo'
      Size = 30
    end
    object t_unionrangemin: TIntegerField
      DisplayWidth = 12
      FieldName = 'rangemin'
    end
    object t_unionrangemax: TIntegerField
      DisplayWidth = 12
      FieldName = 'rangemax'
    end
    object t_unionnot: TIntegerField
      DisplayWidth = 12
      FieldName = 'not'
    end
    object t_unionlike: TIntegerField
      DisplayWidth = 12
      FieldName = 'like'
    end
    object t_unioninit: TIntegerField
      DisplayWidth = 12
      FieldName = 'init'
    end
  end
  object ds_union: TDataSource
    DataSet = t_union
    Left = 712
    Top = 200
  end
  object t_modelli: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'idmodello'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'tipo_dato'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'maschera'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'nomeprgscelta'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 't_modelliIndex1'
        Fields = 'idmodello'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 't_modelliIndex1'
    Params = <>
    StoreDefs = True
    AfterInsert = t_modelliAfterInsert
    AfterEdit = t_modelliAfterEdit
    AfterDelete = t_modelliAfterDelete
    Left = 112
    Top = 24
    object t_modelliidmodello: TStringField
      FieldName = 'idmodello'
      OnSetText = t_modelliidmodelloSetText
      Size = 30
    end
    object t_modellitipo_dato: TStringField
      FieldName = 'tipo_dato'
    end
    object t_modellimaschera: TStringField
      DisplayWidth = 255
      FieldName = 'maschera'
      Size = 255
    end
    object t_modellinomeprgscelta: TStringField
      FieldName = 'nomeprgscelta'
      Size = 100
    end
  end
  object ds_modelli: TDataSource
    DataSet = t_modelli
    Left = 112
    Top = 72
  end
  object t_parametri: TClientDataSet
    Aggregates = <>
    FileName = 'parametri.cds'
    FieldDefs = <
      item
        Name = 'prg'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'nome'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'modello'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 't_parametriIndex1'
        Fields = 'prg;id'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 't_parametriIndex1'
    MasterFields = 'nome'
    MasterSource = ds_programmi
    Params = <>
    StoreDefs = True
    AfterInsert = t_parametriAfterInsert
    AfterEdit = t_parametriAfterEdit
    AfterDelete = t_parametriAfterDelete
    Left = 712
    Top = 24
    object t_parametriprg: TStringField
      FieldName = 'prg'
      Size = 100
    end
    object t_parametriid: TIntegerField
      FieldName = 'id'
      OnSetText = t_parametriidSetText
    end
    object t_parametrinome: TStringField
      FieldName = 'nome'
      OnSetText = t_parametrinomeSetText
      Size = 40
    end
    object t_parametrimodello: TStringField
      FieldName = 'modello'
      Size = 50
    end
  end
  object ds_parametri: TDataSource
    DataSet = t_parametri
    Left = 712
    Top = 72
  end
  object t_report: TClientDataSet
    Aggregates = <>
    FileName = 'report.cds'
    FieldDefs = <
      item
        Name = 'prg'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'alias'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'tipo'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 't_reportIndex1'
        Fields = 'prg;alias'
      end>
    IndexFieldNames = 'prg;alias'
    MasterFields = 'nome'
    MasterSource = ds_programmi
    Params = <>
    StoreDefs = True
    AfterInsert = t_reportAfterInsert
    AfterEdit = t_reportAfterEdit
    AfterDelete = t_reportAfterDelete
    Left = 632
    Top = 656
    object t_reportprg: TStringField
      FieldName = 'prg'
      Size = 100
    end
    object t_reportalias: TStringField
      FieldName = 'alias'
      OnSetText = t_reportaliasSetText
      Size = 40
    end
    object t_reporttipo: TStringField
      DefaultExpression = #39'XML'#39
      FieldName = 'tipo'
    end
  end
  object ds_report: TDataSource
    DataSet = t_report
    Left = 632
    Top = 704
  end
  object t_reportfield: TClientDataSet
    Aggregates = <>
    FileName = 'reportf.cds'
    FieldDefs = <
      item
        Name = 'prg'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'nomereport'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'campo'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'model'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'alias'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 't_reportfieldIndex1'
        Fields = 'prg;nomereport;id'
      end>
    IndexFieldNames = 'prg;nomereport;id'
    MasterFields = 'prg;alias'
    MasterSource = ds_report
    Params = <>
    StoreDefs = True
    AfterInsert = t_reportfieldAfterInsert
    AfterEdit = t_reportfieldAfterEdit
    AfterDelete = t_reportfieldAfterDelete
    OnCalcFields = t_reportfieldCalcFields
    OnNewRecord = t_reportfieldNewRecord
    Left = 792
    Top = 656
    object t_reportfieldprg: TStringField
      FieldName = 'prg'
      Size = 50
    end
    object t_reportfieldnomereport: TStringField
      FieldName = 'nomereport'
      Size = 40
    end
    object t_reportfieldid: TIntegerField
      FieldName = 'id'
    end
    object t_reportfieldcampo: TStringField
      DisplayWidth = 100
      FieldName = 'campo'
      Size = 100
    end
    object t_reportfieldmodel: TStringField
      FieldName = 'model'
      Size = 30
    end
    object t_reportfieldalias: TStringField
      FieldName = 'alias'
      OnSetText = t_reportfieldaliasSetText
      Size = 35
    end
    object t_reportfieldshown_field: TStringField
      FieldKind = fkCalculated
      FieldName = 'shown_field'
      Size = 100
      Calculated = True
    end
  end
  object ds_reportfield: TDataSource
    DataSet = t_reportfield
    Left = 792
    Top = 704
  end
  object t_input_output: TClientDataSet
    Aggregates = <>
    FileName = 'input_output.cds'
    FieldDefs = <
      item
        Name = 'prg'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'nome'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'tipo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'direction'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'outputfile'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 't_input_outputIndex1'
        Fields = 'prg;nome'
      end>
    IndexFieldNames = 'prg'
    MasterFields = 'nome'
    MasterSource = ds_programmi
    Params = <>
    StoreDefs = True
    AfterInsert = t_input_outputAfterInsert
    AfterEdit = t_input_outputAfterEdit
    AfterDelete = t_input_outputAfterDelete
    OnCalcFields = t_input_outputCalcFields
    Left = 872
    Top = 656
    object t_input_outputprg: TStringField
      FieldName = 'prg'
      Size = 100
    end
    object t_input_outputnome: TStringField
      FieldName = 'nome'
      OnSetText = t_input_outputnomeSetText
      Size = 40
    end
    object t_input_outputtipo: TStringField
      DefaultExpression = #39'File'#39
      FieldName = 'tipo'
    end
    object t_input_outputdirection: TStringField
      DefaultExpression = #39'Output'#39
      FieldName = 'direction'
    end
    object t_input_outputoutputfile: TIntegerField
      FieldName = 'outputfile'
    end
    object t_input_outputdecode_exp: TStringField
      FieldKind = fkCalculated
      FieldName = 'decode_exp'
      Size = 100
      Calculated = True
    end
  end
  object ds_input_output: TDataSource
    DataSet = t_input_output
    Left = 872
    Top = 704
  end
  object t_printdef: TClientDataSet
    Aggregates = <>
    FileName = 'printdef.cds'
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'id_padre'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'prg_ref'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'risorsa_ref'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'master_fields'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'index_fields'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'temp_xml'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <
      item
        Name = 't_printdefIndex3'
        Fields = 'id'
      end>
    IndexFieldNames = 'id'
    Params = <>
    StoreDefs = True
    Left = 712
    Top = 656
    object t_printdefid: TStringField
      FieldName = 'id'
      Size = 50
    end
    object t_printdefid_padre: TStringField
      FieldName = 'id_padre'
      Size = 50
    end
    object t_printdefprg_ref: TStringField
      FieldName = 'prg_ref'
      Size = 100
    end
    object t_printdefrisorsa_ref: TStringField
      FieldName = 'risorsa_ref'
      Size = 40
    end
    object t_printdefmaster_fields: TStringField
      FieldName = 'master_fields'
      Size = 80
    end
    object t_printdefindex_fields: TStringField
      FieldName = 'index_fields'
      Size = 80
    end
    object t_printdeftemp_xml: TStringField
      FieldName = 'temp_xml'
      Size = 255
    end
  end
  object ds_printdef: TDataSource
    DataSet = t_printdef
    Left = 712
    Top = 704
  end
  object t_proprieta_controlli: TClientDataSet
    Aggregates = <>
    FileName = 'propcontrol.cds'
    IndexFieldNames = 'prg;nome_form;nome_controllo'
    MasterFields = 'prg;nomeform;nomecontrollo'
    MasterSource = ds_controlliform
    PacketRecords = 0
    Params = <>
    Left = 792
    Top = 528
    object t_proprieta_controlliprg: TStringField
      FieldName = 'prg'
      Size = 100
    end
    object t_proprieta_controllinome_form: TStringField
      FieldName = 'nome_form'
      Size = 150
    end
    object t_proprieta_controllinome_controllo: TStringField
      FieldName = 'nome_controllo'
      Size = 40
    end
    object t_proprieta_controlliproprieta: TStringField
      FieldName = 'proprieta'
      Size = 40
    end
    object t_proprieta_controllivalore: TMemoField
      FieldName = 'valore'
      BlobType = ftMemo
      Size = 2048
    end
  end
  object ds_proprieta_controlli: TDataSource
    DataSet = t_proprieta_controlli
    Left = 792
    Top = 576
  end
  object t_value_list: TClientDataSet
    Aggregates = <>
    FileName = 'value_list.cds'
    FieldDefs = <
      item
        Name = 'chiave'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'valore'
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <
      item
        Name = 't_value_listIndex1'
        Fields = 'chiave'
      end>
    IndexName = 't_value_listIndex1'
    Params = <>
    StoreDefs = True
    Left = 872
    Top = 528
    object t_value_listchiave: TStringField
      FieldName = 'chiave'
      Size = 50
    end
    object t_value_listvalore: TStringField
      FieldName = 'valore'
      Size = 250
    end
  end
  object ds_value_list: TDataSource
    DataSet = t_value_list
    Left = 872
    Top = 576
  end
  object tab_ope: TClientDataSet
    Active = True
    Aggregates = <>
    FileName = 'tab_ope.cds'
    FieldDefs = <
      item
        Name = 'operazione'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 872
    Top = 400
    Data = {
      390000009619E0BD01000000180000000100000000000300000039000A6F7065
      72617A696F6E6501004900000001000557494454480200020014000000}
    object tab_opeoperazione: TStringField
      FieldName = 'operazione'
    end
  end
  object ds_tab_ope: TDataSource
    DataSet = tab_ope
    Left = 872
    Top = 448
  end
  object tab_tipi_file: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 952
    Top = 656
    object tab_tipi_filetipo: TStringField
      FieldName = 'tipo'
      Size = 40
    end
  end
  object ds_tipi_file: TDataSource
    DataSet = tab_tipi_file
    Left = 952
    Top = 704
  end
  object t_aggreg: TClientDataSet
    Aggregates = <>
    FileName = 'aggreg.cds'
    FieldDefs = <
      item
        Name = 'prg'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'idtask'
        DataType = ftInteger
      end
      item
        Name = 'operatore'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'campo_view'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'result_view'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'result_var'
        DataType = ftString
        Size = 80
      end>
    IndexDefs = <
      item
        Name = 't_aggregIndex1'
        Fields = 'prg;idtask;operatore;campo_view'
      end>
    IndexName = 't_aggregIndex1'
    MasterFields = 'prg;id'
    MasterSource = ds_task
    Params = <>
    StoreDefs = True
    AfterInsert = t_aggregAfterInsert
    AfterEdit = t_aggregAfterEdit
    AfterDelete = t_aggregAfterDelete
    Left = 872
    Top = 152
    object t_aggregprg: TStringField
      FieldName = 'prg'
      Size = 100
    end
    object t_aggregidtask: TIntegerField
      FieldName = 'idtask'
    end
    object t_aggregoperatore: TStringField
      FieldName = 'operatore'
      Size = 30
    end
    object t_aggregcampo_view: TStringField
      FieldName = 'campo_view'
      Size = 80
    end
    object t_aggregresult_view: TStringField
      FieldName = 'result_view'
      Size = 40
    end
    object t_aggregresult_var: TStringField
      FieldName = 'result_var'
      Size = 80
    end
  end
  object ds_aggreg: TDataSource
    DataSet = t_aggreg
    Left = 872
    Top = 200
  end
  object t_labels: TClientDataSet
    Aggregates = <>
    FileName = 'labels.cds'
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'label'
        DataType = ftString
        Size = 4096
      end
      item
        Name = 'label_tmp'
        DataType = ftString
        Size = 4096
      end>
    IndexDefs = <
      item
        Name = 't_labelsIndex1'
        Fields = 'id'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 't_labelsIndex2'
        Fields = 'label'
      end>
    IndexName = 't_labelsIndex2'
    Params = <>
    StoreDefs = True
    BeforeInsert = t_labelsBeforeInsert
    AfterInsert = t_labelsAfterInsert
    AfterEdit = t_labelsAfterEdit
    AfterDelete = t_labelsAfterDelete
    OnNewRecord = t_labelsNewRecord
    Left = 296
    Top = 648
    object t_labelsid: TIntegerField
      DisplayWidth = 12
      FieldName = 'id'
    end
    object t_labelslabel: TStringField
      FieldName = 'label'
      Size = 4096
    end
    object t_labelslabel_tmp: TStringField
      FieldName = 'label_tmp'
      Size = 4096
    end
  end
  object ds_labels: TDataSource
    DataSet = t_labels
    Left = 296
    Top = 696
  end
  object tmp_exp: TClientDataSet
    Aggregates = <>
    FileName = 'espressioni.cds'
    FieldDefs = <
      item
        Name = 'prg'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'idexp'
        DataType = ftInteger
      end
      item
        Name = 'expr'
        DataType = ftMemo
      end
      item
        Name = 'return'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <
      item
        Name = 't_espressioniIndex3'
        Fields = 'prg;idexp'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'prg;idexp'
    MasterFields = 'nome'
    MasterSource = ds_programmi
    PacketRecords = 0
    Params = <>
    ReadOnly = True
    StoreDefs = True
    Left = 712
    Top = 272
    object tmp_expprg: TStringField
      FieldName = 'prg'
      Size = 100
    end
    object tmp_expidexp: TIntegerField
      FieldName = 'idexp'
    end
    object tmp_expexpr: TMemoField
      FieldName = 'expr'
      BlobType = ftMemo
    end
    object tmp_expreturn: TStringField
      FieldName = 'return'
      Size = 255
    end
  end
  object tmp_parametri: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'tipo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'testo'
        DataType = ftString
        Size = 80
      end>
    IndexDefs = <
      item
        Name = 'tmp_parametriIndex1'
        Fields = 'id'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'tmp_parametriIndex1'
    Params = <>
    StoreDefs = True
    Left = 872
    Top = 24
    object tmp_parametriid: TIntegerField
      FieldName = 'id'
    end
    object tmp_parametritipo: TStringField
      FieldName = 'tipo'
    end
    object tmp_parametritesto: TStringField
      FieldName = 'testo'
      Size = 80
    end
  end
  object ds_tmp_parametri: TDataSource
    DataSet = tmp_parametri
    Left = 872
    Top = 72
  end
  object tmp_postab: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 952
    Top = 528
    object tmp_postabnomepadre: TStringField
      FieldName = 'nomepadre'
      Size = 100
    end
    object tmp_postabnomecontrollo: TStringField
      FieldName = 'nomecontrollo'
      Size = 100
    end
    object tmp_postableft: TIntegerField
      FieldName = 'left'
    end
    object tmp_postabtop: TIntegerField
      FieldName = 'top'
    end
    object tmp_postabwidth: TIntegerField
      FieldName = 'width'
    end
    object tmp_postabaltezza: TIntegerField
      FieldName = 'altezza'
    end
    object tmp_postabline: TIntegerField
      FieldName = 'line'
    end
    object tmp_postabdacol: TIntegerField
      FieldName = 'dacol'
    end
    object tmp_postabacol: TIntegerField
      FieldName = 'acol'
    end
    object tmp_postableftwidth: TIntegerField
      FieldName = 'left+width'
    end
  end
  object ds_tmp_postab: TDataSource
    DataSet = tmp_postab
    Left = 952
    Top = 576
  end
  object elenco_prg: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'nome'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ref'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'folder'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'modulo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'tipo'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'data_modifica'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'note'
        DataType = ftString
        Size = 2048
      end>
    IndexDefs = <
      item
        Name = 't_programmiIndex1'
        Fields = 'nome'
      end>
    IndexName = 't_programmiIndex1'
    Params = <>
    StoreDefs = True
    AfterEdit = t_programmiAfterEdit
    BeforeDelete = t_programmiBeforeDelete
    Left = 552
    Top = 24
    object elenco_prgnome: TStringField
      DisplayWidth = 21
      FieldName = 'nome'
      Size = 100
    end
    object elenco_prgref: TStringField
      DisplayWidth = 48
      FieldName = 'ref'
      Size = 100
    end
    object elenco_prgfolder: TStringField
      DisplayWidth = 50
      FieldName = 'folder'
      Size = 200
    end
    object elenco_prgmodulo: TStringField
      FieldName = 'modulo'
      Size = 30
    end
    object elenco_prgtipo: TStringField
      FieldName = 'tipo'
      Size = 30
    end
    object elenco_prgdata_modifica: TStringField
      FieldName = 'data_modifica'
      Size = 40
    end
    object elenco_prgnote: TStringField
      FieldName = 'note'
      Size = 2048
    end
  end
  object ds_elenco_prg: TDataSource
    DataSet = elenco_prg
    Left = 552
    Top = 72
  end
  object t_apphandlers: TClientDataSet
    Aggregates = <>
    FileName = 'appgandler.cds'
    FieldDefs = <
      item
        Name = 'alias'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'descrizione'
        DataType = ftString
        Size = 512
      end
      item
        Name = 'key'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 't_apphandlersIndex1'
        Fields = 'alias'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'alias'
    Params = <>
    StoreDefs = True
    OnCalcFields = t_apphandlersCalcFields
    Left = 56
    Top = 648
    object t_apphandlersalias: TStringField
      FieldName = 'alias'
      Size = 40
    end
    object t_apphandlersdescrizione: TStringField
      FieldName = 'descrizione'
      Size = 512
    end
    object t_apphandlerskey: TIntegerField
      FieldName = 'key'
    end
    object t_apphandlerskeychar: TStringField
      FieldKind = fkCalculated
      FieldName = 'keychar'
      Size = 100
      Calculated = True
    end
  end
  object ds_apphandlers: TDataSource
    DataSet = t_apphandlers
    Left = 56
    Top = 696
  end
  object t_ope_x_copia: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 952
    Top = 400
    object t_ope_x_copiaprg: TStringField
      FieldName = 'prg'
      Size = 100
    end
    object t_ope_x_copiaazione: TStringField
      FieldName = 'azione'
      Size = 40
    end
    object t_ope_x_copiaid: TIntegerField
      FieldName = 'id'
    end
    object t_ope_x_copiao2ref: TStringField
      FieldName = 'o2ref'
      Size = 200
    end
    object t_ope_x_copiadeferred: TIntegerField
      FieldName = 'deferred'
    end
    object t_ope_x_copiacallparam: TMemoField
      FieldName = 'callparam'
      BlobType = ftMemo
    end
    object t_ope_x_copiaexp1: TIntegerField
      FieldName = 'exp1'
    end
    object t_ope_x_copiaexp2: TIntegerField
      FieldName = 'exp2'
    end
    object t_ope_x_copiaexp3: TIntegerField
      FieldName = 'exp3'
    end
    object t_ope_x_copiaoperazione: TStringField
      FieldName = 'operazione'
      Required = True
      Size = 30
    end
    object t_ope_x_copiatipologia: TStringField
      FieldName = 'tipologia'
      Size = 40
    end
    object t_ope_x_copiaservice: TStringField
      FieldName = 'service'
      Size = 50
    end
  end
  object tmp_callparams: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Name'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Model'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Type'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Exp'
        DataType = ftInteger
      end
      item
        Name = 'Field'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <
      item
        Name = 'tmp_parametriIndex1'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'tmp_parametriIndex1'
    Params = <>
    StoreDefs = True
    AfterInsert = tmp_callparamsAfterInsert
    BeforePost = tmp_callparamsBeforePost
    Left = 792
    Top = 400
    object tmp_callparamsID: TIntegerField
      FieldName = 'ID'
    end
    object tmp_callparamsName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object tmp_callparamsModel: TStringField
      FieldName = 'Model'
      Size = 50
    end
    object tmp_callparamsType: TStringField
      FieldName = 'Type'
    end
    object tmp_callparamsExp: TIntegerField
      FieldName = 'Exp'
    end
    object tmp_callparamsField: TStringField
      FieldName = 'Field'
      Size = 200
    end
  end
  object ds_tmp_callparams: TDataSource
    DataSet = tmp_callparams
    Left = 792
    Top = 448
  end
  object t_formulas_sql: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Type'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Exp'
        DataType = ftInteger
      end
      item
        Name = 'Field'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <
      item
        Name = 't_formulas_sqlIndex1'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 't_formulas_sqlIndex1'
    Params = <>
    StoreDefs = True
    AfterInsert = t_formulas_sqlAfterInsert
    BeforePost = t_formulas_sqlBeforePost
    AfterPost = t_formulas_sqlAfterPost
    Left = 952
    Top = 152
    object t_formulas_sqlID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object t_formulas_sqlType: TStringField
      FieldName = 'Type'
    end
    object t_formulas_sqlExp: TIntegerField
      FieldName = 'Exp'
    end
    object t_formulas_sqlField: TStringField
      FieldName = 'Field'
      Size = 200
    end
  end
  object ds_formulas_sql: TDataSource
    DataSet = t_formulas_sql
    Left = 952
    Top = 200
  end
  object ds_indicitestanu: TDataSource
    DataSet = t_indicitestanu
    Left = 328
    Top = 312
  end
  object ds_indicinu: TDataSource
    DataSet = t_indicinu
    Left = 400
    Top = 312
  end
  object t_indicitestanu: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id_tabella'
        DataType = ftInteger
      end
      item
        Name = 'id_indice'
        DataType = ftInteger
      end
      item
        Name = 'nomekey'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 't_indicitestaIndex3'
        Fields = 'id_tabella;id_indice'
      end>
    IndexFieldNames = 'id_tabella;id_indice'
    MasterFields = 'Id'
    MasterSource = ds_tabelle
    Params = <>
    StoreDefs = True
    AfterInsert = t_indicitestaAfterInsert
    AfterEdit = t_indicitestaAfterEdit
    BeforeDelete = t_indicitestanuBeforeDelete
    OnNewRecord = t_indicitestanuNewRecord
    Left = 328
    Top = 264
    object t_indicitestanuid_tabella: TIntegerField
      FieldName = 'id_tabella'
    end
    object t_indicitestanuid_indice: TIntegerField
      FieldName = 'id_indice'
    end
    object t_indicitestanunomekey: TStringField
      FieldName = 'nomekey'
      OnSetText = t_indicitestanomekeySetText
      Size = 30
    end
  end
  object t_indicinu: TClientDataSet
    Aggregates = <>
    FileName = 'indicinu.cds'
    FieldDefs = <
      item
        Name = 'id_tabella'
        DataType = ftInteger
      end
      item
        Name = 'id_indice'
        DataType = ftInteger
      end
      item
        Name = 'id_segmento'
        DataType = ftInteger
      end
      item
        Name = 'segmento'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'direzione'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 't_indiciIndex1'
        Fields = 'id_tabella;id_indice;id_segmento'
      end>
    IndexFieldNames = 'id_tabella;id_indice;id_segmento'
    MasterFields = 'id_tabella;id_indice'
    MasterSource = ds_indicitestanu
    Params = <>
    StoreDefs = True
    AfterInsert = t_indiciAfterInsert
    AfterEdit = t_indiciAfterEdit
    AfterDelete = t_indiciAfterDelete
    OnNewRecord = t_indicinuNewRecord
    Left = 400
    Top = 264
    object t_indicinuid_tabella: TIntegerField
      FieldName = 'id_tabella'
    end
    object t_indicinuid_indice: TIntegerField
      FieldName = 'id_indice'
    end
    object t_indicinuid_segmento: TIntegerField
      FieldName = 'id_segmento'
    end
    object t_indicinusegmento: TStringField
      FieldName = 'segmento'
      Size = 30
    end
    object t_indicinudirezione: TStringField
      DefaultExpression = #39'A'#39
      FieldName = 'direzione'
      Required = True
      EditMask = '>L'
      Size = 1
    end
  end
end
