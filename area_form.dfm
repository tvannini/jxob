object f_areaform: Tf_areaform
  Left = 360
  Top = 125
  Width = 1024
  Height = 730
  BorderIcons = [biSystemMenu]
  Caption = 'Janox Open Builder GUI editor'
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  ScreenSnap = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DsnSwitch1: TDsnSwitch
    Left = 344
    Top = 48
    Width = 23
    Height = 22
    AllowAllUp = True
    GroupIndex = 2302
    Visible = False
    DsnRegister = Dsn8Register1
    DsnMessageFlg = False
    DsnMessage = 'Now, Starting Design'
  end
  object Splitter1: TSplitter
    Left = 230
    Top = 0
    Width = 5
    Height = 703
    AutoSnap = False
    Beveled = True
    Color = clBtnFace
    MinSize = 1
    ParentColor = False
    OnMoved = Splitter1Moved
  end
  object o2groupbox1: To2groupbox
    Left = 380
    Top = 8
    Width = 521
    Height = 409
    Caption = 'o2groupbox1'
    Color = 14541542
    ParentColor = False
    TabOrder = 0
    Visible = False
    Abilitato = 0
    Visibile = 0
    Azione = 0
    object o2label1: To2label
      Left = 17
      Top = 28
      Width = 40
      Height = 20
      AutoSize = False
      Caption = 'o2label1'
      Abilitato = 0
      Visibile = 0
    end
    object o2Map1: To2Map
      Left = 96
      Top = 280
      Width = 41
      Height = 41
      Shape = bsFrame
      Style = bsRaised
      Abilitato = 0
      Visibile = 0
    end
    object o2separator1: To2separator
      Left = 392
      Top = 256
      Width = 33
      Height = 73
      Visibile = 0
    end
    object o2document1: To2document
      Left = 392
      Top = 144
      Width = 113
      Height = 97
      Picture.Data = {
        055449636F6E0000010002001010100001000400280100002600000020201000
        01000400E80200004E0100002800000010000000200000000100040000000000
        C000000000000000000000001000000000000000000000000000800000800000
        00808000800000008000800080800000C0C0C000808080000000FF0000FF0000
        00FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000000000000000
        000000000088888888880000008F777777780000008FF7887778000000088800
        0778000000000000077800000000000007780000008F770077780000008FF777
        77880000000888870000000000000087000000000000087770000000000008F7
        70000000000008FF700000000000008880000000FFFFFFFFE00FFFFFC007FFFF
        C007FFFFC007FFFFE307FFFFFF07FFFFE307FFFFC007FFFFC007FFFFE00FFFFF
        FC7FFFFFF83FFFFFF83FFFFFF83FFFFFFC7FFFFF280000002000000040000000
        0100040000000000800200000000000000000000000000000000000000000000
        000080000080000000808000800000008000800080800000C0C0C00080808000
        0000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000088
        8888888888888888000000000000087777777777777777788000000000000877
        777777777777777780000000000008F7777777777777777780000000000008F7
        777777777777777780000000000008FF7777888777777777800000000000008F
        FFF8000877777777800000000000000888800000077777778000000000000000
        0000000007777777800000000000000000000000077777778000000000000000
        0000000007777777800000000000000000000000077777778000000000000000
        0000000007777777800000000000008777700000777777778000000000000877
        77770007777777778000000000000877777777777777777780000000000008F7
        777777777777777780000000000008F7777777777777777780000000000008FF
        7777777777777777800000000000008FFFF77777777777780000000000000008
        8888887777700000000000000000000000000087770000000000000000000000
        0000008777000000000000000000000000000877777000000000000000000000
        0000877777770000000000000000000000008777777700000000000000000000
        00008F7777770000000000000000000000008FF7777700000000000000000000
        000008FF777000000000000000000000000000888880000000000000FFFFFFFF
        FE0000FFFC00007FF800003FF800003FF800003FF800003FF800003FFC0E003F
        FE1F003FFFFF003FFFFF003FFFFF003FFFFF003FFE1F003FFC0E003FF800003F
        F800003FF800003FF800003FF800003FFC00007FFE0000FFFFFC1FFFFFFC1FFF
        FFF80FFFFFF007FFFFF007FFFFF007FFFFF007FFFFF80FFFFFFC1FFF}
      Stretch = True
      Visibile = 0
      Path = 0
    end
    object o2htmlarea1: To2htmlarea
      Left = 392
      Top = 24
      Width = 113
      Height = 113
      Brush.Style = bsBDiagonal
      Visibile = 0
      Html = 0
    end
    object o2agente1: To2agente
      Left = 432
      Top = 272
      Width = 73
      Height = 41
      Caption = 'o2agente1'
      FullRepaint = False
      TabOrder = 2
      Abilitato = 0
      Visibile = 0
    end
    object o2image1: To2image
      Left = 16
      Top = 280
      Width = 57
      Height = 57
      BevelOuter = bvLowered
      Color = clSilver
      TabOrder = 7
      Abilitato = 0
      Visibile = 0
      File_name = 0
      File_name_rollover = 0
      Submitonchange = 0
      ImageDir = 'c:\'
    end
    object o2edit1: To2edit
      Left = 16
      Top = 44
      Width = 121
      Height = 20
      AutoSize = False
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 8
      Text = 'o2edit1'
      Abilitato = 0
      Visibile = 0
      Submitonchange = 0
      Password = False
    end
    object o2textarea1: To2textarea
      Left = 16
      Top = 176
      Width = 121
      Height = 89
      Lines.Strings = (
        'o2textarea1')
      TabOrder = 1
      Abilitato = 0
      Visibile = 0
      Submitonchange = 0
      Htmlarea = False
    end
    object o2checkbox1: To2checkbox
      Left = 16
      Top = 104
      Width = 97
      Height = 20
      Caption = 'o2checkbox1'
      TabOrder = 3
      Abilitato = 0
      Visibile = 0
      Submitonchange = 0
    end
    object DBNavigator1: TDBNavigator
      Left = 152
      Top = 200
      Width = 220
      Height = 25
      TabOrder = 4
    end
    object o2file1: To2file
      Left = 16
      Top = 352
      Width = 121
      Height = 25
      TabOrder = 5
      Abilitato = 0
      Visibile = 0
      Submitonchange = 0
      Save_as = 0
    end
    object o2multipage1: To2multipage
      Left = 152
      Top = 232
      Width = 225
      Height = 145
      TabOrder = 6
      Tabs.Strings = (
        'prova1'
        'prova2')
      TabIndex = 0
      Abilitato = 0
      Visibile = 0
      TopExpr = 0
      LeftExpr = 0
      HeightExpr = 0
      WidthExpr = 0
    end
    object o2button1: To2button
      Left = 16
      Top = 136
      Width = 75
      Height = 25
      Caption = 'o2button1'
      TabOrder = 0
      Visible = False
      Abilitato = 0
      Visibile = 0
      Shortcut = None
    end
    object o2ListBox1: To2ListBox
      Left = 16
      Top = 72
      Width = 121
      Height = 20
      ItemHeight = 13
      TabOrder = 9
      Abilitato = 0
      Visibile = 0
      Rows = 0
      Submitonchange = 0
    end
    object o2dbnavigator1: To2dbnavigator
      Left = 152
      Top = 176
      Width = 225
      Height = 17
      Ctl3D = True
      PageSize = 0
      ParentCtl3D = False
      TabOrder = 10
      Visibile = 0
      NavigationBlockVisible = 0
      InsertVisible = 0
      InsertEnable = 0
      PostVisible = 0
      PostEnable = 0
      DeleteVisible = 0
      DeleteEnable = 0
      UndoVisible = 0
      UndoEnable = 0
      SelectVisible = 0
      SelectEnable = 0
      DetailVisible = 0
      DetailEnable = 0
    end
    object o2table1: To2table
      Left = 152
      Top = 24
      Width = 225
      Height = 145
      HorzScrollBar.Range = 220
      VertScrollBar.Range = 36
      AutoScroll = False
      TabOrder = 11
      Abilitato = 0
      Visibile = 0
      HideIndicator = 0
    end
  end
  object ContentDock: TPanel
    Left = 0
    Top = 0
    Width = 230
    Height = 703
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'ContentDock'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 0
      Top = 230
      Width = 230
      Height = 5
      Cursor = crVSplit
      Align = alTop
      Beveled = True
    end
    object InspectorDock: TPanel
      Left = 0
      Top = 235
      Width = 230
      Height = 468
      Align = alClient
      BevelOuter = bvNone
      Caption = 'InspectorDock'
      Ctl3D = False
      DockSite = True
      ParentCtl3D = False
      TabOrder = 0
    end
    object PaletteDock: TPanel
      Left = 0
      Top = 0
      Width = 230
      Height = 230
      Align = alTop
      BevelOuter = bvNone
      Caption = 'PaletteDock'
      Constraints.MinHeight = 100
      Ctl3D = False
      DockSite = True
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object DsnInspector1: TDsnInspector
    SelfProps.Strings = (
      'Expand'
      'o2Label|Caption'
      'View'
      'Field'
      'Visibile|Visible'
      'Abilitato|Enabled'
      'HideIndicator|Hide row marker'
      'File_name|File expr'
      'File_name_rollover|File rollover expr'
      'ImageFile|Image file'
      'Scelte|Items'
      'Azione|Action'
      'Submitonchange|Submit on change'
      'Rifagente|Operator ref'
      'Messaggio|Confirm message'
      'Riftask|View ref'
      'Mask|Data model'
      'Password|Password edit'
      'Kind|Orientation'
      'TabOrder|Tab order'
      'Parentinfo|Parent options'
      'Tabs|Pages'
      'TabIndex|Active page'
      'TabPosition|Tabs position'
      'Html|Html'
      'Path|Path'
      'Htmlarea|Html area'
      'Save_as|Save as'
      'NoRecordMessage|No records message'
      'NavigationBlockVisible|Show navigation buttons'
      'InsertVisible|New visible'
      'InsertEnable|New enabled'
      'InsertAction|New action'
      'InsertConfirmMessage|New confirm message'
      'PostVisible|Save visible'
      'PostEnable|Save enabled'
      'PostAction|Save action'
      'PostConfirmMessage|Save confirm message'
      'DeleteVisible|Delete visible'
      'DeleteEnable|Delete enabled'
      'DeleteAction|Delete action'
      'DeleteConfirmMessage|Delete confirm message'
      'UndoVisible|Undo visible'
      'UndoEnable|Undo enabled'
      'UndoAction|Undo action'
      'UndoConfirmMessage|Undo confirm message'
      'DetailVisible|Details visible'
      'DetailEnable|Deatils enabled'
      'DetailAction|Details action'
      'DetailConfirmMessage|Details confirm message'
      'SelectVisible|Select visible'
      'SelectEnable|Select enabled'
      'SelectAction|Select action'
      'SelectConfirmMessage|Select confirm message'
      'Vocecss|CSS'
      'CssDiv|CSS container'
      'CssTab|CSS grid'
      'CssHead|CSS header'
      'CssFooter|CSS footer'
      'CssBody|CSS body'
      'CssLine|CSS row'
      'CssAlternate|CSS alternate row'
      'CssMouseOverLine||CSS mouse over row'
      'CssCurrentLine|CSS current row'
      'CssSpace|CSS space'
      'CssSlide|CSS slide'
      'CssNavBar|CSS navigation bar'
      'CssFirst|CSS first'
      'CssPrevPage|CSS previous page'
      'CssPrev|CSS previous row'
      'CssNext|CSS next row'
      'CssNextPage|CSS next page'
      'CssLast|CSS last'
      'CssInsert|CSS new'
      'CssPost|CSS save'
      'CssDetail|CSS details'
      'CssSelect|CSS select'
      'CssDelete|CSS delete'
      'CssUndo|CSS undo'
      'CssBorder|CSS border'
      'CssLabelOn|CSS label ON'
      'CssLabelOff|CSS label OFF'
      'Format|Button style'
      'Rows'
      'Shortcut'
      'ZoomAction|Zoom action'
      'TooltipExp|Tooltip text')
    BtnProps.Strings = (
      'o2Label'
      'Text'
      'Visibile'
      'Abilitato'
      'Picture'
      'Azione'
      'Scelte'
      'Rifagente'
      'Riftask'
      'Mask'
      'Parentinfo'
      'Riftask'
      'File_name'
      'File_name_rollover'
      'ImageFile'
      'Tabs'
      'TabIndex'
      'Submitonchange'
      'Html'
      'Path'
      'Save_as'
      'NoRecordMessage'
      'NavigationBlockVisible'
      'InsertVisible'
      'InsertEnable'
      'InsertAction'
      'InsertConfirmMessage'
      'PostVisible'
      'PostEnable'
      'PostAction'
      'PostConfirmMessage'
      'DeleteVisible'
      'DeleteEnable'
      'DeleteAction'
      'DeleteConfirmMessage'
      'UndoVisible'
      'UndoEnable'
      'UndoAction'
      'UndoConfirmMessage'
      'DetailVisible'
      'DetailEnable'
      'DetailAction'
      'DetailConfirmMessage'
      'SelectVisible'
      'SelectEnable'
      'SelectAction'
      'SelectConfirmMessage'
      'Vocecss'
      'CssDiv'
      'CssTab'
      'CssHead'
      'CssFooter'
      'CssBody'
      'CssLine'
      'CssAlternate'
      'CssMouseOverLine'
      'CssCurrentLine'
      'CssSpace'
      'CssSlide'
      'CssNavBar'
      'CssFirst'
      'CssPrevPage'
      'CssPrev'
      'CssNext'
      'CssNextPage'
      'CssLast'
      'CssInsert'
      'CssPost'
      'CssDelete'
      'CssUndo'
      'CssBorder'
      'CssDetail'
      'CssSelect'
      'CssLabelOn'
      'CssLabelOff'
      'Field'
      'View'
      'Messaggio'
      'HideIndicator'
      'ZoomAction'
      'TooltipExp')
    OutProps.Strings = (
      '')
    OnBtnClick = DsnInspector1BtnClick
    ShowProps.aName = True
    ShowProps.aCaption = False
    ShowProps.aColor = False
    ShowProps.aTop = True
    ShowProps.aLeft = True
    ShowProps.aWidth = True
    ShowProps.aHeight = True
    ShowProps.aFont = False
    ShowCombo = True
    StayOnTop = True
    HelpButton.Visible = False
    HelpButton.HelpContext = 0
    HelpButton.Caption = 'Help(&H)'
    Position.Top = 50
    Position.Left = 15
    Position.Width = 310
    Position.Height = 460
    BtnGlyph.Data = {
      76020000424D760200000000000036000000280000000C0000000C0000000100
      20000000000040020000110B0000110B00000000000000000000E8D5C4FF9084
      7AFFA5978BFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFF8B8A89FF2E739BFF997776FF95897EFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF8AC2ECFF3FA4
      F9FF2E739BFF997776FF95897EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFF8BC3ECFF3FA4F9FF2E739BFF997776FFAB9C
      90FFFEFEFEFFEADBCEFFEADBCEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFF8BC3ECFF3FA4F9FF327297FF655D55FF836964FF846864FF806865FF7369
      61FFCFBEAFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF96C6EAFFA2A1A0FFDEB0
      93FFFEF7C9FFFEFED6FFFEFED9FFE7D7C4FF5C524CFFDAC7B8FFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFD2A497FFFEF8C6FFFEFAC7FFFEFEE1FFFEFEF5FFFEFE
      FEFFC4A495FF968A7FFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFBE1B6FFFEDD
      AAFFFEFAC7FFFEFEE0FFFEFEF1FFFEFEE8FFFEFED3FF756B63FFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEECBEFFFEDCACFFFEF4C1FFFEFED0FFFEFED8FFFEFE
      D5FFFEF5C7FF8A7F75FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFDBB5A2FFFEFC
      EFFFFEE9C0FFFEF4C2FFFEEDBAFFFEF1BEFFDBB494FFCEBDAEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFF6EFE2FFFEFAE5FFFEE6B3FFFEF4C2FFFAD0
      A2FFB5A095FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFB68B87FFC3978BFFCAA099FFE6D2C3FFFEFEFEFFFEFEFEFF}
    Caption = 'Object Inspector'
    Grid.PropCp = 'Property'
    Grid.ValueCp = 'Value'
    Grid.PropWid = 140
    Grid.ValueWid = 100
    Left = 344
    Top = 160
  end
  object DsnSelect1: TDsnSelect
    DsnRegister = Dsn8Register1
    Left = 344
    Top = 80
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 344
    Top = 304
    object Copy1: TMenuItem
      Caption = 'Copy'
      ShortCut = 16451
      OnClick = Copy1Click
    end
    object Cut1: TMenuItem
      Caption = 'Cut'
      ShortCut = 16472
      OnClick = Cut1Click
    end
    object Paste1: TMenuItem
      Caption = 'Paste'
      ShortCut = 16470
      OnClick = Paste1Click
    end
    object sepmenuSend: TMenuItem
      Caption = '-'
      Visible = False
    end
    object back: TMenuItem
      Caption = 'Send to back'
      Visible = False
      OnClick = backClick
    end
    object front: TMenuItem
      Caption = 'Bring to front'
      Visible = False
      OnClick = frontClick
    end
    object sepmenuAlign: TMenuItem
      Caption = '-'
      Visible = False
    end
    object Alignleft1: TMenuItem
      Caption = 'Left align'
      Visible = False
      OnClick = Alignleft1Click
    end
    object Rightalign1: TMenuItem
      Caption = 'Right align'
      Visible = False
      OnClick = Rightalign1Click
    end
    object Topalign1: TMenuItem
      Caption = 'Top align'
      Visible = False
      OnClick = Topalign1Click
    end
    object Bottomalign1: TMenuItem
      Caption = 'Bottom align'
      Visible = False
      OnClick = Bottomalign1Click
    end
    object sepmenuSize: TMenuItem
      Caption = '-'
      Visible = False
    end
    object MaxWidth1: TMenuItem
      Caption = 'Max width'
      Visible = False
      OnClick = MaxWidth1Click
    end
    object Minwidth1: TMenuItem
      Caption = 'Min width'
      Visible = False
      OnClick = Minwidth1Click
    end
    object Maxheight1: TMenuItem
      Caption = 'Max height'
      Visible = False
      OnClick = Maxheight1Click
    end
    object Minheight1: TMenuItem
      Caption = 'Min height'
      Visible = False
      OnClick = Minheight1Click
    end
    object sepmenuSpace: TMenuItem
      Caption = '-'
      Visible = False
    end
    object vertSpace1: TMenuItem
      Caption = 'Vertical equal spacing'
      Visible = False
      OnClick = vertSpace1Click
    end
    object horiSpace1: TMenuItem
      Caption = 'Horizontal equal spacing'
      Visible = False
      OnClick = horiSpace1Click
    end
    object sepmenuMultipage: TMenuItem
      Caption = '-'
      Visible = False
    end
    object Nextpage1: TMenuItem
      Caption = 'Next page'
      Visible = False
      OnClick = Nextpage1Click
    end
    object Previouspage1: TMenuItem
      Caption = 'Previous page'
      Visible = False
      OnClick = Previouspage1Click
    end
    object sepmenuTab: TMenuItem
      Caption = '-'
      Visible = False
    end
    object scrollRight1: TMenuItem
      Caption = 'Scroll on the right'
      Visible = False
      OnClick = scrollRight1Click
    end
    object scrollLeft1: TMenuItem
      Caption = 'Scroll on the left'
      Visible = False
      OnClick = scrollLeft1Click
    end
    object DesignOFF1: TMenuItem
      Caption = 'Enter in scroll mode'
      Visible = False
      OnClick = DesignOFF1Click
    end
    object DesignON1: TMenuItem
      Caption = 'Return to design mode'
      Visible = False
      OnClick = DesignON1Click
    end
    object sepmenu1: TMenuItem
      Caption = '-'
      Visible = False
    end
    object SaveToFile: TMenuItem
      Caption = 'Save to file'
      Visible = False
      OnClick = SaveObjectsToFile
    end
    object sepmenuExit: TMenuItem
      Caption = '-'
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      OnClick = Exit1Click
    end
  end
  object ActionList1: TActionList
    Left = 344
    Top = 232
    object carica_controlli: TAction
      Caption = 'carica_controlli'
      OnExecute = carica_controlliExecute
    end
    object salva_form: TAction
      Caption = 'salva_form'
      OnExecute = salva_formExecute
    end
    object unlink_parent: TAction
      Caption = 'unlink_parent'
      OnExecute = unlink_parentExecute
    end
    object posizioni_in_tabella: TAction
      Caption = 'posizioni_in_tabella'
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 344
    Top = 192
  end
  object Dsn8Register1: TDsn8Register
    DsnPanel = f_oggettiform.DsnPanel1
    DsnInspector = DsnInspector1
    ArrowButton = f_oggettiform.ArrowButton1
    Left = 344
    Top = 120
  end
end
