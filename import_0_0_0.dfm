object f_import_0_0_0: Tf_import_0_0_0
  Left = 372
  Top = 197
  Width = 769
  Height = 598
  Caption = 'f_import_0_0_0'
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
    Left = 40
    Top = 24
    Width = 265
    Height = 305
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
    WordWrap = False
  end
  object selezione_intermedia: TMemo
    Left = 304
    Top = 120
    Width = 81
    Height = 217
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
    WordWrap = False
  end
  object tab_users: TMemo
    Left = 464
    Top = 16
    Width = 281
    Height = 105
    Lines.Strings = (
      'o2def::tab('#39'_users'#39', '#39#39', '#39'_users'#39', '#39'user'#39');'
      ''
      #9'o2def::field('#39'user'#39', '#39'user'#39', '#39'_o2alpha'#39');'
      #9'o2def::field('#39'password'#39', '#39'password'#39', '#39'_o2alpha'#39');'
      ''
      #9'o2def::index('#39'user'#39', '#39'user'#39','#39'A'#39');')
    TabOrder = 2
    WordWrap = False
  end
  object tab_sessions: TMemo
    Left = 464
    Top = 120
    Width = 281
    Height = 105
    Lines.Strings = (
      'o2def::tab('#39'_sessions'#39', '#39#39', '#39'_sessions'#39', '#39'sid'#39');'
      ''
      #9'o2def::field('#39'sid'#39', '#39'sid'#39', '#39'_o2sid'#39');'
      #9'o2def::field('#39'operator'#39', '#39'operator'#39', '#39'_o2alpha'#39');'
      #9'o2def::field('#39'c_date'#39', '#39'c_date'#39', '#39'_o2date'#39');'
      #9'o2def::field('#39'c_time'#39', '#39'c_time'#39', '#39'_o2time'#39');'
      #9'o2def::field('#39'a_date'#39', '#39'a_date'#39', '#39'_o2date'#39');'
      #9'o2def::field('#39'a_time'#39', '#39'a_time'#39', '#39'_o2time'#39');'
      #9'o2def::field('#39'e_date'#39', '#39'e_date'#39', '#39'_o2date'#39');'
      #9'o2def::field('#39'e_time'#39', '#39'e_time'#39', '#39'_o2time'#39');'
      ''
      #9'o2def::index('#39'sid'#39', '#39'sid'#39','#39'A'#39');'
      #9'o2def::index('#39'expire'#39', '#39'e_date'#39','#39'A'#39', '#39'e_time'#39','#39'A'#39', '#39'sid'#39','#39'A'#39');')
    TabOrder = 3
    WordWrap = False
  end
  object tab_deferred: TMemo
    Left = 464
    Top = 224
    Width = 281
    Height = 105
    Lines.Strings = (
      'o2def::tab('#39'_deferred'#39', '#39#39', '#39'_deferred'#39', '#39'req'#39');'
      ''
      #9'o2def::field('#39'r_date'#39', '#39'r_date'#39', '#39'_o2date'#39');'
      #9'o2def::field('#39'r_time'#39', '#39'r_time'#39', '#39'_o2time'#39');'
      #9'o2def::field('#39'sid'#39', '#39'sid'#39', '#39'_o2sid'#39');'
      #9'o2def::field('#39'user'#39', '#39'user'#39', '#39'_o2alpha'#39');'
      #9'o2def::field('#39's_date'#39', '#39's_date'#39', '#39'_o2date'#39');'
      #9'o2def::field('#39's_time'#39', '#39's_time'#39', '#39'_o2time'#39');'
      #9'o2def::field('#39'e_date'#39', '#39'e_date'#39', '#39'_o2date'#39');'
      #9'o2def::field('#39'e_time'#39', '#39'e_time'#39', '#39'_o2time'#39');'
      #9'o2def::field('#39'app'#39', '#39'app'#39', '#39'_o2text'#39');'
      ''
      #9'o2def::index('#39'req'#39', '#39'r_date'#39','#39'D'#39', '#39'r_time'#39','#39'D'#39', '#39'sid'#39','#39'A'#39');'
      #9'o2def::index('#39'start'#39', '#39's_date'#39','#39'D'#39', '#39's_time'#39','#39'D'#39', '#39'sid'#39','#39'A'#39');'
      #9'o2def::index('#39'end'#39', '#39'e_date'#39','#39'D'#39', '#39'e_time'#39','#39'D'#39', '#39'sid'#39','#39'A'#39');')
    TabOrder = 4
    WordWrap = False
  end
  object prg_start: TMemo
    Left = 32
    Top = 368
    Width = 193
    Height = 73
    Lines.Strings = (
      '<?'
      '//1.0.0'
      '//o2def::folder("_tools/");'
      ''
      'o2def::prg('#39'_start'#39', '#39'start'#39', '#39#39', __FILE__);'
      ''
      'o2def::view('#39'prg'#167'_'#167'var'#39');'
      'o2def::view("users", False, "", "");'
      'o2def::view("sessions", False, "", "");'
      'o2def::view("free_sessions", False, "", "");'
      'o2def::act('#39'db_session'#39');'
      'o2def::act('#39'delete_session'#39');'
      'o2def::act('#39'fs_session'#39');'
      'o2def::act('#39'login'#39');'
      'o2def::act('#39'session'#39');'
      'o2def::act('#39'start'#39');'
      '?>')
    TabOrder = 5
    WordWrap = False
  end
  object prf_start: TMemo
    Left = 232
    Top = 368
    Width = 185
    Height = 73
    Lines.Strings = (
      '<?'
      ''
      'function _start'#167#167'prg'#167'_'#167'var_def(&$task_prg'#167'_'#167'var) {'
      #9'$task_prg'#167'_'#167'var->righe_vis = 1;'
      #9'$task_prg'#167'_'#167'var->definisci('#39'login_correct'#39', '#39'_o2logical'#39');'
      #9'$task_prg'#167'_'#167'var->definisci('#39'now'#39', '#39'_o2sid'#39');'
      #9'$task_prg'#167'_'#167'var->definisci('#39'expire'#39', '#39'_o2sid'#39');'
      #9#9'}'
      ''
      'function _start'#167#167'users_def(&$task_users) {'
      #9'$task_users->righe_vis = 1;'
      ''
      #9'$task_users->usa_file('#39'_users'#39','#39'_users'#39','#39'user'#39');'
      ''
      
        #9'$task_users->usa('#39'user'#39','#39'_users'#39','#39'user'#39','#39'_start_exp_1()'#39','#39'_star' +
        't_exp_1()'#39',null,null);'
      
        #9'$task_users->usa('#39'password'#39','#39'_users'#39','#39'password'#39',null,null,null,' +
        'null);'
      '}'
      ''
      'function _start'#167#167'sessions_def(&$task_sessions) {'
      #9'$task_sessions->righe_vis = 1;'
      ''
      #9'$task_sessions->usa_file('#39'_sessions'#39','#39'_sessions'#39','#39'sid'#39');'
      ''
      
        #9'$task_sessions->usa('#39'_sessions_sid'#39','#39'_sessions'#39','#39'sid'#39',null,null' +
        ',null,null);'
      
        #9'$task_sessions->usa('#39'_sessions_operator'#39','#39'_sessions'#39','#39'operator'#39 +
        ',null,null,null,null);'
      
        #9'$task_sessions->usa('#39'_sessions_c_date'#39','#39'_sessions'#39','#39'c_date'#39',nul' +
        'l,null,null,null);'
      
        #9'$task_sessions->usa('#39'_sessions_c_time'#39','#39'_sessions'#39','#39'c_time'#39',nul' +
        'l,null,null,null);'
      
        #9'$task_sessions->usa('#39'_sessions_a_date'#39','#39'_sessions'#39','#39'a_date'#39',nul' +
        'l,null,null,null);'
      
        #9'$task_sessions->usa('#39'_sessions_a_time'#39','#39'_sessions'#39','#39'a_time'#39',nul' +
        'l,null,null,null);'
      
        #9'$task_sessions->usa('#39'_sessions_e_date'#39','#39'_sessions'#39','#39'e_date'#39',nul' +
        'l,null,null,null);'
      
        #9'$task_sessions->usa('#39'_sessions_e_time'#39','#39'_sessions'#39','#39'e_time'#39',nul' +
        'l,null,null,null);'
      '}'
      ''
      'function _start'#167#167'free_sessions_def(&$task_free_sessions) {'
      #9'$task_free_sessions->righe_vis = 10;'
      ''
      #9'$task_free_sessions->usa_file('#39'_sessions'#39','#39'_sessions'#39','#39#39');'
      ''
      '}'
      ''
      'function _start'#167#167'db_session_def(&$o2exe) {'
      
        '//'#9'$o2exe->s(1) && True && o2act::remark("--------------------Wr' +
        'ite session record in sessions table") && $o2exe->e();'
      
        #9'$o2exe->s(2) && True && o2act::view('#39'sessions'#39', '#39'I'#39', "") && $o2' +
        'exe->e();'
      
        #9'$o2exe->s(3) && True && o2act::set('#39'sessions'#39', '#39'_sessions_sid'#39',' +
        ' _start_exp_4()) && $o2exe->e();'
      
        #9'$o2exe->s(4) && True && o2act::set('#39'sessions'#39', '#39'_sessions_opera' +
        'tor'#39', _start_exp_5()) && $o2exe->e();'
      
        #9'$o2exe->s(5) && True && o2act::set('#39'sessions'#39', '#39'_sessions_c_dat' +
        'e'#39', _start_exp_6()) && $o2exe->e();'
      
        #9'$o2exe->s(6) && True && o2act::set('#39'sessions'#39', '#39'_sessions_c_tim' +
        'e'#39', _start_exp_7()) && $o2exe->e();'
      
        #9'$o2exe->s(7) && True && o2act::set('#39'sessions'#39', '#39'_sessions_a_dat' +
        'e'#39', _start_exp_6()) && $o2exe->e();'
      
        #9'$o2exe->s(8) && True && o2act::set('#39'sessions'#39', '#39'_sessions_a_tim' +
        'e'#39', _start_exp_7()) && $o2exe->e();'
      
        #9'$o2exe->s(9) && True && o2act::set('#39'sessions'#39', '#39'_sessions_e_dat' +
        'e'#39', _start_exp_8()) && $o2exe->e();'
      
        #9'$o2exe->s(10) && True && o2act::set('#39'sessions'#39', '#39'_sessions_e_ti' +
        'me'#39', _start_exp_9()) && $o2exe->e();'
      
        #9'$o2exe->s(11) && True && o2act::view('#39'sessions'#39', '#39'S'#39', "") && $o' +
        '2exe->e();'
      #9'} //|o2_fine_act|'
      ''
      'function _start'#167#167'delete_session_def(&$o2exe) {'
      
        #9'$o2exe->s(1) && True && o2act::view('#39'free_sessions'#39', '#39'C'#39', "") &' +
        '& $o2exe->e();'
      #9'} //|o2_fine_act|'
      ''
      'function _start'#167#167'fs_session_def(&$o2exe) {'
      
        #9'$o2exe->s(1) && (_start_exp_14() || $o2exe->e()) && o2act::aler' +
        't(_start_exp_13(), 1) && $o2exe->e();'
      #9'} //|o2_fine_act|'
      ''
      'function _start'#167#167'login_def(&$o2exe) {'
      
        '//'#9'$o2exe->s(1) && True && o2act::remark("---------Ensure presen' +
        'ce of '#39'root'#39' user in users table") && $o2exe->e();'
      
        #9'$o2exe->s(2) && True && o2act::view('#39'users'#39', '#39'I'#39', "") && $o2exe' +
        '->e();'
      
        #9'$o2exe->s(3) && True && o2act::set('#39'users'#39', '#39'user'#39', _start_exp_' +
        '2()) && $o2exe->e();'
      
        #9'$o2exe->s(4) && True && o2act::view('#39'users'#39', '#39'S'#39', "") && $o2exe' +
        '->e();'
      
        '//'#9'$o2exe->s(5) && True && o2act::remark("----------------------' +
        '-----------------------Verify logged identity") && $o2exe->e();'
      
        #9'$o2exe->s(6) && True && o2act::view('#39'users'#39', '#39'1'#39', "") && $o2exe' +
        '->e();'
      
        #9'$o2exe->s(7) && True && o2act::set('#39'prg'#167'_'#167'var'#39', '#39'login_correct'#39 +
        ', _start_exp_3()) && $o2exe->e();'
      
        '//'#9'$o2exe->s(8) && True && o2act::remark("----------------------' +
        '---Register session if login is correct") && $o2exe->e();'
      
        #9'$o2exe->s(9) && (_start_exp_12() || $o2exe->e()) && o2act::exe(' +
        #39'session'#39', '#39'True'#39', '#39#39', '#39#39') && $o2exe->e();'
      
        '//'#9'$o2exe->s(10) && True && o2act::remark("---------------------' +
        '----Handle error if login is not correct") && $o2exe->e();'
      
        #9'$o2exe->s(11) && (_start_exp_15() || $o2exe->e()) && o2act::clo' +
        'se()&& $o2exe->e();'
      #9'} //|o2_fine_act|'
      ''
      'function _start'#167#167'session_def(&$o2exe) {'
      
        #9'$o2exe->s(1) && True && o2act::exe('#39'delete_session'#39', '#39'_start_ex' +
        'p_18()'#39', '#39'free_sessions'#39', '#39'A'#39') && $o2exe->e();'
      
        #9'$o2exe->s(2) && True && o2act::set('#39'prg'#167'_'#167'var'#39', '#39'now'#39', _start_e' +
        'xp_16()) && $o2exe->e();'
      
        #9'$o2exe->s(3) && True && o2act::set('#39'prg'#167'_'#167'var'#39', '#39'expire'#39', _star' +
        't_exp_17()) && $o2exe->e();'
      
        '//'#9'$o2exe->s(4) && True && o2act::remark("========= FILESYSTEM S' +
        'ESSIONS ========") && $o2exe->e();'
      
        #9'$o2exe->s(5) && (_start_exp_11() || $o2exe->e()) && o2act::exe(' +
        #39'fs_session'#39', '#39'True'#39', '#39#39', '#39#39') && $o2exe->e();'
      
        '//'#9'$o2exe->s(6) && True && o2act::remark("========== DATABASE SE' +
        'SSIONS =========") && $o2exe->e();'
      
        #9'$o2exe->s(7) && (_start_exp_10() || $o2exe->e()) && o2act::exe(' +
        #39'db_session'#39', '#39'True'#39', '#39#39', '#39#39') && $o2exe->e();'
      #9'} //|o2_fine_act|'
      ''
      'function _start'#167#167'start_def(&$o2exe) {'
      
        #9'$o2exe->s(1) && (_start_exp_19() || $o2exe->e()) && o2act::exe(' +
        #39'login'#39', '#39'True'#39', '#39#39', '#39#39') && $o2exe->e();'
      #9'} //|o2_fine_act|'
      ''
      'function _start_exp_1() {'
      #9' return (o2exp::app('#39'user'#39'));'
      #9'} //|o2_fine_exp|'
      ''
      'function _start_exp_2() {'
      #9' return ('#39'root'#39');'
      #9'} //|o2_fine_exp|'
      ''
      'function _start_exp_3() {'
      
        #9' return (o2exp::val('#39'users'#39','#39'user'#39') && (o2exp::val('#39'users'#39','#39'pas' +
        'sword'#39') == $_REQUEST['#39'o2password'#39']));'
      #9'} //|o2_fine_exp|'
      ''
      'function _start_exp_4() {'
      #9' return (session_id());'
      #9'} //|o2_fine_exp|'
      ''
      'function _start_exp_5() {'
      #9' return (o2exp::app('#39'user'#39'));'
      #9'} //|o2_fine_exp|'
      ''
      'function _start_exp_6() {'
      #9' return (date("Ymd", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'now'#39')));'
      #9'} //|o2_fine_exp|'
      ''
      'function _start_exp_7() {'
      #9' return (date("His", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'now'#39')));'
      #9'} //|o2_fine_exp|'
      ''
      'function _start_exp_8() {'
      #9' return (date("Ymd", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'expire'#39')));'
      #9'} //|o2_fine_exp|'
      ''
      'function _start_exp_9() {'
      #9' return (date("His", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'expire'#39')));'
      #9'} //|o2_fine_exp|'
      ''
      'function _start_exp_10() {'
      #9' return (strtolower(o2exp::app("SESSIONTYPE")) == "db");'
      #9'} //|o2_fine_exp|'
      ''
      'function _start_exp_11() {'
      #9' return (strtolower(o2exp::app("SESSIONTYPE")) == "fs");'
      #9'} //|o2_fine_exp|'
      ''
      'function _start_exp_12() {'
      #9' return (o2exp::val('#39'prg'#167'_'#167'var'#39','#39'login_correct'#39'));'
      #9'} //|o2_fine_exp|'
      ''
      'function _start_exp_13() {'
      #9' return ('#39'Session registered'#39');'
      #9'} //|o2_fine_exp|'
      ''
      'function _start_exp_14() {'
      #9'$S = session_id();'
      '$U = o2exp::app('#39'user'#39');'
      '$D = date("Ymd", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'now'#39'));'
      '$T = date("His", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'now'#39'));'
      '$E_D = date("Ymd", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'expire'#39'));'
      '$E_T = date("His", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'expire'#39'));'
      '$buffer = "operator = ".$U."\n";'
      '$buffer.= "c_date = ".$D."\n";'
      '$buffer.= "c_time = ".$T."\n";'
      '$buffer.= "a_date = ".$D."\n";'
      '$buffer.= "a_time = ".$T."\n";'
      '$buffer.= "e_date = ".$E_D."\n";'
      '$buffer.= "e_time = ".$E_T."\n";'
      ''
      '$file_name = o2exp::app('#39'DIR_SESSIONS'#39').session_id().".o2s";'
      '$file_handle = fopen($file_name, "w");'
      'fwrite($file_handle, $buffer);'
      'fclose($file_handle); return (true);'
      #9'} //|o2_fine_exp|'
      ''
      'function _start_exp_15() {'
      #9'if (!o2exp::val('#39'prg'#167'_'#167'var'#39','#39'login_correct'#39')) {'
      
        '     print "<script> window.location = '#39'".o2exp::app('#39'NOLOGIN'#39').' +
        '"'#39'; </script>";'
      '     } return (!o2exp::val('#39'prg'#167'_'#167'var'#39','#39'login_correct'#39'));'
      #9'} //|o2_fine_exp|'
      ''
      'function _start_exp_16() {'
      #9' return (time());'
      #9'} //|o2_fine_exp|'
      ''
      'function _start_exp_17() {'
      #9'$expire = mktime(date("H", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'now'#39')),'
      
        '                 date("i", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'now'#39')) + o2ex' +
        'p::app('#39'TIMEOUT'#39'),'
      '                 date("s", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'now'#39')),'
      '                 date("m", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'now'#39')),'
      '                 date("d", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'now'#39')),'
      
        '                 date("Y", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'now'#39'))); retu' +
        'rn ($expire);'
      #9'} //|o2_fine_exp|'
      ''
      'function _start_exp_18() {'
      #9' return (false);'
      #9'} //|o2_fine_exp|'
      ''
      'function _start_exp_19() {'
      #9' return (o2exp::app('#39'VALIDATE'#39'));'
      #9'} //|o2_fine_exp|'
      '?>')
    TabOrder = 6
    WordWrap = False
  end
  object prg_request: TMemo
    Left = 32
    Top = 448
    Width = 185
    Height = 89
    Lines.Strings = (
      '<?'
      '//1.0.0'
      '//o2def::folder("_tools/");'
      ''
      'o2def::prg('#39'_request'#39', '#39'verify_session'#39', '#39#39', __FILE__);'
      ''
      'o2def::view('#39'prg'#167'_'#167'var'#39');'
      'o2def::view("sessions", False, "", "");'
      'o2def::act('#39'update_db_session'#39');'
      'o2def::act('#39'update_fs_session'#39');'
      'o2def::act('#39'verify_db_session'#39');'
      'o2def::act('#39'verify_fs_session'#39');'
      'o2def::act('#39'verify_session'#39');'
      '?>')
    TabOrder = 7
    WordWrap = False
  end
  object prf_request: TMemo
    Left = 232
    Top = 456
    Width = 185
    Height = 89
    Lines.Strings = (
      '<?'
      ''
      'function _request'#167#167'prg'#167'_'#167'var_def(&$task_prg'#167'_'#167'var) {'
      #9'$task_prg'#167'_'#167'var->righe_vis = 1;'
      #9'$task_prg'#167'_'#167'var->definisci('#39'session_verified'#39', '#39'_o2logical'#39');'
      #9'$task_prg'#167'_'#167'var->definisci('#39'now'#39', '#39'_o2sid'#39');'
      #9'$task_prg'#167'_'#167'var->definisci('#39'expire'#39', '#39'_o2sid'#39');'
      #9#9'}'
      ''
      'function _request'#167#167'sessions_def(&$task_sessions) {'
      #9'$task_sessions->righe_vis = 1;'
      ''
      #9'$task_sessions->usa_file('#39'_sessions'#39','#39'_sessions'#39','#39'sid'#39');'
      ''
      
        #9'$task_sessions->usa('#39'_sessions_sid'#39','#39'_sessions'#39','#39'sid'#39','#39'_request' +
        '_exp_1()'#39','#39'_request_exp_1()'#39',null,null);'
      
        #9'$task_sessions->usa('#39'_sessions_operator'#39','#39'_sessions'#39','#39'operator'#39 +
        ',null,null,null,null);'
      
        #9'$task_sessions->usa('#39'_sessions_c_date'#39','#39'_sessions'#39','#39'c_date'#39',nul' +
        'l,null,null,null);'
      
        #9'$task_sessions->usa('#39'_sessions_c_time'#39','#39'_sessions'#39','#39'c_time'#39',nul' +
        'l,null,null,null);'
      
        #9'$task_sessions->usa('#39'_sessions_a_date'#39','#39'_sessions'#39','#39'a_date'#39',nul' +
        'l,null,null,null);'
      
        #9'$task_sessions->usa('#39'_sessions_a_time'#39','#39'_sessions'#39','#39'a_time'#39',nul' +
        'l,null,null,null);'
      
        #9'$task_sessions->usa('#39'_sessions_e_date'#39','#39'_sessions'#39','#39'e_date'#39',nul' +
        'l,null,null,null);'
      
        #9'$task_sessions->usa('#39'_sessions_e_time'#39','#39'_sessions'#39','#39'e_time'#39',nul' +
        'l,null,null,null);'
      '}'
      ''
      'function _request'#167#167'update_db_session_def(&$o2exe) {'
      
        #9'$o2exe->s(1) && True && o2act::set('#39'sessions'#39', '#39'_sessions_a_dat' +
        'e'#39', _request_exp_7()) && $o2exe->e();'
      
        #9'$o2exe->s(2) && True && o2act::set('#39'sessions'#39', '#39'_sessions_a_tim' +
        'e'#39', _request_exp_9()) && $o2exe->e();'
      
        #9'$o2exe->s(3) && True && o2act::set('#39'sessions'#39', '#39'_sessions_e_dat' +
        'e'#39', _request_exp_8()) && $o2exe->e();'
      
        #9'$o2exe->s(4) && True && o2act::set('#39'sessions'#39', '#39'_sessions_e_tim' +
        'e'#39', _request_exp_10()) && $o2exe->e();'
      
        #9'$o2exe->s(5) && True && o2act::view('#39'sessions'#39', '#39'S'#39', "") && $o2' +
        'exe->e();'
      #9'} //|o2_fine_act|'
      ''
      'function _request'#167#167'update_fs_session_def(&$o2exe) {'
      
        #9'$o2exe->s(1) && True && o2act::alert(_request_exp_11(), 1) && $' +
        'o2exe->e();'
      #9'} //|o2_fine_act|'
      ''
      'function _request'#167#167'verify_db_session_def(&$o2exe) {'
      
        '//'#9'$o2exe->s(1) && True && o2act::remark("----------------------' +
        '------------ Verify session existance") && $o2exe->e();'
      
        #9'$o2exe->s(2) && True && o2act::set('#39'prg'#167'_'#167'var'#39', '#39'session_verifi' +
        'ed'#39', _request_exp_2()) && $o2exe->e();'
      
        '//'#9'$o2exe->s(3) && True && o2act::remark("----------------------' +
        '----------------- Handle session error") && $o2exe->e();'
      
        #9'$o2exe->s(4) && (_request_exp_4() || $o2exe->e()) && o2act::ale' +
        'rt(_request_exp_3(), 1) && $o2exe->e();'
      
        '//'#9'$o2exe->s(5) && True && o2act::remark("----------------------' +
        '------------------------ Update session") && $o2exe->e();'
      
        #9'$o2exe->s(6) && (_request_exp_13() || $o2exe->e()) && o2act::ex' +
        'e('#39'update_db_session'#39', '#39'True'#39', '#39#39', '#39#39') && $o2exe->e();'
      #9'} //|o2_fine_act|'
      ''
      'function _request'#167#167'verify_fs_session_def(&$o2exe) {'
      
        '//'#9'$o2exe->s(1) && True && o2act::remark("----------------------' +
        '------------ Verify session existance") && $o2exe->e();'
      
        #9'$o2exe->s(2) && True && o2act::set('#39'prg'#167'_'#167'var'#39', '#39'session_verifi' +
        'ed'#39', _request_exp_12()) && $o2exe->e();'
      
        '//'#9'$o2exe->s(3) && True && o2act::remark("----------------------' +
        '----------------- Handle session error") && $o2exe->e();'
      
        #9'$o2exe->s(4) && (_request_exp_4() || $o2exe->e()) && o2act::ale' +
        'rt(_request_exp_3(), 1) && $o2exe->e();'
      
        '//'#9'$o2exe->s(5) && True && o2act::remark("----------------------' +
        '------------------------ Update session") && $o2exe->e();'
      
        #9'$o2exe->s(6) && (_request_exp_13() || $o2exe->e()) && o2act::ex' +
        'e('#39'update_fs_session'#39', '#39'True'#39', '#39#39', '#39#39') && $o2exe->e();'
      #9'} //|o2_fine_act|'
      ''
      'function _request'#167#167'verify_session_def(&$o2exe) {'
      
        #9'$o2exe->s(1) && True && o2act::set('#39'prg'#167'_'#167'var'#39', '#39'now'#39', _request' +
        '_exp_5()) && $o2exe->e();'
      
        #9'$o2exe->s(2) && True && o2act::set('#39'prg'#167'_'#167'var'#39', '#39'expire'#39', _requ' +
        'est_exp_6()) && $o2exe->e();'
      
        #9'$o2exe->s(3) && (_request_exp_14() || $o2exe->e()) && o2act::ex' +
        'e('#39'verify_fs_session'#39', '#39'True'#39', '#39#39', '#39#39') && $o2exe->e();'
      
        #9'$o2exe->s(4) && (_request_exp_15() || $o2exe->e()) && o2act::ex' +
        'e('#39'verify_db_session'#39', '#39'True'#39', '#39#39', '#39#39') && $o2exe->e();'
      #9'} //|o2_fine_act|'
      ''
      'function _request_exp_1() {'
      #9' return (o2exp::app('#39'SID'#39'));'
      #9'} //|o2_fine_exp|'
      ''
      'function _request_exp_2() {'
      
        #9' return (o2exp::val('#39'sessions'#39','#39'_sessions_operator'#39') == o2exp::' +
        'app('#39'USER'#39'));'
      #9'} //|o2_fine_exp|'
      ''
      'function _request_exp_3() {'
      #9' return (die());'
      #9'} //|o2_fine_exp|'
      ''
      'function _request_exp_4() {'
      #9' return (!o2exp::val('#39'prg'#167'_'#167'var'#39','#39'session_verified'#39'));'
      #9'} //|o2_fine_exp|'
      ''
      'function _request_exp_5() {'
      #9' return (time());'
      #9'} //|o2_fine_exp|'
      ''
      'function _request_exp_6() {'
      #9'$expire = mktime(date("H", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'now'#39')),'
      
        '                 date("i", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'now'#39')) + o2ex' +
        'p::app('#39'TIMEOUT'#39'),'
      '                 date("s", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'now'#39')),'
      '                 date("m", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'now'#39')),'
      '                 date("d", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'now'#39')),'
      
        '                 date("Y", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'now'#39'))); retu' +
        'rn ($expire);'
      #9'} //|o2_fine_exp|'
      ''
      'function _request_exp_7() {'
      #9' return (date("Ymd", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'now'#39')));'
      #9'} //|o2_fine_exp|'
      ''
      'function _request_exp_8() {'
      #9' return (date("Ymd", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'expire'#39')));'
      #9'} //|o2_fine_exp|'
      ''
      'function _request_exp_9() {'
      #9' return (date("His", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'now'#39')));'
      #9'} //|o2_fine_exp|'
      ''
      'function _request_exp_10() {'
      #9' return (date("His", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'expire'#39')));'
      #9'} //|o2_fine_exp|'
      ''
      'function _request_exp_11() {'
      #9'$file = o2exp::app('#39'DIR_SESSIONS'#39').o2exp::app('#39'SID'#39').".o2s";'
      '$fields =  parse_ini_file($file);'
      '$buffer = "operator = ".$fields['#39'operator'#39']."\n";'
      '$buffer.= "c_date = ".$fields['#39'c_date'#39']."\n";'
      '$buffer.= "c_time = ".$fields['#39'c_time'#39']."\n";'
      
        '$buffer.= "a_date = ".date("Ymd", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'now'#39'))' +
        '."\n";'
      
        '$buffer.= "a_time = ".date("His", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'now'#39'))' +
        '."\n";'
      
        '$buffer.= "e_date = ".date("Ymd", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'expire' +
        #39'))."\n";'
      
        '$buffer.= "e_time = ".date("His", o2exp::val('#39'prg'#167'_'#167'var'#39','#39'expire' +
        #39'))."\n";'
      '$f_h = fopen($file, "w");'
      'fwrite($f_h, $buffer);'
      'fclose($f_h); return ('#39'Session updated'#39');'
      #9'} //|o2_fine_exp|'
      ''
      'function _request_exp_12() {'
      
        #9' return (file_exists (o2exp::app('#39'DIR_SESSIONS'#39').o2exp::app('#39'SI' +
        'D'#39').".o2s"));'
      #9'} //|o2_fine_exp|'
      ''
      'function _request_exp_13() {'
      #9' return (o2exp::val('#39'prg'#167'_'#167'var'#39','#39'session_verified'#39'));'
      #9'} //|o2_fine_exp|'
      ''
      'function _request_exp_14() {'
      #9' return (strtoupper(o2exp::app('#39'SESSIONTYPE'#39')) == '#39'FS'#39');'
      #9'} //|o2_fine_exp|'
      ''
      'function _request_exp_15() {'
      #9' return (strtoupper(o2exp::app('#39'SESSIONTYPE'#39')) == '#39'DB'#39');'
      #9'} //|o2_fine_exp|'
      ''
      'function _request_exp_16() {'
      #9' return (o2exp::val('#39'prg'#167'_'#167'var'#39','#39'now'#39'));'
      #9'} //|o2_fine_exp|'
      '?>')
    TabOrder = 8
    WordWrap = False
  end
  object ActionList1: TActionList
    Left = 320
    Top = 32
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
  end
end
