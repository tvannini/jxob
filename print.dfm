object f_print: Tf_print
  Left = 200
  Top = 104
  Width = 1249
  Height = 683
  Caption = 'Print information'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnShow = carica_prgExecute
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 8
    Top = 64
    Width = 123
    Height = 13
    Caption = 'Resources list in programs'
  end
  object Label4: TLabel
    Left = 512
    Top = 64
    Width = 126
    Height = 13
    Caption = 'Selected resources to print'
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 49
    Width = 185
    Height = 559
    Align = alLeft
    Caption = 'I/O Files list'
    TabOrder = 1
    object TreeView1: TTreeView
      Left = 2
      Top = 15
      Width = 181
      Height = 542
      Align = alClient
      Indent = 19
      MultiSelect = True
      TabOrder = 0
    end
  end
  object Memo1: TMemo
    Left = 904
    Top = 8
    Width = 49
    Height = 49
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
    Visible = False
    WordWrap = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1241
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 4
      Width = 44
      Height = 13
      Caption = 'Template'
    end
    object Label2: TLabel
      Left = 72
      Top = 4
      Width = 45
      Height = 13
      Caption = 'File name'
    end
    object Label5: TLabel
      Left = 128
      Top = 4
      Width = 59
      Height = 13
      Caption = 'Printer name'
    end
    object e_modello: TJvIntegerEdit
      Left = 16
      Top = 20
      Width = 49
      Height = 21
      Alignment = taRightJustify
      PopupMenu = PopupMenu2
      ReadOnly = False
      TabOrder = 0
      Value = 0
      MaxValue = 0
      MinValue = 0
      HasMaxValue = False
      HasMinValue = False
    end
    object e_pdf: TJvIntegerEdit
      Left = 72
      Top = 20
      Width = 49
      Height = 21
      Alignment = taRightJustify
      PopupMenu = PopupMenu2
      ReadOnly = False
      TabOrder = 1
      Value = 0
      MaxValue = 0
      MinValue = 0
      HasMaxValue = False
      HasMinValue = False
    end
    object ed_printer: TJvIntegerEdit
      Left = 128
      Top = 20
      Width = 57
      Height = 21
      Alignment = taRightJustify
      PopupMenu = PopupMenu2
      ReadOnly = False
      TabOrder = 2
      Value = 0
      MaxValue = 0
      MinValue = 0
      HasMaxValue = False
      HasMinValue = False
    end
  end
  object Memo2: TMemo
    Left = 584
    Top = 504
    Width = 41
    Height = 33
    Lines.Strings = (
      'Memo2')
    TabOrder = 4
    Visible = False
    WordWrap = False
  end
  object memo_testata: TMemo
    Left = 1000
    Top = 416
    Width = 185
    Height = 65
    Lines.Strings = (
      'object TRpReport'
      '  PageBackColor = 16777215'
      '  SubReports = <'
      '    item'
      '      SubReport = TRpSubReport0'
      '    end>')
    TabOrder = 5
    Visible = False
    WordWrap = False
  end
  object memo_piede: TMemo
    Left = 936
    Top = 384
    Width = 185
    Height = 68
    Lines.Strings = (
      '  DatabaseInfo = <'
      '    item'
      '      Alias = '#39'O2'#39
      '      LoadParams = True'
      '      LoadDriverParams = True'
      '      LoginPrompt = False'
      '      Driver = rpdatamybase'
      '      ReportTable = '#39'REPMAN_REPORTS'#39
      '      ReportSearchField = '#39'REPORT_NAME'#39
      '      ReportField = '#39'REPORT'#39
      '      ReportGroupsTable = '#39'REPMAN_GROUPS'#39
      '      ADOConnectionString = '#39#39
      '    end>'
      '  Params = <>'
      '  StreamFormat = rpStreamText'
      '  ReportAction = []'
      '  Type1Font = poHelvetica'
      '  WFontName = '#39'Arial'#39
      '  LFontName = '#39'Helvetica'#39
      '  object TRpSubReport0: TRpSubReport'
      '    Sections = <'
      '      item'
      '        Section = TRpSection0'
      '      end>'
      '  end'
      '  object TRpSection0: TRpSection'
      '    Width = 10772'
      '    Height = 750'
      '    SubReport = TRpSubReport0'
      '    ChangeBool = False'
      '    PageRepeat = False'
      '    SkipPage = False'
      '    AlignBottom = False'
      '    SectionType = rpsecdetail'
      '    Components = <>'
      '    ExternalTable = '#39'REPMAN_REPORTS'#39
      '    ExternalField = '#39'REPORT'#39
      '    ExternalSearchField = '#39'REPORT_NAME'#39
      '    StreamFormat = rpStreamText'
      '    PrintCondition = '#39#39
      '    DoBeforePrint = '#39#39
      '    DoAfterPrint = '#39#39
      '    ChangeExpression = '#39#39
      '    BeginPageExpression = '#39#39
      '    ChangeExpression = '#39#39
      '    SkipExpreV = '#39#39
      '    SkipExpreH = '#39#39
      '    SkipToPageExpre = '#39#39
      '    BackExpression = '#39#39
      '    Stream = {0000000000000000}'
      '  end'
      'end')
    TabOrder = 6
    Visible = False
    WordWrap = False
  end
  object Panel3: TPanel
    Left = 0
    Top = 608
    Width = 1241
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 7
    object Button1: TButton
      Left = 696
      Top = 8
      Width = 89
      Height = 25
      Caption = '&Design'
      TabOrder = 0
      OnClick = reporterExecute
    end
    object BitBtn3: TBitBtn
      Left = 552
      Top = 8
      Width = 89
      Height = 25
      Caption = '&Ok'
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object BitBtn2: TBitBtn
      Left = 16
      Top = 8
      Width = 69
      Height = 25
      Caption = '<--&Exclude'
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn1: TBitBtn
      Left = 88
      Top = 8
      Width = 69
      Height = 25
      Caption = '&Include-->'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 185
    Top = 49
    Width = 1056
    Height = 559
    Align = alClient
    Caption = 'Selected resources to print'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 1052
      Height = 542
      Align = alClient
      DataSource = dm_form.ds_printdef
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEditButtonClick = DBGrid1EditButtonClick
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Caption = 'Name'
          Width = 194
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'prg_ref'
          Title.Caption = 'Program'
          Width = 196
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'risorsa_ref'
          Title.Caption = 'I/O'
          Width = 169
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'master_fields'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'index_fields'
          Visible = True
        end>
    end
  end
  object JvSearchFile1: TJvSearchFiles
    DirOption = doExcludeSubDirs
    Options = [soOwnerData, soSearchFiles, soSorted]
    DirParams.SearchTypes = [stFileMask]
    FileParams.SearchTypes = [stFileMask]
    FileParams.FileMasks.Strings = (
      '*.prg')
    OnFindFile = JvSearchFile1FindFile
    Left = 860
    Top = 8
  end
  object PopupMenu1: TPopupMenu
    Left = 912
    Top = 16
    object E1: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = E1Click
    end
    object Confirm1: TMenuItem
      Caption = 'Confirm'
      ShortCut = 13
      OnClick = BitBtn3Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 944
    Top = 24
    object Zoom1: TMenuItem
      Caption = 'Zoom'
      ShortCut = 116
      OnClick = Zoom1Click
    end
  end
  object ActionList1: TActionList
    Left = 784
    Top = 16
    object carica_prg: TAction
      Caption = 'carica_prg'
      OnExecute = carica_prgExecute
    end
    object reporter: TAction
      Caption = 'reporter'
      OnExecute = reporterExecute
    end
  end
  object t_tmpsource: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 968
    Data = {
      2F0100009619E0BD010000001800000005000200000003000000B30008726573
      6F7572636501004900100001000557494454480200020032000966696C655F70
      617468010049001000010005574944544802000200C800066D61737465720100
      4900100001000557494454480200020032000D6D61737465725F6669656C6473
      010049001000010005574944544802000200C8000C696E6465785F6669656C64
      73010049001000010005574944544802000200C80000000000000A616E616772
      616669636927443A5C6F325C6470735C75736572735C64656D6F5C746D705C61
      6E61677261666963692E786D6C0100010001000000000C726573706F6E736162
      696C6929443A5C6F325C6470735C75736572735C64656D6F5C746D705C726573
      706F6E736162696C692E786D6C010001000100}
    object t_tmpsourceresource: TStringField
      FieldName = 'resource'
      Size = 50
    end
    object t_tmpsourcefile_path: TStringField
      FieldName = 'file_path'
      Size = 200
    end
    object t_tmpsourcemaster: TStringField
      FieldName = 'master'
      Size = 50
    end
    object t_tmpsourcemaster_fields: TStringField
      FieldName = 'master_fields'
      Size = 200
    end
    object t_tmpsourceindex_fields: TStringField
      FieldName = 'index_fields'
      Size = 200
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Xml files|*.xml'
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Left = 728
  end
  object o2reporter: TJvCreateProcess
    WaitForTerminate = False
    Left = 912
    Top = 16
  end
  object OpenDialog2: TOpenDialog
    Filter = 'Report files|*.rep'
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Left = 680
    Top = 512
  end
  object file_rep: TJvSearchFiles
    DirOption = doExcludeSubDirs
    Options = [soOwnerData, soSearchFiles, soSorted]
    DirParams.SearchTypes = [stFileMask]
    FileParams.SearchTypes = [stFileMask]
    FileParams.FileMasks.Strings = (
      '*.rep')
    OnFindFile = file_repFindFile
    Left = 996
    Top = 8
  end
end
