object f_sceltaprogramma: Tf_sceltaprogramma
  Left = 436
  Top = 134
  Width = 338
  Height = 638
  ActiveControl = ListView1
  Caption = 'Program selection'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 530
    Width = 68
    Height = 13
    Caption = 'By expression:'
  end
  object Button1: TButton
    Left = 127
    Top = 568
    Width = 75
    Height = 25
    Caption = '&Select'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ListView1: TListView
    Left = 0
    Top = 0
    Width = 330
    Height = 520
    Align = alTop
    Columns = <
      item
        Caption = 'Program Name'
        Width = 280
      end>
    ColumnClick = False
    Ctl3D = False
    ReadOnly = True
    PopupMenu = PopupMenu1
    SortType = stText
    TabOrder = 0
    ViewStyle = vsReport
  end
  object e_expr: TEdit
    Left = 88
    Top = 530
    Width = 41
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    OnDblClick = e_exprDblClick
  end
  object cb_persistent: TCheckBox
    Left = 240
    Top = 530
    Width = 73
    Height = 20
    Caption = 'Cached'
    TabOrder = 3
    Visible = False
  end
  object PopupMenu1: TPopupMenu
    Left = 256
    Top = 560
    object scelta1: TMenuItem
      Caption = 'Select'
      ShortCut = 13
      OnClick = Button1Click
    end
    object Uscita: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = UscitaClick
    end
    object Expr1: TMenuItem
      Caption = 'Expr'
      ShortCut = 116
      OnClick = e_exprDblClick
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
    Left = 548
    Top = 448
  end
end
