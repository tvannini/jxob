object f_cvs: Tf_cvs
  Left = 347
  Top = 287
  Width = 364
  Height = 416
  Caption = 'f_cvs'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ListView1: TListView
    Left = 16
    Top = 40
    Width = 329
    Height = 297
    Columns = <
      item
        Caption = 'Program name'
      end
      item
        Caption = 'User'
      end>
    TabOrder = 0
    ViewStyle = vsReport
  end
  object BitBtn1: TBitBtn
    Left = 136
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Refresh'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object JvSearchFile1: TJvSearchFiles
    Options = [soExcludeFilesInRootDir, soOwnerData, soSearchFiles, soSorted]
    FileParams.SearchTypes = [stFileMask]
    FileParams.FileMasks.Strings = (
      '*.prg')
    OnFindFile = JvSearchFile1FindFile
    Left = 12
    Top = 8
  end
end
