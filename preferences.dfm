object f_config: Tf_config
  Left = 432
  Top = 176
  Width = 440
  Height = 620
  Caption = 'Settings'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 24
    Top = 112
    Width = 59
    Height = 13
    Caption = 'Call Program'
  end
  object PageControl1: TPageControl
    Left = 20
    Top = 73
    Width = 400
    Height = 469
    ActivePage = ts_generale
    Align = alCustom
    TabOrder = 0
    object ts_generale: TTabSheet
      Caption = 'General'
      object Label1: TLabel
        Left = 20
        Top = 20
        Width = 87
        Height = 13
        Caption = 'Default developer:'
      end
      object Label18: TLabel
        Left = 20
        Top = 220
        Width = 121
        Height = 13
        Caption = 'Design report executable:'
      end
      object Label19: TLabel
        Left = 20
        Top = 60
        Width = 68
        Height = 13
        Caption = 'Janox runtime:'
      end
      object Label20: TLabel
        Left = 20
        Top = 160
        Width = 82
        Height = 13
        Caption = 'Temporary folder:'
      end
      object Label22: TLabel
        Left = 20
        Top = 120
        Width = 91
        Height = 13
        Caption = 'Development layer:'
        Visible = False
      end
      object Label23: TLabel
        Left = 24
        Top = 280
        Width = 156
        Height = 13
        Caption = 'Integrate local versioning system:'
      end
      object Label24: TLabel
        Left = 55
        Top = 324
        Width = 314
        Height = 29
        AutoSize = False
        Caption = 
          'If ".git" folder is found in application root, then Git will be ' +
          'used to COMMIT each CHECK-IN.'
        WordWrap = True
      end
      object Label25: TLabel
        Left = 55
        Top = 400
        Width = 314
        Height = 30
        AutoSize = False
        Caption = 
          '"check-in.bat" and "check-out.bat" scripts must be provided in B' +
          'uilder folder.'
        WordWrap = True
      end
      object Label26: TLabel
        Left = 55
        Top = 355
        Width = 232
        Height = 13
        Caption = 'NOTE: "git" command must be provided to CMD.'
      end
      object e_def_user: TEdit
        Left = 170
        Top = 20
        Width = 200
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object e_reppath: TEdit
        Left = 20
        Top = 240
        Width = 330
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        Text = 'e_reppath'
      end
      object e_jxrntpath: TEdit
        Left = 20
        Top = 80
        Width = 330
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        Text = 'e_jxrntpath'
      end
      object e_temppath: TEdit
        Left = 20
        Top = 180
        Width = 330
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        Text = 'e_temppath'
      end
      object PathButton1: TButton
        Left = 350
        Top = 240
        Width = 20
        Height = 20
        Caption = '...'
        TabOrder = 7
        OnClick = PathButton1Click
      end
      object PathButton2: TButton
        Left = 350
        Top = 80
        Width = 20
        Height = 20
        Caption = '...'
        TabOrder = 2
        OnClick = PathButton2Click
      end
      object PathButton3: TButton
        Left = 350
        Top = 180
        Width = 20
        Height = 20
        Caption = '...'
        TabOrder = 5
        OnClick = PathButton3Click
      end
      object e_cvs: TCheckBox
        Left = 36
        Top = 380
        Width = 245
        Height = 21
        Caption = 'Other CVS'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
      end
      object e_layer: TComboBox
        Left = 170
        Top = 120
        Width = 200
        Height = 21
        ItemHeight = 13
        TabOrder = 3
        Text = 'e_layer'
        Visible = False
        Items.Strings = (
          'Application core'
          'Overriding layer')
      end
      object e_git: TCheckBox
        Left = 36
        Top = 304
        Width = 245
        Height = 21
        Caption = 'Git'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
      end
    end
    object ts_actions: TTabSheet
      Caption = 'Actions'
      ImageIndex = 2
      object gb_oper_colors: TGroupBox
        Left = 20
        Top = 8
        Width = 350
        Height = 417
        Caption = 'Operator colors'
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 24
          Width = 58
          Height = 13
          Caption = 'Call program'
        end
        object Label4: TLabel
          Left = 8
          Top = 48
          Width = 67
          Height = 13
          Caption = 'Go to program'
        end
        object Label6: TLabel
          Left = 8
          Top = 72
          Width = 67
          Height = 13
          Caption = 'Close program'
        end
        object Label7: TLabel
          Left = 8
          Top = 96
          Width = 71
          Height = 13
          Caption = 'Execute action'
        end
        object Label8: TLabel
          Left = 8
          Top = 120
          Width = 67
          Height = 13
          Caption = 'Execute script'
        end
        object Label9: TLabel
          Left = 8
          Top = 144
          Width = 35
          Height = 13
          Caption = 'Update'
        end
        object Label10: TLabel
          Left = 8
          Top = 168
          Width = 82
          Height = 13
          Caption = 'Return parameter'
        end
        object Label11: TLabel
          Left = 8
          Top = 192
          Width = 45
          Height = 13
          Caption = 'Set men'#249
        end
        object Label12: TLabel
          Left = 8
          Top = 216
          Width = 43
          Height = 13
          Caption = 'Message'
        end
        object Label13: TLabel
          Left = 8
          Top = 240
          Width = 16
          Height = 13
          Caption = 'I/O'
        end
        object Label14: TLabel
          Left = 8
          Top = 264
          Width = 21
          Height = 13
          Caption = 'Print'
        end
        object Label15: TLabel
          Left = 8
          Top = 288
          Width = 49
          Height = 13
          Caption = 'Recordset'
        end
        object Label16: TLabel
          Left = 8
          Top = 312
          Width = 37
          Height = 13
          Caption = 'Remark'
        end
        object Label17: TLabel
          Left = 8
          Top = 336
          Width = 47
          Height = 13
          Caption = 'Debugger'
        end
        object cl_box_call: TJvColorComboBox
          Left = 96
          Top = 21
          Width = 120
          Height = 22
          ColorNameMap.Strings = (
            'clBlack=Black'
            'clMaroon=Maroon'
            'clGreen=Green'
            'clOlive=Olive'
            'clNavy=Navy'
            'clPurple=Purple'
            'clTeal=Teal'
            'clGray=Gray'
            'clSilver=Silver'
            'clRed=Red'
            'clLime=Lime'
            'clYellow=Yellow'
            'clBlue=Blue'
            'clFuchsia=Fuchsia'
            'clAqua=Aqua'
            'clLtGray=Light Gray'
            'clDkGray=Dark Gray'
            'clWhite=White'
            'clMoneyGreen=Money Green'
            'clSkyBlue=Sky Blue'
            'clCream=Cream'
            'clMedGray=Medium Gray'
            'clScrollBar=ScrollBar'
            'clBackground=Background'
            'clActiveCaption=Active Caption'
            'clInactiveCaption=Inactive Caption'
            'clMenu=Menu'
            'clWindow=Window'
            'clWindowFrame=Window Frame'
            'clMenuText=Menu Text'
            'clWindowText=Window Text'
            'clCaptionText=Caption Text'
            'clActiveBorder=Active Border'
            'clInactiveBorder=Inactive Border'
            'clAppWorkSpace=Application Workspace'
            'clHighlight=Highlight'
            'clHighlightText=Highlight Text'
            'clBtnFace=Button Face'
            'clBtnShadow=Button Shadow'
            'clGrayText=Gray Text'
            'clBtnText=Button Text'
            'clInactiveCaptionText=Inactive Caption Text'
            'clBtnHighlight=Button Highlight'
            'cl3DDkShadow=3D Dark Shadow'
            'cl3DLight=3D Light'
            'clInfoText=Info Text'
            'clInfoBk=Info Background'
            'clHotLight=Hot Light'
            'clGradientActiveCaption=Gradient Active Caption'
            'clGradientInactiveCaption=Gradient Inactive Caption'
            'clMenuHighlight=Menu Highlight'
            'clMenuBar=MenuBar'
            'clNone=None'
            'clDefault=Default')
          ColorDialogText = 'Custom...'
          NewColorText = 'Custom'
          DroppedDownWidth = 120
          Color = clWhite
          TabOrder = 0
        end
        object cl_box_goto: TJvColorComboBox
          Left = 96
          Top = 45
          Width = 120
          Height = 22
          ColorNameMap.Strings = (
            'clBlack=Black'
            'clMaroon=Maroon'
            'clGreen=Green'
            'clOlive=Olive'
            'clNavy=Navy'
            'clPurple=Purple'
            'clTeal=Teal'
            'clGray=Gray'
            'clSilver=Silver'
            'clRed=Red'
            'clLime=Lime'
            'clYellow=Yellow'
            'clBlue=Blue'
            'clFuchsia=Fuchsia'
            'clAqua=Aqua'
            'clLtGray=Light Gray'
            'clDkGray=Dark Gray'
            'clWhite=White'
            'clMoneyGreen=Money Green'
            'clSkyBlue=Sky Blue'
            'clCream=Cream'
            'clMedGray=Medium Gray'
            'clScrollBar=ScrollBar'
            'clBackground=Background'
            'clActiveCaption=Active Caption'
            'clInactiveCaption=Inactive Caption'
            'clMenu=Menu'
            'clWindow=Window'
            'clWindowFrame=Window Frame'
            'clMenuText=Menu Text'
            'clWindowText=Window Text'
            'clCaptionText=Caption Text'
            'clActiveBorder=Active Border'
            'clInactiveBorder=Inactive Border'
            'clAppWorkSpace=Application Workspace'
            'clHighlight=Highlight'
            'clHighlightText=Highlight Text'
            'clBtnFace=Button Face'
            'clBtnShadow=Button Shadow'
            'clGrayText=Gray Text'
            'clBtnText=Button Text'
            'clInactiveCaptionText=Inactive Caption Text'
            'clBtnHighlight=Button Highlight'
            'cl3DDkShadow=3D Dark Shadow'
            'cl3DLight=3D Light'
            'clInfoText=Info Text'
            'clInfoBk=Info Background'
            'clHotLight=Hot Light'
            'clGradientActiveCaption=Gradient Active Caption'
            'clGradientInactiveCaption=Gradient Inactive Caption'
            'clMenuHighlight=Menu Highlight'
            'clMenuBar=MenuBar'
            'clNone=None'
            'clDefault=Default')
          ColorDialogText = 'Custom...'
          NewColorText = 'Custom'
          DroppedDownWidth = 145
          Color = clWhite
          TabOrder = 1
        end
        object cl_box_close: TJvColorComboBox
          Left = 96
          Top = 69
          Width = 120
          Height = 22
          ColorNameMap.Strings = (
            'clBlack=Black'
            'clMaroon=Maroon'
            'clGreen=Green'
            'clOlive=Olive'
            'clNavy=Navy'
            'clPurple=Purple'
            'clTeal=Teal'
            'clGray=Gray'
            'clSilver=Silver'
            'clRed=Red'
            'clLime=Lime'
            'clYellow=Yellow'
            'clBlue=Blue'
            'clFuchsia=Fuchsia'
            'clAqua=Aqua'
            'clLtGray=Light Gray'
            'clDkGray=Dark Gray'
            'clWhite=White'
            'clMoneyGreen=Money Green'
            'clSkyBlue=Sky Blue'
            'clCream=Cream'
            'clMedGray=Medium Gray'
            'clScrollBar=ScrollBar'
            'clBackground=Background'
            'clActiveCaption=Active Caption'
            'clInactiveCaption=Inactive Caption'
            'clMenu=Menu'
            'clWindow=Window'
            'clWindowFrame=Window Frame'
            'clMenuText=Menu Text'
            'clWindowText=Window Text'
            'clCaptionText=Caption Text'
            'clActiveBorder=Active Border'
            'clInactiveBorder=Inactive Border'
            'clAppWorkSpace=Application Workspace'
            'clHighlight=Highlight'
            'clHighlightText=Highlight Text'
            'clBtnFace=Button Face'
            'clBtnShadow=Button Shadow'
            'clGrayText=Gray Text'
            'clBtnText=Button Text'
            'clInactiveCaptionText=Inactive Caption Text'
            'clBtnHighlight=Button Highlight'
            'cl3DDkShadow=3D Dark Shadow'
            'cl3DLight=3D Light'
            'clInfoText=Info Text'
            'clInfoBk=Info Background'
            'clHotLight=Hot Light'
            'clGradientActiveCaption=Gradient Active Caption'
            'clGradientInactiveCaption=Gradient Inactive Caption'
            'clMenuHighlight=Menu Highlight'
            'clMenuBar=MenuBar'
            'clNone=None'
            'clDefault=Default')
          ColorDialogText = 'Custom...'
          NewColorText = 'Custom'
          DroppedDownWidth = 145
          Color = clWhite
          TabOrder = 2
        end
        object cl_box_exeact: TJvColorComboBox
          Left = 96
          Top = 93
          Width = 120
          Height = 22
          ColorNameMap.Strings = (
            'clBlack=Black'
            'clMaroon=Maroon'
            'clGreen=Green'
            'clOlive=Olive'
            'clNavy=Navy'
            'clPurple=Purple'
            'clTeal=Teal'
            'clGray=Gray'
            'clSilver=Silver'
            'clRed=Red'
            'clLime=Lime'
            'clYellow=Yellow'
            'clBlue=Blue'
            'clFuchsia=Fuchsia'
            'clAqua=Aqua'
            'clLtGray=Light Gray'
            'clDkGray=Dark Gray'
            'clWhite=White'
            'clMoneyGreen=Money Green'
            'clSkyBlue=Sky Blue'
            'clCream=Cream'
            'clMedGray=Medium Gray'
            'clScrollBar=ScrollBar'
            'clBackground=Background'
            'clActiveCaption=Active Caption'
            'clInactiveCaption=Inactive Caption'
            'clMenu=Menu'
            'clWindow=Window'
            'clWindowFrame=Window Frame'
            'clMenuText=Menu Text'
            'clWindowText=Window Text'
            'clCaptionText=Caption Text'
            'clActiveBorder=Active Border'
            'clInactiveBorder=Inactive Border'
            'clAppWorkSpace=Application Workspace'
            'clHighlight=Highlight'
            'clHighlightText=Highlight Text'
            'clBtnFace=Button Face'
            'clBtnShadow=Button Shadow'
            'clGrayText=Gray Text'
            'clBtnText=Button Text'
            'clInactiveCaptionText=Inactive Caption Text'
            'clBtnHighlight=Button Highlight'
            'cl3DDkShadow=3D Dark Shadow'
            'cl3DLight=3D Light'
            'clInfoText=Info Text'
            'clInfoBk=Info Background'
            'clHotLight=Hot Light'
            'clGradientActiveCaption=Gradient Active Caption'
            'clGradientInactiveCaption=Gradient Inactive Caption'
            'clMenuHighlight=Menu Highlight'
            'clMenuBar=MenuBar'
            'clNone=None'
            'clDefault=Default')
          ColorDialogText = 'Custom...'
          NewColorText = 'Custom'
          DroppedDownWidth = 145
          Color = clWhite
          TabOrder = 3
        end
        object cl_box_exescr: TJvColorComboBox
          Left = 96
          Top = 117
          Width = 120
          Height = 22
          ColorNameMap.Strings = (
            'clBlack=Black'
            'clMaroon=Maroon'
            'clGreen=Green'
            'clOlive=Olive'
            'clNavy=Navy'
            'clPurple=Purple'
            'clTeal=Teal'
            'clGray=Gray'
            'clSilver=Silver'
            'clRed=Red'
            'clLime=Lime'
            'clYellow=Yellow'
            'clBlue=Blue'
            'clFuchsia=Fuchsia'
            'clAqua=Aqua'
            'clLtGray=Light Gray'
            'clDkGray=Dark Gray'
            'clWhite=White'
            'clMoneyGreen=Money Green'
            'clSkyBlue=Sky Blue'
            'clCream=Cream'
            'clMedGray=Medium Gray'
            'clScrollBar=ScrollBar'
            'clBackground=Background'
            'clActiveCaption=Active Caption'
            'clInactiveCaption=Inactive Caption'
            'clMenu=Menu'
            'clWindow=Window'
            'clWindowFrame=Window Frame'
            'clMenuText=Menu Text'
            'clWindowText=Window Text'
            'clCaptionText=Caption Text'
            'clActiveBorder=Active Border'
            'clInactiveBorder=Inactive Border'
            'clAppWorkSpace=Application Workspace'
            'clHighlight=Highlight'
            'clHighlightText=Highlight Text'
            'clBtnFace=Button Face'
            'clBtnShadow=Button Shadow'
            'clGrayText=Gray Text'
            'clBtnText=Button Text'
            'clInactiveCaptionText=Inactive Caption Text'
            'clBtnHighlight=Button Highlight'
            'cl3DDkShadow=3D Dark Shadow'
            'cl3DLight=3D Light'
            'clInfoText=Info Text'
            'clInfoBk=Info Background'
            'clHotLight=Hot Light'
            'clGradientActiveCaption=Gradient Active Caption'
            'clGradientInactiveCaption=Gradient Inactive Caption'
            'clMenuHighlight=Menu Highlight'
            'clMenuBar=MenuBar'
            'clNone=None'
            'clDefault=Default')
          ColorDialogText = 'Custom...'
          NewColorText = 'Custom'
          DroppedDownWidth = 145
          Color = clWhite
          TabOrder = 4
        end
        object cl_box_update: TJvColorComboBox
          Left = 96
          Top = 141
          Width = 120
          Height = 22
          ColorNameMap.Strings = (
            'clBlack=Black'
            'clMaroon=Maroon'
            'clGreen=Green'
            'clOlive=Olive'
            'clNavy=Navy'
            'clPurple=Purple'
            'clTeal=Teal'
            'clGray=Gray'
            'clSilver=Silver'
            'clRed=Red'
            'clLime=Lime'
            'clYellow=Yellow'
            'clBlue=Blue'
            'clFuchsia=Fuchsia'
            'clAqua=Aqua'
            'clLtGray=Light Gray'
            'clDkGray=Dark Gray'
            'clWhite=White'
            'clMoneyGreen=Money Green'
            'clSkyBlue=Sky Blue'
            'clCream=Cream'
            'clMedGray=Medium Gray'
            'clScrollBar=ScrollBar'
            'clBackground=Background'
            'clActiveCaption=Active Caption'
            'clInactiveCaption=Inactive Caption'
            'clMenu=Menu'
            'clWindow=Window'
            'clWindowFrame=Window Frame'
            'clMenuText=Menu Text'
            'clWindowText=Window Text'
            'clCaptionText=Caption Text'
            'clActiveBorder=Active Border'
            'clInactiveBorder=Inactive Border'
            'clAppWorkSpace=Application Workspace'
            'clHighlight=Highlight'
            'clHighlightText=Highlight Text'
            'clBtnFace=Button Face'
            'clBtnShadow=Button Shadow'
            'clGrayText=Gray Text'
            'clBtnText=Button Text'
            'clInactiveCaptionText=Inactive Caption Text'
            'clBtnHighlight=Button Highlight'
            'cl3DDkShadow=3D Dark Shadow'
            'cl3DLight=3D Light'
            'clInfoText=Info Text'
            'clInfoBk=Info Background'
            'clHotLight=Hot Light'
            'clGradientActiveCaption=Gradient Active Caption'
            'clGradientInactiveCaption=Gradient Inactive Caption'
            'clMenuHighlight=Menu Highlight'
            'clMenuBar=MenuBar'
            'clNone=None'
            'clDefault=Default')
          ColorDialogText = 'Custom...'
          NewColorText = 'Custom'
          DroppedDownWidth = 145
          Color = clWhite
          TabOrder = 5
        end
        object cl_box_ret: TJvColorComboBox
          Left = 96
          Top = 165
          Width = 120
          Height = 22
          ColorNameMap.Strings = (
            'clBlack=Black'
            'clMaroon=Maroon'
            'clGreen=Green'
            'clOlive=Olive'
            'clNavy=Navy'
            'clPurple=Purple'
            'clTeal=Teal'
            'clGray=Gray'
            'clSilver=Silver'
            'clRed=Red'
            'clLime=Lime'
            'clYellow=Yellow'
            'clBlue=Blue'
            'clFuchsia=Fuchsia'
            'clAqua=Aqua'
            'clLtGray=Light Gray'
            'clDkGray=Dark Gray'
            'clWhite=White'
            'clMoneyGreen=Money Green'
            'clSkyBlue=Sky Blue'
            'clCream=Cream'
            'clMedGray=Medium Gray'
            'clScrollBar=ScrollBar'
            'clBackground=Background'
            'clActiveCaption=Active Caption'
            'clInactiveCaption=Inactive Caption'
            'clMenu=Menu'
            'clWindow=Window'
            'clWindowFrame=Window Frame'
            'clMenuText=Menu Text'
            'clWindowText=Window Text'
            'clCaptionText=Caption Text'
            'clActiveBorder=Active Border'
            'clInactiveBorder=Inactive Border'
            'clAppWorkSpace=Application Workspace'
            'clHighlight=Highlight'
            'clHighlightText=Highlight Text'
            'clBtnFace=Button Face'
            'clBtnShadow=Button Shadow'
            'clGrayText=Gray Text'
            'clBtnText=Button Text'
            'clInactiveCaptionText=Inactive Caption Text'
            'clBtnHighlight=Button Highlight'
            'cl3DDkShadow=3D Dark Shadow'
            'cl3DLight=3D Light'
            'clInfoText=Info Text'
            'clInfoBk=Info Background'
            'clHotLight=Hot Light'
            'clGradientActiveCaption=Gradient Active Caption'
            'clGradientInactiveCaption=Gradient Inactive Caption'
            'clMenuHighlight=Menu Highlight'
            'clMenuBar=MenuBar'
            'clNone=None'
            'clDefault=Default')
          ColorDialogText = 'Custom...'
          NewColorText = 'Custom'
          DroppedDownWidth = 145
          Color = clWhite
          TabOrder = 6
        end
        object cl_box_setmenu: TJvColorComboBox
          Left = 96
          Top = 189
          Width = 120
          Height = 22
          ColorNameMap.Strings = (
            'clBlack=Black'
            'clMaroon=Maroon'
            'clGreen=Green'
            'clOlive=Olive'
            'clNavy=Navy'
            'clPurple=Purple'
            'clTeal=Teal'
            'clGray=Gray'
            'clSilver=Silver'
            'clRed=Red'
            'clLime=Lime'
            'clYellow=Yellow'
            'clBlue=Blue'
            'clFuchsia=Fuchsia'
            'clAqua=Aqua'
            'clLtGray=Light Gray'
            'clDkGray=Dark Gray'
            'clWhite=White'
            'clMoneyGreen=Money Green'
            'clSkyBlue=Sky Blue'
            'clCream=Cream'
            'clMedGray=Medium Gray'
            'clScrollBar=ScrollBar'
            'clBackground=Background'
            'clActiveCaption=Active Caption'
            'clInactiveCaption=Inactive Caption'
            'clMenu=Menu'
            'clWindow=Window'
            'clWindowFrame=Window Frame'
            'clMenuText=Menu Text'
            'clWindowText=Window Text'
            'clCaptionText=Caption Text'
            'clActiveBorder=Active Border'
            'clInactiveBorder=Inactive Border'
            'clAppWorkSpace=Application Workspace'
            'clHighlight=Highlight'
            'clHighlightText=Highlight Text'
            'clBtnFace=Button Face'
            'clBtnShadow=Button Shadow'
            'clGrayText=Gray Text'
            'clBtnText=Button Text'
            'clInactiveCaptionText=Inactive Caption Text'
            'clBtnHighlight=Button Highlight'
            'cl3DDkShadow=3D Dark Shadow'
            'cl3DLight=3D Light'
            'clInfoText=Info Text'
            'clInfoBk=Info Background'
            'clHotLight=Hot Light'
            'clGradientActiveCaption=Gradient Active Caption'
            'clGradientInactiveCaption=Gradient Inactive Caption'
            'clMenuHighlight=Menu Highlight'
            'clMenuBar=MenuBar'
            'clNone=None'
            'clDefault=Default')
          ColorDialogText = 'Custom...'
          NewColorText = 'Custom'
          DroppedDownWidth = 145
          Color = clWhite
          TabOrder = 7
        end
        object cl_box_msg: TJvColorComboBox
          Left = 96
          Top = 213
          Width = 120
          Height = 22
          ColorNameMap.Strings = (
            'clBlack=Black'
            'clMaroon=Maroon'
            'clGreen=Green'
            'clOlive=Olive'
            'clNavy=Navy'
            'clPurple=Purple'
            'clTeal=Teal'
            'clGray=Gray'
            'clSilver=Silver'
            'clRed=Red'
            'clLime=Lime'
            'clYellow=Yellow'
            'clBlue=Blue'
            'clFuchsia=Fuchsia'
            'clAqua=Aqua'
            'clLtGray=Light Gray'
            'clDkGray=Dark Gray'
            'clWhite=White'
            'clMoneyGreen=Money Green'
            'clSkyBlue=Sky Blue'
            'clCream=Cream'
            'clMedGray=Medium Gray'
            'clScrollBar=ScrollBar'
            'clBackground=Background'
            'clActiveCaption=Active Caption'
            'clInactiveCaption=Inactive Caption'
            'clMenu=Menu'
            'clWindow=Window'
            'clWindowFrame=Window Frame'
            'clMenuText=Menu Text'
            'clWindowText=Window Text'
            'clCaptionText=Caption Text'
            'clActiveBorder=Active Border'
            'clInactiveBorder=Inactive Border'
            'clAppWorkSpace=Application Workspace'
            'clHighlight=Highlight'
            'clHighlightText=Highlight Text'
            'clBtnFace=Button Face'
            'clBtnShadow=Button Shadow'
            'clGrayText=Gray Text'
            'clBtnText=Button Text'
            'clInactiveCaptionText=Inactive Caption Text'
            'clBtnHighlight=Button Highlight'
            'cl3DDkShadow=3D Dark Shadow'
            'cl3DLight=3D Light'
            'clInfoText=Info Text'
            'clInfoBk=Info Background'
            'clHotLight=Hot Light'
            'clGradientActiveCaption=Gradient Active Caption'
            'clGradientInactiveCaption=Gradient Inactive Caption'
            'clMenuHighlight=Menu Highlight'
            'clMenuBar=MenuBar'
            'clNone=None'
            'clDefault=Default')
          ColorDialogText = 'Custom...'
          NewColorText = 'Custom'
          DroppedDownWidth = 145
          Color = clWhite
          TabOrder = 8
        end
        object cl_box_io: TJvColorComboBox
          Left = 96
          Top = 237
          Width = 120
          Height = 22
          ColorNameMap.Strings = (
            'clBlack=Black'
            'clMaroon=Maroon'
            'clGreen=Green'
            'clOlive=Olive'
            'clNavy=Navy'
            'clPurple=Purple'
            'clTeal=Teal'
            'clGray=Gray'
            'clSilver=Silver'
            'clRed=Red'
            'clLime=Lime'
            'clYellow=Yellow'
            'clBlue=Blue'
            'clFuchsia=Fuchsia'
            'clAqua=Aqua'
            'clLtGray=Light Gray'
            'clDkGray=Dark Gray'
            'clWhite=White'
            'clMoneyGreen=Money Green'
            'clSkyBlue=Sky Blue'
            'clCream=Cream'
            'clMedGray=Medium Gray'
            'clScrollBar=ScrollBar'
            'clBackground=Background'
            'clActiveCaption=Active Caption'
            'clInactiveCaption=Inactive Caption'
            'clMenu=Menu'
            'clWindow=Window'
            'clWindowFrame=Window Frame'
            'clMenuText=Menu Text'
            'clWindowText=Window Text'
            'clCaptionText=Caption Text'
            'clActiveBorder=Active Border'
            'clInactiveBorder=Inactive Border'
            'clAppWorkSpace=Application Workspace'
            'clHighlight=Highlight'
            'clHighlightText=Highlight Text'
            'clBtnFace=Button Face'
            'clBtnShadow=Button Shadow'
            'clGrayText=Gray Text'
            'clBtnText=Button Text'
            'clInactiveCaptionText=Inactive Caption Text'
            'clBtnHighlight=Button Highlight'
            'cl3DDkShadow=3D Dark Shadow'
            'cl3DLight=3D Light'
            'clInfoText=Info Text'
            'clInfoBk=Info Background'
            'clHotLight=Hot Light'
            'clGradientActiveCaption=Gradient Active Caption'
            'clGradientInactiveCaption=Gradient Inactive Caption'
            'clMenuHighlight=Menu Highlight'
            'clMenuBar=MenuBar'
            'clNone=None'
            'clDefault=Default')
          ColorDialogText = 'Custom...'
          NewColorText = 'Custom'
          DroppedDownWidth = 145
          Color = clWhite
          TabOrder = 9
        end
        object cl_box_print: TJvColorComboBox
          Left = 96
          Top = 261
          Width = 120
          Height = 22
          ColorNameMap.Strings = (
            'clBlack=Black'
            'clMaroon=Maroon'
            'clGreen=Green'
            'clOlive=Olive'
            'clNavy=Navy'
            'clPurple=Purple'
            'clTeal=Teal'
            'clGray=Gray'
            'clSilver=Silver'
            'clRed=Red'
            'clLime=Lime'
            'clYellow=Yellow'
            'clBlue=Blue'
            'clFuchsia=Fuchsia'
            'clAqua=Aqua'
            'clLtGray=Light Gray'
            'clDkGray=Dark Gray'
            'clWhite=White'
            'clMoneyGreen=Money Green'
            'clSkyBlue=Sky Blue'
            'clCream=Cream'
            'clMedGray=Medium Gray'
            'clScrollBar=ScrollBar'
            'clBackground=Background'
            'clActiveCaption=Active Caption'
            'clInactiveCaption=Inactive Caption'
            'clMenu=Menu'
            'clWindow=Window'
            'clWindowFrame=Window Frame'
            'clMenuText=Menu Text'
            'clWindowText=Window Text'
            'clCaptionText=Caption Text'
            'clActiveBorder=Active Border'
            'clInactiveBorder=Inactive Border'
            'clAppWorkSpace=Application Workspace'
            'clHighlight=Highlight'
            'clHighlightText=Highlight Text'
            'clBtnFace=Button Face'
            'clBtnShadow=Button Shadow'
            'clGrayText=Gray Text'
            'clBtnText=Button Text'
            'clInactiveCaptionText=Inactive Caption Text'
            'clBtnHighlight=Button Highlight'
            'cl3DDkShadow=3D Dark Shadow'
            'cl3DLight=3D Light'
            'clInfoText=Info Text'
            'clInfoBk=Info Background'
            'clHotLight=Hot Light'
            'clGradientActiveCaption=Gradient Active Caption'
            'clGradientInactiveCaption=Gradient Inactive Caption'
            'clMenuHighlight=Menu Highlight'
            'clMenuBar=MenuBar'
            'clNone=None'
            'clDefault=Default')
          ColorDialogText = 'Custom...'
          NewColorText = 'Custom'
          DroppedDownWidth = 145
          Color = clWhite
          TabOrder = 10
        end
        object cl_box_rec: TJvColorComboBox
          Left = 96
          Top = 285
          Width = 120
          Height = 22
          ColorNameMap.Strings = (
            'clBlack=Black'
            'clMaroon=Maroon'
            'clGreen=Green'
            'clOlive=Olive'
            'clNavy=Navy'
            'clPurple=Purple'
            'clTeal=Teal'
            'clGray=Gray'
            'clSilver=Silver'
            'clRed=Red'
            'clLime=Lime'
            'clYellow=Yellow'
            'clBlue=Blue'
            'clFuchsia=Fuchsia'
            'clAqua=Aqua'
            'clLtGray=Light Gray'
            'clDkGray=Dark Gray'
            'clWhite=White'
            'clMoneyGreen=Money Green'
            'clSkyBlue=Sky Blue'
            'clCream=Cream'
            'clMedGray=Medium Gray'
            'clScrollBar=ScrollBar'
            'clBackground=Background'
            'clActiveCaption=Active Caption'
            'clInactiveCaption=Inactive Caption'
            'clMenu=Menu'
            'clWindow=Window'
            'clWindowFrame=Window Frame'
            'clMenuText=Menu Text'
            'clWindowText=Window Text'
            'clCaptionText=Caption Text'
            'clActiveBorder=Active Border'
            'clInactiveBorder=Inactive Border'
            'clAppWorkSpace=Application Workspace'
            'clHighlight=Highlight'
            'clHighlightText=Highlight Text'
            'clBtnFace=Button Face'
            'clBtnShadow=Button Shadow'
            'clGrayText=Gray Text'
            'clBtnText=Button Text'
            'clInactiveCaptionText=Inactive Caption Text'
            'clBtnHighlight=Button Highlight'
            'cl3DDkShadow=3D Dark Shadow'
            'cl3DLight=3D Light'
            'clInfoText=Info Text'
            'clInfoBk=Info Background'
            'clHotLight=Hot Light'
            'clGradientActiveCaption=Gradient Active Caption'
            'clGradientInactiveCaption=Gradient Inactive Caption'
            'clMenuHighlight=Menu Highlight'
            'clMenuBar=MenuBar'
            'clNone=None'
            'clDefault=Default')
          ColorDialogText = 'Custom...'
          NewColorText = 'Custom'
          DroppedDownWidth = 145
          Color = clWhite
          TabOrder = 11
        end
        object cl_box_rem: TJvColorComboBox
          Left = 96
          Top = 309
          Width = 120
          Height = 22
          ColorNameMap.Strings = (
            'clBlack=Black'
            'clMaroon=Maroon'
            'clGreen=Green'
            'clOlive=Olive'
            'clNavy=Navy'
            'clPurple=Purple'
            'clTeal=Teal'
            'clGray=Gray'
            'clSilver=Silver'
            'clRed=Red'
            'clLime=Lime'
            'clYellow=Yellow'
            'clBlue=Blue'
            'clFuchsia=Fuchsia'
            'clAqua=Aqua'
            'clLtGray=Light Gray'
            'clDkGray=Dark Gray'
            'clWhite=White'
            'clMoneyGreen=Money Green'
            'clSkyBlue=Sky Blue'
            'clCream=Cream'
            'clMedGray=Medium Gray'
            'clScrollBar=ScrollBar'
            'clBackground=Background'
            'clActiveCaption=Active Caption'
            'clInactiveCaption=Inactive Caption'
            'clMenu=Menu'
            'clWindow=Window'
            'clWindowFrame=Window Frame'
            'clMenuText=Menu Text'
            'clWindowText=Window Text'
            'clCaptionText=Caption Text'
            'clActiveBorder=Active Border'
            'clInactiveBorder=Inactive Border'
            'clAppWorkSpace=Application Workspace'
            'clHighlight=Highlight'
            'clHighlightText=Highlight Text'
            'clBtnFace=Button Face'
            'clBtnShadow=Button Shadow'
            'clGrayText=Gray Text'
            'clBtnText=Button Text'
            'clInactiveCaptionText=Inactive Caption Text'
            'clBtnHighlight=Button Highlight'
            'cl3DDkShadow=3D Dark Shadow'
            'cl3DLight=3D Light'
            'clInfoText=Info Text'
            'clInfoBk=Info Background'
            'clHotLight=Hot Light'
            'clGradientActiveCaption=Gradient Active Caption'
            'clGradientInactiveCaption=Gradient Inactive Caption'
            'clMenuHighlight=Menu Highlight'
            'clMenuBar=MenuBar'
            'clNone=None'
            'clDefault=Default')
          ColorDialogText = 'Custom...'
          NewColorText = 'Custom'
          DroppedDownWidth = 145
          Color = clWhite
          TabOrder = 12
        end
        object cl_box_dbg: TJvColorComboBox
          Left = 96
          Top = 333
          Width = 120
          Height = 22
          ColorNameMap.Strings = (
            'clBlack=Black'
            'clMaroon=Maroon'
            'clGreen=Green'
            'clOlive=Olive'
            'clNavy=Navy'
            'clPurple=Purple'
            'clTeal=Teal'
            'clGray=Gray'
            'clSilver=Silver'
            'clRed=Red'
            'clLime=Lime'
            'clYellow=Yellow'
            'clBlue=Blue'
            'clFuchsia=Fuchsia'
            'clAqua=Aqua'
            'clLtGray=Light Gray'
            'clDkGray=Dark Gray'
            'clWhite=White'
            'clMoneyGreen=Money Green'
            'clSkyBlue=Sky Blue'
            'clCream=Cream'
            'clMedGray=Medium Gray'
            'clScrollBar=ScrollBar'
            'clBackground=Background'
            'clActiveCaption=Active Caption'
            'clInactiveCaption=Inactive Caption'
            'clMenu=Menu'
            'clWindow=Window'
            'clWindowFrame=Window Frame'
            'clMenuText=Menu Text'
            'clWindowText=Window Text'
            'clCaptionText=Caption Text'
            'clActiveBorder=Active Border'
            'clInactiveBorder=Inactive Border'
            'clAppWorkSpace=Application Workspace'
            'clHighlight=Highlight'
            'clHighlightText=Highlight Text'
            'clBtnFace=Button Face'
            'clBtnShadow=Button Shadow'
            'clGrayText=Gray Text'
            'clBtnText=Button Text'
            'clInactiveCaptionText=Inactive Caption Text'
            'clBtnHighlight=Button Highlight'
            'cl3DDkShadow=3D Dark Shadow'
            'cl3DLight=3D Light'
            'clInfoText=Info Text'
            'clInfoBk=Info Background'
            'clHotLight=Hot Light'
            'clGradientActiveCaption=Gradient Active Caption'
            'clGradientInactiveCaption=Gradient Inactive Caption'
            'clMenuHighlight=Menu Highlight'
            'clMenuBar=MenuBar'
            'clNone=None'
            'clDefault=Default')
          ColorDialogText = 'Custom...'
          NewColorText = 'Custom'
          DroppedDownWidth = 145
          Color = clWhite
          TabOrder = 13
        end
        object BitBtn1: TBitBtn
          Left = 262
          Top = 376
          Width = 75
          Height = 25
          Caption = '&Default'
          TabOrder = 14
          OnClick = BitBtn1Click
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Expressions Editor'
      ImageIndex = 2
      object Label21: TLabel
        Left = 20
        Top = 48
        Width = 164
        Height = 13
        Caption = 'Functions proposal insert brackets:'
      end
      object e_brackets: TComboBox
        Left = 208
        Top = 48
        Width = 145
        Height = 21
        BevelInner = bvNone
        BevelOuter = bvNone
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 0
        Items.Strings = (
          'None'
          'Open bracket only'
          'Both (open and close)')
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 542
    Width = 432
    Height = 51
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Button1: TButton
      Left = 182
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Save'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 432
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    object Label2: TLabel
      Left = 20
      Top = 16
      Width = 80
      Height = 13
      Caption = 'Settings from file:'
    end
    object e_iniFile: TEdit
      Left = 20
      Top = 38
      Width = 400
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object ActionList1: TActionList
    Left = 348
    Top = 144
    object carica_ini: TAction
      Caption = 'carica_ini'
      OnExecute = carica_iniExecute
    end
  end
  object OpenDialog_path: TOpenDialog
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Left = 316
    Top = 8
  end
  object DialogSelectDir: TJvSelectDirectory
    Left = 284
    Top = 9
  end
end
