object f_scelta_css: Tf_scelta_css
  Left = 357
  Top = 92
  Width = 716
  Height = 678
  ActiveControl = ListView1
  Caption = 'CSS selection'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 184
    Top = 80
    Width = 33
    Height = 13
    Caption = 'Css file'
  end
  object Label2: TLabel
    Left = 184
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Preview'
  end
  object Label3: TLabel
    Left = 312
    Top = 616
    Width = 51
    Height = 13
    Caption = 'Expression'
  end
  object WebBrowser1: TWebBrowser
    Left = 184
    Top = 24
    Width = 481
    Height = 49
    TabOrder = 0
    ControlData = {
      4C000000B6310000100500000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Memo1: TMemo
    Left = 184
    Top = 96
    Width = 481
    Height = 505
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 1
    WordWrap = False
  end
  object Memo2: TMemo
    Left = 672
    Top = 16
    Width = 25
    Height = 185
    Lines.Strings = (
      'Memo2')
    TabOrder = 2
    Visible = False
    WordWrap = False
  end
  object ListView1: TListView
    Left = 0
    Top = 0
    Width = 180
    Height = 601
    Align = alCustom
    Columns = <
      item
        AutoSize = True
        Caption = 'Class Name'
      end>
    RowSelect = True
    PopupMenu = PopupMenu1
    TabOrder = 3
    ViewStyle = vsReport
    OnChange = ListView1Change
    OnDblClick = returnExecute
  end
  object BitBtn1: TBitBtn
    Left = 592
    Top = 608
    Width = 75
    Height = 25
    Caption = '&Save CSS'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object btn_select: TBitBtn
    Left = 504
    Top = 608
    Width = 75
    Height = 25
    Caption = '&Select'
    TabOrder = 5
    OnClick = returnExecute
  end
  object e_expr: TEdit
    Left = 376
    Top = 612
    Width = 41
    Height = 21
    TabOrder = 6
    OnDblClick = scelta_exprExecute
  end
  object PageProducer1: TPageProducer
    HTMLDoc.Strings = (
      '<html>'
      '<head>'
      '<title>Untitled Document</title>'
      
        '<meta http-equiv="Content-Type" content="text/html; charset=iso-' +
        '8859-1">'
      '<style type="text/css">'
      '<!--'
      '<#filecss>'
      '-->'
      '</style>'
      '</head>'
      ''
      '<body>'
      '<p class="<#stile>"><#stile></p>'
      '</body>'
      '</html>')
    OnHTMLTag = PageProducer1HTMLTag
    Left = 664
    Top = 240
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.css'
    FileName = '*.css'
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Left = 664
    Top = 216
  end
  object PopupMenu1: TPopupMenu
    Left = 48
    Top = 608
    object return1: TMenuItem
      Caption = 'return'
      ShortCut = 13
      OnClick = returnExecute
    end
    object expr: TMenuItem
      Caption = 'Expression'
      ShortCut = 116
      OnClick = scelta_exprExecute
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = Exit1Click
    end
  end
  object ActionList1: TActionList
    Left = 672
    Top = 320
    object ricarica_css: TAction
      Caption = 'ricarica_css'
      OnExecute = ricarica_cssExecute
    end
    object return: TAction
      Caption = 'return'
      OnExecute = returnExecute
    end
    object scelta_expr: TAction
      Caption = 'scelta_expr'
      OnExecute = scelta_exprExecute
    end
    object definisce_filecss: TAction
      Caption = 'definisce_filecss'
      OnExecute = definisce_filecssExecute
    end
  end
end
