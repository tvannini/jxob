object f_checkprg: Tf_checkprg
  Left = 373
  Top = 82
  Width = 496
  Height = 581
  Caption = 'Checker Result'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 200
    Top = 496
    Width = 75
    Height = 25
    Caption = '&Ok'
    ModalResult = 1
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 320
    Top = 480
    Width = 113
    Height = 41
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
    Visible = False
  end
  object Memo2: TMemo
    Left = 0
    Top = 0
    Width = 488
    Height = 465
    Align = alTop
    Lines.Strings = (
      'Memo2')
    ReadOnly = True
    TabOrder = 2
  end
  object btn_elimina_expnotused: TButton
    Left = 16
    Top = 496
    Width = 153
    Height = 25
    Caption = 'Delete not used expressions'
    TabOrder = 3
    OnClick = btn_elimina_expnotusedClick
  end
  object PopupMenu1: TPopupMenu
    Left = 80
    Top = 472
    object Exit1: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = Exit1Click
    end
  end
  object ActionList1: TActionList
    Left = 280
    Top = 480
    object check_expressions: TAction
      Caption = 'check_expressions'
      OnExecute = check_expressionsExecute
    end
    object clona_tabelle: TAction
      Caption = 'clona_tabelle'
      OnExecute = clona_tabelleExecute
    end
    object check_select: TAction
      Caption = 'check_select'
    end
    object check_globale: TAction
      Caption = 'check_globale'
      OnExecute = check_globaleExecute
    end
    object check_exp_php: TAction
      Caption = 'check_exp_php'
    end
    object termina_comando: TAction
      Caption = 'termina_comando'
    end
    object check_property: TAction
      Caption = 'check_property'
      OnExecute = check_propertyExecute
    end
    object check_param: TAction
      Caption = 'check_param'
      OnExecute = check_paramExecute
    end
    object check_var: TAction
      Caption = 'check_var'
      OnExecute = check_varExecute
    end
    object check_view: TAction
      Caption = 'check_view'
      OnExecute = check_viewExecute
    end
    object check_form: TAction
      Caption = 'check_form'
      OnExecute = check_formExecute
    end
    object check_azioni: TAction
      Caption = 'check_azioni'
      OnExecute = check_azioniExecute
    end
    object memo_posizioni: TAction
      Caption = 'memo_posizioni'
      OnExecute = memo_posizioniExecute
    end
    object check_io: TAction
      Caption = 'check_io'
      OnExecute = check_ioExecute
    end
    object check_protocol: TAction
      Caption = 'check_protocol'
      OnExecute = check_protocolExecute
    end
    object ripristina_posizioni: TAction
      Caption = 'ripristina_posizioni'
      OnExecute = ripristina_posizioniExecute
    end
    object CheckExpNotUsed: TAction
      Caption = 'CheckExpNotUsed'
      OnExecute = CheckExpNotUsedExecute
    end
  end
end
