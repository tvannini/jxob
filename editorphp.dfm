object f_editorphp: Tf_editorphp
  Left = 460
  Top = 194
  Width = 927
  Height = 705
  Caption = 'ScriptEditor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Editor: TSynEdit
    Left = 0
    Top = 0
    Width = 919
    Height = 637
    Align = alClient
    Ctl3D = False
    ParentCtl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    PopupMenu = PopupMenu1
    TabOrder = 0
    BorderStyle = bsNone
    Gutter.AutoSize = True
    Gutter.BorderStyle = gbsNone
    Gutter.DigitCount = 3
    Gutter.Font.Charset = DEFAULT_CHARSET
    Gutter.Font.Color = clWindowText
    Gutter.Font.Height = -11
    Gutter.Font.Name = 'Terminal'
    Gutter.Font.Style = []
    Gutter.LeftOffset = 4
    Gutter.RightOffset = 4
    Gutter.ShowLineNumbers = True
    Highlighter = SynPHPSyn1
    TabWidth = 4
    OnChange = EditorChange
    OnPaintTransient = EditorPaintTransient
  end
  object Panel1: TPanel
    Left = 0
    Top = 637
    Width = 919
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Label1'
    end
    object Label2: TLabel
      Left = 80
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Label2'
    end
    object Button1: TButton
      Left = 392
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Save'
      ModalResult = 1
      TabOrder = 0
    end
  end
  object SynCompletionProposal1: TSynCompletionProposal
    Options = [scoLimitToMatchedText, scoUseInsertList, scoUsePrettyText, scoUseBuiltInTimer, scoEndCharCompletion, scoCompleteWithTab, scoCompleteWithEnter]
    ItemList.Strings = (
      '\style{+B}o2_mkdate\style{-B}($date,$years,$months,$days)'
      '\style{+B}o2_mktime\style{-B}($time,$hours,$minutess,$seconds)'
      '\style{+B}o2_file2http\style{-B}($url)')
    InsertList.Strings = (
      'o2_mkdate'
      'o2_mktime'
      'o2_file2http')
    NbLinesInWindow = 16
    Width = 500
    EndOfTokenChr = '()[]{}'
    TriggerChars = 
      'a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,0,1,2,3,4,5,' +
      '6,7,8,9,$'
    Title = 'Select...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 16
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBtnText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        BiggestWord = 'o2_ctrl_imglist'
      end>
    ItemHeight = 18
    OnChange = SynCompletionProposal1Change
    OnExecute = SynCompletionProposal1Execute
    ShortCut = 16416
    Editor = Editor
    TimerInterval = 200
    OnAfterCodeCompletion = SynCompletionProposal1AfterCodeCompletion
    OnCodeCompletion = SynCompletionProposal1CodeCompletion
    Left = 672
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Left = 576
    Top = 539
    object Zoom1: TMenuItem
      Caption = 'Zoom'
      ShortCut = 116
      OnClick = scelta_oggetti_o2Execute
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = Exit1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      ShortCut = 13
      OnClick = Save1Click
    end
  end
  object ActionList1: TActionList
    Left = 704
    Top = 539
    object scelta_oggetti_o2: TAction
      Caption = 'scelta_oggetti_o2'
      OnExecute = scelta_oggetti_o2Execute
    end
    object aggiornavar: TAction
      Caption = 'aggiornavar'
      OnExecute = aggiornavarExecute
    end
  end
  object SynPHPSyn1: TSynPHPSyn
    CommentAttri.Foreground = 11842740
    IdentifierAttri.Foreground = clBlack
    KeyAttri.Foreground = clBlue
    NumberAttri.Foreground = clRed
    StringAttri.Foreground = 48896
    SymbolAttri.Foreground = clGray
    VariableAttri.Foreground = 213
    Left = 672
    Top = 256
  end
end
