object f_wizmask: Tf_wizmask
  Left = 192
  Top = 107
  Width = 585
  Height = 617
  ActiveControl = Button1
  Caption = 'Mask definition'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object alpha: TMemo
    Left = 0
    Top = 0
    Width = 577
    Height = 549
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Pitch = fpFixed
    Font.Style = []
    Lines.Strings = (
      '==========================================================='
      ' Alpha         (C|A|N|U|L)n)*'
      '==========================================================='
      '   C = Any character'
      '   A = Any not numerical character'
      '   N = Any numerical character (0..9)'
      '   U = Any character converted to uppercase'
      '   L = Any character converted to lowercase'
      '-----------------------------------------------------------'
      '   Examples'
      '-----------------------------------------------------------'
      '   Mask        | Matching exp          | Formatted to'
      '-----------------------------------------------------------'
      '   C10         | ab-1c,D/EF            | ab-1c,D/EF'
      '   U5          | Ab1CD                 | AB1CD'
      '   L5          | Ab1CD                 | ab1cd'
      '   A1N4        | a1234                 | a1234'
      '               | A1234                 | A1234'
      '   U1N4        | a1234                 | A1234'
      '   A2N1A2N2    | ab1CD23               | ab1CD23'
      '-----------------------------------------------------------')
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object number: TMemo
    Left = 0
    Top = 0
    Width = 577
    Height = 549
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      '==========================================================='
      ' Number        [p]i[.|,][d][N][T][Z]'
      '==========================================================='
      '   p = Any character used as a prefix'
      '   i = Number of integer digits'
      '   .|, = Decimal separator'
      '   d = Number of decimal digits'
      '   N = If present mask accepts negative numbers'
      '   T = If present mask shows thousands separator'
      '   Z = If present mask shows blank for zero value'
      '   '
      '   NOTE: Characters to use as decimals and thousands'
      '         separator settable in o2.ini'
      '-----------------------------------------------------------'
      '   Examples'
      '-----------------------------------------------------------'#9
      '   Mask        | Matching exp          | Formatted to'
      '-----------------------------------------------------------'
      '   8           | 12345678              | 12345678'
      '   6.2         | 123456.78             | 123456.78'
      '               | 123456                | 123456.00'
      '   6.2         | 123456.78             | 123456.78'
      '               | 0                     | 0.00'
      '               | -12.34                | 12.34'
      '   7.2T        | 1234567.89            | 1,234,567.89'
      '   7.2NT       | -1234567.89           | -1,234,567.89'
      '   6NZ         | 123456                | 123456'
      '               | -123456               | -123456'
      '               | 0                     | '
      '   '#8364' 8.2NT     | 12345678.12           | '#8364' 12,345,678.12'
      '               | -12345678             | '#8364' -12,345,678.00'
      '-----------------------------------------------------------')
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object date: TMemo
    Left = 0
    Top = 0
    Width = 577
    Height = 549
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      '==========================================================='
      ' Date          s[D][M][Y][2][Z]'
      '==========================================================='
      '   s = Any character used as separator'
      '   D = Placeholder for days'
      '   M = Placeholder for months'
      '   Y = Placeholder for years'
      '   2 = If present years are displayed in 2-digits format'
      '   Z = If present mask shows blank for zero value'
      '-----------------------------------------------------------'
      '   Examples'
      '-----------------------------------------------------------'#9
      '   Mask        | Matching exp          | Formatted to'
      '-----------------------------------------------------------'
      '   /YMD        | 20020531              | 2002/05/31'
      '               | 0                     | 0000/00/00'
      '   -DMY2       | 310502                | 31-05-02'
      '               | 0                     | 00-00-00'
      '   .DM         | 3105                  | 31.05'
      '   -DMY2Z      | 310502                | 31-05-02'
      '               | 0                     |'
      '-----------------------------------------------------------')
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object time: TMemo
    Left = 0
    Top = 0
    Width = 577
    Height = 549
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      '==========================================================='
      ' Time          s[H][M][S][Z]'
      '==========================================================='
      '   s = Any character used as separator'
      '   H = Placeholder for hours'
      '   M = Placeholder for minutes'
      '   S = Placeholder for seconds'
      '   Z = If present mask shows blank for zero value'
      '-----------------------------------------------------------'
      '   Examples'
      '-----------------------------------------------------------'#9
      '   Mask        | Matching exp          | Formatted to'
      '-----------------------------------------------------------'
      '   :HMS        | 1015                  | 10:15:00'
      '               | 0                     | 00:00:00'
      '   .HM         | 1015                  | 10.15'
      '               | 0                     | 00.00'
      '   :MSZ        | 1015                  | 15:00'
      '               | 0                     |'
      '-----------------------------------------------------------')
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object logical: TMemo
    Left = 0
    Top = 0
    Width = 577
    Height = 549
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      'Logical'
      '   [No mask options]')
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object structured: TMemo
    Left = 0
    Top = 0
    Width = 577
    Height = 549
    Align = alClient
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      'Structured'
      '   [No mask options]')
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 0
    Top = 549
    Width = 577
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 6
    object Button1: TButton
      Left = 248
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Close'
      ModalResult = 1
      TabOrder = 0
    end
  end
end
