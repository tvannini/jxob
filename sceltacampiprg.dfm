object f_sceltacampiprg: Tf_sceltacampiprg
  Left = 564
  Top = 127
  Width = 537
  Height = 700
  ActiveControl = PageControl1
  Caption = 'Selector'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 529
    Height = 673
    ActivePage = ts_expression
    Align = alClient
    TabOrder = 0
    object ts_fields: TTabSheet
      Caption = 'Fields'
      object Button1: TButton
        Left = 422
        Top = 602
        Width = 90
        Height = 30
        Caption = '&Select'
        TabOrder = 0
        OnClick = Button1Click
      end
      object ListView1: TListView
        Left = 0
        Top = 41
        Width = 521
        Height = 544
        Align = alTop
        Columns = <
          item
            Caption = 'Field'
            Width = 200
          end
          item
            Caption = 'From table'
            Width = 150
          end
          item
            Caption = 'From view'
            Width = 150
          end>
        Ctl3D = False
        ReadOnly = True
        RowSelect = True
        PopupMenu = PopupMenu1
        TabOrder = 1
        ViewStyle = vsReport
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 521
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object Label1: TLabel
          Left = 8
          Top = 10
          Width = 45
          Height = 13
          Caption = 'Find field:'
        end
        object BitBtn1: TBitBtn
          Left = 424
          Top = 5
          Width = 90
          Height = 30
          Caption = '&Find'
          TabOrder = 1
          OnClick = BitBtn1Click
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000010000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7777700000777770000070F000777770F00070F000777770F000700000007000
            0000700F000000F00000700F000700F00000700F000700F00000770000000000
            00077770F00070F000777770000070000077777700077700077777770F07770F
            0777777700077700077777777777777777777777777777777777}
        end
        object e_trova: TEdit
          Left = 64
          Top = 10
          Width = 177
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
        end
      end
      object bt_prec: TBitBtn
        Left = 8
        Top = 602
        Width = 90
        Height = 30
        Caption = '&Previous value'
        TabOrder = 3
        OnClick = bt_precClick
      end
      object bt_zero: TBitBtn
        Left = 112
        Top = 602
        Width = 90
        Height = 30
        Caption = '&Zero'
        TabOrder = 4
        OnClick = bt_zeroClick
      end
    end
    object ts_fnx: TTabSheet
      Caption = 'Functions'
      ImageIndex = 4
      DesignSize = (
        521
        645)
      object Label2: TLabel
        Left = 10
        Top = 20
        Width = 37
        Height = 13
        Caption = 'Groups:'
      end
      object Label3: TLabel
        Left = 190
        Top = 20
        Width = 49
        Height = 13
        Caption = 'Functions:'
      end
      object Label4: TLabel
        Left = 10
        Top = 360
        Width = 75
        Height = 13
        Caption = 'Documentation:'
      end
      object Label5: TLabel
        Left = 400
        Top = 20
        Width = 57
        Height = 13
        Caption = 'Search text:'
      end
      object FnxGroupsList: TListBox
        Left = 10
        Top = 40
        Width = 170
        Height = 300
        BevelInner = bvNone
        BevelOuter = bvNone
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 0
        OnClick = FnxGroupsListClick
      end
      object FnxNamesList: TListBox
        Left = 190
        Top = 40
        Width = 200
        Height = 300
        BevelInner = bvNone
        BevelOuter = bvNone
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 1
        OnClick = FnxNamesListClick
      end
      object Panel4: TPanel
        Left = 10
        Top = 380
        Width = 500
        Height = 250
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        Caption = 'Panel4'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        object PreviewBox: TWebBrowser
          Left = 0
          Top = 0
          Width = 500
          Height = 250
          Align = alClient
          TabOrder = 0
          OnDocumentComplete = PreviewBoxDocumentComplete
          ControlData = {
            4C000000AD330000D71900000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object SearchText: TEdit
        Left = 400
        Top = 40
        Width = 110
        Height = 19
        BevelInner = bvNone
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
      end
      object Button2: TButton
        Left = 420
        Top = 64
        Width = 90
        Height = 30
        Caption = 'Find text'
        TabOrder = 4
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 420
        Top = 310
        Width = 90
        Height = 30
        Caption = '&Select function'
        Enabled = False
        TabOrder = 5
        OnClick = Button3Click
      end
    end
    object ts_view: TTabSheet
      Caption = 'View info'
      ImageIndex = 2
      object DBGrid1: TDBGrid
        Left = 16
        Top = 16
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
      object BitBtn2: TBitBtn
        Left = 269
        Top = 512
        Width = 75
        Height = 25
        Caption = 'Select'
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object RadioGroup1: TRadioGroup
        Left = 272
        Top = 16
        Width = 217
        Height = 273
        Caption = 'Options'
        Ctl3D = False
        Items.Strings = (
          'Viewmod'
          'Mode'
          'Number of requested records'
          'Number of returned records'
          'Initial Offset'
          'Ending Offset'
          'Total number of filtered row in main'
          'Current row in recordset'
          'Contains a record')
        ParentCtl3D = False
        TabOrder = 2
        TabStop = True
      end
    end
    object ts_appinfo: TTabSheet
      Caption = 'Application info'
      ImageIndex = 1
      OnEnter = azzera_radioExecute
      object RadioGroup2: TRadioGroup
        Left = 16
        Top = 16
        Width = 585
        Height = 177
        Caption = 'Application'
        Columns = 3
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          'None'
          'Application name'
          'Application title      '
          'Application alias'
          'Session id'
          'Logged user'
          'Validation level'
          'Session timeout'
          'Failed login page                               '
          'Developer'
          'Runlevel'
          'Css file'
          'Start program'
          'Request program'
          'Running programs array'
          'Active menu '
          'Execution time'
          'Control on submit')
        ParentCtl3D = False
        TabOrder = 0
        OnEnter = azzera_radioExecute
      end
      object RadioGroup3: TRadioGroup
        Left = 16
        Top = 200
        Width = 585
        Height = 145
        Caption = 'Filesystem folders'
        Columns = 3
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          'None'
          'Application data'
          
            'Janox Runtime                                                   ' +
            '         '
          
            'Application root                                                ' +
            '            '
          'Application web root                                        '
          
            'Application objects                                             ' +
            '           '
          'Developer                                                     '
          
            'Temporary                                                       ' +
            '    '
          'Css                                                           '
          
            'Report Models                                                   ' +
            '  '
          
            'User Report Models                                              ' +
            '   '
          'Images                                           '
          
            'User Home                                                       ' +
            '   '
          'Uploads ')
        ParentCtl3D = False
        TabOrder = 1
        OnEnter = azzera_radioExecute
      end
      object RadioGroup4: TRadioGroup
        Left = 16
        Top = 352
        Width = 585
        Height = 65
        Caption = 'Repository'
        Columns = 3
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          'None'
          'Menus             '
          'Models'
          'Servers'
          'Databases'
          'Tables')
        ParentCtl3D = False
        TabOrder = 2
        OnEnter = azzera_radioExecute
      end
      object BitBtn3: TBitBtn
        Left = 272
        Top = 560
        Width = 75
        Height = 25
        Caption = 'Select'
        TabOrder = 3
        OnClick = BitBtn3Click
      end
    end
    object ts_expression: TTabSheet
      Caption = 'Expressions'
      ImageIndex = 3
      PopupMenu = PopupMenu1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 521
        Height = 361
        Align = alTop
        Ctl3D = False
        DataSource = DataSource1
        ParentCtl3D = False
        PopupMenu = PopupMenu1
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
            FieldName = 'idexp'
            Title.Caption = '#'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'return'
            Title.Caption = 'Return'
            Width = 524
            Visible = True
          end>
      end
      object DBMemo1: TDBMemo
        Left = 0
        Top = 393
        Width = 521
        Height = 211
        Align = alClient
        Ctl3D = False
        DataField = 'expr'
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object Panel2: TPanel
        Left = 0
        Top = 604
        Width = 521
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object btn_exp: TButton
          Left = 224
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Select'
          TabOrder = 0
          OnClick = btn_expClick
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 361
        Width = 521
        Height = 32
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 'Script'
        TabOrder = 3
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 488
    Top = 568
    object Scelta1: TMenuItem
      Caption = 'Select'
      ShortCut = 13
      OnClick = Scelta1Click
    end
    object Esc1: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = Esc1Click
    end
    object Zoom1: TMenuItem
      Caption = 'Zoom'
      ShortCut = 116
      OnClick = Zoom1Click
    end
  end
  object ActionList1: TActionList
    Left = 572
    Top = 248
    object azzera_radio: TAction
      Caption = 'azzera_radio'
      OnExecute = azzera_radioExecute
    end
  end
  object DataSource1: TDataSource
    DataSet = dm_form.tmp_exp
    Left = 556
    Top = 304
  end
  object DocSearchFile: TJvSearchFiles
    DirOption = doExcludeSubDirs
    DirParams.SearchTypes = [stFileMask]
    FileParams.SearchTypes = [stFileMask]
    FileParams.FileMasks.Strings = (
      'o2*.html')
    OnFindFile = DocSearchFileFindFile
    Left = 452
    Top = 568
  end
end
