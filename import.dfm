object f_import: Tf_import
  Left = 356
  Top = 129
  Width = 779
  Height = 675
  Caption = 'f_import'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object programma: TMemo
    Left = 16
    Top = 8
    Width = 145
    Height = 97
    Lines.Strings = (
      'Programma')
    TabOrder = 0
    WordWrap = False
  end
  object selezione_intermedia: TMemo
    Left = 288
    Top = 8
    Width = 145
    Height = 97
    Lines.Strings = (
      'Selezione intermedia')
    TabOrder = 1
    WordWrap = False
  end
  object tab_users: TMemo
    Left = 16
    Top = 178
    Width = 281
    Height = 103
    Lines.Strings = (
      'o2def::tab("o2_users", "default", "o2sys_users", "o2user");'
      ''
      #9'o2def::field("o2user", "o2user", "_o2alpha");'
      #9'o2def::field("o2password", "o2password", "_o2sid");'
      #9'o2def::field("area", "asp_area", "_o2alpha");'
      #9'o2def::field("expire_date", "expire_date", "_o2date");'
      #9'o2def::field("last_date", "last_date", "_o2date");'
      #9'o2def::field("last_time", "last_time", "_o2time");'
      #9'o2def::field("login_type", "login_type", "o2sys_login_type");'
      #9'o2def::field("last_pwd_date", "last_pwd_date", "_o2date");'
      #9'o2def::field("creation_date", "creation_date", "_o2date");'
      
        #9'o2def::field("force_pwd_change", "force_pwd_change", "_o2logica' +
        'l");'
      #9'o2def::field("pwds_history", "pwds_history", "o2sys_long_str");'
      #9'o2def::field("no_pwd_change", "no_pwd_change", "_o2logical");'
      #9'o2def::field("creation_date", "creation_date", "_o2date");'
      #9'o2def::field("admin", "admin", "_o2logical");'
      ''
      #9'o2def::index("o2user", "o2user","A");'
      #9'o2def::index("asp_area", "area","A", "o2user","A");')
    TabOrder = 2
    WordWrap = False
  end
  object tab_sessions: TMemo
    Left = 16
    Top = 280
    Width = 281
    Height = 98
    Lines.Strings = (
      'o2def::tab("o2_sessions", "default", "o2sys_sessions", "sid");'
      ''
      #9'o2def::field("sid", "sid", "_o2sid");'
      #9'o2def::field("o2user", "o2user", "_o2alpha");'
      #9'o2def::field("c_date", "c_date", "_o2date");'
      #9'o2def::field("c_time", "c_time", "_o2time");'
      #9'o2def::field("a_date", "a_date", "_o2date");'
      #9'o2def::field("a_time", "a_time", "_o2time");'
      #9'o2def::field("e_date", "e_date", "_o2date");'
      #9'o2def::field("e_time", "e_time", "_o2time");'
      #9'o2def::field("terminal_id", "terminal_id", "jxterminal_id");'
      #9'o2def::field("app_name", "app_name", "_o2alpha");'
      #9'o2def::field("run_mode", "run_mode", "o2sys_app_run_mode");'
      #9'o2def::field("host", "host", "jxhost");'
      ''
      #9'o2def::index("sid", "sid","A");'
      #9'o2def::index("expire", "e_date","A", "e_time","A", "sid","A");'
      
        #9'o2def::index("creation", "c_date","A", "c_time","A", "sid","A")' +
        ';'
      
        #9'o2def::index("lastupdate", "a_date","A", "a_time","A", "sid","A' +
        '");'
      
        #9'o2def::index("upd_desc", "a_date","D", "a_time","D", "sid","A")' +
        ';')
    TabOrder = 3
    WordWrap = False
  end
  object tab_options: TMemo
    Left = 16
    Top = 378
    Width = 281
    Height = 100
    Lines.Strings = (
      'o2def::tab("o2_options", "default", "o2sys_options", "id");'
      ''
      #9'o2def::field("o2user", "o2user", "_o2alpha");'
      #9'o2def::field("code", "code", "_o2alpha");'
      #9'o2def::field("value", "value", "_o2sid");'
      ''
      #9'o2def::index("id", "o2user","A", "code","A");')
    TabOrder = 4
    WordWrap = False
  end
  object prg_views: TMemo
    Left = 16
    Top = 104
    Width = 209
    Height = 73
    Lines.Strings = (
      '<?php'
      '//1.0.0'
      '//o2def::folder("_tools/");'
      ''
      'o2def::prg('#39'_o2viewmodels'#39', '#39#39', '#39#39', __FILE__);'
      ''
      '?>')
    TabOrder = 5
    WordWrap = False
  end
  object prf_views: TMemo
    Left = 224
    Top = 104
    Width = 209
    Height = 73
    Lines.Strings = (
      '<?php'
      ''
      '?>')
    TabOrder = 6
    WordWrap = False
  end
  object tab_rights: TMemo
    Left = 16
    Top = 478
    Width = 281
    Height = 100
    Lines.Strings = (
      
        'o2def::tab("o2_rights", "default", "o2sys_rights", "right_code")' +
        ';'
      ''
      #9'o2def::field("right_code", "right_code", "_o2alpha");'
      ''
      #9'o2def::index("right_code", "right_code","A");')
    TabOrder = 7
    WordWrap = False
  end
  object tab_roles: TMemo
    Left = 296
    Top = 178
    Width = 281
    Height = 100
    Lines.Strings = (
      'o2def::tab("o2_roles", "default", "o2sys_roles", "role_name");'
      ''
      #9'o2def::field("role_name", "role_name", "_o2alpha");'
      ''
      #9'o2def::index("role_name", "role_name","A");')
    TabOrder = 8
    WordWrap = False
  end
  object tab_rightrole: TMemo
    Left = 296
    Top = 278
    Width = 281
    Height = 100
    Lines.Strings = (
      
        'o2def::tab("o2_rights_per_role", "default", "o2sys_rights_per_ro' +
        'le", "role_name");'
      ''
      #9'o2def::field("role_name", "role_name", "_o2alpha");'
      #9'o2def::field("right_code", "right_code", "_o2alpha");'
      ''
      #9'o2def::index("role_name", "role_name","A", "right_code","A");'
      #9'o2def::index("right_code", "right_code","A", "role_name","A");')
    TabOrder = 9
    WordWrap = False
  end
  object tab_rolesuser: TMemo
    Left = 296
    Top = 378
    Width = 281
    Height = 100
    Lines.Strings = (
      
        'o2def::tab("o2_roles_per_user", "default", "o2sys_roles_per_user' +
        '", "o2user");'
      ''
      #9'o2def::field("o2user", "o2user", "_o2alpha");'
      #9'o2def::field("role_name", "role_name", "_o2alpha");'
      ''
      #9'o2def::index("o2user", "o2user","A", "role_name","A");'
      #9'o2def::index("role_name", "role_name","A", "o2user","A");')
    TabOrder = 10
    WordWrap = False
  end
  object Memo1: TMemo
    Left = 160
    Top = 8
    Width = 129
    Height = 97
    Lines.Strings = (
      'Memo1')
    TabOrder = 11
  end
  object ActionList1: TActionList
    Left = 432
    Top = 8
    object app_import: TAction
      Caption = 'app_import'
      OnExecute = app_importExecute
    end
    object dbtab_import: TAction
      Caption = 'dbtab_import'
      OnExecute = dbtab_importExecute
    end
    object svuota_tab_prg: TAction
      Caption = 'svuota_tab_prg'
      OnExecute = svuota_tab_prgExecute
    end
    object models_import: TAction
      Caption = 'models_import'
      OnExecute = models_importExecute
    end
    object menu_import: TAction
      Caption = 'menu_import'
      OnExecute = menu_importExecute
    end
    object tables_import: TAction
      Caption = 'tables_import'
      OnExecute = tables_importExecute
    end
    object db_import: TAction
      Caption = 'db_import'
      OnExecute = db_importExecute
    end
    object appini_import: TAction
      Caption = 'appini_import'
      OnExecute = appini_importExecute
    end
    object vars_import: TAction
      Caption = 'vars_import'
      OnExecute = vars_importExecute
    end
    object labels_import: TAction
      Caption = 'labels_import'
    end
    object apphandlers_import: TAction
      Caption = 'apphandlers_import'
      OnExecute = apphandlers_importExecute
    end
  end
end
