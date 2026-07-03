object f_export: Tf_export
  Left = 332
  Top = 248
  Width = 901
  Height = 540
  Caption = 'f_export'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 344
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
    WordWrap = False
  end
  object Memo2_sav: TMemo
    Left = 208
    Top = 0
    Width = 681
    Height = 505
    Lines.Strings = (
      'Memo2')
    MaxLength = 999999
    OEMConvert = True
    PopupMenu = f_work.pop_css_form
    TabOrder = 1
    WordWrap = False
  end
  object Memo3_sav: TMemo
    Left = 8
    Top = 112
    Width = 105
    Height = 89
    Lines.Strings = (
      'Memo3')
    TabOrder = 2
    WordWrap = False
  end
  object memoapp: TMemo
    Left = 16
    Top = 216
    Width = 185
    Height = 89
    Lines.Strings = (
      '<?php'
      ''
      '/**'
      ' * Janox Application Main Script'
      ' * PHP7/8'
      ' *'
      
        ' * This PHP script  file  is  part  of  an  application  realize' +
        'd  under'
      ' * Janox architecture, the full cross-tech development suite.'
      ' *'
      
        ' * For  learning  how  to  develop   full  featured,  everywhere' +
        '-running'
      ' * applications and other informations please refer to'
      ' * www.janox.it or mail to info@janox.it.'
      ' *'
      
        ' * This application can be run as a Server Side  Script,  within' +
        '  a  WEB'
      ' * Server, and surfed with a standard browser.'
      ' *'
      
        ' * For executing this application you need  to  refer  to  an  i' +
        'nstalled'
      
        ' * Janox Runtime script (jxrnt/jxrnt.php).  That can be  done  i' +
        'n  three'
      ' * different ways, evaluated in this order:'
      
        ' *  - (Only BATCH  execution)  Passing  the  [jxrnt]  parameter ' +
        ' at  the'
      ' *    command line, in the form:'
      ' *       php.exe this_script.php jxrnt=path/to/jxrnt.php'
      
        ' *  - Setting the value of the variable $jxrnt below in this scr' +
        'ipt'
      ' *  - Setting the environment variable [JXRNT]'
      ' */'
      ''
      
        '// _________________ Use this variable to set Janox Runtime loca' +
        'tion ___'
      '$jxrnt = '#39'[_jnxrnt_]'#39';'
      ''
      
        '// __________________________________ Command line parameter [jx' +
        'rnt] ___'
      'if (isset($_SERVER['#39'argc'#39']) && ($_SERVER['#39'argc'#39'] > 1)) {'
      ' foreach ($_SERVER['#39'argv'#39'] as $param) {'
      
        '  list($par_name, $par_val) = array_pad(explode('#39'='#39', $param, 2),' +
        ' 2, '#39#39');'
      '  if ($par_name == '#39'jxrnt'#39') (@include $par_val) ||'
      
        '                             die('#39'Wrong Janox Runtime '#39'.$par_val' +
        '."\n");'
      '  }'
      ' }'
      
        '// __ $o2_runtime is defined when called from inside a Janox con' +
        'text ___'
      'if (!isset($o2_runtime)) {'
      
        ' // ___________________________________ Script coded variable $j' +
        'xrnt ___'
      ' if ($jxrnt) (@include $jxrnt) ||'
      '              die('#39'Wrong Janox Runtime '#39'.$jxrnt."\n");'
      
        ' // ___________________________________ Environment variable [jx' +
        'rnt] ___'
      ' elseif (getenv('#39'JXRNT'#39')) (@include getenv('#39'JXRNT'#39')) ||'
      
        '                           die('#39'Wrong Janox Runtime '#39'.getenv('#39'JX' +
        'RNT'#39').'
      '                               "\n");'
      
        ' // __________________________________________ Missing Janox Run' +
        'time ___'
      ' else die("Missing Janox Runtime\n");'
      ' }'
      ''
      
        '// ______________________________________ Application instance s' +
        'tart ___'
      'o2def::app('#39'[_jnxver_]'#39');'
      ''
      '?>')
    TabOrder = 3
    WordWrap = False
    OnChange = memoappChange
  end
  object ActionList1: TActionList
    Left = 272
    Top = 128
    object app_export: TAction
      Caption = 'app_export'
      OnExecute = app_exportExecute
    end
    object db_export: TAction
      Caption = 'db_export'
      OnExecute = db_exportExecute
    end
    object tables_export: TAction
      Caption = 'tables_export'
      OnExecute = tables_exportExecute
    end
    object menu_export: TAction
      Caption = 'menu_export'
      OnExecute = menu_exportExecute
    end
    object models_export: TAction
      Caption = 'models_export'
      OnExecute = models_exportExecute
    end
    object appvars_export: TAction
      Caption = 'appvars_export'
      OnExecute = appvars_exportExecute
    end
    object labels_export: TAction
      Caption = 'labels_export'
    end
    object prgsavcds: TAction
      Caption = 'prgsavcds'
    end
  end
end
