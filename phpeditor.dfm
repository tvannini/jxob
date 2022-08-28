object f_phpeditor: Tf_phpeditor
  Left = 232
  Top = 172
  Width = 799
  Height = 593
  ActiveControl = phpeditor
  Caption = 'PHP Editor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object phpeditor: TJvHLEditor
    Left = 0
    Top = 0
    Width = 791
    Height = 525
    Cursor = crIBeam
    GutterWidth = 0
    RightMarginColor = clSilver
    Completion.Enabled = True
    Completion.Identifers.Strings = (
      '_|_($msgid) {}'
      'abs|abs($number) {}'
      'acos|acos($number) {}'
      'acosh|acosh($number) {}'
      'add|add($SWFCharacter) {}'
      'add_child|add_child($domnode) {}'
      'add_chunk|add_chunk($chunk) {}'
      'add_namespace|add_namespace($uri, $prefix) {}'
      'addaction|addaction($SWFAction, $flags) {}'
      'addcolor|addcolor($r, $g, $b, $a = null) {}'
      'addcslashes|addcslashes($str, $charlist) {}'
      'addentry|addentry($ratio, $r, $g, $b, $a = null) {}'
      'addfill|addfill($arg1, $arg2, $b = null, $a = null) {}'
      'addshape|addshape($SWFCharacter, $flags) {}'
      'addslashes|addslashes($str) {}'
      'addstring|addstring($str) {}'
      'aggregate|aggregate($obj, $class) {}'
      'aggregate_methods|aggregate_methods($obj, $class) {}'
      
        'aggregate_methods_by_list|aggregate_methods_by_list($obj, $class' +
        ', $method_list, $exclude = null) {}'
      
        'aggregate_methods_by_regexp|aggregate_methods_by_regexp($obj, $c' +
        'lass, $regexp, $exclude = null) {}'
      'aggregate_properties|aggregate_properties($obj, $class) {}'
      
        'aggregate_properties_by_list|aggregate_properties_by_list($obj, ' +
        '$class, $props_list, $exclude = null) {}'
      
        'aggregate_properties_by_regexp|aggregate_properties_by_regexp($o' +
        'bj, $class, $regexp, $exclude = null) {}'
      'aggregation_info|aggregation_info($obj) {}'
      'align|align($alignment) {}'
      'and|and'
      'apache_child_terminate|apache_child_terminate() {}'
      'apache_get_modules|apache_get_modules() {}'
      'apache_get_version|apache_get_version() {}'
      'apache_getenv|apache_getenv($variable, $walk_to_top = null) {}'
      'apache_lookup_uri|apache_lookup_uri($URI) {}'
      'apache_note|apache_note($note_name, $note_value = null) {}'
      'apache_request_headers|apache_request_headers() {}'
      'apache_response_headers|apache_response_headers() {}'
      
        'apache_setenv|apache_setenv($variable, $value, $walk_to_top = nu' +
        'll) {}'
      'append|append($collection, $value) {}'
      'append_child|append_child($domnode) {}'
      'append_sibling|append_sibling($domnode) {}'
      'array()|array()'
      
        'array_change_key_case|array_change_key_case($input, $case = CASE' +
        '_LOWER) {}'
      'array_chunk|array_chunk($input, $size, $preserve_keys = null) {}'
      'array_count_values|array_count_values($input) {}'
      'array_diff|array_diff($arr1, $arr2) {}'
      'array_diff_assoc|array_diff_assoc($arr1, $arr2) {}'
      'array_fill|array_fill($start_key, $num, $val) {}'
      'array_filter|array_filter($input, $callback = null) {}'
      'array_flip|array_flip($input) {}'
      'array_intersect|array_intersect($arr1, $arr2) {}'
      'array_intersect_assoc|array_intersect_assoc($arr1, $arr2) {}'
      'array_key_exists|array_key_exists($key, $search) {}'
      'array_keys|array_keys($input, $search_value = null) {}'
      'array_map|array_map($callback, $input1, $input2 = null) {}'
      'array_merge|array_merge($arr1, $arr2) {}'
      'array_merge_recursive|array_merge_recursive($arr1, $arr2) {}'
      
        'array_multisort|array_multisort($ar1, $SORT_ASC = null, $SORT_RE' +
        'GULAR = null, $ar2 = null, $SORT_ASC = null, $SORT_REGULAR = nul' +
        'l) {}'
      'array_pad|array_pad($input, $pad_size, $pad_value) {}'
      'array_pop|array_pop($stack) {}'
      'array_push|array_push($stack, $var) {}'
      'array_rand|array_rand($input, $num_req = null) {}'
      'array_reduce|array_reduce($input, $callback, $initial = null) {}'
      'array_reverse|array_reverse($input, $preserve_keys = null) {}'
      'array_search|array_search($needle, $haystack, $strict = null) {}'
      'array_shift|array_shift($stack) {}'
      'array_slice|array_slice($input, $offset, $length = null) {}'
      
        'array_splice|array_splice($input, $offset, $length = null, $repl' +
        'acement = null) {}'
      'array_sum|array_sum($input) {}'
      'array_unique|array_unique($input) {}'
      'array_unshift|array_unshift($stack, $var) {}'
      'array_values|array_values($input) {}'
      'array_walk|array_walk($input, $funcname, $userdata = null) {}'
      'arsort|arsort($array_arg, $sort_flags = null) {}'
      'as|as'
      'asin|asin($number) {}'
      'asinh|asinh($number) {}'
      'asort|asort($array_arg, $sort_flags = null) {}'
      'assert|assert($assertion) {}'
      'assert_options|assert_options($what, $value = null) {}'
      'assign|assign($collection, $object) {}'
      'assignelem|assignelem($collection, $ndx, $val) {}'
      'atan|atan($number) {}'
      'atan2|atan2($y, $x) {}'
      'atanh|atanh($number) {}'
      'attributes|attributes() {}'
      'base64_decode|base64_decode($str) {}'
      'base64_encode|base64_encode($str) {}'
      'base_convert|base_convert($number, $frombase, $tobase) {}'
      'basename|basename($path, $suffix = null) {}'
      'bcadd|bcadd($left_operand, $right_operand, $scale = null) {}'
      'bccomp|bccomp($left_operand, $right_operand, $scale = null) {}'
      'bcdiv|bcdiv($left_operand, $right_operand, $scale = null) {}'
      'bcmod|bcmod($left_operand, $right_operand) {}'
      'bcmul|bcmul($left_operand, $right_operand, $scale = null) {}'
      'bcpow|bcpow($x, $y, $scale = null) {}'
      'bcscale|bcscale($scale) {}'
      'bcsqrt|bcsqrt($operand, $scale = null) {}'
      'bcsub|bcsub($left_operand, $right_operand, $scale = null) {}'
      'bin2hex|bin2hex($data) {}'
      
        'bind_textdomain_codeset|bind_textdomain_codeset ($domain, $codes' +
        'et) {}'
      'bindec|bindec($binary_number) {}'
      'bindtextdomain|bindtextdomain($domain_name, $dir) {}'
      'birdstep_autocommit|birdstep_autocommit($index) {}'
      'birdstep_close|birdstep_close($id) {}'
      'birdstep_commit|birdstep_commit($index) {}'
      'birdstep_connect|birdstep_connect($server, $user, $pass) {}'
      'birdstep_exec|birdstep_exec($index, $exec_str) {}'
      'birdstep_fetch|birdstep_fetch($index) {}'
      'birdstep_fieldname|birdstep_fieldname($index, $col) {}'
      'birdstep_fieldnum|birdstep_fieldnum($index) {}'
      'birdstep_freeresult|birdstep_freeresult($index) {}'
      'birdstep_off_autocommit|birdstep_off_autocommit($index) {}'
      'birdstep_result|birdstep_result($index, $col) {}'
      'birdstep_rollback|birdstep_rollback($index) {}'
      'break|break'
      'bzclose|bzclose($fp) {}'
      
        'bzcompress|bzcompress($source, $blocksize100k = null, $workfacto' +
        'r = null) {}'
      'bzdecompress|bzdecompress($source, $small = null) {}'
      'bzerrno|bzerrno($bz) {}'
      'bzerror|bzerror($bz) {}'
      'bzerrstr|bzerrstr($bz) {}'
      'bzflush|bzflush($fp) {}'
      'bzopen|bzopen($file, $mode) {}'
      'bzread|bzread($bz, $length) {}'
      'bzwrite|bzwrite($fp, $str, $length = null) {}'
      'cal_days_in_month|cal_days_in_month($calendar, $month, $year) {}'
      'cal_from_jd|cal_from_jd($jd, $calendar) {}'
      'cal_info|cal_info($calendar) {}'
      'cal_to_jd|cal_to_jd($calendar, $month, $day, $year) {}'
      
        'call_user_func|call_user_func($function_name, $parmeter = null) ' +
        '{}'
      
        'call_user_func_array|call_user_func_array($function_name, $param' +
        'eters) {}'
      
        'call_user_method|call_user_method($method_name, $object, $parame' +
        'ter = null) {}'
      
        'call_user_method_array|call_user_method_array($method_name, $obj' +
        'ect, $params) {}'
      'case  |case '
      'cdata_section|cdata_section($chunk) {}'
      'ceil|ceil($number) {}'
      'cfunction|cfunction'
      'characters|characters($characters) {}'
      'chdir|chdir($directory) {}'
      'checkdate|checkdate($month, $day, $year) {}'
      'checkdnsrr|checkdnsrr($host, $type = null) {}'
      'chgrp|chgrp($filename, $group) {}'
      'child_nodes|child_nodes() {}'
      'children|children() {}'
      'chmod|chmod($filename, $mode) {}'
      'chop|chop($str, $character_mask = null) {}'
      'chown|chown ($filename, $user) {}'
      'chr|chr($ascii) {}'
      'chroot|chroot($directory) {}'
      
        'chunk_split|chunk_split($str, $chunklen = null, $ending = null) ' +
        '{}'
      'class|class'
      'class_exists|class_exists($classname) {}'
      'clearstatcache|clearstatcache() {}'
      'clone_node|clone_node($deep = null) {}'
      'close|close($dir_handle = null) {}'
      'closelog|closelog() {}'
      'com_addref|com_addref($module) {}'
      
        'com_event_sink|com_event_sink($comobject, $sinkobject, $sinkinte' +
        'rface = null) {}'
      'com_get|com_get($module, $property_name) {}'
      'com_invoke|com_invoke($module, $handler_name, $arg = null) {}'
      
        'com_invoke_ex|com_invoke_ex($module, $invokeflags, $handler_name' +
        ', $arg = null) {}'
      'com_isenum|com_isenum($com_module) {}'
      
        'com_load|com_load($module_name, $remote_host = null, $codepage =' +
        ' null, $typelib = null) {}'
      
        'com_load_typelib|com_load_typelib($typelib_name, $case_insensiti' +
        've = null) {}'
      'com_message_pump|com_message_pump($timeoutms = null) {}'
      
        'com_print_typeinfo|com_print_typeinfo($comobject_, $dispinterfac' +
        'e, $wantsink) {}'
      'com_propget|com_propget($module, $property_name) {}'
      'com_propput|com_propput($module, $property_name, $value) {}'
      'com_propset|com_propset($module, $property_name, $value) {}'
      'com_release|com_release($module) {}'
      'com_set|com_set($module, $property_name, $value) {}'
      'comment|comment($comment) {}'
      'compact|compact($var_names) {}'
      'confirm_extname_compiled|confirm_extname_compiled($arg) {}'
      'connection_aborted|connection_aborted() {}'
      'connection_status|connection_status() {}'
      'const|const'
      'constant|constant($const_name) {}'
      'continue|continue'
      'convert_cyr_string|convert_cyr_string($str, $from, $to) {}'
      'copy|copy($source_file, $destination_file) {}'
      'cos|cos($number) {}'
      'cosh|cosh($number) {}'
      'count|count($var, $mode = null) {}'
      'count_chars|count_chars($input, $mode = null) {}'
      
        'cpdf_add_annotation|cpdf_add_annotation($pdfdoc, $xll, $yll, $xu' +
        'r, $xur, $title, $text, $mode = null) {}'
      
        'cpdf_add_outline|cpdf_add_outline($pdfdoc, $lastoutline, $sublev' +
        'el, $open, $pagenr, $title) {}'
      
        'cpdf_arc|cpdf_arc($pdfdoc, $x, $y, $radius, $start, $end, $mode ' +
        '= null) {}'
      'cpdf_begin_text|cpdf_begin_text($pdfdoc) {}'
      
        'cpdf_circle|cpdf_circle($pdfdoc, $x, $y, $radius, $mode = null) ' +
        '{}'
      'cpdf_clip|cpdf_clip($pdfdoc) {}'
      'cpdf_close|cpdf_close($pdfdoc) {}'
      'cpdf_closepath|cpdf_closepath($pdfdoc) {}'
      
        'cpdf_closepath_fill_stroke|cpdf_closepath_fill_stroke($pdfdoc) {' +
        '}'
      'cpdf_closepath_stroke|cpdf_closepath_stroke($pdfdoc) {}'
      'cpdf_continue_text|cpdf_continue_text($pdfdoc, $text) {}'
      
        'cpdf_curveto|cpdf_curveto($pdfdoc, $x1, $y1, $x2, $y2, $x3, $y3,' +
        ' $mode = null) {}'
      'cpdf_end_text|cpdf_end_text($pdfdoc) {}'
      'cpdf_fill|cpdf_fill($pdfdoc) {}'
      'cpdf_fill_stroke|cpdf_fill_stroke($pdfdoc) {}'
      'cpdf_finalize|cpdf_finalize($pdfdoc) {}'
      'cpdf_finalize_page|cpdf_finalize_page($pdfdoc, $pagenr) {}'
      
        'cpdf_global_set_document_limits|cpdf_global_set_document_limits(' +
        '$maxPages, $maxFonts, $maxImages, $maxAnnots, $maxObjects) {}'
      
        'cpdf_import_jpeg|cpdf_import_jpeg($pdfdoc, $filename, $x, $y, $a' +
        'ngle, $width, $height, $x_scale, $y_scale, $gsave, $mode = null)' +
        ' {}'
      'cpdf_lineto|cpdf_lineto($pdfdoc, $x, $y, $mode = null) {}'
      'cpdf_moveto|cpdf_moveto($pdfdoc, $x, $y, $mode = null) {}'
      'cpdf_newpath|cpdf_newpath($pdfdoc) {}'
      
        'cpdf_open|cpdf_open($compression, $filename = null, $doc_limits ' +
        '= null) {}'
      'cpdf_output_buffer|cpdf_output_buffer($pdfdoc) {}'
      
        'cpdf_page_init|cpdf_page_init($pdfdoc, $pagenr, $orientation, $h' +
        'eight, $width, $unit = null) {}'
      
        'cpdf_place_inline_image|cpdf_place_inline_image($pdfdoc, $gdimag' +
        'e, $x, $y, $angle, $width, $height, $gsave, $mode = null) {}'
      
        'cpdf_rect|cpdf_rect($pdfdoc, $x, $y, $width, $height, $mode = nu' +
        'll) {}'
      'cpdf_restore|cpdf_restore($pdfdoc) {}'
      'cpdf_rlineto|cpdf_rlineto($pdfdoc, $x, $y, $mode = null) {}'
      'cpdf_rmoveto|cpdf_rmoveto($pdfdoc, $x, $y, $mode = null) {}'
      'cpdf_rotate|cpdf_rotate($pdfdoc, $angle) {}'
      'cpdf_rotate_text|cpdf_rotate_text($pdfdoc, $angle) {}'
      'cpdf_save|cpdf_save($pdfdoc) {}'
      'cpdf_save_to_file|cpdf_save_to_file($pdfdoc, $filename) {}'
      'cpdf_scale|cpdf_scale($pdfdoc, $x_scale, $y_scale) {}'
      
        'cpdf_set_action_url|cpdf_set_action_url($pdfdoc, $xll, $yll, $xu' +
        'r, $xur, $url, $mode = null) {}'
      'cpdf_set_char_spacing|cpdf_set_char_spacing($pdfdoc, $space) {}'
      'cpdf_set_creator|cpdf_set_creator($pdfdoc, $creator) {}'
      'cpdf_set_current_page|cpdf_set_current_page($pdfdoc, $pagenr) {}'
      'cpdf_set_font|cpdf_set_font($pdfdoc, $font, $size, $encoding) {}'
      
        'cpdf_set_font_directories|cpdf_set_font_directories($pdfdoc, $pf' +
        'mdir, $pfbdir) {}'
      
        'cpdf_set_font_map_file|cpdf_set_font_map_file($pdfdoc, $filename' +
        ') {}'
      
        'cpdf_set_horiz_scaling|cpdf_set_horiz_scaling($pdfdoc, $scale) {' +
        '}'
      'cpdf_set_keywords|cpdf_set_keywords($pdfptr, $keywords) {}'
      'cpdf_set_leading|cpdf_set_leading($pdfdoc, $distance) {}'
      
        'cpdf_set_page_animation|cpdf_set_page_animation($pdfdoc, $transi' +
        'tion, $duration, $direction, $orientation, $inout) {}'
      'cpdf_set_subject|cpdf_set_subject($pdfptr, $subject) {}'
      'cpdf_set_text_matrix|cpdf_set_text_matrix($pdfdoc, $matrix) {}'
      
        'cpdf_set_text_pos|cpdf_set_text_pos($pdfdoc, $x, $y, $mode = nul' +
        'l) {}'
      
        'cpdf_set_text_rendering|cpdf_set_text_rendering($pdfdoc, $render' +
        'mode) {}'
      'cpdf_set_text_rise|cpdf_set_text_rise($pdfdoc, $value) {}'
      'cpdf_set_title|cpdf_set_title($pdfptr, $title) {}'
      
        'cpdf_set_viewer_preferences|cpdf_set_viewer_preferences($pdfdoc,' +
        ' $preferences) {}'
      'cpdf_set_word_spacing|cpdf_set_word_spacing($pdfdoc, $space) {}'
      'cpdf_setdash|cpdf_setdash($pdfdoc, $white, $black) {}'
      'cpdf_setflat|cpdf_setflat($pdfdoc, $value) {}'
      'cpdf_setgray|cpdf_setgray($pdfdoc, $value) {}'
      'cpdf_setgray_fill|cpdf_setgray_fill($pdfdoc, $value) {}'
      'cpdf_setgray_stroke|cpdf_setgray_stroke($pdfdoc, $value) {}'
      'cpdf_setlinecap|cpdf_setlinecap($pdfdoc, $value) {}'
      'cpdf_setlinejoin|cpdf_setlinejoin($pdfdoc, $value) {}'
      'cpdf_setlinewidth|cpdf_setlinewidth($pdfdoc, $width) {}'
      'cpdf_setmiterlimit|cpdf_setmiterlimit($pdfdoc, $value) {}'
      
        'cpdf_setrgbcolor|cpdf_setrgbcolor($pdfdoc, $red, $green, $blue) ' +
        '{}'
      
        'cpdf_setrgbcolor_fill|cpdf_setrgbcolor_fill($pdfdoc, $red, $gree' +
        'n, $blue) {}'
      
        'cpdf_setrgbcolor_stroke|cpdf_setrgbcolor_stroke($pdfdoc, $red, $' +
        'green, $blue) {}'
      'cpdf_show|cpdf_show($pdfdoc, $text) {}'
      
        'cpdf_show_xy|cpdf_show_xy($pdfdoc, $text, $x_koor, $y_koor, $mod' +
        'e = null) {}'
      'cpdf_stringwidth|cpdf_stringwidth($pdfdoc, $text) {}'
      'cpdf_stroke|cpdf_stroke($pdfdoc) {}'
      
        'cpdf_text|cpdf_text($pdfdoc, $text, $x_koor = null, $y_koor, $mo' +
        'de = null, $orientation = null, $alignmode = null) {}'
      'cpdf_translate|cpdf_translate($pdfdoc, $x, $y) {}'
      'crack_check|crack_check($dictionary = null, $password) {}'
      'crack_closedict|crack_closedict($dictionary = null) {}'
      'crack_getlastmessage|crack_getlastmessage() {}'
      'crack_opendict|crack_opendict($dictionary) {}'
      'crc32|crc32($str) {}'
      'create_attribute|create_attribute($name, $value) {}'
      'create_cdata_section|create_cdata_section($content) {}'
      'create_comment|create_comment($content) {}'
      'create_element|create_element($name) {}'
      
        'create_element_ns|create_element_ns($uri, $name, $prefix = null)' +
        ' {}'
      'create_entity_reference|create_entity_reference($name) {}'
      'create_function|create_function($args, $code) {}'
      
        'create_processing_instruction|create_processing_instruction($nam' +
        'e) {}'
      'create_text_node|create_text_node($content) {}'
      'crypt|crypt($str, $salt = null) {}'
      'ctype_alnum|ctype_alnum($c) {}'
      'ctype_alpha|ctype_alpha($c) {}'
      'ctype_cntrl|ctype_cntrl($c) {}'
      'ctype_digit|ctype_digit($c) {}'
      'ctype_graph|ctype_graph($c) {}'
      'ctype_lower|ctype_lower($c) {}'
      'ctype_print|ctype_print($c) {}'
      'ctype_punct|ctype_punct($c) {}'
      'ctype_space|ctype_space($c) {}'
      'ctype_upper|ctype_upper($c) {}'
      'ctype_xdigit|ctype_xdigit($c) {}'
      'curl_close|curl_close($ch) {}'
      'curl_errno|curl_errno($ch) {}'
      'curl_error|curl_error($ch) {}'
      'curl_exec|curl_exec($ch) {}'
      'curl_getinfo|curl_getinfo($ch, $opt) {}'
      'curl_init|curl_init($url = null) {}'
      'curl_setopt|curl_setopt($ch, $option, $value) {}'
      'curl_version|curl_version() {}'
      'current|current($array_arg) {}'
      
        'cyrus_authenticate|cyrus_authenticate($connection, $mechlist = n' +
        'ull, $service = null, $user = null, $minssf = null, $maxssf = nu' +
        'll) {}'
      'cyrus_bind|cyrus_bind($connection, $callbacks) {}'
      'cyrus_close|cyrus_close($connection) {}'
      
        'cyrus_connect|cyrus_connect($host = null, $port = null, $flags =' +
        ' null) {}'
      'cyrus_query|cyrus_query($connection, $query) {}'
      'cyrus_unbind|cyrus_unbind($connection, $trigger_name) {}'
      'data|data() {}'
      'date|date($format, $timestamp = null) {}'
      'dba_close|dba_close($handle) {}'
      'dba_delete|dba_delete($key, $handle) {}'
      'dba_exists|dba_exists($key, $handle) {}'
      'dba_fetch|dba_fetch($key, $skip = null, $int_handle) {}'
      'dba_firstkey|dba_firstkey($handle) {}'
      'dba_handlers|dba_handlers($full_info = null) {}'
      'dba_insert|dba_insert($key, $value, $handle) {}'
      'dba_list|dba_list() {}'
      'dba_nextkey|dba_nextkey($handle) {}'
      'dba_open|dba_open($path, $mode, $handlername = null) {}'
      'dba_optimize|dba_optimize($handle) {}'
      'dba_popen|dba_popen($path, $mode, $handlername = null) {}'
      'dba_replace|dba_replace($key, $value, $handle) {}'
      'dba_sync|dba_sync($handle) {}'
      'dbase_add_record|dbase_add_record($identifier, $data) {}'
      'dbase_close|dbase_close($identifier) {}'
      'dbase_create|dbase_create($filename, $fields) {}'
      'dbase_delete_record|dbase_delete_record($identifier, $record) {}'
      'dbase_get_record|dbase_get_record($identifier, $record) {}'
      
        'dbase_get_record_with_names|dbase_get_record_with_names($identif' +
        'ier, $record) {}'
      'dbase_numfields|dbase_numfields($identifier) {}'
      'dbase_numrecords|dbase_numrecords($identifier) {}'
      'dbase_open|dbase_open($name, $mode) {}'
      'dbase_pack|dbase_pack($identifier) {}'
      
        'dbase_replace_record|dbase_replace_record($identifier, $data, $r' +
        'ecnum) {}'
      'dblist|dblist() {}'
      'dbmclose|dbmclose($dbm_identifier) {}'
      'dbmdelete|dbmdelete($dbm_identifier, $key) {}'
      'dbmexists|dbmexists($dbm_identifier, $key) {}'
      'dbmfetch|dbmfetch($dbm_identifier, $key) {}'
      'dbmfirstkey|dbmfirstkey($dbm_identifier) {}'
      'dbminsert|dbminsert($dbm_identifier, $key, $value) {}'
      'dbmnextkey|dbmnextkey($dbm_identifier, $key) {}'
      'dbmopen|dbmopen($filename, $mode) {}'
      'dbmreplace|dbmreplace($dbm_identifier, $key, $value) {}'
      'dbx_close|dbx_close($dbx_link) {}'
      
        'dbx_compare|dbx_compare($row_x, $row_y, $columnname, $flags = nu' +
        'll) {}'
      
        'dbx_connect|dbx_connect($module_name, $host, $db, $username, $pa' +
        'ssword, $persistent = null) {}'
      'dbx_error|dbx_error($dbx_link) {}'
      'dbx_esc|dbx_esc($dbx_link, $sz) {}'
      'dbx_query|dbx_query($dbx_link, $sql_statement, $flags = null) {}'
      'dbx_sort|dbx_sort($dbx_result, $compare_function_name) {}'
      'dcgettext|dcgettext($domain_name, $msgid, $category) {}'
      
        'dcngettext|dcngettext ($domain, $msgid1, $msgid2, $n, $category)' +
        ' {}'
      'deaggregate|deaggregate($obj, $class = null) {}'
      'debug_backtrace|debug_backtrace() {}'
      'debug_zval_dump|debug_zval_dump($var) {}'
      'decbin|decbin($decimal_number) {}'
      'dechex|dechex($decimal_number) {}'
      'declare  |declare  '
      'decoct|decoct($decimal_number) {}'
      'default|default'
      'define|define($constant_name, $value, $case_sensitive=true) {}'
      'define_syslog_variables|define_syslog_variables() {}'
      'defined|defined($constant_name) {}'
      'deg2rad|deg2rad($number) {}'
      'dgettext|dgettext($domain_name, $msgid) {}'
      'die()|die()'
      'dio_close|dio_close($fd) {}'
      'dio_fcntl|dio_fcntl($fd, $cmd, $arg) {}'
      'dio_open|dio_open($filename, $flags, $mode) {}'
      'dio_read|dio_read($fd, $n) {}'
      'dio_seek|dio_seek($fd, $pos, $whence) {}'
      'dio_stat|dio_stat($fd) {}'
      'dio_tcsetattr|dio_tcsetattr($fd, $args) {}'
      'dio_truncate|dio_truncate($fd, $offset) {}'
      'dio_write|dio_write($fd, $data, $len) {}'
      'dir|dir($directory) {}'
      'dirname|dirname($path) {}'
      'disk_free_space|disk_free_space($path) {}'
      'disk_total_space|disk_total_space($path) {}'
      'diskfreespace|diskfreespace($path) {}'
      'dl|dl($extension_filename) {}'
      'dngettext|dngettext ($domain, $msgid1, $msgid2, $count) {}'
      'do|do'
      'doctype|doctype() {}'
      'document_element|document_element($domnode) {}'
      'domattribute|domattribute($name, $value) {}'
      'domcdata|domcdata($content) {}'
      'domcomment|domcomment($content) {}'
      'domdocument|domdocument($xmldoc, $mode, $error) {}'
      'domelement|domelement($name) {}'
      'domentityreference|domentityreference($name) {}'
      'domnode|domnode($name) {}'
      'domprocessinginstruction|domprocessinginstruction($name) {}'
      'domtext|domtext($content) {}'
      'domxml_add_root|domxml_add_root($name) {}'
      'domxml_attr_set_value|domxml_attr_set_value($content) {}'
      'domxml_attributes|domxml_attributes() {}'
      'domxml_children|domxml_children() {}'
      'domxml_doc_get_root|domxml_doc_get_root($domnode) {}'
      'domxml_dtd|domxml_dtd() {}'
      
        'domxml_dumpmem|domxml_dumpmem($doc_handle, $format = null, $enco' +
        'ding = null) {}'
      'domxml_element|domxml_element($name) {}'
      'domxml_get_attribute|domxml_get_attribute($attrname) {}'
      'domxml_getattr|domxml_getattr($attrname) {}'
      'domxml_new_child|domxml_new_child($name, $content) {}'
      'domxml_new_doc|domxml_new_doc($version) {}'
      'domxml_new_xmldoc|domxml_new_xmldoc($version) {}'
      'domxml_open_file|domxml_open_file($filename, $mode, $error) {}'
      'domxml_open_mem|domxml_open_mem($xmldoc, $mode, $error) {}'
      'domxml_parser|domxml_parser($buf = null, $filename) {}'
      'domxml_root|domxml_root($domnode) {}'
      'domxml_set_attribute|domxml_set_attribute($attrname, $value) {}'
      'domxml_set_root|domxml_set_root($domnode) {}'
      'domxml_setattr|domxml_setattr($attrname, $value) {}'
      
        'domxml_substitute_entities_default|domxml_substitute_entities_de' +
        'fault($enable) {}'
      'domxml_test|domxml_test($id) {}'
      'domxml_unlink_node|domxml_unlink_node($node = null) {}'
      'domxml_version|domxml_version() {}'
      'domxml_xmltree|domxml_xmltree($xmltree) {}'
      
        'domxml_xslt_stylesheet|domxml_xslt_stylesheet($xsltstylesheet) {' +
        '}'
      
        'domxml_xslt_stylesheet_doc|domxml_xslt_stylesheet_doc($xmldoc) {' +
        '}'
      
        'domxml_xslt_stylesheet_file|domxml_xslt_stylesheet_file($filenam' +
        'e) {}'
      'domxml_xslt_version|domxml_xslt_version() {}'
      'doubleval|doubleval($var) {}'
      'drawarc|drawarc($r, $startAngle, $endAngle) {}'
      'drawcircle|drawcircle($r) {}'
      'drawcubic|drawcubic($bx, $by, $cx, $cy, $dx, $dy) {}'
      
        'drawcurve|drawcurve($adx, $ady, $bdx, $bdy, $cdx = null, $cdy) {' +
        '}'
      'drawcurveto|drawcurveto($ax, $ay, $bx, $by, $dx = null, $dy) {}'
      'drawglyph|drawglyph($font, $character, $size = null) {}'
      'drawline|drawline($dx, $dy) {}'
      'drawlineto|drawlineto($x, $y) {}'
      
        'dump_file|dump_file($filename, $compressmode = null, $format = n' +
        'ull) {}'
      
        'dump_mem|dump_mem($doc_handle, $format = null, $encoding = null)' +
        ' {}'
      
        'dump_mem_file|dump_mem_file($filename, $compressmode = null, $fo' +
        'rmat = null) {}'
      
        'dump_node|dump_node($doc_handle, $node_handle, $format = null, $' +
        'level = null) {}'
      
        'dumpmem|dumpmem($doc_handle, $format = null, $encoding = null) {' +
        '}'
      'each|each($arr) {}'
      'easter_date|easter_date($year = null) {}'
      'easter_days|easter_days($year = null, $method = null) {}'
      'echo()|echo()'
      'else|else'
      'elseif|elseif'
      'empty()|empty()  '
      'end|end($chunk = null) {}'
      'end_document|end_document() {}'
      'end_element|end_element($tagname) {}'
      'enddeclare|enddeclare'
      'endfor|endfor'
      'endforeach  |endforeach  '
      'endif|endif'
      'endswitch|endswitch'
      'endwhile|endwhile'
      'entities|entities() {}'
      'entity_reference|entity_reference($reference) {}'
      'ereg|ereg($pattern, $string, $registers = null) {}'
      'ereg_replace|ereg_replace($pattern, $replacement, $string) {}'
      'eregi|eregi($pattern, $string, $registers = null) {}'
      'eregi_replace|eregi_replace($pattern, $replacement, $string) {}'
      
        'error_log|error_log($message, $message_type = null, $destination' +
        ' = null, $extra_headers = null) {}'
      'error_reporting|error_reporting($new_error_level = null) {}'
      'escapeshellarg|escapeshellarg($arg) {}'
      'escapeshellcmd|escapeshellcmd($command) {}'
      'eval|eval'
      'exception|exception'
      'exec|exec($command, $output = null, $return_value = null) {}'
      'exif_imagetype|exif_imagetype($imagefile) {}'
      
        'exif_read_data|exif_read_data($filename, $sections_needed = null' +
        ', $sub_arrays = null, $read_thumbnail) {}'
      'exif_tagname|exif_tagname($index) {}'
      
        'exif_thumbnail|exif_thumbnail($filename, &$width, &$height, &$im' +
        'agetype) {}'
      'exit()  |exit()  '
      'exp|exp($number) {}'
      'explode|explode($separator, $str, $limit = null) {}'
      'expm1|expm1($number) {}'
      'extends|extends'
      'extension_loaded|extension_loaded($extension_name) {}'
      
        'extract|extract($var_array, $extract_type = null, $prefix = null' +
        ') {}'
      'ezmlm_hash|ezmlm_hash($addr) {}'
      'fbsql|fbsql($database_name, $query, $link_identifier = null) {}'
      
        'fbsql_affected_rows|fbsql_affected_rows($link_identifier = null)' +
        ' {}'
      
        'fbsql_autocommit|fbsql_autocommit($link_identifier, $OnOff = nul' +
        'l) {}'
      
        'fbsql_blob_size|fbsql_blob_size($blob_handle, $link_identifier =' +
        ' null) {}'
      
        'fbsql_change_user|fbsql_change_user($user, $password, $database ' +
        '= null, $link_identifier = null) {}'
      
        'fbsql_clob_size|fbsql_clob_size($clob_handle, $link_identifier =' +
        ' null) {}'
      'fbsql_close|fbsql_close($link_identifier = null) {}'
      'fbsql_commit|fbsql_commit($link_identifier = null) {}'
      
        'fbsql_connect|fbsql_connect($hostname = null, $username = null, ' +
        '$password = null) {}'
      
        'fbsql_create_blob|fbsql_create_blob($blob_data, $link_identifier' +
        ' = null) {}'
      
        'fbsql_create_clob|fbsql_create_clob($clob_data, $link_identifier' +
        ' = null) {}'
      
        'fbsql_create_db|fbsql_create_db($database_name, $link_identifier' +
        ' = null) {}'
      'fbsql_data_seek|fbsql_data_seek($result, $row_number) {}'
      
        'fbsql_database|fbsql_database($link_identifier, $database = null' +
        ') {}'
      
        'fbsql_database_password|fbsql_database_password($link_identifier' +
        ', $database_password = null) {}'
      
        'fbsql_db_query|fbsql_db_query($database_name, $query, $link_iden' +
        'tifier = null) {}'
      
        'fbsql_db_status|fbsql_db_status($database_name, $link_identifier' +
        ' = null) {}'
      
        'fbsql_drop_db|fbsql_drop_db($database_name, $link_identifier = n' +
        'ull) {}'
      'fbsql_errno|fbsql_errno($link_identifier = null) {}'
      'fbsql_error|fbsql_error($link_identifier = null) {}'
      
        'fbsql_fetch_array|fbsql_fetch_array($result, $result_type = null' +
        ') {}'
      'fbsql_fetch_assoc|fbsql_fetch_assoc($result) {}'
      
        'fbsql_fetch_field|fbsql_fetch_field($result, $field_index = null' +
        ') {}'
      'fbsql_fetch_lengths|fbsql_fetch_lengths($result) {}'
      
        'fbsql_fetch_object|fbsql_fetch_object($result, $result_type = nu' +
        'll) {}'
      'fbsql_fetch_row|fbsql_fetch_row($result) {}'
      
        'fbsql_field_flags|fbsql_field_flags($result, $field_index = null' +
        ') {}'
      'fbsql_field_len|fbsql_field_len($result, $field_index = null) {}'
      
        'fbsql_field_name|fbsql_field_name($result, $field_index = null) ' +
        '{}'
      
        'fbsql_field_seek|fbsql_field_seek($result, $field_index = null) ' +
        '{}'
      
        'fbsql_field_table|fbsql_field_table($result, $field_index = null' +
        ') {}'
      
        'fbsql_field_type|fbsql_field_type($result, $field_index = null) ' +
        '{}'
      'fbsql_free_result|fbsql_free_result($result) {}'
      
        'fbsql_get_autostart_info|fbsql_get_autostart_info($link_identifi' +
        'er = null) {}'
      
        'fbsql_hostname|fbsql_hostname($link_identifier, $host_name = nul' +
        'l) {}'
      'fbsql_insert_id|fbsql_insert_id($link_identifier = null) {}'
      'fbsql_list_dbs|fbsql_list_dbs($link_identifier = null) {}'
      
        'fbsql_list_fields|fbsql_list_fields($database_name, $table_name,' +
        ' $link_identifier = null) {}'
      
        'fbsql_list_tables|fbsql_list_tables($database, $link_identifier ' +
        '= null) {}'
      'fbsql_next_result|fbsql_next_result($result) {}'
      'fbsql_num_fields|fbsql_num_fields($result) {}'
      'fbsql_num_rows|fbsql_num_rows($result) {}'
      
        'fbsql_password|fbsql_password($link_identifier, $password = null' +
        ') {}'
      
        'fbsql_pconnect|fbsql_pconnect($hostname = null, $username = null' +
        ', $password = null) {}'
      'fbsql_query|fbsql_query($query, $link_identifier = null) {}'
      
        'fbsql_read_blob|fbsql_read_blob($blob_handle, $link_identifier =' +
        ' null) {}'
      
        'fbsql_read_clob|fbsql_read_clob($clob_handle, $link_identifier =' +
        ' null) {}'
      
        'fbsql_result|fbsql_result($result, $row = null, $field = null) {' +
        '}'
      'fbsql_rollback|fbsql_rollback($link_identifier = null) {}'
      
        'fbsql_select_db|fbsql_select_db($database_name = null, $link_ide' +
        'ntifier = null) {}'
      'fbsql_set_lob_mode|fbsql_set_lob_mode($result, $lob_mode) {}'
      
        'fbsql_set_transaction|fbsql_set_transaction($link_identifier, $l' +
        'ocking, $isolation) {}'
      
        'fbsql_start_db|fbsql_start_db($database_name, $link_identifier =' +
        ' null) {}'
      
        'fbsql_stop_db|fbsql_stop_db($database_name, $link_identifier = n' +
        'ull) {}'
      'fbsql_table_name|fbsql_table_name($result, $index) {}'
      'fbsql_tablename|fbsql_tablename($result, $index) {}'
      
        'fbsql_username|fbsql_username($link_identifier, $username = null' +
        ') {}'
      'fbsql_warnings|fbsql_warnings($flag = null) {}'
      'fclose|fclose($fp) {}'
      
        'fdf_add_doc_javascript|fdf_add_doc_javascript($fdfdoc, $scriptna' +
        'me, $script) {}'
      
        'fdf_add_template|fdf_add_template($fdfdoc, $newpage, $filename, ' +
        '$template, $rename) {}'
      'fdf_close|fdf_close($fdfdoc) {}'
      'fdf_create|fdf_create() {}'
      
        'fdf_enum_values|fdf_enum_values($fdfdoc, $function, $userdata = ' +
        'null) {}'
      'fdf_errno|fdf_errno() {}'
      'fdf_error|fdf_error($errno = null) {}'
      'fdf_get_ap|fdf_get_ap($fdfdoc, $fieldname, $face, $filename) {}'
      
        'fdf_get_attachment|fdf_get_attachment($fdfdoc, $fieldname, $save' +
        'path) {}'
      'fdf_get_encoding|fdf_get_encoding($fdf) {}'
      'fdf_get_file|fdf_get_file($fdfdoc) {}'
      'fdf_get_flags|fdf_get_flags($fdfdoc, $fieldname, $whichflags) {}'
      'fdf_get_opt|fdf_get_opt($fdfdof, $fieldname, $element = null) {}'
      'fdf_get_status|fdf_get_status($fdfdoc) {}'
      
        'fdf_get_value|fdf_get_value($fdfdoc, $fieldname, $which = null) ' +
        '{}'
      'fdf_get_version|fdf_get_version($fdfdoc = null) {}'
      'fdf_header|fdf_header() {}'
      
        'fdf_next_field_name|fdf_next_field_name($fdfdoc, $fieldname = nu' +
        'll) {}'
      'fdf_open|fdf_open($filename) {}'
      'fdf_open_string|fdf_open_string($fdf_data) {}'
      'fdf_remove_item|fdf_remove_item($fdfdoc, $fieldname, $item) {}'
      'fdf_save|fdf_save($fdfdoc, $filename = null) {}'
      'fdf_save_string|fdf_save_string($fdfdoc) {}'
      
        'fdf_set_ap|fdf_set_ap($fdfdoc, $fieldname, $face, $filename, $pa' +
        'genr) {}'
      'fdf_set_encoding|fdf_set_encoding($fdf_document, $encoding) {}'
      
        'fdf_set_file|fdf_set_file($fdfdoc, $filename, $target_frame = nu' +
        'll) {}'
      
        'fdf_set_flags|fdf_set_flags($fdfdoc, $fieldname, $whichflags, $n' +
        'ewflags) {}'
      
        'fdf_set_javascript_action|fdf_set_javascript_action($fdfdoc, $fi' +
        'eldname, $whichtrigger, $script) {}'
      
        'fdf_set_on_import_javascript|fdf_set_on_import_javascript($fdfdo' +
        'c, $script, $before_data_import = null) {}'
      
        'fdf_set_opt|fdf_set_opt($fdfdoc, $fieldname, $element, $value, $' +
        'name) {}'
      'fdf_set_status|fdf_set_status($fdfdoc, $status) {}'
      
        'fdf_set_submit_form_action|fdf_set_submit_form_action($fdfdoc, $' +
        'fieldname, $whichtrigger, $url, $flags) {}'
      'fdf_set_target_frame|fdf_set_target_frame($fdfdoc, $target) {}'
      
        'fdf_set_value|fdf_set_value($fdfdoc, $fieldname, $value, $isname' +
        ' = null) {}'
      'fdf_set_version|fdf_set_version($fdfdoc, $version) {}'
      'feof|feof($fp) {}'
      'fflush|fflush($fp) {}'
      'fgetc|fgetc($fp) {}'
      
        'fgetcsv|fgetcsv($fp, $length, $delimiter = null, $enclosure = nu' +
        'll) {}'
      'fgets|fgets($fp, $length) {}'
      'fgetss|fgetss($fp, $length, $allowable_tags = null) {}'
      'file|file($filename, $use_include_path = null) {}'
      'file_exists|file_exists($filename) {}'
      
        'file_get_contents|file_get_contents($filename, $use_include_path' +
        ' = null) {}'
      'fileatime|fileatime($filename) {}'
      'filectime|filectime($filename) {}'
      'filegroup|filegroup($filename) {}'
      'fileinode|fileinode($filename) {}'
      'filemtime|filemtime($filename) {}'
      'fileowner|fileowner($filename) {}'
      'fileperms|fileperms($filename) {}'
      'filepro|filepro($directory) {}'
      'filepro_fieldcount|filepro_fieldcount() {}'
      'filepro_fieldname|filepro_fieldname($fieldnumber) {}'
      'filepro_fieldtype|filepro_fieldtype($field_number) {}'
      'filepro_fieldwidth|filepro_fieldwidth($field_number) {}'
      'filepro_retrieve|filepro_retrieve($row_number, $field_number) {}'
      'filepro_rowcount|filepro_rowcount() {}'
      'filesize|filesize($filename) {}'
      'filetype|filetype($filename) {}'
      'first_child|first_child() {}'
      'floatval|floatval($var) {}'
      'flock|flock($fp, $operation, &$wouldblock) {}'
      'floor|floor($number) {}'
      'flush|flush() {}'
      'fmod|fmod($x, $y) {}'
      'fnmatch|fnmatch($pattern, $filename, $flags = null) {}'
      
        'fopen|fopen($filename, $mode, $use_include_path = null, $context' +
        ' = null) {}'
      'for|for'
      'foreach|foreach'
      'fpassthru|fpassthru($fp) {}'
      'fputs|fputs($fp, $str, $length = null) {}'
      'fread|fread($fp, $length) {}'
      'free|free($lob) {}'
      'frenchtojd|frenchtojd($month, $day, $year) {}'
      'fribidi_charset_info|fribidi_charset_info($charset) {}'
      'fribidi_get_charsets|fribidi_get_charsets() {}'
      
        'fribidi_log2vis|fribidi_log2vis($logical_str, $direction, $chars' +
        'et) {}'
      'fscanf|fscanf($stream, $format) {}'
      'fseek|fseek($fp, $offset, $whence = null) {}'
      
        'fsockopen|fsockopen($hostname, $port, $errno = null, $errstr = n' +
        'ull, $timeout = null, $context = null) {}'
      'fstat|fstat($fp) {}'
      'ftell|ftell($fp) {}'
      'ftok|ftok($pathname, $proj) {}'
      'ftp_cdup|ftp_cdup($stream) {}'
      'ftp_chdir|ftp_chdir($stream, $directory) {}'
      'ftp_close|ftp_close($stream) {}'
      'ftp_connect|ftp_connect($host, $port = null, $timeout = null) {}'
      'ftp_delete|ftp_delete($stream, $file) {}'
      'ftp_exec|ftp_exec($stream, $command) {}'
      
        'ftp_fget|ftp_fget($stream, $fp, $remote_file, $mode, $resumepos)' +
        ' {}'
      
        'ftp_fput|ftp_fput($stream, $remote_file, $fp, $mode, $startpos) ' +
        '{}'
      
        'ftp_get|ftp_get($stream, $local_file, $remote_file, $mode, $resu' +
        'me_pos) {}'
      'ftp_get_option|ftp_get_option($stream, $option) {}'
      'ftp_login|ftp_login($stream, $username, $password) {}'
      'ftp_mdtm|ftp_mdtm($stream, $filename) {}'
      'ftp_mkdir|ftp_mkdir($stream, $directory) {}'
      'ftp_nb_continue|ftp_nb_continue($stream) {}'
      
        'ftp_nb_fget|ftp_nb_fget($stream, $fp, $remote_file, $mode, $resu' +
        'mepos) {}'
      
        'ftp_nb_fput|ftp_nb_fput($stream, $remote_file, $fp, $mode, $star' +
        'tpos) {}'
      
        'ftp_nb_get|ftp_nb_get($stream, $local_file, $remote_file, $mode,' +
        ' $resume_pos) {}'
      
        'ftp_nb_put|ftp_nb_put($stream, $remote_file, $local_file, $mode,' +
        ' $startpos) {}'
      'ftp_nlist|ftp_nlist($stream, $directory) {}'
      'ftp_pasv|ftp_pasv($stream, $pasv) {}'
      
        'ftp_put|ftp_put($stream, $remote_file, $local_file, $mode, $star' +
        'tpos) {}'
      'ftp_pwd|ftp_pwd($stream) {}'
      'ftp_quit|ftp_quit($stream) {}'
      
        'ftp_rawlist|ftp_rawlist($stream, $directory, $recursive = null) ' +
        '{}'
      'ftp_rename|ftp_rename($stream, $src, $dest) {}'
      'ftp_rmdir|ftp_rmdir($stream, $directory) {}'
      'ftp_set_option|ftp_set_option($stream, $option, $value) {}'
      'ftp_site|ftp_site($stream, $cmd) {}'
      'ftp_size|ftp_size($stream, $filename) {}'
      
        'ftp_ssl_connect|ftp_ssl_connect($host, $port = null, $timeout = ' +
        'null) {}'
      'ftp_systype|ftp_systype($stream) {}'
      'ftruncate|ftruncate($fp, $size) {}'
      'func_get_arg|func_get_arg($arg_num) {}'
      'func_get_args|func_get_args() {}'
      'func_num_args|func_num_args() {}'
      'function|function'
      'function_exists|function_exists($function_name) {}'
      'fwrite|fwrite($fp, $str, $length = null) {}'
      'gd_info|gd_info() {}'
      'get_attribute|get_attribute($attrname) {}'
      'get_attribute_node|get_attribute_node($attrname) {}'
      
        'get_browser|get_browser($browser_name = null, $return_array = nu' +
        'll) {}'
      'get_cfg_var|get_cfg_var($option_name) {}'
      'get_class|get_class($object) {}'
      'get_class_methods|get_class_methods($class) {}'
      'get_class_vars|get_class_vars($class_name) {}'
      'get_content|get_content() {}'
      'get_current_user|get_current_user() {}'
      'get_declared_classes|get_declared_classes() {}'
      'get_defined_constants|get_defined_constants() {}'
      'get_defined_functions|get_defined_functions() {}'
      'get_defined_vars|get_defined_vars() {}'
      'get_document|get_document() {}'
      'get_element_by_id|get_element_by_id($id) {}'
      'get_elements_by_tagname|get_elements_by_tagname($tagname) {}'
      'get_extension_funcs|get_extension_funcs($extension_name) {}'
      
        'get_html_translation_table|get_html_translation_table($table = n' +
        'ull, $quote_style = null) {}'
      'get_include_path|get_include_path() {}'
      'get_included_files|get_included_files() {}'
      'get_loaded_extensions|get_loaded_extensions() {}'
      'get_magic_quotes_gpc|get_magic_quotes_gpc() {}'
      'get_magic_quotes_runtime|get_magic_quotes_runtime() {}'
      
        'get_meta_tags|get_meta_tags($filename, $use_include_path = null)' +
        ' {}'
      'get_object_vars|get_object_vars($obj) {}'
      'get_parent_class|get_parent_class($object) {}'
      'get_required_files|get_required_files() {}'
      'get_resource_type|get_resource_type($res) {}'
      'get_root|get_root($domnode) {}'
      'getallheaders|getallheaders() {}'
      'getascent|getascent() {}'
      'getcwd|getcwd() {}'
      'getdate|getdate($timestamp = null) {}'
      'getdescent|getdescent() {}'
      'getelem|getelem($collection, $ndx) {}'
      'getenv|getenv($varname) {}'
      'getheight|getheight() {}'
      'gethostbyaddr|gethostbyaddr($ip_address) {}'
      'gethostbyname|gethostbyname($hostname) {}'
      'gethostbynamel|gethostbynamel($hostname) {}'
      'getimagesize|getimagesize($imagefile, $info = null) {}'
      'getlastmod|getlastmod() {}'
      'getleading|getleading() {}'
      'getmxrr|getmxrr($hostname, $mxhosts, $weight = null) {}'
      'getmygid|getmygid() {}'
      'getmyinode|getmyinode() {}'
      'getmypid|getmypid() {}'
      'getmyuid|getmyuid() {}'
      'getopt|getopt($options, $longopts = null) {}'
      'getprotobyname|getprotobyname($name) {}'
      'getprotobynumber|getprotobynumber($proto) {}'
      'getrandmax|getrandmax() {}'
      'getrusage|getrusage($who = null) {}'
      'getservbyname|getservbyname($service, $protocol) {}'
      'getservbyport|getservbyport($port, $protocol) {}'
      'getshape1|getshape1() {}'
      'getshape2|getshape2() {}'
      'gettext|gettext($msgid) {}'
      'gettimeofday|gettimeofday() {}'
      'gettype|gettype($var) {}'
      'getwidth|getwidth($str) {}'
      'glob|glob($pattern, $flags = null) {}'
      'global|global '
      'gmdate|gmdate($format, $timestamp = null) {}'
      'gmmktime|gmmktime($hour, $min, $sec, $mon, $day, $year) {}'
      'gmp_abs|gmp_abs($a) {}'
      'gmp_add|gmp_add($a, $b) {}'
      'gmp_and|gmp_and($a, $b) {}'
      'gmp_clrbit|gmp_clrbit(&$a, $index) {}'
      'gmp_cmp|gmp_cmp($a, $b) {}'
      'gmp_com|gmp_com($a) {}'
      'gmp_div|gmp_div($a, $b, $round = null) {}'
      'gmp_div_q|gmp_div_q($a, $b, $round = null) {}'
      'gmp_div_qr|gmp_div_qr($a, $b, $round = null) {}'
      'gmp_div_r|gmp_div_r($a, $b, $round = null) {}'
      'gmp_divexact|gmp_divexact($a, $b) {}'
      'gmp_fact|gmp_fact($a) {}'
      'gmp_gcd|gmp_gcd($a, $b) {}'
      'gmp_gcdext|gmp_gcdext($a, $b) {}'
      'gmp_hamdist|gmp_hamdist($a, $b) {}'
      'gmp_init|gmp_init($number, $base = null) {}'
      'gmp_intval|gmp_intval($gmpnumber) {}'
      'gmp_invert|gmp_invert($a, $b) {}'
      'gmp_jacobi|gmp_jacobi($a, $b) {}'
      'gmp_legendre|gmp_legendre($a, $b) {}'
      'gmp_mod|gmp_mod($a, $b) {}'
      'gmp_mul|gmp_mul($a, $b) {}'
      'gmp_neg|gmp_neg($a) {}'
      'gmp_or|gmp_or($a, $b) {}'
      'gmp_perfect_square|gmp_perfect_square($a) {}'
      'gmp_popcount|gmp_popcount($a) {}'
      'gmp_pow|gmp_pow($base, $exp) {}'
      'gmp_powm|gmp_powm($base, $exp, $mod) {}'
      'gmp_prob_prime|gmp_prob_prime($a, $reps) {}'
      'gmp_random|gmp_random($limiter = null) {}'
      'gmp_scan0|gmp_scan0($a, $start) {}'
      'gmp_scan1|gmp_scan1($a, $start) {}'
      'gmp_setbit|gmp_setbit(&$a, $index, $set_clear) {}'
      'gmp_sign|gmp_sign($a) {}'
      'gmp_sqrt|gmp_sqrt($a) {}'
      'gmp_sqrtrem|gmp_sqrtrem($a) {}'
      'gmp_strval|gmp_strval($gmpnumber, $base = null) {}'
      'gmp_sub|gmp_sub($a, $b) {}'
      'gmp_xor|gmp_xor($a, $b) {}'
      'gmstrftime|gmstrftime($format, $timestamp = null) {}'
      'gregoriantojd|gregoriantojd($month, $day, $year) {}'
      'gzclose|gzclose($fp) {}'
      'gzcompress|gzcompress($data, $level = null) {}'
      'gzdeflate|gzdeflate($data, $level = null) {}'
      
        'gzencode|gzencode($data, $level = null, $encoding_mode = null) {' +
        '}'
      'gzeof|gzeof($fp) {}'
      'gzfile|gzfile($filename, $use_include_path = null) {}'
      'gzgetc|gzgetc($fp) {}'
      'gzgets|gzgets($fp, $length) {}'
      'gzgetss|gzgetss($fp, $length, $allowable_tags = null) {}'
      'gzinflate|gzinflate($data, $length = null) {}'
      'gzopen|gzopen($filename, $mode, $use_include_path = null) {}'
      'gzpassthru|gzpassthru($fp) {}'
      'gzputs|gzputs($fp, $str, $length = null) {}'
      'gzread|gzread($fp, $length) {}'
      'gzrewind|gzrewind($dir_handle = null) {}'
      'gzseek|gzseek($fp, $offset, $whence = null) {}'
      'gztell|gztell($fp) {}'
      'gzuncompress|gzuncompress($data, $length = null) {}'
      'gzwrite|gzwrite($fp, $str, $length = null) {}'
      'has_attribute|has_attribute($attrname) {}'
      'has_attributes|has_attributes() {}'
      'has_child_nodes|has_child_nodes() {}'
      
        'header|header($header, $replace = null, $http_response_code = nu' +
        'll) {}'
      'headers_sent|headers_sent(&$file, &$line) {}'
      'hebrev|hebrev($str, $max_chars_per_line = null) {}'
      'hebrevc|hebrevc($str, $max_chars_per_line = null) {}'
      'hexdec|hexdec($hexadecimal_number) {}'
      'highlight_file|highlight_file($file_name, $return = null) {}'
      'highlight_string|highlight_string($string, $return = null) {}'
      'html_doc|html_doc($html_doc, $from_file = null) {}'
      'html_doc_file|html_doc_file($filename) {}'
      'html_dump_mem|html_dump_mem($doc_handle = null) {}'
      
        'html_entity_decode|html_entity_decode($string, $quote_style = nu' +
        'll, $charset = null) {}'
      
        'htmlentities|htmlentities($string, $quote_style = null, $charset' +
        ' = null) {}'
      
        'htmlspecialchars|htmlspecialchars($string, $quote_style = null, ' +
        '$charset = null) {}'
      'hw_array2objrec|hw_array2objrec($objarr) {}'
      'hw_changeobject|hw_changeobject($link, $objid, $attributes) {}'
      'hw_children|hw_children($link, $objid) {}'
      'hw_childrenobj|hw_childrenobj($link, $objid) {}'
      'hw_close|hw_close($link) {}'
      'hw_connect|hw_connect($host, $port_, $password = null) {}'
      'hw_connection_info|hw_connection_info($link) {}'
      'hw_cp|hw_cp($link, $objrec, $dest) {}'
      'hw_deleteobject|hw_deleteobject($link, $objid) {}'
      'hw_docbyanchor|hw_docbyanchor($link, $anchorid) {}'
      'hw_docbyanchorobj|hw_docbyanchorobj($link, $anchorid) {}'
      'hw_document_attributes|hw_document_attributes($doc) {}'
      'hw_document_bodytag|hw_document_bodytag($doc, $prefix = null) {}'
      'hw_document_content|hw_document_content($doc) {}'
      'hw_document_setcontent|hw_document_setcontent($doc, $content) {}'
      'hw_document_size|hw_document_size($doc) {}'
      'hw_documentattributes|hw_documentattributes($doc) {}'
      'hw_documentbodytag|hw_documentbodytag($doc, $prefix = null) {}'
      'hw_documentsize|hw_documentsize($doc) {}'
      'hw_dummy|hw_dummy($link, $id, $msgid) {}'
      'hw_edittext|hw_edittext($link, $doc) {}'
      'hw_error|hw_error($link) {}'
      'hw_errormsg|hw_errormsg($link) {}'
      'hw_free_document|hw_free_document($doc) {}'
      'hw_getanchors|hw_getanchors($link, $objid) {}'
      'hw_getanchorsobj|hw_getanchorsobj($link, $objid) {}'
      'hw_getandlock|hw_getandlock($link, $objid) {}'
      'hw_getcgi|hw_getcgi($link, $objid) {}'
      'hw_getchildcoll|hw_getchildcoll($link, $objid) {}'
      'hw_getchildcollobj|hw_getchildcollobj($link, $objid) {}'
      'hw_getchilddoccoll|hw_getchilddoccoll($link, $objid) {}'
      'hw_getchilddoccollobj|hw_getchilddoccollobj($link, $objid) {}'
      'hw_getobject|hw_getobject($link, $objid, $query = null) {}'
      
        'hw_getobjectbyftquery|hw_getobjectbyftquery($link, $query, $maxh' +
        'its) {}'
      
        'hw_getobjectbyftquerycoll|hw_getobjectbyftquerycoll($link, $coll' +
        'id, $query, $maxhits) {}'
      
        'hw_getobjectbyftquerycollobj|hw_getobjectbyftquerycollobj($link,' +
        ' $collid, $query, $maxhits) {}'
      
        'hw_getobjectbyftqueryobj|hw_getobjectbyftqueryobj($link, $query,' +
        ' $maxhits) {}'
      
        'hw_getobjectbyquery|hw_getobjectbyquery($link, $query, $maxhits)' +
        ' {}'
      
        'hw_getobjectbyquerycoll|hw_getobjectbyquerycoll($link, $collid, ' +
        '$query, $maxhits) {}'
      
        'hw_getobjectbyquerycollobj|hw_getobjectbyquerycollobj($link, $co' +
        'llid, $query, $maxhits) {}'
      
        'hw_getobjectbyqueryobj|hw_getobjectbyqueryobj($link, $query, $ma' +
        'xhits) {}'
      'hw_getparents|hw_getparents($link, $objid) {}'
      'hw_getparentsobj|hw_getparentsobj($link, $objid) {}'
      
        'hw_getrellink|hw_getrellink($link, $rootid, $sourceid, $destid) ' +
        '{}'
      'hw_getremote|hw_getremote($link, $objid) {}'
      'hw_getremotechildren|hw_getremotechildren($link, $objrec) {}'
      'hw_getsrcbydestobj|hw_getsrcbydestobj($link, $destid) {}'
      'hw_gettext|hw_gettext($link, $objid, $rootid = null) {}'
      'hw_getusername|hw_getusername($link) {}'
      'hw_identify|hw_identify($link, $username, $password) {}'
      
        'hw_incollections|hw_incollections($link, $objids, $collids, $par' +
        'a) {}'
      'hw_info|hw_info($link) {}'
      'hw_inscoll|hw_inscoll($link, $parentid, $objarr) {}'
      'hw_insdoc|hw_insdoc($link, $parentid, $objrec, $text = null) {}'
      
        'hw_insertanchors|hw_insertanchors($hwdoc, $anchorecs, $dest, $ur' +
        'lprefixes = null) {}'
      'hw_insertdocument|hw_insertdocument($link, $parentid, $doc) {}'
      'hw_insertobject|hw_insertobject($link, $objrec, $parms) {}'
      'hw_mapid|hw_mapid($link, $serverid, $destid) {}'
      
        'hw_modifyobject|hw_modifyobject($link, $objid, $remattributes, $' +
        'addattributes, $mode = null) {}'
      'hw_mv|hw_mv($link, $objrec, $from, $dest) {}'
      'hw_new_document|hw_new_document($objrec, $data, $size) {}'
      
        'hw_new_document_from_file|hw_new_document_from_file($objrec, $fi' +
        'lename) {}'
      'hw_objrec2array|hw_objrec2array($objrec, $format = null) {}'
      'hw_output_document|hw_output_document($doc) {}'
      'hw_outputdocument|hw_outputdocument($doc) {}'
      
        'hw_pconnect|hw_pconnect($host, $port, $username = null, $passwor' +
        'd = null) {}'
      'hw_pipecgi|hw_pipecgi($link, $objid) {}'
      'hw_pipedocument|hw_pipedocument($link, $objid) {}'
      'hw_root|hw_root() {}'
      'hw_setlinkroot|hw_setlinkroot($link, $rootid) {}'
      'hw_stat|hw_stat($link) {}'
      'hw_unlock|hw_unlock($link, $objid) {}'
      'hw_who|hw_who($link) {}'
      'hypot|hypot($num1, $num2) {}'
      
        'i18n_convert|i18n_convert($str, $to_encoding, $from_encoding = n' +
        'ull) {}'
      
        'i18n_discover_encoding|i18n_discover_encoding($str, $encoding_li' +
        'st = null, $strict = null) {}'
      'i18n_http_input|i18n_http_input($type = null) {}'
      'i18n_http_output|i18n_http_output($encoding = null) {}'
      
        'i18n_internal_encoding|i18n_internal_encoding($encoding = null) ' +
        '{}'
      
        'i18n_ja_jp_hantozen|i18n_ja_jp_hantozen($str, $option = null, $e' +
        'ncoding = null) {}'
      'i18n_mime_header_decode|i18n_mime_header_decode($string) {}'
      
        'i18n_mime_header_encode|i18n_mime_header_encode($str, $charset =' +
        ' null, $transfer_encoding = null, $linefeed = null) {}'
      
        'ibase_add_user|ibase_add_user($server, $dba_user_name, $dba_pass' +
        'word, $user_name, $password, $first_name = null, $middle_name = ' +
        'null, $last_name = null) {}'
      'ibase_blob_add|ibase_blob_add($blob_id, $data) {}'
      'ibase_blob_cancel|ibase_blob_cancel($blob_id) {}'
      'ibase_blob_close|ibase_blob_close($blob_id) {}'
      'ibase_blob_create|ibase_blob_create($link_identifier = null) {}'
      'ibase_blob_echo|ibase_blob_echo($blob_id_str) {}'
      'ibase_blob_get|ibase_blob_get($blob_id, $len) {}'
      
        'ibase_blob_import|ibase_blob_import($link_identifier = null, $fi' +
        'le_id) {}'
      'ibase_blob_info|ibase_blob_info($blob_id_str) {}'
      'ibase_blob_open|ibase_blob_open($blob_id) {}'
      'ibase_close|ibase_close($link_identifier = null) {}'
      'ibase_commit|ibase_commit($link_identifier) {}'
      
        'ibase_connect|ibase_connect($database, $username = null, $passwo' +
        'rd = null, $charset = null, $buffers = null, $dialect = null, $r' +
        'ole = null) {}'
      
        'ibase_delete_user|ibase_delete_user($server, $dba_user_name, $db' +
        'a_password, $username) {}'
      'ibase_errmsg|ibase_errmsg() {}'
      'ibase_execute|ibase_execute($query, $bind_args = null) {}'
      
        'ibase_fetch_assoc|ibase_fetch_assoc($result, $blob_flag = null) ' +
        '{}'
      
        'ibase_fetch_object|ibase_fetch_object($result, $blob_flag = null' +
        ') {}'
      'ibase_fetch_row|ibase_fetch_row($result, $blob_flag = null) {}'
      'ibase_field_info|ibase_field_info($result, $field_number) {}'
      'ibase_free_query|ibase_free_query($query) {}'
      'ibase_free_result|ibase_free_result($result) {}'
      
        'ibase_modify_user|ibase_modify_user($server, $dba_user_name, $db' +
        'a_password, $user_name, $password, $first_name = null, $middle_n' +
        'ame = null, $last_name = null) {}'
      'ibase_num_fields|ibase_num_fields($result) {}'
      
        'ibase_pconnect|ibase_pconnect($database, $username = null, $pass' +
        'word = null, $charset = null, $buffers = null, $dialect = null, ' +
        '$role = null) {}'
      'ibase_prepare|ibase_prepare($link_identifier = null, $query) {}'
      
        'ibase_query|ibase_query($link_identifier = null, $query = null, ' +
        '$bind_args = null) {}'
      'ibase_rollback|ibase_rollback($link_identifier) {}'
      'ibase_timefmt|ibase_timefmt($format) {}'
      
        'ibase_trans|ibase_trans($trans_args = null, $link_identifier = n' +
        'ull) {}'
      'iconv|iconv($in_charset, $out_charset, $str) {}'
      'iconv_get_encoding|iconv_get_encoding($type = null) {}'
      'iconv_set_encoding|iconv_set_encoding($type, $charset) {}'
      'ids|ids($doc_handle) {}'
      'if|if'
      'ifx_affected_rows|ifx_affected_rows($resultid) {}'
      'ifx_blobinfile_mode|ifx_blobinfile_mode($mode) {}'
      'ifx_byteasvarchar|ifx_byteasvarchar($mode) {}'
      'ifx_close|ifx_close($connid = null) {}'
      
        'ifx_connect|ifx_connect($database = null, $userid = null, $passw' +
        'ord = null) {}'
      'ifx_copy_blob|ifx_copy_blob($bid) {}'
      'ifx_create_blob|ifx_create_blob($type, $mode, $param) {}'
      'ifx_create_char|ifx_create_char($param) {}'
      'ifx_do|ifx_do($resultid) {}'
      'ifx_error|ifx_error($connection_id = null) {}'
      'ifx_errormsg|ifx_errormsg($errorcode = null) {}'
      'ifx_fetch_row|ifx_fetch_row($resultid, $position = null) {}'
      'ifx_fieldproperties|ifx_fieldproperties($resultid) {}'
      'ifx_fieldtypes|ifx_fieldtypes($resultid) {}'
      'ifx_free_blob|ifx_free_blob($bid) {}'
      'ifx_free_char|ifx_free_char($bid) {}'
      'ifx_free_result|ifx_free_result($resultid) {}'
      'ifx_get_blob|ifx_get_blob($bid) {}'
      'ifx_get_char|ifx_get_char($bid) {}'
      'ifx_getsqlca|ifx_getsqlca($resultid) {}'
      
        'ifx_htmltbl_result|ifx_htmltbl_result($resultid, $htmltableoptio' +
        'ns = null) {}'
      'ifx_nullformat|ifx_nullformat($mode) {}'
      'ifx_num_fields|ifx_num_fields($resultid) {}'
      'ifx_num_rows|ifx_num_rows($resultid) {}'
      
        'ifx_pconnect|ifx_pconnect($database = null, $userid = null, $pas' +
        'sword = null) {}'
      
        'ifx_prepare|ifx_prepare($query, $connid, $cursortype = null, $id' +
        'array = null) {}'
      
        'ifx_query|ifx_query($query, $connid, $cursortype = null, $idarra' +
        'y = null) {}'
      'ifx_textasvarchar|ifx_textasvarchar($mode) {}'
      'ifx_update_blob|ifx_update_blob($bid, $content) {}'
      'ifx_update_char|ifx_update_char($bid, $content) {}'
      'ifxus_close_slob|ifxus_close_slob($bid) {}'
      'ifxus_create_slob|ifxus_create_slob($mode) {}'
      'ifxus_free_slob|ifxus_free_slob($bid) {}'
      'ifxus_open_slob|ifxus_open_slob($bid, $mode) {}'
      'ifxus_read_slob|ifxus_read_slob($bid, $nbytes) {}'
      'ifxus_seek_slob|ifxus_seek_slob($bid, $mode, $offset) {}'
      'ifxus_tell_slob|ifxus_tell_slob($bid) {}'
      'ifxus_write_slob|ifxus_write_slob($bid, $content) {}'
      'ignore_user_abort|ignore_user_abort($value) {}'
      
        'image2wbmp|image2wbmp($im, $filename = null, $threshold = null) ' +
        '{}'
      'image_type_to_mime_type|image_type_to_mime_type($imagetype) {}'
      'imagealphablending|imagealphablending($im, $on) {}'
      'imagearc|imagearc($im, $cx, $cy, $w, $h, $s, $e, $col) {}'
      'imagechar|imagechar($im, $font, $x, $y, $c, $col) {}'
      'imagecharup|imagecharup($im, $font, $x, $y, $c, $col) {}'
      
        'imagecolorallocate|imagecolorallocate($im, $red, $green, $blue) ' +
        '{}'
      
        'imagecolorallocatealpha|imagecolorallocatealpha($im, $red, $gree' +
        'n, $blue, $alpha) {}'
      'imagecolorat|imagecolorat($im, $x, $y) {}'
      'imagecolorclosest|imagecolorclosest($im, $red, $green, $blue) {}'
      
        'imagecolorclosestalpha|imagecolorclosestalpha($im, $red, $green,' +
        ' $blue, $alpha) {}'
      
        'imagecolorclosesthwb|imagecolorclosesthwb($im, $red, $green, $bl' +
        'ue) {}'
      'imagecolordeallocate|imagecolordeallocate($im, $index) {}'
      'imagecolorexact|imagecolorexact($im, $red, $green, $blue) {}'
      
        'imagecolorexactalpha|imagecolorexactalpha($im, $red, $green, $bl' +
        'ue, $alpha) {}'
      'imagecolormatch|imagecolormatch($im1, $im2) {}'
      'imagecolorresolve|imagecolorresolve($im, $red, $green, $blue) {}'
      
        'imagecolorresolvealpha|imagecolorresolvealpha($im, $red, $green,' +
        ' $blue, $alpha) {}'
      'imagecolorset|imagecolorset($im, $col, $red, $green, $blue) {}'
      'imagecolorsforindex|imagecolorsforindex($im, $col) {}'
      'imagecolorstotal|imagecolorstotal($im) {}'
      'imagecolortransparent|imagecolortransparent($im, $col = null) {}'
      
        'imagecopy|imagecopy($dst_im, $src_im, $dst_x, $dst_y, $src_x, $s' +
        'rc_y, $src_w, $src_h) {}'
      
        'imagecopymerge|imagecopymerge($src_im, $dst_im, $dst_x, $dst_y, ' +
        '$src_x, $src_y, $src_w, $src_h, $pct) {}'
      
        'imagecopymergegray|imagecopymergegray($src_im, $dst_im, $dst_x, ' +
        '$dst_y, $src_x, $src_y, $src_w, $src_h, $pct) {}'
      
        'imagecopyresampled|imagecopyresampled($dst_im, $src_im, $dst_x, ' +
        '$dst_y, $src_x, $src_y, $dst_w, $dst_h, $src_w, $src_h) {}'
      
        'imagecopyresized|imagecopyresized($dst_im, $src_im, $dst_x, $dst' +
        '_y, $src_x, $src_y, $dst_w, $dst_h, $src_w, $src_h) {}'
      'imagecreate|imagecreate($x_size, $y_size) {}'
      'imagecreatefromgd|imagecreatefromgd($filename) {}'
      'imagecreatefromgd2|imagecreatefromgd2($filename) {}'
      
        'imagecreatefromgd2part|imagecreatefromgd2part($filename, $srcX, ' +
        '$srcY, $width, $height) {}'
      'imagecreatefromgif|imagecreatefromgif($filename) {}'
      'imagecreatefromjpeg|imagecreatefromjpeg($filename) {}'
      'imagecreatefrompng|imagecreatefrompng($filename) {}'
      'imagecreatefromstring|imagecreatefromstring($image) {}'
      'imagecreatefromwbmp|imagecreatefromwbmp($filename) {}'
      'imagecreatefromxbm|imagecreatefromxbm($filename) {}'
      'imagecreatefromxpm|imagecreatefromxpm($filename) {}'
      'imagecreatetruecolor|imagecreatetruecolor($x_size, $y_size) {}'
      
        'imagedashedline|imagedashedline($im, $x1, $y1, $x2, $y2, $col) {' +
        '}'
      'imagedestroy|imagedestroy($im) {}'
      'imageellipse|imageellipse($im, $cx, $cy, $w, $h, $color) {}'
      'imagefill|imagefill($im, $x, $y, $col) {}'
      
        'imagefilledarc|imagefilledarc($im, $cx, $cy, $w, $h, $s, $e, $co' +
        'l, $style) {}'
      
        'imagefilledellipse|imagefilledellipse($im, $cx, $cy, $w, $h, $co' +
        'lor) {}'
      
        'imagefilledpolygon|imagefilledpolygon($im, $point, $num_points, ' +
        '$col) {}'
      
        'imagefilledrectangle|imagefilledrectangle($im, $x1, $y1, $x2, $y' +
        '2, $col) {}'
      
        'imagefilltoborder|imagefilltoborder($im, $x, $y, $border, $col) ' +
        '{}'
      'imagefontheight|imagefontheight($font) {}'
      'imagefontwidth|imagefontwidth($font) {}'
      
        'imageftbbox|imageftbbox($size, $angle, $font_file, $text, $extra' +
        'info) {}'
      
        'imagefttext|imagefttext($im, $size, $angle, $x, $y, $col, $font_' +
        'file, $text, $extrainfo = null) {}'
      
        'imagegammacorrect|imagegammacorrect($im, $inputgamma, $outputgam' +
        'ma) {}'
      'imagegd|imagegd($im, $filename = null) {}'
      
        'imagegd2|imagegd2($im, $filename = null, $chunk_size = null, $ty' +
        'pe = null) {}'
      'imagegif|imagegif($im, $filename = null) {}'
      'imageinterlace|imageinterlace($im, $interlace = null) {}'
      'imageistruecolor|imageistruecolor($im) {}'
      'imagejpeg|imagejpeg($im, $filename = null, $quality = null) {}'
      'imagelayereffect|imagelayereffect($im, $effect) {}'
      'imageline|imageline($im, $x1, $y1, $x2, $y2, $col) {}'
      'imageloadfont|imageloadfont($filename) {}'
      'imagepalettecopy|imagepalettecopy($dst, $src) {}'
      'imagepng|imagepng($im, $filename = null) {}'
      'imagepolygon|imagepolygon($im, $point, $num_points, $col) {}'
      
        'imagepsbbox|imagepsbbox($text, $font, $size, $space = null, $tig' +
        'htness, $angle) {}'
      'imagepscopyfont|imagepscopyfont($font_index) {}'
      'imagepsencodefont|imagepsencodefont($font_index, $filename) {}'
      'imagepsextendfont|imagepsextendfont($font_index, $extend) {}'
      'imagepsfreefont|imagepsfreefont($font_index) {}'
      'imagepsloadfont|imagepsloadfont($pathname) {}'
      'imagepsslantfont|imagepsslantfont($font_index, $slant) {}'
      
        'imagepstext|imagepstext($image, $text, $font, $size, $xcoord, $y' +
        'coord, $space = null, $tightness, $angle, $antialias) {}'
      'imagerectangle|imagerectangle($im, $x1, $y1, $x2, $y2, $col) {}'
      'imagerotate|imagerotate($src_im, $angle, $bgdcolor) {}'
      'imagesavealpha|imagesavealpha($im, $on) {}'
      'imagesetbrush|imagesetbrush($image, $brush) {}'
      'imagesetpixel|imagesetpixel($im, $x, $y, $col) {}'
      'imagesetstyle|imagesetstyle($im, $styles) {}'
      'imagesetthickness|imagesetthickness($im, $thickness) {}'
      'imagesettile|imagesettile($image, $tile) {}'
      'imagestring|imagestring($im, $font, $x, $y, $str, $col) {}'
      'imagestringup|imagestringup($im, $font, $x, $y, $str, $col) {}'
      'imagesx|imagesx($im) {}'
      'imagesy|imagesy($im) {}'
      
        'imagetruecolortopalette|imagetruecolortopalette($im, $ditherFlag' +
        ', $colorsWanted) {}'
      'imagettfbbox|imagettfbbox($size, $angle, $font_file, $text) {}'
      
        'imagettftext|imagettftext($im, $size, $angle, $x, $y, $col, $fon' +
        't_file, $text) {}'
      'imagetypes|imagetypes() {}'
      
        'imagewbmp|imagewbmp($im, $filename = null, $foreground = null) {' +
        '}'
      'imap_8bit|imap_8bit($text) {}'
      'imap_alerts|imap_alerts() {}'
      
        'imap_append|imap_append($stream_id, $folder, $message, $options ' +
        '= null) {}'
      'imap_base64|imap_base64($text) {}'
      'imap_binary|imap_binary($text) {}'
      'imap_body|imap_body($stream_id, $msg_no, $options = null) {}'
      
        'imap_bodystruct|imap_bodystruct($stream_id, $msg_no, $section) {' +
        '}'
      'imap_check|imap_check($stream_id) {}'
      
        'imap_clearflag_full|imap_clearflag_full($stream_id, $sequence, $' +
        'flag, $options = null) {}'
      'imap_close|imap_close($stream_id, $options = null) {}'
      'imap_create|imap_create($stream_id, $mailbox) {}'
      'imap_createmailbox|imap_createmailbox($stream_id, $mailbox) {}'
      'imap_delete|imap_delete($stream_id, $msg_no, $options = null) {}'
      'imap_deletemailbox|imap_deletemailbox($stream_id, $mailbox) {}'
      'imap_errors|imap_errors() {}'
      'imap_expunge|imap_expunge($stream_id) {}'
      
        'imap_fetch_overview|imap_fetch_overview($stream_id, $msg_no, $op' +
        'tions = null) {}'
      
        'imap_fetchbody|imap_fetchbody($stream_id, $msg_no, $section, $op' +
        'tions = null) {}'
      
        'imap_fetchheader|imap_fetchheader($stream_id, $msg_no, $options ' +
        '= null) {}'
      
        'imap_fetchstructure|imap_fetchstructure($stream_id, $msg_no, $op' +
        'tions = null) {}'
      
        'imap_fetchtext|imap_fetchtext($stream_id, $msg_no, $options = nu' +
        'll) {}'
      'imap_get_quota|imap_get_quota($stream_id, $qroot) {}'
      'imap_get_quotaroot|imap_get_quotaroot($stream_id, $mbox) {}'
      
        'imap_getmailboxes|imap_getmailboxes($stream_id, $ref, $pattern) ' +
        '{}'
      
        'imap_getsubscribed|imap_getsubscribed($stream_id, $ref, $pattern' +
        ') {}'
      
        'imap_header|imap_header($stream_id, $msg_no, $from_length = null' +
        ', $subject_length = null, $default_host = null) {}'
      
        'imap_headerinfo|imap_headerinfo($stream_id, $msg_no, $from_lengt' +
        'h = null, $subject_length = null, $default_host = null) {}'
      'imap_headers|imap_headers($stream_id) {}'
      'imap_last_error|imap_last_error() {}'
      'imap_list|imap_list($stream_id, $ref, $pattern) {}'
      'imap_listmailbox|imap_listmailbox($stream_id, $ref, $pattern) {}'
      
        'imap_listsubscribed|imap_listsubscribed($stream_id, $ref, $patte' +
        'rn) {}'
      'imap_lsub|imap_lsub($stream_id, $ref, $pattern) {}'
      
        'imap_mail|imap_mail($to, $subject, $message, $additional_headers' +
        ' = null, $cc = null, $bcc = null, $rpath = null) {}'
      'imap_mail_compose|imap_mail_compose($envelope, $body) {}'
      
        'imap_mail_copy|imap_mail_copy($stream_id, $msg_no, $mailbox, $op' +
        'tions = null) {}'
      
        'imap_mail_move|imap_mail_move($stream_id, $msg_no, $mailbox, $op' +
        'tions = null) {}'
      'imap_mailboxmsginfo|imap_mailboxmsginfo($stream_id) {}'
      'imap_mime_header_decode|imap_mime_header_decode($str) {}'
      'imap_msgno|imap_msgno($stream_id, $unique_msg_id) {}'
      'imap_num_msg|imap_num_msg($stream_id) {}'
      'imap_num_recent|imap_num_recent($stream_id) {}'
      
        'imap_open|imap_open($mailbox, $user, $password, $options = null)' +
        ' {}'
      'imap_ping|imap_ping($stream_id) {}'
      'imap_qprint|imap_qprint($text) {}'
      'imap_rename|imap_rename($stream_id, $old_name, $new_name) {}'
      
        'imap_renamemailbox|imap_renamemailbox($stream_id, $old_name, $ne' +
        'w_name) {}'
      
        'imap_reopen|imap_reopen($stream_id, $mailbox, $options = null) {' +
        '}'
      
        'imap_rfc822_parse_adrlist|imap_rfc822_parse_adrlist($address_str' +
        'ing, $default_host) {}'
      
        'imap_rfc822_parse_headers|imap_rfc822_parse_headers($headers, $d' +
        'efault_host = null) {}'
      
        'imap_rfc822_write_address|imap_rfc822_write_address($mailbox, $h' +
        'ost, $personal) {}'
      'imap_scan|imap_scan($stream_id, $ref, $pattern, $content) {}'
      
        'imap_search|imap_search($stream_id, $criteria, $options = null, ' +
        '$charset = null) {}'
      
        'imap_set_quota|imap_set_quota($stream_id, $qroot, $mailbox_size)' +
        ' {}'
      'imap_setacl|imap_setacl($stream_id, $mailbox, $id, $rights) {}'
      
        'imap_setflag_full|imap_setflag_full($stream_id, $sequence, $flag' +
        ', $options = null) {}'
      
        'imap_sort|imap_sort($stream_id, $criteria, $reverse, $options = ' +
        'null, $search_criteria = null, $charset = null) {}'
      'imap_status|imap_status($stream_id, $mailbox, $options) {}'
      'imap_subscribe|imap_subscribe($stream_id, $mailbox) {}'
      'imap_thread|imap_thread($stream_id, $options = null) {}'
      'imap_timeout|imap_timeout($timeout_type, $timeout = null) {}'
      'imap_uid|imap_uid($stream_id, $msg_no) {}'
      'imap_undelete|imap_undelete($stream_id, $msg_no) {}'
      'imap_unsubscribe|imap_unsubscribe($stream_id, $mailbox) {}'
      'imap_utf7_decode|imap_utf7_decode($buf) {}'
      'imap_utf7_encode|imap_utf7_encode($buf) {}'
      'imap_utf8|imap_utf8($mime_encoded_text) {}'
      'implementation|implementation() {}'
      'implode|implode($glue = null, $pieces) {}'
      
        'import_request_variables|import_request_variables($types, $prefi' +
        'x = null) {}'
      'imported_node|imported_node($node, $recursive) {}'
      'in_array|in_array($needle, $haystack, $strict = null) {}'
      'include()|include()'
      'include_once()|include_once()'
      'ingres_autocommit|ingres_autocommit($link = null) {}'
      'ingres_close|ingres_close($link = null) {}'
      'ingres_commit|ingres_commit($link = null) {}'
      
        'ingres_connect|ingres_connect($database = null, $username = null' +
        ', $password = null) {}'
      
        'ingres_fetch_array|ingres_fetch_array($result_type = null, $link' +
        ' = null) {}'
      
        'ingres_fetch_object|ingres_fetch_object($result_type = null, $li' +
        'nk = null) {}'
      'ingres_fetch_row|ingres_fetch_row($link = null) {}'
      'ingres_field_length|ingres_field_length($index, $link = null) {}'
      'ingres_field_name|ingres_field_name($index, $link = null) {}'
      
        'ingres_field_nullable|ingres_field_nullable($index, $link = null' +
        ') {}'
      
        'ingres_field_precision|ingres_field_precision($index, $link = nu' +
        'll) {}'
      'ingres_field_scale|ingres_field_scale($index, $link = null) {}'
      'ingres_field_type|ingres_field_type($index, $link = null) {}'
      'ingres_num_fields|ingres_num_fields($link = null) {}'
      'ingres_num_rows|ingres_num_rows($link = null) {}'
      
        'ingres_pconnect|ingres_pconnect($database = null, $username = nu' +
        'll, $password = null) {}'
      'ingres_query|ingres_query($query, $link = null) {}'
      'ingres_rollback|ingres_rollback($link = null) {}'
      'ini_alter|ini_alter($varname, $newvalue) {}'
      'ini_get|ini_get($varname) {}'
      'ini_get_all|ini_get_all($extension = null) {}'
      'ini_restore|ini_restore($varname) {}'
      'ini_set|ini_set($varname, $newvalue) {}'
      'insert_before|insert_before($newnode, $refnode) {}'
      'intval|intval($var, $base = null) {}'
      'ip2long|ip2long($ip_address) {}'
      
        'iptcembed|iptcembed($iptcdata, $jpeg_file_name, $spool = null) {' +
        '}'
      'iptcparse|iptcparse($iptcdata) {}'
      
        'ircg_channel_mode|ircg_channel_mode($connection, $channel, $mode' +
        '_spec, $nick) {}'
      'ircg_disconnect|ircg_disconnect($connection, $reason) {}'
      
        'ircg_eval_ecmascript_params|ircg_eval_ecmascript_params($params)' +
        ' {}'
      'ircg_fetch_error_msg|ircg_fetch_error_msg($connection) {}'
      'ircg_get_username|ircg_get_username($connection) {}'
      'ircg_html_encode|ircg_html_encode($html_text) {}'
      'ircg_ignore_add|ircg_ignore_add($connection, $nick) {}'
      'ircg_ignore_del|ircg_ignore_del($connection, $nick) {}'
      'ircg_invite|ircg_invite($connection, $channel, $nickname) {}'
      'ircg_is_conn_alive|ircg_is_conn_alive($connection) {}'
      'ircg_join|ircg_join($connection, $channel, $chan_key = null) {}'
      'ircg_kick|ircg_kick($connection, $channel, $nick, $reason) {}'
      'ircg_list|ircg_list($connection, $channel) {}'
      
        'ircg_lookup_format_messages|ircg_lookup_format_messages($name) {' +
        '}'
      'ircg_lusers|ircg_lusers($connection) {}'
      
        'ircg_msg|ircg_msg($connection, $recipient, $message, $loop_suppr' +
        'ess = null) {}'
      'ircg_names|ircg_names($connection, $channel, $target = null) {}'
      'ircg_nick|ircg_nick($connection, $newnick) {}'
      'ircg_nickname_escape|ircg_nickname_escape($nick) {}'
      'ircg_nickname_unescape|ircg_nickname_unescape($nick) {}'
      'ircg_notice|ircg_notice($connection, $recipient, $message) {}'
      'ircg_oper|ircg_oper($connection, $name, $password) {}'
      'ircg_part|ircg_part($connection, $channel) {}'
      
        'ircg_pconnect|ircg_pconnect($username, $server = null, $port = n' +
        'ull, $format_msg_set_name = null, $ctcp_set = null, $user_detail' +
        's = null, $bailout_on_trivial = null) {}'
      
        'ircg_register_format_messages|ircg_register_format_messages($nam' +
        'e, $messages) {}'
      'ircg_set_current|ircg_set_current($connection) {}'
      'ircg_set_file|ircg_set_file($connection, $path) {}'
      
        'ircg_set_on_die|ircg_set_on_die($connection, $host, $port, $data' +
        ') {}'
      'ircg_topic|ircg_topic($connection, $channel, $topic) {}'
      'ircg_who|ircg_who($connection, $mask, $ops_only = null) {}'
      'ircg_whois|ircg_whois($connection, $nick) {}'
      'is_a|is_a($object, $class_name) {}'
      'is_array|is_array($var) {}'
      'is_blank_node|is_blank_node() {}'
      'is_bool|is_bool($var) {}'
      
        'is_callable|is_callable($var, $syntax_only = null, $callable_nam' +
        'e = null) {}'
      'is_dir|is_dir($filename) {}'
      'is_double|is_double($var) {}'
      'is_executable|is_executable($filename) {}'
      'is_file|is_file($filename) {}'
      'is_finite|is_finite($val) {}'
      'is_float|is_float($var) {}'
      'is_infinite|is_infinite($val) {}'
      'is_int|is_int($var) {}'
      'is_integer|is_integer($var) {}'
      'is_link|is_link($filename) {}'
      'is_long|is_long($var) {}'
      'is_nan|is_nan($val) {}'
      'is_null|is_null($var) {}'
      'is_numeric|is_numeric($value) {}'
      'is_object|is_object($var) {}'
      'is_readable|is_readable($filename) {}'
      'is_real|is_real($var) {}'
      'is_resource|is_resource($var) {}'
      'is_scalar|is_scalar($value) {}'
      'is_string|is_string($var) {}'
      'is_subclass_of|is_subclass_of($object, $class_name) {}'
      'is_uploaded_file|is_uploaded_file($path) {}'
      'is_writable|is_writable($filename) {}'
      'is_writeable|is_writeable($filename) {}'
      'isset()|isset()'
      'java_last_exception_clear|java_last_exception_clear() {}'
      'java_last_exception_get|java_last_exception_get() {}'
      'jddayofweek|jddayofweek($juliandaycount, $mode = null) {}'
      'jdmonthname|jdmonthname($juliandaycount, $mode) {}'
      'jdtofrench|jdtofrench($juliandaycount) {}'
      'jdtogregorian|jdtogregorian($juliandaycount) {}'
      'jdtojewish|jdtojewish($juliandaycount) {}'
      'jdtojulian|jdtojulian($juliandaycount) {}'
      'jdtounix|jdtounix($jday) {}'
      'jewishtojd|jewishtojd($month, $day, $year) {}'
      'join|join($glue = null, $pieces) {}'
      
        'jpeg2wbmp|jpeg2wbmp ($f_org, $f_dest, $d_height, $d_width, $thre' +
        'shold) {}'
      'juliantojd|juliantojd($month, $day, $year) {}'
      'key|key($array_arg) {}'
      'key_exists|key_exists($key, $search) {}'
      'krsort|krsort($array_arg, $sort_flags = null) {}'
      'ksort|ksort($array_arg, $sort_flags = null) {}'
      'labelframe|labelframe($label) {}'
      'last_child|last_child() {}'
      'lcg_value|lcg_value() {}'
      'ldap_8859_to_t61|ldap_8859_to_t61($value) {}'
      'ldap_add|ldap_add($link, $dn, $entry) {}'
      'ldap_bind|ldap_bind($link, $dn = null, $password) {}'
      'ldap_close|ldap_close($link) {}'
      'ldap_compare|ldap_compare($link, $dn, $attr, $value) {}'
      'ldap_connect|ldap_connect($host = null, $port = null) {}'
      'ldap_count_entries|ldap_count_entries($link, $result) {}'
      'ldap_delete|ldap_delete($link, $dn) {}'
      'ldap_dn2ufn|ldap_dn2ufn($dn) {}'
      'ldap_err2str|ldap_err2str($errno) {}'
      'ldap_errno|ldap_errno($link) {}'
      'ldap_error|ldap_error($link) {}'
      'ldap_explode_dn|ldap_explode_dn($dn, $with_attrib) {}'
      
        'ldap_first_attribute|ldap_first_attribute($link, $result_entry, ' +
        '$ber) {}'
      'ldap_first_entry|ldap_first_entry($link, $result) {}'
      'ldap_first_reference|ldap_first_reference($link, $result) {}'
      'ldap_free_result|ldap_free_result($result) {}'
      'ldap_get_attributes|ldap_get_attributes($link, $result_entry) {}'
      'ldap_get_dn|ldap_get_dn($link, $result_entry) {}'
      'ldap_get_entries|ldap_get_entries($link, $result) {}'
      'ldap_get_option|ldap_get_option($link, $option, $retval) {}'
      
        'ldap_get_values|ldap_get_values($link, $result_entry, $attribute' +
        ') {}'
      
        'ldap_get_values_len|ldap_get_values_len($link, $result_entry, $a' +
        'ttribute) {}'
      
        'ldap_list|ldap_list($link, $base_dn, $filter, $attrs = null, $at' +
        'trsonly = null, $sizelimit = null, $timelimit = null, $deref = n' +
        'ull) {}'
      'ldap_mod_add|ldap_mod_add($link, $dn, $entry) {}'
      'ldap_mod_del|ldap_mod_del($link, $dn, $entry) {}'
      'ldap_mod_replace|ldap_mod_replace($link, $dn, $entry) {}'
      'ldap_modify|ldap_modify($link, $dn, $entry) {}'
      
        'ldap_next_attribute|ldap_next_attribute($link, $result_entry, $b' +
        'er) {}'
      'ldap_next_entry|ldap_next_entry($link, $result_entry) {}'
      
        'ldap_next_reference|ldap_next_reference($link, $reference_entry)' +
        ' {}'
      
        'ldap_parse_reference|ldap_parse_reference($link, $reference_entr' +
        'y, $referrals) {}'
      
        'ldap_parse_result|ldap_parse_result($link, $result, $errcode, $m' +
        'atcheddn, $errmsg, $referrals) {}'
      
        'ldap_read|ldap_read($link, $base_dn, $filter, $attrs = null, $at' +
        'trsonly = null, $sizelimit = null, $timelimit = null, $deref = n' +
        'ull) {}'
      
        'ldap_rename|ldap_rename($link, $dn, $newrdn, $newparent, $delete' +
        'oldrdn) {}'
      
        'ldap_search|ldap_search($link, $base_dn, $filter, $attrs = null,' +
        ' $attrsonly = null, $sizelimit = null, $timelimit = null, $deref' +
        ' = null) {}'
      'ldap_set_option|ldap_set_option($link, $option, $newval) {}'
      'ldap_set_rebind_proc|ldap_set_rebind_proc($link, $callback) {}'
      'ldap_sort|ldap_sort($link, $result, $sortfilter) {}'
      'ldap_start_tls|ldap_start_tls($link) {}'
      'ldap_t61_to_8859|ldap_t61_to_8859($value) {}'
      'ldap_unbind|ldap_unbind($link) {}'
      'leak|leak($num_bytes = 3) {}'
      'length|length() {}'
      'levenshtein|levenshtein($str1, $str2) {}'
      'lib_get_coding_type|lib_get_coding_type() {}'
      'link|link($target, $link) {}'
      'linkinfo|linkinfo($filename) {}'
      'list()|list()  '
      'load|load($lob) {}'
      'localeconv|localeconv() {}'
      
        'localtime|localtime($timestamp = null, $associative_array = null' +
        ') {}'
      'log|log($number, $base = null) {}'
      'log10|log10($number) {}'
      'log1p|log1p($number) {}'
      'long2ip|long2ip($proper_address) {}'
      'lstat|lstat($filename) {}'
      'ltrim|ltrim($str, $character_mask = null) {}'
      'magesetantialias|magesetantialias($im, $on) {}'
      'magic_quotes_runtime|magic_quotes_runtime($new_setting) {}'
      
        'mail|mail($to, $subject, $message, $additional_headers = null, $' +
        'additional_parameters = null) {}'
      'max|max($collection) {}'
      
        'mb_convert_case|mb_convert_case($sourcestring, $mode, $encoding ' +
        '= null) {}'
      
        'mb_convert_encoding|mb_convert_encoding($str, $to_encoding, $fro' +
        'm_encoding = null) {}'
      
        'mb_convert_kana|mb_convert_kana($str, $option = null, $encoding ' +
        '= null) {}'
      
        'mb_convert_variables|mb_convert_variables($to_encoding, $from_en' +
        'coding) {}'
      'mb_decode_mimeheader|mb_decode_mimeheader($string) {}'
      
        'mb_decode_numericentity|mb_decode_numericentity($string, $convma' +
        'p, $encoding = null) {}'
      
        'mb_detect_encoding|mb_detect_encoding($str, $encoding_list = nul' +
        'l, $strict = null) {}'
      'mb_detect_order|mb_detect_order($encoding_list = null) {}'
      
        'mb_encode_mimeheader|mb_encode_mimeheader($str, $charset = null,' +
        ' $transfer_encoding = null, $linefeed = null) {}'
      
        'mb_encode_numericentity|mb_encode_numericentity($string, $convma' +
        'p, $encoding = null) {}'
      'mb_ereg|mb_ereg($pattern, $string, $registers = null) {}'
      
        'mb_ereg_match|mb_ereg_match($pattern, $string, $option = null) {' +
        '}'
      
        'mb_ereg_replace|mb_ereg_replace($pattern, $replacement, $string,' +
        ' $option = null) {}'
      'mb_ereg_search|mb_ereg_search($pattern = null, $option) {}'
      'mb_ereg_search_getpos|mb_ereg_search_getpos() {}'
      'mb_ereg_search_getregs|mb_ereg_search_getregs() {}'
      
        'mb_ereg_search_init|mb_ereg_search_init($string, $pattern = null' +
        ', $option) {}'
      
        'mb_ereg_search_pos|mb_ereg_search_pos($pattern = null, $option) ' +
        '{}'
      
        'mb_ereg_search_regs|mb_ereg_search_regs($pattern = null, $option' +
        ') {}'
      'mb_ereg_search_setpos|mb_ereg_search_setpos($position) {}'
      'mb_eregi|mb_eregi($pattern, $string, $registers = null) {}'
      
        'mb_eregi_replace|mb_eregi_replace($pattern, $replacement, $strin' +
        'g) {}'
      'mb_get_info|mb_get_info($type = null) {}'
      'mb_http_input|mb_http_input($type = null) {}'
      'mb_http_output|mb_http_output($encoding = null) {}'
      'mb_internal_encoding|mb_internal_encoding($encoding = null) {}'
      'mb_language|mb_language($language = null) {}'
      'mb_output_handler|mb_output_handler($contents, $status) {}'
      'mb_parse_str|mb_parse_str($encoded_string, $result = null) {}'
      'mb_preferred_mime_name|mb_preferred_mime_name($encoding) {}'
      'mb_regex_encoding|mb_regex_encoding($encoding = null) {}'
      'mb_regex_set_options|mb_regex_set_options($options = null) {}'
      
        'mb_send_mail|mb_send_mail($to, $subject, $message, $additional_h' +
        'eaders = null, $additional_parameters = null) {}'
      'mb_split|mb_split($pattern, $string, $limit = null) {}'
      
        'mb_strcut|mb_strcut($str, $start, $length = null, $encoding = nu' +
        'll) {}'
      
        'mb_strimwidth|mb_strimwidth($str, $start, $width, $trimmarker = ' +
        'null, $encoding = null) {}'
      'mb_strlen|mb_strlen($str, $encoding = null) {}'
      
        'mb_strpos|mb_strpos($haystack, $needle, $offset = null, $encodin' +
        'g = null) {}'
      'mb_strrpos|mb_strrpos($haystack, $needle, $encoding = null) {}'
      'mb_strtolower|mb_strtolower($sourcestring, $encoding = null) {}'
      'mb_strtoupper|mb_strtoupper($sourcestring, $encoding = null) {}'
      'mb_strwidth|mb_strwidth($str, $encoding = null) {}'
      
        'mb_substitute_character|mb_substitute_character($substchar = nul' +
        'l) {}'
      
        'mb_substr|mb_substr($str, $start, $length = null, $encoding = nu' +
        'll) {}'
      
        'mb_substr_count|mb_substr_count($haystack, $needle, $encoding = ' +
        'null) {}'
      'mbereg|mbereg($pattern, $string, $registers = null) {}'
      'mbereg_match|mbereg_match($pattern, $string, $option = null) {}'
      
        'mbereg_replace|mbereg_replace($pattern, $replacement, $string, $' +
        'option = null) {}'
      'mbereg_search|mbereg_search($pattern = null, $option) {}'
      'mbereg_search_getpos|mbereg_search_getpos() {}'
      'mbereg_search_getregs|mbereg_search_getregs() {}'
      
        'mbereg_search_init|mbereg_search_init($string, $pattern = null, ' +
        '$option) {}'
      'mbereg_search_pos|mbereg_search_pos($pattern = null, $option) {}'
      
        'mbereg_search_regs|mbereg_search_regs($pattern = null, $option) ' +
        '{}'
      'mbereg_search_setpos|mbereg_search_setpos($position) {}'
      'mberegi|mberegi($pattern, $string, $registers = null) {}'
      
        'mberegi_replace|mberegi_replace($pattern, $replacement, $string)' +
        ' {}'
      'mbregex_encoding|mbregex_encoding($encoding = null) {}'
      'mbsplit|mbsplit($pattern, $string, $limit = null) {}'
      
        'mbstrcut|mbstrcut($str, $start, $length = null, $encoding = null' +
        ') {}'
      'mbstrlen|mbstrlen($str, $encoding = null) {}'
      
        'mbstrpos|mbstrpos($haystack, $needle, $offset = null, $encoding ' +
        '= null) {}'
      'mbstrrpos|mbstrrpos($haystack, $needle, $encoding = null) {}'
      
        'mbsubstr|mbsubstr($str, $start, $length = null, $encoding = null' +
        ') {}'
      'mcal_append_event|mcal_append_event($stream_id) {}'
      'mcal_close|mcal_close($stream_id, $options = null) {}'
      
        'mcal_create_calendar|mcal_create_calendar($stream_id, $calendar)' +
        ' {}'
      
        'mcal_date_compare|mcal_date_compare($ayear, $amonth, $aday, $bye' +
        'ar, $bmonth, $bday) {}'
      'mcal_date_valid|mcal_date_valid($year, $month, $day) {}'
      'mcal_day_of_week|mcal_day_of_week($year, $month, $day) {}'
      'mcal_day_of_year|mcal_day_of_year($year, $month, $day) {}'
      'mcal_days_in_month|mcal_days_in_month($month, $leap_year) {}'
      
        'mcal_delete_calendar|mcal_delete_calendar($stream_id, $calendar)' +
        ' {}'
      'mcal_delete_event|mcal_delete_event($stream_id, $event_id) {}'
      
        'mcal_event_add_attribute|mcal_event_add_attribute($stream_id, $a' +
        'ttribute, $value) {}'
      'mcal_event_init|mcal_event_init($stream_id) {}'
      'mcal_event_set_alarm|mcal_event_set_alarm($stream_id, $alarm) {}'
      
        'mcal_event_set_category|mcal_event_set_category($stream_id, $cat' +
        'egory) {}'
      'mcal_event_set_class|mcal_event_set_class($stream_id, $class) {}'
      
        'mcal_event_set_description|mcal_event_set_description($stream_id' +
        ', $description) {}'
      
        'mcal_event_set_end|mcal_event_set_end($stream_id, $year, $month,' +
        ' $day, $hour = null, $min, $sec) {}'
      
        'mcal_event_set_recur_daily|mcal_event_set_recur_daily($stream_id' +
        ', $year, $month, $day, $interval) {}'
      
        'mcal_event_set_recur_monthly_mday|mcal_event_set_recur_monthly_m' +
        'day($stream_id, $year, $month, $day, $interval) {}'
      
        'mcal_event_set_recur_monthly_wday|mcal_event_set_recur_monthly_w' +
        'day($stream_id, $year, $month, $day, $interval) {}'
      
        'mcal_event_set_recur_none|mcal_event_set_recur_none($stream_id) ' +
        '{}'
      
        'mcal_event_set_recur_weekly|mcal_event_set_recur_weekly($stream_' +
        'id, $year, $month, $day, $interval, $weekdays) {}'
      
        'mcal_event_set_recur_yearly|mcal_event_set_recur_yearly($stream_' +
        'id, $year, $month, $day, $interval) {}'
      
        'mcal_event_set_start|mcal_event_set_start($stream_id, $year, $mo' +
        'nth, $day, $hour = null, $min, $sec) {}'
      'mcal_event_set_title|mcal_event_set_title($stream_id, $title) {}'
      'mcal_expunge|mcal_expunge($stream_id) {}'
      
        'mcal_fetch_current_stream_event|mcal_fetch_current_stream_event(' +
        '$stream_id) {}'
      
        'mcal_fetch_event|mcal_fetch_event($stream_id, $eventid, $options' +
        ' = null) {}'
      'mcal_is_leap_year|mcal_is_leap_year($year) {}'
      
        'mcal_list_alarms|mcal_list_alarms($stream_id, $year, $month, $da' +
        'y, $hour, $min, $sec) {}'
      
        'mcal_list_events|mcal_list_events($stream_id, $begindate, $endda' +
        'te = null) {}'
      
        'mcal_next_recurrence|mcal_next_recurrence($stream_id, $weekstart' +
        ', $next) {}'
      
        'mcal_open|mcal_open($calendar, $user, $password, $options = null' +
        ') {}'
      
        'mcal_popen|mcal_popen($calendar, $user, $password, $options = nu' +
        'll) {}'
      
        'mcal_rename_calendar|mcal_rename_calendar($stream_id, $src_calen' +
        'dar, $dest_calendar) {}'
      
        'mcal_reopen|mcal_reopen($stream_id, $calendar, $options = null) ' +
        '{}'
      'mcal_snooze|mcal_snooze($stream_id, $uid) {}'
      'mcal_store_event|mcal_store_event($stream_id) {}'
      'mcal_time_valid|mcal_time_valid($hour, $min, $sec) {}'
      'mcal_week_of_year|mcal_week_of_year($day, $month, $year) {}'
      
        'mcrypt_cbc|mcrypt_cbc($cipher, $key, $data, $mode, $iv = null) {' +
        '}'
      'mcrypt_cfb|mcrypt_cfb($cipher, $key, $data, $mode, $iv) {}'
      'mcrypt_create_iv|mcrypt_create_iv($size, $source) {}'
      
        'mcrypt_decrypt|mcrypt_decrypt($cipher, $key, $data, $mode, $iv) ' +
        '{}'
      'mcrypt_ecb|mcrypt_ecb($cipher, $key, $data, $mode) {}'
      
        'mcrypt_enc_get_algorithms_name|mcrypt_enc_get_algorithms_name($t' +
        'd) {}'
      'mcrypt_enc_get_block_size|mcrypt_enc_get_block_size($td) {}'
      'mcrypt_enc_get_iv_size|mcrypt_enc_get_iv_size($td) {}'
      'mcrypt_enc_get_key_size|mcrypt_enc_get_key_size($td) {}'
      'mcrypt_enc_get_modes_name|mcrypt_enc_get_modes_name($td) {}'
      
        'mcrypt_enc_get_supported_key_sizes|mcrypt_enc_get_supported_key_' +
        'sizes($td) {}'
      
        'mcrypt_enc_is_block_algorithm|mcrypt_enc_is_block_algorithm($td)' +
        ' {}'
      
        'mcrypt_enc_is_block_algorithm_mode|mcrypt_enc_is_block_algorithm' +
        '_mode($td) {}'
      'mcrypt_enc_is_block_mode|mcrypt_enc_is_block_mode($td) {}'
      'mcrypt_enc_self_test|mcrypt_enc_self_test($td) {}'
      
        'mcrypt_encrypt|mcrypt_encrypt($cipher, $key, $data, $mode, $iv) ' +
        '{}'
      'mcrypt_generic|mcrypt_generic($td, $data) {}'
      'mcrypt_generic_deinit|mcrypt_generic_deinit($td) {}'
      'mcrypt_generic_end|mcrypt_generic_end($td) {}'
      'mcrypt_generic_init|mcrypt_generic_init($td, $key, $iv) {}'
      'mcrypt_get_block_size|mcrypt_get_block_size($cipher) {}'
      'mcrypt_get_cipher_name|mcrypt_get_cipher_name($cipher) {}'
      'mcrypt_get_iv_size|mcrypt_get_iv_size($cipher, $module) {}'
      'mcrypt_get_key_size|mcrypt_get_key_size($cipher) {}'
      
        'mcrypt_list_algorithms|mcrypt_list_algorithms($lib_dir = null) {' +
        '}'
      'mcrypt_list_modes|mcrypt_list_modes($lib_dir = null) {}'
      'mcrypt_module_close|mcrypt_module_close($td) {}'
      
        'mcrypt_module_get_algo_block_size|mcrypt_module_get_algo_block_s' +
        'ize($algorithm, $lib_dir = null) {}'
      
        'mcrypt_module_get_algo_key_size|mcrypt_module_get_algo_key_size(' +
        '$algorithm, $lib_dir = null) {}'
      
        'mcrypt_module_get_supported_key_sizes|mcrypt_module_get_supporte' +
        'd_key_sizes($algorithm, $lib_dir = null) {}'
      
        'mcrypt_module_is_block_algorithm|mcrypt_module_is_block_algorith' +
        'm($algorithm, $lib_dir = null) {}'
      
        'mcrypt_module_is_block_algorithm_mode|mcrypt_module_is_block_alg' +
        'orithm_mode($mode, $lib_dir = null) {}'
      
        'mcrypt_module_is_block_mode|mcrypt_module_is_block_mode($mode, $' +
        'lib_dir = null) {}'
      
        'mcrypt_module_open|mcrypt_module_open($cipher, $cipher_directory' +
        ', $mode, $mode_directory) {}'
      
        'mcrypt_module_self_test|mcrypt_module_self_test($algorithm, $lib' +
        '_dir = null) {}'
      'mcrypt_ofb|mcrypt_ofb($cipher, $key, $data, $mode, $iv) {}'
      'mcve_adduser|mcve_adduser($conn, $admin_password, $usersetup) {}'
      
        'mcve_adduserarg|mcve_adduserarg($usersetup, $argtype, $argval) {' +
        '}'
      'mcve_bt|mcve_bt($conn, $username, $password) {}'
      'mcve_checkstatus|mcve_checkstatus($conn, $identifier) {}'
      'mcve_chkpwd|mcve_chkpwd($conn, $username, $password) {}'
      
        'mcve_chngpwd|mcve_chngpwd($conn, $admin_password, $new_password)' +
        ' {}'
      
        'mcve_completeauthorizations|mcve_completeauthorizations($conn, &' +
        '$array) {}'
      'mcve_connect|mcve_connect($conn) {}'
      'mcve_connectionerror|mcve_connectionerror($conn) {}'
      'mcve_deleteresponse|mcve_deleteresponse($conn, $identifier) {}'
      'mcve_deletetrans|mcve_deletetrans($conn, $identifier) {}'
      'mcve_deleteusersetup|mcve_deleteusersetup($usersetup) {}'
      'mcve_deluser|mcve_deluser($conn, $admin_password, $username) {}'
      'mcve_destroyconn|mcve_destroyconn($conn) {}'
      'mcve_destroyengine|mcve_destroyengine() {}'
      
        'mcve_disableuser|mcve_disableuser($conn, $admin_password, $usern' +
        'ame) {}'
      
        'mcve_edituser|mcve_edituser($conn, $admin_password, $usersetup) ' +
        '{}'
      
        'mcve_enableuser|mcve_enableuser($conn, $admin_password, $usernam' +
        'e) {}'
      
        'mcve_force|mcve_force($conn, $username, $password, $trackdata, $' +
        'account, $expdate, $amount, $authcode, $comments, $clerkid, $sta' +
        'tionid, $ptrannum) {}'
      'mcve_getcell|mcve_getcell($conn, $identifier, $column, $row) {}'
      
        'mcve_getcellbynum|mcve_getcellbynum($conn, $identifier, $column,' +
        ' $row) {}'
      
        'mcve_getcommadelimited|mcve_getcommadelimited($conn, $identifier' +
        ') {}'
      
        'mcve_getheader|mcve_getheader($conn, $identifier, $column_num) {' +
        '}'
      'mcve_getuserarg|mcve_getuserarg($usersetup, $argtype) {}'
      'mcve_getuserparam|mcve_getuserparam($conn, $identifier, $key) {}'
      
        'mcve_gft|mcve_gft($conn, $username, $password, $type, $account, ' +
        '$clerkid, $stationid, $comments, $ptrannum, $startdate, $enddate' +
        ') {}'
      
        'mcve_gl|mcve_gl($conn, $username, $password, $type, $account, $b' +
        'atch, $clerkid, $stationid, $comments, $ptrannum, $startdate, $e' +
        'nddate) {}'
      
        'mcve_gut|mcve_gut($conn, $username, $password, $type, $account, ' +
        '$clerkid, $stationid, $comments, $ptrannum, $startdate, $enddate' +
        ') {}'
      'mcve_initconn|mcve_initconn() {}'
      'mcve_initengine|mcve_initengine($location) {}'
      'mcve_initusersetup|mcve_initusersetup() {}'
      
        'mcve_iscommadelimited|mcve_iscommadelimited($conn, $identifier) ' +
        '{}'
      'mcve_liststats|mcve_liststats($conn, $admin_password) {}'
      'mcve_listusers|mcve_listusers($conn, $admin_password) {}'
      'mcve_maxconntimeout|mcve_maxconntimeout($conn, $secs) {}'
      'mcve_monitor|mcve_monitor($conn) {}'
      'mcve_numcolumns|mcve_numcolumns($conn, $identifier) {}'
      'mcve_numrows|mcve_numrows($conn, $identifier) {}'
      
        'mcve_override|mcve_override($conn, $username, $password, $trackd' +
        'ata, $account, $expdate, $amount, $street, $zip, $cv, $comments,' +
        ' $clerkid, $stationid, $ptrannum) {}'
      
        'mcve_parsecommadelimited|mcve_parsecommadelimited($conn, $identi' +
        'fier) {}'
      'mcve_ping|mcve_ping($conn) {}'
      
        'mcve_preauth|mcve_preauth($conn, $username, $password, $trackdat' +
        'a, $account, $expdate, $amount, $street, $zip, $cv, $comments, $' +
        'clerkid, $stationid, $ptrannum) {}'
      
        'mcve_preauthcompletion|mcve_preauthcompletion($conn, $username, ' +
        '$password, $finalamount, $sid, $ptrannum) {}'
      
        'mcve_qc|mcve_qc($conn, $username, $password, $clerkid, $stationi' +
        'd, $comments, $ptrannum) {}'
      
        'mcve_responseparam|mcve_responseparam($conn, $identifier, $key) ' +
        '{}'
      
        'mcve_return|mcve_return($conn, $username, $password, $trackdata,' +
        ' $account, $expdate, $amount, $comments, $clerkid, $stationid, $' +
        'ptrannum) {}'
      'mcve_returncode|mcve_returncode($conn, $identifier) {}'
      'mcve_returnstatus|mcve_returnstatus($conn, $identifier) {}'
      
        'mcve_sale|mcve_sale($conn, $username, $password, $trackdata, $ac' +
        'count, $expdate, $amount, $street, $zip, $cv, $comments, $clerki' +
        'd, $stationid, $ptrannum) {}'
      'mcve_setblocking|mcve_setblocking($conn, $tf) {}'
      'mcve_setdropfile|mcve_setdropfile($conn, $directory) {}'
      'mcve_setip|mcve_setip($conn, $host, $port) {}'
      'mcve_setssl|mcve_setssl($conn, $host, $port) {}'
      
        'mcve_setssl_files|mcve_setssl_files($sslkeyfile, $sslcertfile) {' +
        '}'
      'mcve_settimeout|mcve_settimeout($conn, $seconds) {}'
      'mcve_settle|mcve_settle($conn, $username, $password, $batch) {}'
      'mcve_text_avs|mcve_text_avs($code) {}'
      'mcve_text_code|mcve_text_code($code) {}'
      'mcve_text_cv|mcve_text_cv($code) {}'
      'mcve_transactionauth|mcve_transactionauth($conn, $identifier) {}'
      'mcve_transactionavs|mcve_transactionavs($conn, $identifier) {}'
      
        'mcve_transactionbatch|mcve_transactionbatch($conn, $identifier) ' +
        '{}'
      'mcve_transactioncv|mcve_transactioncv($conn, $identifier) {}'
      'mcve_transactionid|mcve_transactionid($conn, $identifier) {}'
      'mcve_transactionitem|mcve_transactionitem($conn, $identifier) {}'
      'mcve_transactionssent|mcve_transactionssent($conn) {}'
      'mcve_transactiontext|mcve_transactiontext($conn, $identifier) {}'
      'mcve_transinqueue|mcve_transinqueue($conn) {}'
      'mcve_transnew|mcve_transnew($conn) {}'
      'mcve_transparam|mcve_transparam($conn, $identifier, $key) {}'
      'mcve_transsend|mcve_transsend($conn, $identifier) {}'
      'mcve_ub|mcve_ub($conn, $username, $password) {}'
      'mcve_uwait|mcve_uwait($microsecs) {}'
      'mcve_verifyconnection|mcve_verifyconnection($conn, $tf) {}'
      'mcve_verifysslcert|mcve_verifysslcert($conn, $tf) {}'
      
        'mcve_void|mcve_void($conn, $username, $password, $sid, $ptrannum' +
        ') {}'
      'md5|md5($str) {}'
      'md5_file|md5_file($filename) {}'
      'mdecrypt_generic|mdecrypt_generic($td, $data) {}'
      'memory_get_usage|memory_get_usage() {}'
      'metaphone|metaphone($text, $phones) {}'
      'method_exists|method_exists($object, $method) {}'
      'mhash|mhash($hash, $data, $key = null) {}'
      'mhash_count|mhash_count() {}'
      'mhash_get_block_size|mhash_get_block_size($hash) {}'
      'mhash_get_hash_name|mhash_get_hash_name($hash) {}'
      
        'mhash_keygen_s2k|mhash_keygen_s2k($hash, $input_password, $salt,' +
        ' $bytes) {}'
      'microtime|microtime() {}'
      'mime_content_type|mime_content_type($filename) {}'
      'min|min($arg1, $arg2 = null) {}'
      'ming_setcubicthreshold|ming_setcubicthreshold ($threshold) {}'
      'ming_setscale|ming_setscale($scale) {}'
      'ming_useswfversion|ming_useswfversion($version) {}'
      'mkdir|mkdir($pathname, $mode) {}'
      'mktime|mktime($hour, $min, $sec, $mon, $day, $year) {}'
      'money_format|money_format($format, $value) {}'
      'move|move($dx, $dy) {}'
      'move_uploaded_file|move_uploaded_file($path, $new_path) {}'
      'movepen|movepen($x, $y) {}'
      'movepento|movepento($x, $y) {}'
      'moveto|moveto($x, $y) {}'
      
        'msession_call|msession_call($fn_name, $param1 = null, $param4 = ' +
        'null) {}'
      'msession_connect|msession_connect($host, $port) {}'
      'msession_count|msession_count() {}'
      'msession_create|msession_create($session) {}'
      'msession_destroy|msession_destroy($name) {}'
      'msession_disconnect|msession_disconnect() {}'
      'msession_find|msession_find($name, $value) {}'
      'msession_get|msession_get($session, $name, $default_value) {}'
      'msession_get_array|msession_get_array($session) {}'
      'msession_get_data|msession_get_data($session) {}'
      'msession_inc|msession_inc($session, $name) {}'
      'msession_list|msession_list() {}'
      'msession_listvar|msession_listvar($name) {}'
      'msession_lock|msession_lock($name) {}'
      
        'msession_plugin|msession_plugin($session, $val, $param = null) {' +
        '}'
      'msession_randstr|msession_randstr($num_chars) {}'
      'msession_set|msession_set($session, $name, $value) {}'
      'msession_set_array|msession_set_array($session, $tuples) {}'
      'msession_set_data|msession_set_data($session, $value) {}'
      'msession_stat|msession_stat($name) {}'
      'msession_timeout|msession_timeout($session, $param = null) {}'
      'msession_uniq|msession_uniq($num_chars) {}'
      'msession_unlock|msession_unlock($session, $key) {}'
      'msg_get_queue|msg_get_queue($key, $perms = null) {}'
      
        'msg_receive|msg_receive($queue, $desiredmsgtype, &$msgtype, $max' +
        'size, $message, $unserialize = true, $flags = null, $errorcode) ' +
        '{}'
      'msg_remove_queue|msg_remove_queue($queue) {}'
      
        'msg_send|msg_send($queue, $msgtype, $message, $serialize = true,' +
        ' $blocking = true, $errorcode = null) {}'
      'msg_set_queue|msg_set_queue($queue, $data) {}'
      'msg_stat_queue|msg_stat_queue($queue) {}'
      'msql|msql($database_name, $query, $link_identifier = null) {}'
      'msql_affected_rows|msql_affected_rows($query) {}'
      'msql_close|msql_close($link_identifier = null) {}'
      
        'msql_connect|msql_connect($hostname = null, $username = null, $p' +
        'assword = null) {}'
      
        'msql_create_db|msql_create_db($database_name, $link_identifier =' +
        ' null) {}'
      
        'msql_createdb|msql_createdb($database_name, $link_identifier = n' +
        'ull) {}'
      'msql_data_seek|msql_data_seek($query, $row_number) {}'
      
        'msql_db_query|msql_db_query($database_name, $query, $link_identi' +
        'fier = null) {}'
      'msql_dbname|msql_dbname($query, $row, $field = null) {}'
      
        'msql_drop_db|msql_drop_db($database_name, $link_identifier = nul' +
        'l) {}'
      
        'msql_dropdb|msql_dropdb($database_name, $link_identifier = null)' +
        ' {}'
      'msql_error|msql_error($link_identifier = null) {}'
      
        'msql_fetch_array|msql_fetch_array($query, $result_type = null) {' +
        '}'
      
        'msql_fetch_field|msql_fetch_field($query, $field_offset = null) ' +
        '{}'
      
        'msql_fetch_object|msql_fetch_object($query, $result_type = null)' +
        ' {}'
      'msql_fetch_row|msql_fetch_row($query) {}'
      'msql_field_flags|msql_field_flags($query, $field_offset) {}'
      'msql_field_len|msql_field_len($query, $field_offet) {}'
      'msql_field_name|msql_field_name($query, $field_index) {}'
      'msql_field_seek|msql_field_seek($query, $field_offset) {}'
      'msql_field_table|msql_field_table($query, $field_offset) {}'
      'msql_field_type|msql_field_type($query, $field_offset) {}'
      'msql_fieldflags|msql_fieldflags($query, $field_offset) {}'
      'msql_fieldlen|msql_fieldlen($query, $field_offet) {}'
      'msql_fieldname|msql_fieldname($query, $field_index) {}'
      'msql_fieldtable|msql_fieldtable($query, $field_offset) {}'
      'msql_fieldtype|msql_fieldtype($query, $field_offset) {}'
      'msql_free_result|msql_free_result($query) {}'
      'msql_freeresult|msql_freeresult($query) {}'
      'msql_list_dbs|msql_list_dbs($link_identifier = null) {}'
      
        'msql_list_fields|msql_list_fields($database_name, $table_name, $' +
        'link_identifier = null) {}'
      
        'msql_list_tables|msql_list_tables($database_name, $link_identifi' +
        'er = null) {}'
      'msql_listdbs|msql_listdbs($link_identifier = null) {}'
      
        'msql_listfields|msql_listfields($database_name, $table_name, $li' +
        'nk_identifier = null) {}'
      
        'msql_listtables|msql_listtables($database_name, $link_identifier' +
        ' = null) {}'
      'msql_num_fields|msql_num_fields($query) {}'
      'msql_num_rows|msql_num_rows($query) {}'
      'msql_numfields|msql_numfields($query) {}'
      'msql_numrows|msql_numrows($query) {}'
      
        'msql_pconnect|msql_pconnect($hostname = null, $username = null, ' +
        '$password = null) {}'
      'msql_query|msql_query($query, $link_identifier = null) {}'
      'msql_regcase|msql_regcase($string) {}'
      'msql_result|msql_result($query, $row, $field = null) {}'
      
        'msql_select_db|msql_select_db($database_name, $link_identifier =' +
        ' null) {}'
      
        'msql_selectdb|msql_selectdb($database_name, $link_identifier = n' +
        'ull) {}'
      'msql_tablename|msql_tablename($query, $row, $field = null) {}'
      'mssql_affected_rows|mssql_affected_rows($link_id = null) {}'
      'mssql_bind|mssql_bind($stmt, $param_name, $var, $typ) {}'
      'mssql_close|mssql_close($link_id = null) {}'
      
        'mssql_connect|mssql_connect($host = null, $user = null, $passwor' +
        'd = null, $charset = null, $appname = null) {}'
      'mssql_data_seek|mssql_data_seek($result, $offset) {}'
      
        'mssql_deadlock_retry_count|mssql_deadlock_retry_count($retry_cou' +
        'nt) {}'
      'mssql_execute|mssql_execute($stmt, $skip_results = false) {}'
      'mssql_fetch_array|mssql_fetch_array($result) {}'
      'mssql_fetch_assoc|mssql_fetch_assoc($result) {}'
      'mssql_fetch_batch|mssql_fetch_batch($result_index) {}'
      'mssql_fetch_field|mssql_fetch_field($result, $offset = null) {}'
      
        'mssql_fetch_object|mssql_fetch_object($result, $object = null) {' +
        '}'
      'mssql_fetch_row|mssql_fetch_row($result) {}'
      
        'mssql_field_length|mssql_field_length($result_id, $offset = null' +
        ') {}'
      'mssql_field_name|mssql_field_name($result_id, $offset = null) {}'
      'mssql_field_seek|mssql_field_seek($result, $offset) {}'
      'mssql_field_type|mssql_field_type($result_id, $offset = null) {}'
      'mssql_free_result|mssql_free_result($result) {}'
      'mssql_free_statement|mssql_free_statement($result_index) {}'
      'mssql_get_last_message|mssql_get_last_message() {}'
      
        'mssql_guid_string|mssql_guid_string($binary, $short_format = nul' +
        'l) {}'
      'mssql_init|mssql_init($sp_name, $conn_id = null) {}'
      
        'mssql_min_client_severity|mssql_min_client_severity($severity) {' +
        '}'
      'mssql_min_error_severity|mssql_min_error_severity($severity) {}'
      
        'mssql_min_message_severity|mssql_min_message_severity($severity)' +
        ' {}'
      
        'mssql_min_server_severity|mssql_min_server_severity($severity) {' +
        '}'
      'mssql_next_result|mssql_next_result($result_id) {}'
      'mssql_num_fields|mssql_num_fields($result) {}'
      'mssql_num_rows|mssql_num_rows($result) {}'
      
        'mssql_pconnect|mssql_pconnect($host = null, $user = null, $passw' +
        'ord = null, $charset = null, $appname = null) {}'
      'mssql_query|mssql_query($query, $link_id = null) {}'
      'mssql_result|mssql_result($result, $row, $field) {}'
      'mssql_rows_affected|mssql_rows_affected($conn_id) {}'
      'mssql_select_db|mssql_select_db($database, $link_id = null) {}'
      
        'mssql_set_message_handler|mssql_set_message_handler($error_func)' +
        ' {}'
      
        'mssql_unbuffered_query|mssql_unbuffered_query($query, $link_id =' +
        ' null) {}'
      'mt_getrandmax|mt_getrandmax() {}'
      'mt_rand|mt_rand($min = null, $max) {}'
      'mt_srand|mt_srand($seed = null) {}'
      'multcolor|multcolor($r, $g, $b, $a = null) {}'
      
        'mysql_affected_rows|mysql_affected_rows($link_identifier = null)' +
        ' {}'
      
        'mysql_client_encoding|mysql_client_encoding($link_identifier = n' +
        'ull) {}'
      'mysql_close|mysql_close($link_identifier = null) {}'
      
        'mysql_connect|mysql_connect($hostname = null, $username = null, ' +
        '$password = null, $new = null, $flags = null) {}'
      
        'mysql_create_db|mysql_create_db($database_name, $link_identifier' +
        ' = null) {}'
      
        'mysql_createdb|mysql_createdb($database_name, $link_identifier =' +
        ' null) {}'
      'mysql_data_seek|mysql_data_seek($result, $row_number) {}'
      'mysql_db_name|mysql_db_name($result, $row, $field = null) {}'
      
        'mysql_db_query|mysql_db_query($database_name, $query, $link_iden' +
        'tifier = null) {}'
      'mysql_dbname|mysql_dbname($result, $row, $field = null) {}'
      
        'mysql_drop_db|mysql_drop_db($database_name, $link_identifier = n' +
        'ull) {}'
      
        'mysql_dropdb|mysql_dropdb($database_name, $link_identifier = nul' +
        'l) {}'
      'mysql_errno|mysql_errno($link_identifier = null) {}'
      'mysql_error|mysql_error($link_identifier = null) {}'
      'mysql_escape_string|mysql_escape_string($to_be_escaped) {}'
      
        'mysql_fetch_array|mysql_fetch_array($result, $result_type = null' +
        ') {}'
      'mysql_fetch_assoc|mysql_fetch_assoc($result) {}'
      
        'mysql_fetch_field|mysql_fetch_field($result, $field_offset = nul' +
        'l) {}'
      'mysql_fetch_lengths|mysql_fetch_lengths($result) {}'
      
        'mysql_fetch_object|mysql_fetch_object($result, $result_type = nu' +
        'll) {}'
      'mysql_fetch_row|mysql_fetch_row($result) {}'
      'mysql_field_flags|mysql_field_flags($result, $field_offset) {}'
      'mysql_field_len|mysql_field_len($result, $field_offset) {}'
      'mysql_field_name|mysql_field_name($result, $field_index) {}'
      'mysql_field_seek|mysql_field_seek($result, $field_offset) {}'
      'mysql_field_table|mysql_field_table($result, $field_offset) {}'
      'mysql_field_type|mysql_field_type($result, $field_offset) {}'
      'mysql_fieldflags|mysql_fieldflags($result, $field_offset) {}'
      'mysql_fieldlen|mysql_fieldlen($result, $field_offset) {}'
      'mysql_fieldname|mysql_fieldname($result, $field_index) {}'
      'mysql_fieldtable|mysql_fieldtable($result, $field_offset) {}'
      'mysql_fieldtype|mysql_fieldtype($result, $field_offset) {}'
      'mysql_free_result|mysql_free_result($result) {}'
      'mysql_freeresult|mysql_freeresult($result) {}'
      'mysql_get_client_info|mysql_get_client_info() {}'
      
        'mysql_get_host_info|mysql_get_host_info($link_identifier = null)' +
        ' {}'
      
        'mysql_get_proto_info|mysql_get_proto_info($link_identifier = nul' +
        'l) {}'
      
        'mysql_get_server_info|mysql_get_server_info($link_identifier = n' +
        'ull) {}'
      'mysql_info|mysql_info($link_identifier = null) {}'
      'mysql_insert_id|mysql_insert_id($link_identifier = null) {}'
      'mysql_list_dbs|mysql_list_dbs($link_identifier = null) {}'
      
        'mysql_list_fields|mysql_list_fields($database_name, $table_name,' +
        ' $link_identifier = null) {}'
      
        'mysql_list_processes|mysql_list_processes($link_identifier = nul' +
        'l) {}'
      
        'mysql_list_tables|mysql_list_tables($database_name, $link_identi' +
        'fier = null) {}'
      'mysql_listdbs|mysql_listdbs($link_identifier = null) {}'
      
        'mysql_listfields|mysql_listfields($database_name, $table_name, $' +
        'link_identifier = null) {}'
      
        'mysql_listtables|mysql_listtables($database_name, $link_identifi' +
        'er = null) {}'
      'mysql_num_fields|mysql_num_fields($result) {}'
      'mysql_num_rows|mysql_num_rows($result) {}'
      'mysql_numfields|mysql_numfields($result) {}'
      'mysql_numrows|mysql_numrows($result) {}'
      
        'mysql_pconnect|mysql_pconnect($hostname = null, $username = null' +
        ', $password = null, $flags = null) {}'
      'mysql_ping|mysql_ping($link_identifier = null) {}'
      'mysql_query|mysql_query($query, $link_identifier = null) {}'
      
        'mysql_real_escape_string|mysql_real_escape_string($to_be_escaped' +
        ', $link_identifier = null) {}'
      'mysql_result|mysql_result($result, $row, $field = null) {}'
      
        'mysql_select_db|mysql_select_db($database_name, $link_identifier' +
        ' = null) {}'
      
        'mysql_selectdb|mysql_selectdb($database_name, $link_identifier =' +
        ' null) {}'
      'mysql_stat|mysql_stat($link_identifier = null) {}'
      
        'mysql_table_name|mysql_table_name($result, $row, $field = null) ' +
        '{}'
      'mysql_tablename|mysql_tablename($result, $row, $field = null) {}'
      'mysql_thread_id|mysql_thread_id($link_identifier = null) {}'
      
        'mysql_unbuffered_query|mysql_unbuffered_query($query, $link_iden' +
        'tifier = null) {}'
      'name|name() {}'
      'namespace_decl|namespace_decl($href, $prefix) {}'
      'namespace_uri|namespace_uri() {}'
      'natcasesort|natcasesort($array_arg) {}'
      'natsort|natsort($array_arg) {}'
      'ncurses_addch|ncurses_addch($ch) {}'
      'ncurses_addchnstr|ncurses_addchnstr($s, $n) {}'
      'ncurses_addchstr|ncurses_addchstr($s) {}'
      'ncurses_addnstr|ncurses_addnstr($s, $n) {}'
      'ncurses_addstr|ncurses_addstr($text) {}'
      
        'ncurses_assume_default_colors|ncurses_assume_default_colors($fg,' +
        ' $bg) {}'
      'ncurses_attroff|ncurses_attroff($attributes) {}'
      'ncurses_attron|ncurses_attron($attributes) {}'
      'ncurses_attrset|ncurses_attrset($attributes) {}'
      'ncurses_baudrate|ncurses_baudrate() {}'
      'ncurses_beep|ncurses_beep() {}'
      'ncurses_bkgd|ncurses_bkgd($attrchar) {}'
      'ncurses_bkgdset|ncurses_bkgdset($attrchar) {}'
      
        'ncurses_border|ncurses_border($left, $right, $top, $bottom, $tl_' +
        'corner, $tr_corner, $bl_corner, $br_corner) {}'
      'ncurses_bottom_panel|ncurses_bottom_panel($panel) {}'
      'ncurses_can_change_color|ncurses_can_change_color() {}'
      'ncurses_cbreak|ncurses_cbreak() {}'
      'ncurses_clear|ncurses_clear() {}'
      'ncurses_clrtobot|ncurses_clrtobot() {}'
      'ncurses_clrtoeol|ncurses_clrtoeol() {}'
      
        'ncurses_color_content|ncurses_color_content($color, &$r, &$g, &$' +
        'b) {}'
      'ncurses_color_set|ncurses_color_set($pair) {}'
      'ncurses_curs_set|ncurses_curs_set($visibility) {}'
      'ncurses_def_prog_mode|ncurses_def_prog_mode() {}'
      'ncurses_def_shell_mode|ncurses_def_shell_mode() {}'
      'ncurses_define_key|ncurses_define_key($definition, $keycode) {}'
      'ncurses_del_panel|ncurses_del_panel($panel) {}'
      'ncurses_delay_output|ncurses_delay_output($milliseconds) {}'
      'ncurses_delch|ncurses_delch() {}'
      'ncurses_deleteln|ncurses_deleteln() {}'
      'ncurses_delwin|ncurses_delwin($window) {}'
      'ncurses_doupdate|ncurses_doupdate() {}'
      'ncurses_echo|ncurses_echo() {}'
      'ncurses_echochar|ncurses_echochar($character) {}'
      'ncurses_end|ncurses_end() {}'
      'ncurses_erase|ncurses_erase() {}'
      'ncurses_erasechar|ncurses_erasechar() {}'
      'ncurses_filter|ncurses_filter() {}'
      'ncurses_flash|ncurses_flash() {}'
      'ncurses_flushinp|ncurses_flushinp() {}'
      'ncurses_getch|ncurses_getch() {}'
      'ncurses_getmaxyx|ncurses_getmaxyx($window, &$y, &$x) {}'
      'ncurses_getmouse|ncurses_getmouse($mevent) {}'
      'ncurses_getyx|ncurses_getyx($window, &$y, &$x) {}'
      'ncurses_halfdelay|ncurses_halfdelay($tenth) {}'
      'ncurses_has_colors|ncurses_has_colors() {}'
      'ncurses_has_ic|ncurses_has_ic() {}'
      'ncurses_has_il|ncurses_has_il() {}'
      'ncurses_has_key|ncurses_has_key($keycode) {}'
      'ncurses_hide_panel|ncurses_hide_panel($panel) {}'
      'ncurses_hline|ncurses_hline($charattr, $n) {}'
      'ncurses_inch|ncurses_inch() {}'
      'ncurses_init|ncurses_init() {}'
      'ncurses_init_color|ncurses_init_color($color, $r, $g, $b) {}'
      'ncurses_init_pair|ncurses_init_pair($pair, $fg, $bg) {}'
      'ncurses_insch|ncurses_insch($character) {}'
      'ncurses_insdelln|ncurses_insdelln($count) {}'
      'ncurses_insertln|ncurses_insertln() {}'
      'ncurses_insstr|ncurses_insstr($text) {}'
      'ncurses_instr|ncurses_instr($buffer) {}'
      'ncurses_isendwin|ncurses_isendwin() {}'
      'ncurses_keyok|ncurses_keyok($keycode, $enable) {}'
      'ncurses_keypad|ncurses_keypad($window, $bf) {}'
      'ncurses_killchar|ncurses_killchar() {}'
      'ncurses_longname|ncurses_longname() {}'
      'ncurses_meta|ncurses_meta($window, $_8bit) {}'
      'ncurses_mouse_trafo|ncurses_mouse_trafo($y, $x, $toscreen) {}'
      'ncurses_mouseinterval|ncurses_mouseinterval($milliseconds) {}'
      'ncurses_mousemask|ncurses_mousemask($newmask, &$oldmask) {}'
      'ncurses_move|ncurses_move($y, $x) {}'
      
        'ncurses_move_panel|ncurses_move_panel($panel, $startx, $starty) ' +
        '{}'
      'ncurses_mvaddch|ncurses_mvaddch($y, $x, $c) {}'
      'ncurses_mvaddchnstr|ncurses_mvaddchnstr($y, $x, $s, $n) {}'
      'ncurses_mvaddchstr|ncurses_mvaddchstr($y, $x, $s) {}'
      'ncurses_mvaddnstr|ncurses_mvaddnstr($y, $x, $s, $n) {}'
      'ncurses_mvaddstr|ncurses_mvaddstr($y, $x, $s) {}'
      'ncurses_mvcur|ncurses_mvcur($old_y, $old_x, $new_y, $new_x) {}'
      'ncurses_mvdelch|ncurses_mvdelch($y, $x) {}'
      'ncurses_mvgetch|ncurses_mvgetch($y, $x) {}'
      'ncurses_mvhline|ncurses_mvhline($y, $x, $attrchar, $n) {}'
      'ncurses_mvinch|ncurses_mvinch($y, $x) {}'
      'ncurses_mvvline|ncurses_mvvline($y, $x, $attrchar, $n) {}'
      'ncurses_mvwaddstr|ncurses_mvwaddstr($window, $y, $x, $text) {}'
      'ncurses_napms|ncurses_napms($milliseconds) {}'
      'ncurses_new_panel|ncurses_new_panel($window) {}'
      'ncurses_newpad|ncurses_newpad($rows, $cols) {}'
      'ncurses_newwin|ncurses_newwin($rows, $cols, $y, $x) {}'
      'ncurses_nl|ncurses_nl() {}'
      'ncurses_nocbreak|ncurses_nocbreak() {}'
      'ncurses_noecho|ncurses_noecho() {}'
      'ncurses_nonl|ncurses_nonl() {}'
      'ncurses_noqiflush|ncurses_noqiflush() {}'
      'ncurses_noraw|ncurses_noraw() {}'
      'ncurses_pair_content|ncurses_pair_content($pair, &$f, &$b) {}'
      'ncurses_panel_above|ncurses_panel_above($panel) {}'
      'ncurses_panel_below|ncurses_panel_below($panel) {}'
      'ncurses_panel_window|ncurses_panel_window($panel) {}'
      
        'ncurses_pnoutrefresh|ncurses_pnoutrefresh($pad, $pminrow, $pminc' +
        'ol, $sminrow, $smincol, $smaxrow, $smaxcol) {}'
      
        'ncurses_prefresh|ncurses_prefresh($pad, $pminrow, $pmincol, $smi' +
        'nrow, $smincol, $smaxrow, $smaxcol) {}'
      'ncurses_putp|ncurses_putp($text) {}'
      'ncurses_qiflush|ncurses_qiflush() {}'
      'ncurses_raw|ncurses_raw() {}'
      'ncurses_refresh|ncurses_refresh($ch) {}'
      'ncurses_replace_panel|ncurses_replace_panel($panel, $window) {}'
      'ncurses_reset_prog_mode|ncurses_reset_prog_mode() {}'
      'ncurses_reset_shell_mode|ncurses_reset_shell_mode() {}'
      'ncurses_resetty|ncurses_resetty() {}'
      'ncurses_savetty|ncurses_savetty() {}'
      'ncurses_scr_dump|ncurses_scr_dump($filename) {}'
      'ncurses_scr_init|ncurses_scr_init($filename) {}'
      'ncurses_scr_restore|ncurses_scr_restore($filename) {}'
      'ncurses_scr_set|ncurses_scr_set($filename) {}'
      'ncurses_scrl|ncurses_scrl($count) {}'
      'ncurses_show_panel|ncurses_show_panel($panel) {}'
      'ncurses_slk_attr|ncurses_slk_attr() {}'
      'ncurses_slk_attroff|ncurses_slk_attroff($intarg) {}'
      'ncurses_slk_attron|ncurses_slk_attron($intarg) {}'
      'ncurses_slk_attrset|ncurses_slk_attrset($intarg) {}'
      'ncurses_slk_clear|ncurses_slk_clear() {}'
      'ncurses_slk_color|ncurses_slk_color($intarg) {}'
      'ncurses_slk_init|ncurses_slk_init($intarg) {}'
      'ncurses_slk_noutrefresh|ncurses_slk_noutrefresh() {}'
      'ncurses_slk_refresh|ncurses_slk_refresh() {}'
      'ncurses_slk_restore|ncurses_slk_restore() {}'
      'ncurses_slk_set|ncurses_slk_set($labelnr, $label, $format) {}'
      'ncurses_slk_touch|ncurses_slk_touch() {}'
      'ncurses_standend|ncurses_standend() {}'
      'ncurses_standout|ncurses_standout() {}'
      'ncurses_start_color|ncurses_start_color() {}'
      'ncurses_termattrs|ncurses_termattrs() {}'
      'ncurses_termname|ncurses_termname() {}'
      'ncurses_timeout|ncurses_timeout($millisec) {}'
      'ncurses_top_panel|ncurses_top_panel($panel) {}'
      'ncurses_typeahead|ncurses_typeahead($fd) {}'
      'ncurses_ungetch|ncurses_ungetch($keycode) {}'
      'ncurses_ungetmouse|ncurses_ungetmouse($mevent) {}'
      'ncurses_update_panels|ncurses_update_panels() {}'
      'ncurses_use_default_colors|ncurses_use_default_colors() {}'
      'ncurses_use_env|ncurses_use_env($flag) {}'
      'ncurses_use_extended_names|ncurses_use_extended_names($flag) {}'
      'ncurses_vidattr|ncurses_vidattr($intarg) {}'
      'ncurses_vline|ncurses_vline($charattr, $n) {}'
      'ncurses_waddch|ncurses_waddch($window, $ch) {}'
      'ncurses_waddstr|ncurses_waddstr($window, $str, $n = null) {}'
      
        'ncurses_wborder|ncurses_wborder($window, $left, $right, $top, $b' +
        'ottom, $tl_corner, $tr_corner, $bl_corner, $br_corner) {}'
      'ncurses_wclear|ncurses_wclear($window) {}'
      'ncurses_wcolor_set|ncurses_wcolor_set($window, $color_pair) {}'
      'ncurses_werase|ncurses_werase($window) {}'
      'ncurses_wgetch|ncurses_wgetch($window) {}'
      'ncurses_whline|ncurses_whline($window, $charattr, $n) {}'
      
        'ncurses_wmouse_trafo|ncurses_wmouse_trafo($window, $y, $x, $tosc' +
        'reen) {}'
      'ncurses_wmove|ncurses_wmove($window, $y, $x) {}'
      'ncurses_wnoutrefresh|ncurses_wnoutrefresh($window) {}'
      'ncurses_wrefresh|ncurses_wrefresh($window) {}'
      'ncurses_wvline|ncurses_wvline($window, $charattr, $n) {}'
      'new|new'
      'new_child|new_child($name, $content) {}'
      'new_xmldoc|new_xmldoc($version) {}'
      'next|next($array_arg) {}'
      'next_sibling|next_sibling() {}'
      'nextframe|nextframe() {}'
      'ngettext|ngettext($MSGID1, $MSGID2, $N) {}'
      'nl2br|nl2br($str) {}'
      'nl_langinfo|nl_langinfo($item) {}'
      'node|node($name) {}'
      'node_children|node_children($node = null) {}'
      'node_name|node_name() {}'
      'node_namespace|node_namespace($node = null) {}'
      'node_specified|node_specified() {}'
      'node_type|node_type() {}'
      'node_value|node_value() {}'
      'notations|notations() {}'
      'notes_body|notes_body($server, $mailbox, $msg_number) {}'
      
        'notes_copy_db|notes_copy_db($from_database_name, $to_database_na' +
        'me, $title = null) {}'
      'notes_create_db|notes_create_db($database_name) {}'
      
        'notes_create_note|notes_create_note($database_name, $form_name) ' +
        '{}'
      'notes_drop_db|notes_drop_db($database_name) {}'
      
        'notes_find_note|notes_find_note($database_name, $name, $type = n' +
        'ull) {}'
      
        'notes_header_info|notes_header_info($server, $mailbox, $msg_numb' +
        'er) {}'
      'notes_list_msgs|notes_list_msgs($db) {}'
      
        'notes_mark_read|notes_mark_read($database_name, $user_name, $not' +
        'e_id) {}'
      
        'notes_mark_unread|notes_mark_unread($database_name, $user_name, ' +
        '$note_id) {}'
      'notes_nav_create|notes_nav_create($database_name, $name) {}'
      'notes_search|notes_search($database_name, $keywords) {}'
      'notes_unread|notes_unread($database_name, $user_name) {}'
      'notes_version|notes_version($database_name) {}'
      'nsapi_request_headers|nsapi_request_headers() {}'
      'nsapi_response_headers|nsapi_response_headers() {}'
      'nsapi_virtual|nsapi_virtual($uri) {}'
      
        'number_format|number_format($number, $num_decimal_places = null,' +
        ' $dec_seperator = null, $thousands_seperator) {}'
      'o2_mkdate|o2_mkdate($date, $years, $months, $days){}'
      'o2_mktime|o2_mktime($hour, $hours, $minutes, $seconds){}'
      'o2_file2http|o2_file2http($url){}'
      
        'ocibindbyname|ocibindbyname($stmt, $name, &$var, $maxlength = nu' +
        'll, $type = null) {}'
      'ocicancel|ocicancel($stmt) {}'
      'ocicolumnisnull|ocicolumnisnull($stmt, $col) {}'
      'ocicolumnname|ocicolumnname($stmt, $col) {}'
      'ocicolumnprecision|ocicolumnprecision($stmt, $col) {}'
      'ocicolumnscale|ocicolumnscale($stmt, $col) {}'
      'ocicolumnsize|ocicolumnsize($stmt, $col) {}'
      'ocicolumntype|ocicolumntype($stmt, $col) {}'
      'ocicolumntyperaw|ocicolumntyperaw($stmt, $col) {}'
      'ocicommit|ocicommit($conn) {}'
      
        'ocidefinebyname|ocidefinebyname($stmt, $name, &$var, $type = nul' +
        'l) {}'
      'ocierror|ocierror($stmt = null) {}'
      'ociexecute|ociexecute($stmt, $mode = null) {}'
      'ocifetch|ocifetch($stmt) {}'
      'ocifetchinto|ocifetchinto($stmt, &$output, $mode = null) {}'
      
        'ocifetchstatement|ocifetchstatement($stmt, &$output, $skip, $max' +
        'rows = null, $flags = null) {}'
      'ocifreecursor|ocifreecursor($stmt) {}'
      'ocifreestatement|ocifreestatement($stmt) {}'
      'ociinternaldebug|ociinternaldebug($onoff) {}'
      'ocilogoff|ocilogoff($conn) {}'
      'ocilogon|ocilogon($user, $pass, $db = null) {}'
      
        'ocinewcollection|ocinewcollection($connection, $tdo, $schema = n' +
        'ull) {}'
      'ocinewcursor|ocinewcursor($conn) {}'
      'ocinewdescriptor|ocinewdescriptor($connection, $type = null) {}'
      'ocinlogon|ocinlogon($user, $pass, $db = null) {}'
      'ocinumcols|ocinumcols($stmt) {}'
      'ociparse|ociparse($conn, $query) {}'
      
        'ocipasswordchange|ocipasswordchange($conn, $username, $old_passw' +
        'ord, $new_password) {}'
      'ociplogon|ociplogon($user, $pass, $db = null) {}'
      'ociresult|ociresult($stmt, $column) {}'
      'ocirollback|ocirollback($conn) {}'
      'ocirowcount|ocirowcount($stmt) {}'
      'ociserverversion|ociserverversion($conn) {}'
      'ocisetprefetch|ocisetprefetch($stmt, $prefetch_rows) {}'
      'ocistatementtype|ocistatementtype($stmt) {}'
      'octdec|octdec($octal_number) {}'
      
        'odbc_autocommit|odbc_autocommit($connection_id, $OnOff = null) {' +
        '}'
      'odbc_binmode|odbc_binmode($result_id, $mode) {}'
      'odbc_close|odbc_close($connection_id) {}'
      'odbc_close_all|odbc_close_all() {}'
      
        'odbc_columnprivileges|odbc_columnprivileges($connection_id, $cat' +
        'alog, $schema, $table, $column) {}'
      
        'odbc_columns|odbc_columns($connection_id, $qualifier, $owner, $t' +
        'able_name, $column_name) {}'
      'odbc_commit|odbc_commit($connection_id) {}'
      
        'odbc_connect|odbc_connect($DSN, $user, $password, $cursor_option' +
        ' = null) {}'
      'odbc_cursor|odbc_cursor($result_id) {}'
      
        'odbc_data_source|odbc_data_source($connection_id, $fetch_type) {' +
        '}'
      'odbc_do|odbc_do($connection_id, $query, $flags = null) {}'
      'odbc_error|odbc_error($connection_id = null) {}'
      'odbc_errormsg|odbc_errormsg($connection_id = null) {}'
      'odbc_exec|odbc_exec($connection_id, $query, $flags = null) {}'
      
        'odbc_execute|odbc_execute($result_id, $parameters_array = null) ' +
        '{}'
      'odbc_fetch_array|odbc_fetch_array($result, $rownumber = null) {}'
      
        'odbc_fetch_into|odbc_fetch_into($result_id, $result_array, $rown' +
        'umber = null) {}'
      
        'odbc_fetch_object|odbc_fetch_object($result, $rownumber = null) ' +
        '{}'
      'odbc_fetch_row|odbc_fetch_row($result_id, $row_number = null) {}'
      'odbc_field_len|odbc_field_len($result_id, $field_number) {}'
      'odbc_field_name|odbc_field_name($result_id, $field_number) {}'
      'odbc_field_num|odbc_field_num($result_id, $field_name) {}'
      
        'odbc_field_precision|odbc_field_precision($result_id, $field_num' +
        'ber) {}'
      'odbc_field_scale|odbc_field_scale($result_id, $field_number) {}'
      'odbc_field_type|odbc_field_type($result_id, $field_number) {}'
      
        'odbc_foreignkeys|odbc_foreignkeys($connection_id, $pk_qualifier,' +
        ' $pk_owner, $pk_table, $fk_qualifier, $fk_owner, $fk_table) {}'
      'odbc_free_result|odbc_free_result($result_id) {}'
      
        'odbc_gettypeinfo|odbc_gettypeinfo($connection_id, $data_type = n' +
        'ull) {}'
      'odbc_longreadlen|odbc_longreadlen($result_id, $length) {}'
      'odbc_next_result|odbc_next_result($result_id) {}'
      'odbc_num_fields|odbc_num_fields($result_id) {}'
      'odbc_num_rows|odbc_num_rows($result_id) {}'
      
        'odbc_pconnect|odbc_pconnect($DSN, $user, $password, $cursor_opti' +
        'on = null) {}'
      'odbc_prepare|odbc_prepare($connection_id, $query) {}'
      
        'odbc_primarykeys|odbc_primarykeys($connection_id, $qualifier, $o' +
        'wner, $table) {}'
      
        'odbc_procedurecolumns|odbc_procedurecolumns($connection_id, $qua' +
        'lifier = null, $owner, $proc, $column) {}'
      
        'odbc_procedures|odbc_procedures($connection_id, $qualifier = nul' +
        'l, $owner, $name) {}'
      'odbc_result|odbc_result($result_id, $field) {}'
      'odbc_result_all|odbc_result_all($result_id, $format = null) {}'
      'odbc_rollback|odbc_rollback($connection_id) {}'
      
        'odbc_setoption|odbc_setoption($conn_id, $which, $option, $value)' +
        ' {}'
      
        'odbc_specialcolumns|odbc_specialcolumns($connection_id, $type, $' +
        'qualifier, $owner, $table, $scope, $nullable) {}'
      
        'odbc_statistics|odbc_statistics($connection_id, $qualifier, $own' +
        'er, $name, $unique, $accuracy) {}'
      
        'odbc_tableprivileges|odbc_tableprivileges($connection_id, $quali' +
        'fier, $owner, $name) {}'
      
        'odbc_tables|odbc_tables($connection_id, $qualifier = null, $owne' +
        'r, $name, $table_types) {}'
      'old_function|old_function'
      'opendir|opendir($path) {}'
      'openlog|openlog($ident, $option, $facility) {}'
      
        'openssl_csr_export|openssl_csr_export($csr, &$out, $notext = tru' +
        'e) {}'
      
        'openssl_csr_export_to_file|openssl_csr_export_to_file($csr, $out' +
        'filename, $notext = true) {}'
      
        'openssl_csr_new|openssl_csr_new($dn, &$privkey, $configargs = nu' +
        'll, $extraattribs) {}'
      
        'openssl_csr_sign|openssl_csr_sign($csr, $x509, $priv_key, $days,' +
        ' $config_args = null, $serial = null) {}'
      'openssl_error_string|openssl_error_string() {}'
      'openssl_free_key|openssl_free_key($key) {}'
      
        'openssl_get_privatekey|openssl_get_privatekey($key, $passphrase ' +
        '= null) {}'
      'openssl_get_publickey|openssl_get_publickey($cert) {}'
      'openssl_open|openssl_open($data, $opendata, $ekey, $privkey) {}'
      
        'openssl_pkcs7_decrypt|openssl_pkcs7_decrypt($infilename, $outfil' +
        'ename, $recipcert, $recipkey = null) {}'
      
        'openssl_pkcs7_encrypt|openssl_pkcs7_encrypt($infile, $outfile, $' +
        'recipcerts, $headers, $flags = null) {}'
      
        'openssl_pkcs7_sign|openssl_pkcs7_sign($infile, $outfile, $signce' +
        'rt, $signkey, $headers, $flags = null, $extracertsfilename = nul' +
        'l) {}'
      
        'openssl_pkcs7_verify|openssl_pkcs7_verify($filename, $flags, $si' +
        'gnerscerts = null, $cainfo = null, $extracerts = null) {}'
      
        'openssl_pkey_export|openssl_pkey_export($key, $out, $passphrase ' +
        '= null, $config_args = null) {}'
      
        'openssl_pkey_export_to_file|openssl_pkey_export_to_file($key, $o' +
        'utfilename, $passphrase = null, $config_args) {}'
      'openssl_pkey_free|openssl_pkey_free($key) {}'
      
        'openssl_pkey_get_private|openssl_pkey_get_private($key, $passphr' +
        'ase = null) {}'
      'openssl_pkey_get_public|openssl_pkey_get_public($cert) {}'
      'openssl_pkey_new|openssl_pkey_new($configargs = null) {}'
      
        'openssl_private_decrypt|openssl_private_decrypt($data, &$decrypt' +
        'ed, $key, $padding = null) {}'
      
        'openssl_private_encrypt|openssl_private_encrypt($data, $crypted,' +
        ' $key, $padding = null) {}'
      
        'openssl_public_decrypt|openssl_public_decrypt($data, $crypted, $' +
        'key, $padding = null) {}'
      
        'openssl_public_encrypt|openssl_public_encrypt($data, $crypted, $' +
        'key, $padding = null) {}'
      'openssl_seal|openssl_seal($data, $sealdata, $ekeys, $pubkeys) {}'
      'openssl_sign|openssl_sign($data, $signature, $key) {}'
      'openssl_verify|openssl_verify($data, $signature, $key) {}'
      
        'openssl_x509_check_private_key|openssl_x509_check_private_key($c' +
        'ert, $key) {}'
      
        'openssl_x509_checkpurpose|openssl_x509_checkpurpose($x509cert, $' +
        'purpose, $cainfo, $untrustedfile = null) {}'
      
        'openssl_x509_export|openssl_x509_export($x509, &$out, $notext = ' +
        'true) {}'
      
        'openssl_x509_export_to_file|openssl_x509_export_to_file($x509, $' +
        'outfilename, $notext = true) {}'
      'openssl_x509_free|openssl_x509_free($x509) {}'
      
        'openssl_x509_parse|openssl_x509_parse($x509, $shortnames = true)' +
        ' {}'
      'openssl_x509_read|openssl_x509_read($cert) {}'
      'or|or'
      
        'ora_bind|ora_bind($cursor, $php_variable_name, $sql_parameter_na' +
        'me, $length, $type = null) {}'
      'ora_close|ora_close($cursor) {}'
      'ora_columnname|ora_columnname($cursor, $column) {}'
      'ora_columnsize|ora_columnsize($cursor, $column) {}'
      'ora_columntype|ora_columntype($cursor, $column) {}'
      'ora_commit|ora_commit($connection) {}'
      'ora_commitoff|ora_commitoff($connection) {}'
      'ora_commiton|ora_commiton($connection) {}'
      'ora_do|ora_do($connection, $cursor) {}'
      'ora_error|ora_error($cursor_or_connection) {}'
      'ora_errorcode|ora_errorcode($cursor_or_connection) {}'
      'ora_exec|ora_exec($cursor) {}'
      'ora_fetch|ora_fetch($cursor) {}'
      
        'ora_fetch_into|ora_fetch_into($cursor, $result, $flags = null) {' +
        '}'
      'ora_getcolumn|ora_getcolumn($cursor, $column) {}'
      'ora_logoff|ora_logoff($connection) {}'
      'ora_logon|ora_logon($user, $password) {}'
      'ora_numcols|ora_numcols($cursor) {}'
      'ora_numrows|ora_numrows($cursor) {}'
      'ora_open|ora_open($connection) {}'
      'ora_parse|ora_parse($cursor, $sql_statement, $defer = null) {}'
      'ora_plogon|ora_plogon($user, $password) {}'
      'ora_rollback|ora_rollback($connection) {}'
      'ord|ord($character) {}'
      'output|output($compression = null) {}'
      'output_add_rewrite_var|output_add_rewrite_var($name, $value) {}'
      'output_reset_rewrite_vars|output_reset_rewrite_vars() {}'
      'overload|overload($class_entry) {}'
      'ovrimos_autocommit|ovrimos_autocommit($connection_id, $OnOff) {}'
      'ovrimos_close|ovrimos_close($connection) {}'
      'ovrimos_commit|ovrimos_commit($connection_id) {}'
      'ovrimos_connect|ovrimos_connect($host, $db, $user, $password) {}'
      'ovrimos_cursor|ovrimos_cursor($result_id) {}'
      'ovrimos_do|ovrimos_do($connection_id, $query) {}'
      'ovrimos_exec|ovrimos_exec($connection_id, $query) {}'
      
        'ovrimos_execute|ovrimos_execute($result_id, $parameters_array = ' +
        'null) {}'
      
        'ovrimos_fetch_into|ovrimos_fetch_into($result_id, $result_array,' +
        ' $how = null, $rownumber = null) {}'
      
        'ovrimos_fetch_row|ovrimos_fetch_row($result_id, $how = null, $ro' +
        'w_number = null) {}'
      
        'ovrimos_field_len|ovrimos_field_len($result_id, $field_number) {' +
        '}'
      
        'ovrimos_field_name|ovrimos_field_name($result_id, $field_number)' +
        ' {}'
      'ovrimos_field_num|ovrimos_field_num($result_id, $field_name) {}'
      
        'ovrimos_field_type|ovrimos_field_type($result_id, $field_number)' +
        ' {}'
      'ovrimos_free_result|ovrimos_free_result($result_id) {}'
      'ovrimos_longreadlen|ovrimos_longreadlen($result_id, $length) {}'
      'ovrimos_num_fields|ovrimos_num_fields($result_id) {}'
      'ovrimos_num_rows|ovrimos_num_rows($result_id) {}'
      'ovrimos_prepare|ovrimos_prepare($connection_id, $query) {}'
      'ovrimos_result|ovrimos_result($result_id, $field) {}'
      
        'ovrimos_result_all|ovrimos_result_all($result_id, $format = null' +
        ') {}'
      'ovrimos_rollback|ovrimos_rollback($connection_id) {}'
      
        'ovrimos_setoption|ovrimos_setoption($conn_id, $which, $option, $' +
        'value) {}'
      'owner_document|owner_document() {}'
      'pack|pack($format, $arg1, $arg2 = null) {}'
      'parent|parent() {}'
      'parent_node|parent_node() {}'
      
        'parse_ini_file|parse_ini_file($filename, $process_sections = nul' +
        'l) {}'
      'parse_str|parse_str($encoded_string, $result = null) {}'
      'parse_url|parse_url($url) {}'
      'passthru|passthru($command, $return_value = null) {}'
      'pathinfo|pathinfo($path) {}'
      'pclose|pclose($fp) {}'
      'pcntl_alarm|pcntl_alarm($seconds) {}'
      'pcntl_exec|pcntl_exec($path, $args = null, $envs = null) {}'
      'pcntl_fork|pcntl_fork() {}'
      
        'pcntl_signal|pcntl_signal($signo, $handle, $restart_syscalls = n' +
        'ull) {}'
      'pcntl_waitpid|pcntl_waitpid($pid, $status, $options) {}'
      'pcntl_wexitstatus|pcntl_wexitstatus($status) {}'
      'pcntl_wifexited|pcntl_wifexited($status) {}'
      'pcntl_wifsignaled|pcntl_wifsignaled($status) {}'
      'pcntl_wifstopped|pcntl_wifstopped($status) {}'
      'pcntl_wstopsig|pcntl_wstopsig($status) {}'
      'pcntl_wtermsig|pcntl_wtermsig($status) {}'
      
        'pdf_add_annotation|pdf_add_annotation($pdfdoc, $xll, $yll, $xur,' +
        ' $xur, $title, $text) {}'
      
        'pdf_add_bookmark|pdf_add_bookmark($pdfdoc, $text, $parent = null' +
        ', $open) {}'
      
        'pdf_add_launchlink|pdf_add_launchlink($pdfdoc, $llx, $lly, $urx,' +
        ' $ury, $filename) {}'
      
        'pdf_add_locallink|pdf_add_locallink($pdfdoc, $llx, $lly, $urx, $' +
        'ury, $page, $dest) {}'
      
        'pdf_add_note|pdf_add_note($pdfdoc, $llx, $lly, $urx, $ury, $cont' +
        'ents, $title, $icon, $open) {}'
      
        'pdf_add_outline|pdf_add_outline($pdfdoc, $text, $parent = null, ' +
        '$open) {}'
      
        'pdf_add_pdflink|pdf_add_pdflink($pdfdoc, $llx, $lly, $urx, $ury,' +
        ' $filename, $page, $dest) {}'
      'pdf_add_thumbnail|pdf_add_thumbnail($pdf, $image) {}'
      
        'pdf_add_weblink|pdf_add_weblink($pdfdoc, $llx, $lly, $urx, $ury,' +
        ' $url) {}'
      'pdf_arc|pdf_arc($pdfdoc, $x, $y, $radius, $start, $end) {}'
      'pdf_arcn|pdf_arcn($pdf, $x, $y, $r, $alpha, $beta) {}'
      
        'pdf_attach_file|pdf_attach_file($pdf, $lly, $lly, $urx, $ury, $f' +
        'ilename, $description, $author, $mimetype, $icon) {}'
      'pdf_begin_page|pdf_begin_page($pdfdoc, $width, $height) {}'
      
        'pdf_begin_pattern|pdf_begin_pattern($pdf, $width, $height, $xste' +
        'p, $ystep, $painttype) {}'
      'pdf_begin_template|pdf_begin_template($pdf, $width, $height) {}'
      'pdf_circle|pdf_circle($pdfdoc, $x, $y, $radius) {}'
      'pdf_clip|pdf_clip($pdfdoc) {}'
      'pdf_close|pdf_close($pdfdoc) {}'
      'pdf_close_image|pdf_close_image($pdf, $pdfimage) {}'
      'pdf_close_pdi|pdf_close_pdi($pdf, $doc) {}'
      'pdf_close_pdi_page|pdf_close_pdi_page($pdf, $page) {}'
      'pdf_closepath|pdf_closepath($pdfdoc) {}'
      'pdf_closepath_fill_stroke|pdf_closepath_fill_stroke($pdfdoc) {}'
      'pdf_closepath_stroke|pdf_closepath_stroke($pdfdoc) {}'
      'pdf_concat|pdf_concat($pdf, $a, $b, $c, $d, $e, $f) {}'
      'pdf_continue_text|pdf_continue_text($pdfdoc, $text) {}'
      
        'pdf_curveto|pdf_curveto($pdfdoc, $x1, $y1, $x2, $y2, $x3, $y3) {' +
        '}'
      'pdf_delete|pdf_delete($pdfdoc) {}'
      'pdf_end_page|pdf_end_page($pdfdoc) {}'
      'pdf_end_pattern|pdf_end_pattern($pdf) {}'
      'pdf_end_template|pdf_end_template($pdf) {}'
      'pdf_endpath|pdf_endpath($pdfdoc) {}'
      'pdf_fill|pdf_fill($pdfdoc) {}'
      'pdf_fill_stroke|pdf_fill_stroke($pdfdoc) {}'
      
        'pdf_findfont|pdf_findfont($pdfdoc, $fontname, $encoding, $embed ' +
        '= null) {}'
      'pdf_get_buffer|pdf_get_buffer($pdfdoc) {}'
      'pdf_get_font|pdf_get_font($pdfdoc) {}'
      'pdf_get_fontname|pdf_get_fontname($pdfdoc) {}'
      'pdf_get_fontsize|pdf_get_fontsize($pdfdoc) {}'
      'pdf_get_image_height|pdf_get_image_height($pdf, $pdfimage) {}'
      'pdf_get_image_width|pdf_get_image_width($pdf, $pdfimage) {}'
      'pdf_get_majorversion|pdf_get_majorversion() {}'
      'pdf_get_minorversion|pdf_get_minorversion() {}'
      'pdf_get_parameter|pdf_get_parameter($pdfdoc, $key, $modifier) {}'
      
        'pdf_get_pdi_parameter|pdf_get_pdi_parameter($pdf, $key, $doc, $p' +
        'age, $index) {}'
      
        'pdf_get_pdi_value|pdf_get_pdi_value($pdf, $key, $doc, $page, $in' +
        'dex) {}'
      'pdf_get_value|pdf_get_value($pdfdoc, $key, $modifier) {}'
      'pdf_initgraphics|pdf_initgraphics($pdf) {}'
      'pdf_lineto|pdf_lineto($pdfdoc, $x, $y) {}'
      'pdf_makespotcolor|pdf_makespotcolor($pdf, $spotname) {}'
      'pdf_moveto|pdf_moveto($pdfdoc, $x, $y) {}'
      'pdf_new|pdf_new() {}'
      'pdf_open|pdf_open($filedesc = null) {}'
      
        'pdf_open_ccitt|pdf_open_ccitt($pdf, $filename, $width, $height, ' +
        '$bitreverse, $k, $blackls1) {}'
      'pdf_open_file|pdf_open_file($pdfdoc, $filename = null) {}'
      'pdf_open_gif|pdf_open_gif($pdf, $giffile) {}'
      
        'pdf_open_image|pdf_open_image($pdf, $type, $source, $data, $leng' +
        'th, $width, $height, $components, $bpc, $params) {}'
      
        'pdf_open_image_file|pdf_open_image_file($pdf, $type, $file, $str' +
        'ingparam, $intparam) {}'
      'pdf_open_jpeg|pdf_open_jpeg($pdf, $jpegfile) {}'
      'pdf_open_memory_image|pdf_open_memory_image($pdf, $image) {}'
      
        'pdf_open_pdi|pdf_open_pdi($pdf, $filename, $stringparam, $intpar' +
        'am) {}'
      
        'pdf_open_pdi_page|pdf_open_pdi_page($pdf, $doc, $page, $label) {' +
        '}'
      'pdf_open_png|pdf_open_png($pdf, $pngfile) {}'
      'pdf_open_tiff|pdf_open_tiff($pdf, $tifffile) {}'
      
        'pdf_place_image|pdf_place_image($pdf, $pdfimage, $x, $y, $scale)' +
        ' {}'
      
        'pdf_place_pdi_page|pdf_place_pdi_page($pdf, $page, $x, $y, $sx, ' +
        '$sy) {}'
      'pdf_rect|pdf_rect($pdfdoc, $x, $y, $width, $height) {}'
      'pdf_restore|pdf_restore($pdfdoc) {}'
      'pdf_rotate|pdf_rotate($pdfdoc, $angle) {}'
      'pdf_save|pdf_save($pdfdoc) {}'
      'pdf_scale|pdf_scale($pdfdoc, $x_scale, $y_scale) {}'
      
        'pdf_set_border_color|pdf_set_border_color($pdfdoc, $red, $green,' +
        ' $blue) {}'
      
        'pdf_set_border_dash|pdf_set_border_dash($pdfdoc, $black, $white)' +
        ' {}'
      
        'pdf_set_border_style|pdf_set_border_style($pdfdoc, $style, $widt' +
        'h) {}'
      'pdf_set_char_spacing|pdf_set_char_spacing($pdfdoc, $space) {}'
      'pdf_set_duration|pdf_set_duration($pdfdoc, $duration) {}'
      
        'pdf_set_font|pdf_set_font($pdfdoc, $font, $size, $encoding, $emb' +
        'ed = null) {}'
      'pdf_set_horiz_scaling|pdf_set_horiz_scaling($pdfdoc, $scale) {}'
      'pdf_set_info|pdf_set_info($pdfdoc, $fieldname, $value) {}'
      'pdf_set_info_author|pdf_set_info_author($pdfdoc, $author) {}'
      'pdf_set_info_creator|pdf_set_info_creator($pdfdoc, $creator) {}'
      
        'pdf_set_info_keywords|pdf_set_info_keywords($pdfdoc, $keywords) ' +
        '{}'
      'pdf_set_info_subject|pdf_set_info_subject($pdfdoc, $subject) {}'
      'pdf_set_info_title|pdf_set_info_title($pdfdoc, $title) {}'
      'pdf_set_leading|pdf_set_leading($pdfdoc, $distance) {}'
      'pdf_set_parameter|pdf_set_parameter($pdfdoc, $key, $value) {}'
      'pdf_set_text_pos|pdf_set_text_pos($pdfdoc, $x, $y) {}'
      'pdf_set_text_rendering|pdf_set_text_rendering($pdfdoc, $mode) {}'
      'pdf_set_text_rise|pdf_set_text_rise($pdfdoc, $value) {}'
      'pdf_set_transition|pdf_set_transition($pdfdoc, $transition) {}'
      'pdf_set_value|pdf_set_value($pdfdoc, $key, $value) {}'
      'pdf_set_word_spacing|pdf_set_word_spacing($pdfdoc, $space) {}'
      
        'pdf_setcolor|pdf_setcolor($pdf, $type, $colorspace, $c1, $c2 = n' +
        'ull, $c3 = null, $c4 = null) {}'
      'pdf_setdash|pdf_setdash($pdfdoc, $black, $white) {}'
      'pdf_setflat|pdf_setflat($pdfdoc, $value) {}'
      'pdf_setfont|pdf_setfont($pdfdoc, $font, $fontsize) {}'
      'pdf_setgray|pdf_setgray($pdfdoc, $value) {}'
      'pdf_setgray_fill|pdf_setgray_fill($pdfdoc, $value) {}'
      'pdf_setgray_stroke|pdf_setgray_stroke($pdfdoc, $value) {}'
      'pdf_setlinecap|pdf_setlinecap($pdfdoc, $value) {}'
      'pdf_setlinejoin|pdf_setlinejoin($pdfdoc, $value) {}'
      'pdf_setlinewidth|pdf_setlinewidth($pdfdoc, $width) {}'
      'pdf_setmatrix|pdf_setmatrix($pdf, $a, $b, $c, $d, $e, $f) {}'
      'pdf_setmiterlimit|pdf_setmiterlimit($pdfdoc, $value) {}'
      'pdf_setpolydash|pdf_setpolydash($pdfdoc, $darray) {}'
      'pdf_setrgbcolor|pdf_setrgbcolor($pdfdoc, $red, $green, $blue) {}'
      
        'pdf_setrgbcolor_fill|pdf_setrgbcolor_fill($pdfdoc, $red, $green,' +
        ' $blue) {}'
      
        'pdf_setrgbcolor_stroke|pdf_setrgbcolor_stroke($pdfdoc, $red, $gr' +
        'een, $blue) {}'
      'pdf_show|pdf_show($pdfdoc, $text) {}'
      
        'pdf_show_boxed|pdf_show_boxed($pdfdoc, $text, $x_koor, $y_koor, ' +
        '$width, $height, $mode, $feature = null) {}'
      'pdf_show_xy|pdf_show_xy($pdfdoc, $text, $x_koor, $y_koor) {}'
      'pdf_skew|pdf_skew($pdfdoc, $xangle, $yangle) {}'
      
        'pdf_stringwidth|pdf_stringwidth($pdfdoc, $text, $font = null, $s' +
        'ize) {}'
      'pdf_stroke|pdf_stroke($pdfdoc) {}'
      'pdf_translate|pdf_translate($pdfdoc, $x, $y) {}'
      'pfpro_cleanup|pfpro_cleanup() {}'
      'pfpro_init|pfpro_init() {}'
      
        'pfpro_process|pfpro_process($parmlist, $hostaddress = null, $por' +
        't = null, $timeout = null, $proxyAddress = null, $proxyPort = nu' +
        'll, $proxyLogon = null, $proxyPassword = null) {}'
      
        'pfpro_process_raw|pfpro_process_raw($parmlist, $hostaddress = nu' +
        'll, $port = null, $timeout = null, $proxyAddress = null, $proxyP' +
        'ort = null, $proxyLogon = null, $proxyPassword = null) {}'
      'pfpro_version|pfpro_version() {}'
      
        'pfsockopen|pfsockopen($hostname, $port, $errno = null, $errstr =' +
        ' null, $timeout = null, $context = null) {}'
      'pg_affected_rows|pg_affected_rows($result) {}'
      'pg_cancel_query|pg_cancel_query($connection) {}'
      'pg_client_encoding|pg_client_encoding($connection = null) {}'
      'pg_clientencoding|pg_clientencoding($connection = null) {}'
      'pg_close|pg_close($connection = null) {}'
      'pg_cmdtuples|pg_cmdtuples($result) {}'
      'pg_connection_busy|pg_connection_busy($connection) {}'
      'pg_connection_reset|pg_connection_reset($connection) {}'
      'pg_connection_status|pg_connection_status($connnection) {}'
      'pg_convert|pg_convert($db, $table, $values, $options) {}'
      
        'pg_copy_from|pg_copy_from($connection, $table_name, $rows, $deli' +
        'miter = null, $null_as = null) {}'
      
        'pg_copy_to|pg_copy_to($connection, $table_name, $delimiter = nul' +
        'l, $null_as = null) {}'
      'pg_dbname|pg_dbname($connection = null) {}'
      'pg_delete|pg_delete($db, $table, $ids, $options) {}'
      'pg_end_copy|pg_end_copy($connection = null) {}'
      'pg_errormessage|pg_errormessage($connection = null) {}'
      'pg_escape_bytea|pg_escape_bytea($data) {}'
      'pg_escape_string|pg_escape_string($data) {}'
      'pg_exec|pg_exec($connection = null, $query) {}'
      'pg_fetch_all|pg_fetch_all($result) {}'
      
        'pg_fetch_array|pg_fetch_array($result, $row = null, $result_type' +
        ' = null) {}'
      'pg_fetch_assoc|pg_fetch_assoc($result, $row = null) {}'
      'pg_fetch_object|pg_fetch_object($result, $row = null) {}'
      
        'pg_fetch_result|pg_fetch_result($result, $row_number = null, $fi' +
        'eld_name) {}'
      
        'pg_fetch_row|pg_fetch_row($result, $row = null, $result_type = n' +
        'ull) {}'
      
        'pg_field_is_null|pg_field_is_null($result, $row = null, $field_n' +
        'ame_or_number) {}'
      'pg_field_name|pg_field_name($result, $field_number) {}'
      'pg_field_num|pg_field_num($result, $field_name) {}'
      
        'pg_field_prtlen|pg_field_prtlen($result, $row = null, $field_nam' +
        'e_or_number) {}'
      'pg_field_size|pg_field_size($result, $field_number) {}'
      'pg_field_type|pg_field_type($result, $field_number) {}'
      
        'pg_fieldisnull|pg_fieldisnull($result, $row = null, $field_name_' +
        'or_number) {}'
      'pg_fieldname|pg_fieldname($result, $field_number) {}'
      'pg_fieldnum|pg_fieldnum($result, $field_name) {}'
      
        'pg_fieldprtlen|pg_fieldprtlen($result, $row = null, $field_name_' +
        'or_number) {}'
      'pg_fieldsize|pg_fieldsize($result, $field_number) {}'
      'pg_fieldtype|pg_fieldtype($result, $field_number) {}'
      'pg_free_result|pg_free_result($result) {}'
      'pg_freeresult|pg_freeresult($result) {}'
      'pg_get_notify|pg_get_notify($connection = null, $result_type) {}'
      'pg_get_pid|pg_get_pid($connection = null) {}'
      'pg_get_result|pg_get_result($connection) {}'
      'pg_getlastoid|pg_getlastoid($result) {}'
      'pg_host|pg_host($connection = null) {}'
      'pg_insert|pg_insert($db, $table, $values, $options) {}'
      'pg_last_error|pg_last_error($connection = null) {}'
      'pg_last_notice|pg_last_notice($connection) {}'
      'pg_last_oid|pg_last_oid($result) {}'
      'pg_lo_close|pg_lo_close($large_object) {}'
      'pg_lo_create|pg_lo_create($connection = null) {}'
      
        'pg_lo_export|pg_lo_export($connection = null, $objoid, $filename' +
        ') {}'
      'pg_lo_import|pg_lo_import($connection = null, $filename) {}'
      
        'pg_lo_open|pg_lo_open($connection = null, $large_object_oid, $mo' +
        'de) {}'
      'pg_lo_read|pg_lo_read($large_object, $len = null) {}'
      'pg_lo_read_all|pg_lo_read_all($large_object) {}'
      'pg_lo_seek|pg_lo_seek($large_object, $offset, $whence = null) {}'
      'pg_lo_tell|pg_lo_tell($large_object) {}'
      
        'pg_lo_unlink|pg_lo_unlink($connection = null, $large_object_oid)' +
        ' {}'
      'pg_lo_write|pg_lo_write($large_object, $buf, $len = null) {}'
      'pg_loclose|pg_loclose($large_object) {}'
      'pg_locreate|pg_locreate($connection = null) {}'
      
        'pg_loexport|pg_loexport($connection = null, $objoid, $filename) ' +
        '{}'
      'pg_loimport|pg_loimport($connection = null, $filename) {}'
      
        'pg_loopen|pg_loopen($connection = null, $large_object_oid, $mode' +
        ') {}'
      'pg_loread|pg_loread($large_object, $len = null) {}'
      'pg_loreadall|pg_loreadall($large_object) {}'
      
        'pg_lounlink|pg_lounlink($connection = null, $large_object_oid) {' +
        '}'
      'pg_lowrite|pg_lowrite($large_object, $buf, $len = null) {}'
      'pg_meta_data|pg_meta_data($db, $table) {}'
      'pg_num_fields|pg_num_fields($result) {}'
      'pg_num_rows|pg_num_rows($result) {}'
      'pg_numfields|pg_numfields($result) {}'
      'pg_numrows|pg_numrows($result) {}'
      'pg_options|pg_options($connection = null) {}'
      
        'pg_pconnect|pg_pconnect($connection_string_, $port, $options = n' +
        'ull, $tty = null, $database) {}'
      'pg_ping|pg_ping($connection) {}'
      'pg_port|pg_port($connection = null) {}'
      'pg_put_line|pg_put_line($connection = null, $query) {}'
      'pg_query|pg_query($connection = null, $query) {}'
      'pg_result|pg_result($result, $row_number = null, $field_name) {}'
      'pg_result_error|pg_result_error($result) {}'
      'pg_result_seek|pg_result_seek($result, $offset) {}'
      'pg_result_status|pg_result_status($result, $result_type) {}'
      'pg_select|pg_select($db, $table, $ids, $options) {}'
      'pg_send_query|pg_send_query($connection, $qeury) {}'
      
        'pg_set_client_encoding|pg_set_client_encoding($connection = null' +
        ', $encoding) {}'
      
        'pg_setclientencoding|pg_setclientencoding($connection = null, $e' +
        'ncoding) {}'
      
        'pg_trace|pg_trace($filename, $mode = null, $connection = null) {' +
        '}'
      'pg_tty|pg_tty($connection = null) {}'
      'pg_unescape_bytea|pg_unescape_bytea($data) {}'
      'pg_untrace|pg_untrace($connection = null) {}'
      'pg_update|pg_update($db, $table, $fields, $ids, $options) {}'
      'php_egg_logo_guid|php_egg_logo_guid() {}'
      'php_ini_scanned_files|php_ini_scanned_files() {}'
      'php_logo_guid|php_logo_guid() {}'
      'php_sapi_name|php_sapi_name() {}'
      'php_snmpv3|php_snmpv3($INTERNAL_FUNCTION_PARAMETERS, $st) {}'
      'php_uname|php_uname() {}'
      'php_user_filter|php_user_filter'
      'phpcredits|phpcredits($flag = null) {}'
      'phpinfo|phpinfo($what = null) {}'
      'phpversion|phpversion($extension = null) {}'
      'pi|pi() {}'
      
        'png2wbmp|png2wbmp ($f_org, $f_dest, $d_height, $d_width, $thresh' +
        'old) {}'
      'popen|popen($command, $mode) {}'
      'pos|pos($array_arg) {}'
      'posix_ctermid|posix_ctermid() {}'
      'posix_errno|posix_errno() {}'
      'posix_get_last_error|posix_get_last_error() {}'
      'posix_getcwd|posix_getcwd() {}'
      'posix_getegid|posix_getegid() {}'
      'posix_geteuid|posix_geteuid() {}'
      'posix_getgid|posix_getgid() {}'
      'posix_getgrgid|posix_getgrgid($gid) {}'
      'posix_getgrnam|posix_getgrnam($groupname) {}'
      'posix_getgroups|posix_getgroups() {}'
      'posix_getlogin|posix_getlogin() {}'
      'posix_getpgid|posix_getpgid() {}'
      'posix_getpgrp|posix_getpgrp() {}'
      'posix_getpid|posix_getpid() {}'
      'posix_getppid|posix_getppid() {}'
      'posix_getpwnam|posix_getpwnam($groupname) {}'
      'posix_getpwuid|posix_getpwuid($uid) {}'
      'posix_getrlimit|posix_getrlimit() {}'
      'posix_getsid|posix_getsid() {}'
      'posix_getuid|posix_getuid() {}'
      'posix_isatty|posix_isatty($fd) {}'
      'posix_kill|posix_kill($pid, $sig) {}'
      'posix_mkfifo|posix_mkfifo($pathname, $mode) {}'
      'posix_setegid|posix_setegid($uid) {}'
      'posix_seteuid|posix_seteuid($uid) {}'
      'posix_setgid|posix_setgid($uid) {}'
      'posix_setpgid|posix_setpgid($pid, $pgid) {}'
      'posix_setsid|posix_setsid() {}'
      'posix_setuid|posix_setuid($uid) {}'
      'posix_strerror|posix_strerror($errno) {}'
      'posix_times|posix_times() {}'
      'posix_ttyname|posix_ttyname($fd) {}'
      'posix_uname|posix_uname() {}'
      'pow|pow($base, $exponent) {}'
      'prefix|prefix() {}'
      'preg_grep|preg_grep($regex, $input) {}'
      
        'preg_match|preg_match($pattern, $subject, $subpatterns = null, $' +
        'flags = null, $offset = null) {}'
      
        'preg_match_all|preg_match_all($pattern, $subject, $subpatterns, ' +
        '$flags = null, $offset = null) {}'
      'preg_quote|preg_quote($str, $delim_char) {}'
      
        'preg_replace|preg_replace($regex, $replace, $subject, $limit = n' +
        'ull) {}'
      
        'preg_replace_callback|preg_replace_callback($regex, $callback, $' +
        'subject, $limit = null) {}'
      
        'preg_split|preg_split($pattern, $subject, $limit = null, $flags ' +
        '= null) {}'
      'prev|prev($array_arg) {}'
      'previous_sibling|previous_sibling() {}'
      'print()|print()'
      'print_r|print_r($var, $return = null) {}'
      'printf|printf($format, $arg1 = null) {}'
      'proc_close|proc_close($process) {}'
      'proc_open|proc_open($command, $descriptorspec, &$pipes) {}'
      
        'process|process($xslstylesheet, $xmldoc, $xslt_parameters = null' +
        ', $xpath_parameters = null, $profileFilename = null) {}'
      'processing_instruction|processing_instruction($target, $data) {}'
      'pspell_add_to_personal|pspell_add_to_personal($pspell, $word) {}'
      'pspell_add_to_session|pspell_add_to_session($pspell, $word) {}'
      'pspell_check|pspell_check($pspell, $word) {}'
      'pspell_clear_session|pspell_clear_session($pspell) {}'
      
        'pspell_config_create|pspell_config_create($language, $spelling =' +
        ' null, $jargon = null, $encoding = null) {}'
      'pspell_config_ignore|pspell_config_ignore($conf, $ignore) {}'
      'pspell_config_mode|pspell_config_mode($conf, $mode) {}'
      
        'pspell_config_personal|pspell_config_personal($conf, $personal) ' +
        '{}'
      'pspell_config_repl|pspell_config_repl($conf, $repl) {}'
      
        'pspell_config_runtogether|pspell_config_runtogether($conf, $runt' +
        'ogether) {}'
      'pspell_config_save_repl|pspell_config_save_repl($conf, $save) {}'
      
        'pspell_new|pspell_new($language, $spelling = null, $jargon = nul' +
        'l, $encoding = null, $mode = null) {}'
      'pspell_new_config|pspell_new_config($config) {}'
      
        'pspell_new_personal|pspell_new_personal($personal, $language, $s' +
        'pelling = null, $jargon = null, $encoding = null, $mode = null) ' +
        '{}'
      'pspell_save_wordlist|pspell_save_wordlist($pspell) {}'
      
        'pspell_store_replacement|pspell_store_replacement($pspell, $miss' +
        'pell, $correct) {}'
      'pspell_suggest|pspell_suggest($pspell, $word) {}'
      'public_id|public_id() {}'
      'putenv|putenv($setting) {}'
      'qdom_error|qdom_error() {}'
      'qdom_tree|qdom_tree($string) {}'
      'quoted_printable_decode|quoted_printable_decode($str) {}'
      'quotemeta|quotemeta($str) {}'
      'rad2deg|rad2deg($number) {}'
      'rand|rand($min = null, $max) {}'
      'range|range($low, $high) {}'
      'rawurldecode|rawurldecode($str) {}'
      'rawurlencode|rawurlencode($str) {}'
      
        'read_exif_data|read_exif_data($filename, $sections_needed = null' +
        ', $sub_arrays = null, $read_thumbnail) {}'
      'readdir|readdir($dir_handle = null) {}'
      'readfile|readfile($filename, $use_include_path = null) {}'
      'readgzfile|readgzfile($filename, $use_include_path = null) {}'
      'readline|readline($prompt = null) {}'
      'readline_add_history|readline_add_history($prompt = null) {}'
      'readline_clear_history|readline_clear_history() {}'
      
        'readline_completion_function|readline_completion_function($funcn' +
        'ame) {}'
      
        'readline_info|readline_info($varname = null, $newvalue = null) {' +
        '}'
      'readline_list_history|readline_list_history() {}'
      
        'readline_read_history|readline_read_history($filename = null, $f' +
        'rom = null, $to = null) {}'
      
        'readline_write_history|readline_write_history($filename = null) ' +
        '{}'
      'readlink|readlink($filename) {}'
      'realpath|realpath($path) {}'
      'recode|recode($request, $str) {}'
      'recode_file|recode_file($request, $input, $output) {}'
      'recode_string|recode_string($request, $str) {}'
      
        'register_shutdown_function|register_shutdown_function($function_' +
        'name) {}'
      
        'register_tick_function|register_tick_function($function_name, $a' +
        'rg = null) {}'
      'remove|remove($SWFDisplayItem) {}'
      'remove_attribute|remove_attribute($attrname) {}'
      'remove_child|remove_child($domnode) {}'
      'rename|rename($old_name, $new_name) {}'
      'replace_child|replace_child($newnode, $oldnode) {}'
      'replace_node|replace_node($domnode) {}'
      'require()|require()'
      'require_once()|require_once()  '
      'reset|reset($array_arg) {}'
      'restore_error_handler|restore_error_handler() {}'
      'restore_include_path|restore_include_path() {}'
      
        'result_dump_file|result_dump_file($xslstylesheet, $xmldoc, $file' +
        'name, $compression) {}'
      'result_dump_mem|result_dump_mem($xslstylesheet, $xmldoc) {}'
      'return()|return()'
      'rewind|rewind($dir_handle = null) {}'
      'rmdir|rmdir($dirname) {}'
      'root|root($domnode) {}'
      'rotate|rotate($degrees) {}'
      'rotateto|rotateto($degrees) {}'
      'round|round($number, $precision = null) {}'
      'rsort|rsort($array_arg, $sort_flags = null) {}'
      'rtrim|rtrim($str, $character_mask = null) {}'
      'save|save($lob) {}'
      'savefile|savefile($lob) {}'
      'savetofile|savetofile($x, $compression = null) {}'
      'scale|scale($xScale, $yScale) {}'
      'scaleto|scaleto($xScale, $yScale = null) {}'
      'sem_acquire|sem_acquire($id) {}'
      
        'sem_get|sem_get($key, $max_acquire = null, $perm = null, $auto_r' +
        'elease = null) {}'
      'sem_release|sem_release($id) {}'
      'sem_remove|sem_remove($id) {}'
      'serialize|serialize($variable) {}'
      
        'session_cache_expire|session_cache_expire($new_cache_expire = nu' +
        'll) {}'
      
        'session_cache_limiter|session_cache_limiter($new_cache_limiter =' +
        ' null) {}'
      'session_decode|session_decode($data) {}'
      'session_destroy|session_destroy() {}'
      'session_encode|session_encode() {}'
      'session_get_cookie_params|session_get_cookie_params() {}'
      'session_id|session_id($newid = null) {}'
      'session_is_registered|session_is_registered($varname) {}'
      'session_module_name|session_module_name($newname = null) {}'
      'session_name|session_name($newname = null) {}'
      'session_regenerate_id|session_regenerate_id() {}'
      'session_register|session_register($var_names) {}'
      'session_save_path|session_save_path($newname = null) {}'
      
        'session_set_cookie_params|session_set_cookie_params($lifetime, $' +
        'path = null, $domain = null, $secure = null) {}'
      
        'session_set_save_handler|session_set_save_handler($open, $close,' +
        ' $read, $write, $destroy, $gc) {}'
      'session_start|session_start() {}'
      'session_unregister|session_unregister($varname) {}'
      'session_unset|session_unset() {}'
      'session_write_close|session_write_close() {}'
      'set_attribute|set_attribute($attrname, $value) {}'
      'set_attribute_node|set_attribute_node($attr) {}'
      'set_content|set_content($content) {}'
      'set_error_handler|set_error_handler($error_handler) {}'
      'set_file_buffer|set_file_buffer($fp, $buffer) {}'
      'set_include_path|set_include_path($varname, $newvalue) {}'
      'set_keep_blanks|set_keep_blanks($mode) {}'
      
        'set_magic_quotes_runtime|set_magic_quotes_runtime($new_setting) ' +
        '{}'
      'set_name|set_name($name) {}'
      'set_namespace|set_namespace($uri, $prefix = null) {}'
      'set_socket_blocking|set_socket_blocking($socket, $mode) {}'
      'set_time_limit|set_time_limit($seconds) {}'
      'setaction|setaction($SWFAction) {}'
      'setbackground|setbackground($r, $g, $b) {}'
      'setbounds|setbounds($width, $height) {}'
      'setcolor|setcolor($r, $g, $b, $a = null) {}'
      
        'setcookie|setcookie($name, $value = null, $expires = null, $path' +
        ' = null, $domain = null, $secure = null) {}'
      'setdepth|setdepth($depth) {}'
      'setdimension|setdimension($x, $y) {}'
      'setdown|setdown($SWFCharacter) {}'
      'setfont|setfont($font) {}'
      'setframes|setframes($frames) {}'
      'setheight|setheight($height) {}'
      'sethit|sethit($SWFCharacter) {}'
      'setindentation|setindentation($indentation) {}'
      'setleftfill|setleftfill($arg1, $g = null, $b, $a = null) {}'
      'setleftmargin|setleftmargin($margin) {}'
      'setline|setline($width, $r, $g, $b, $a = null) {}'
      'setlinespacing|setlinespacing($space) {}'
      'setlocale|setlocale($category, $locale) {}'
      'setmargins|setmargins($left, $right) {}'
      'setmatrix|setmatrix($a, $b, $c, $d, $x, $y) {}'
      'setname|setname($var_name) {}'
      'setover|setover($SWFCharacter) {}'
      'setrate|setrate($rate) {}'
      'setratio|setratio($ratio) {}'
      'setrightmargin|setrightmargin($margin) {}'
      'setspacing|setspacing($spacing) {}'
      'settype|settype($var, $type) {}'
      'setup|setup($SWFCharacter) {}'
      'sha1|sha1($str) {}'
      'sha1_file|sha1_file($filename) {}'
      'shell_exec|shell_exec($cmd) {}'
      'shm_attach|shm_attach($key, $memsize = null, $perm = null) {}'
      'shm_detach|shm_detach($shm_identifier) {}'
      'shm_get_var|shm_get_var($id, $variable_key) {}'
      
        'shm_put_var|shm_put_var($shm_identifier, $variable_key, $variabl' +
        'e) {}'
      'shm_remove|shm_remove($shm_identifier) {}'
      'shm_remove_var|shm_remove_var($id, $variable_key) {}'
      'shmop_close|shmop_close ($shmid) {}'
      'shmop_delete|shmop_delete ($shmid) {}'
      'shmop_open|shmop_open ($key, $flags, $mode, $size) {}'
      'shmop_read|shmop_read ($shmid, $start, $count) {}'
      'shmop_size|shmop_size ($shmid) {}'
      'shmop_write|shmop_write ($shmid, $data, $offset) {}'
      'show_source|show_source($file_name, $return = null) {}'
      'shuffle|shuffle($array_arg) {}'
      'similar_text|similar_text($str1, $str2, $percent = null) {}'
      'sin|sin($number) {}'
      'sinh|sinh($number) {}'
      'size|size($collection) {}'
      'sizeof|sizeof($var, $mode = null) {}'
      'skewx|skewx($xSkew) {}'
      'skewxto|skewxto($xSkew) {}'
      'skewy|skewy($ySkew) {}'
      'skewyto|skewyto($ySkew) {}'
      'sleep|sleep($seconds) {}'
      
        'snmp3_get|snmp3_get($host, $sec_name, $sec_level, $auth_protocol' +
        ', $auth_passphrase, $priv_protocol, $priv_passphrase, $object_id' +
        ', $timeout = null, $retries = null) {}'
      
        'snmp3_real_walk|snmp3_real_walk($host, $sec_name, $sec_level, $a' +
        'uth_protocol, $auth_passphrase, $priv_protocol, $priv_passphrase' +
        ', $object_id, $timeout = null, $retries = null) {}'
      
        'snmp3_set|snmp3_set($host, $sec_name, $sec_level, $auth_protocol' +
        ', $auth_passphrase, $priv_protocol, $priv_passphrase, $object_id' +
        ', $type, $value, $timeout = null, $retries = null) {}'
      
        'snmp3_walk|snmp3_walk($host, $sec_name, $sec_level, $auth_protoc' +
        'ol, $auth_passphrase, $priv_protocol, $priv_passphrase, $object_' +
        'id, $timeout = null, $retries = null) {}'
      'snmp_get_quick_print|snmp_get_quick_print() {}'
      'snmp_get_valueretrieval|snmp_get_valueretrieval() {}'
      'snmp_set_enum_print|snmp_set_enum_print($enum_print) {}'
      
        'snmp_set_oid_numeric_print|snmp_set_oid_numeric_print($oid_numer' +
        'ic_print) {}'
      'snmp_set_quick_print|snmp_set_quick_print($quick_print) {}'
      'snmp_set_valueretrieval|snmp_set_valueretrieval($method) {}'
      
        'snmpget|snmpget($host, $community, $object_id, $timeout = null, ' +
        '$retries = null) {}'
      
        'snmprealwalk|snmprealwalk($host, $community, $object_id, $timeou' +
        't = null, $retries = null) {}'
      
        'snmpset|snmpset($host, $community, $object_id, $type, $value, $t' +
        'imeout = null, $retries = null) {}'
      
        'snmpwalk|snmpwalk($host, $community, $object_id, $timeout = null' +
        ', $retries = null) {}'
      
        'snmpwalkoid|snmpwalkoid($host, $community, $object_id, $timeout ' +
        '= null, $retries = null) {}'
      'socket_accept|socket_accept($socket) {}'
      'socket_bind|socket_bind($socket, $addr, $port = null) {}'
      'socket_clear_error|socket_clear_error($socket = null) {}'
      'socket_close|socket_close($socket) {}'
      'socket_connect|socket_connect($socket, $addr, $port = null) {}'
      'socket_create|socket_create($domain, $type, $protocol) {}'
      'socket_create_listen|socket_create_listen($port, $backlog) {}'
      
        'socket_create_pair|socket_create_pair($domain, $type, $protocol,' +
        ' &$fd) {}'
      
        'socket_get_option|socket_get_option($socket, $level, $optname) {' +
        '}'
      'socket_get_status|socket_get_status($fp) {}'
      'socket_getopt|socket_getopt($socket, $level, $optname) {}'
      
        'socket_getpeername|socket_getpeername($socket, &$addr, &$port) {' +
        '}'
      
        'socket_getsockname|socket_getsockname($socket, &$addr, &$port) {' +
        '}'
      'socket_iovec_add|socket_iovec_add($iovec, $iov_len) {}'
      'socket_iovec_alloc|socket_iovec_alloc($num_vectors) {}'
      'socket_iovec_delete|socket_iovec_delete($iovec, $iov_pos) {}'
      
        'socket_iovec_fetch|socket_iovec_fetch($iovec, $iovec_position) {' +
        '}'
      'socket_iovec_free|socket_iovec_free($iovec) {}'
      
        'socket_iovec_set|socket_iovec_set($iovec, $iovec_position, $new_' +
        'val) {}'
      'socket_last_error|socket_last_error($socket = null) {}'
      'socket_listen|socket_listen($socket, $backlog) {}'
      'socket_read|socket_read($socket, $length, $type = null) {}'
      'socket_readv|socket_readv($socket, $iovec_id) {}'
      'socket_recv|socket_recv($socket, &$buf, $len, $flags) {}'
      
        'socket_recvfrom|socket_recvfrom($socket, &$buf, $len, $flags, &$' +
        'name, &$port) {}'
      
        'socket_recvmsg|socket_recvmsg($socket, $iovec, &$control, &$cont' +
        'rollen, &$flags, &$addr, &$port) {}'
      
        'socket_select|socket_select(&$read_fds, &$write_fds, $except_fds' +
        ', $tv_sec, $tv_usec) {}'
      'socket_send|socket_send($socket, $buf, $len, $flags) {}'
      
        'socket_sendmsg|socket_sendmsg($socket, $iovec, $flags, $addr, $p' +
        'ort = null) {}'
      
        'socket_sendto|socket_sendto($socket, $buf, $len, $flags, $addr, ' +
        '$port = null) {}'
      'socket_set_block|socket_set_block($socket) {}'
      'socket_set_blocking|socket_set_blocking($socket, $mode) {}'
      'socket_set_nonblock|socket_set_nonblock($socket) {}'
      
        'socket_set_option|socket_set_option($socket, $level, $optname, $' +
        'optval) {}'
      
        'socket_set_timeout|socket_set_timeout($stream, $seconds, $micros' +
        'econds) {}'
      
        'socket_setopt|socket_setopt($socket, $level, $optname, $optval) ' +
        '{}'
      'socket_shutdown|socket_shutdown($socket, $how) {}'
      'socket_strerror|socket_strerror($errno) {}'
      'socket_write|socket_write($socket, $buf, $length) {}'
      'socket_writev|socket_writev($socket, $iovec_id) {}'
      'solid_fetch_prev|solid_fetch_prev($result_id) {}'
      'sort|sort($array_arg, $sort_flags = null) {}'
      'soundex|soundex($str) {}'
      'specified|specified() {}'
      'split|split($pattern, $string, $limit = null) {}'
      'spliti|spliti($pattern, $string, $limit = null) {}'
      'sprintf|sprintf($format, $arg1 = null) {}'
      'sql_regcase|sql_regcase($string) {}'
      'sqrt|sqrt($number) {}'
      'srand|srand($seed = null) {}'
      'sscanf|sscanf($str, $format) {}'
      'start_document|start_document() {}'
      'start_element|start_element($tagname, $attributes) {}'
      'stat|stat($filename) {}'
      'static|static'
      
        'str_pad|str_pad($input, $pad_length, $pad_string = null, $pad_ty' +
        'pe = null) {}'
      'str_repeat|str_repeat($input, $mult) {}'
      'str_replace|str_replace($search, $replace, $subject) {}'
      'str_rot13|str_rot13($str) {}'
      'str_shuffle|str_shuffle($str) {}'
      'str_word_count|str_word_count($str, $format = null) {}'
      'strcasecmp|strcasecmp($str1, $str2) {}'
      'strchr|strchr($haystack, $needle) {}'
      'strcmp|strcmp($str1, $str2) {}'
      'strcoll|strcoll($str1, $str2) {}'
      'strcspn|strcspn($str, $mask, $start = null, $len = null) {}'
      'stream_context_create|stream_context_create($options = null) {}'
      
        'stream_context_get_options|stream_context_get_options($context) ' +
        '{}'
      
        'stream_context_set_option|stream_context_set_option($context, $w' +
        'rappername, $optionname, $value) {}'
      
        'stream_context_set_params|stream_context_set_params($context, $o' +
        'ptions) {}'
      
        'stream_filter_append|stream_filter_append($stream, $filtername, ' +
        '$filterparams) {}'
      
        'stream_filter_prepend|stream_filter_prepend($stream, $filtername' +
        ', $filterparams) {}'
      'stream_get_meta_data|stream_get_meta_data($fp) {}'
      
        'stream_register_wrapper|stream_register_wrapper($protocol, $clas' +
        'sname) {}'
      
        'stream_select|stream_select(&$read_streams, &$write_streams, &$e' +
        'xcept_streams, $tv_sec, $tv_usec) {}'
      'stream_set_blocking|stream_set_blocking($socket, $mode) {}'
      
        'stream_set_timeout|stream_set_timeout($stream, $seconds, $micros' +
        'econds) {}'
      'stream_set_write_buffer|stream_set_write_buffer($fp, $buffer) {}'
      
        'stream_wrapper_register|stream_wrapper_register($protocol, $clas' +
        'sname) {}'
      'streammp3|streammp3($file) {}'
      'strftime|strftime($format, $timestamp = null) {}'
      'strip_tags|strip_tags($str, $allowable_tags = null) {}'
      'stripcslashes|stripcslashes($str) {}'
      'stripslashes|stripslashes($str) {}'
      'stristr|stristr($haystack, $needle) {}'
      'strlen|strlen($str) {}'
      'strnatcasecmp|strnatcasecmp($s1, $s2) {}'
      'strnatcmp|strnatcmp($s1, $s2) {}'
      'strncasecmp|strncasecmp($str1, $str2, $len) {}'
      'strncmp|strncmp($str1, $str2, $len) {}'
      'strpos|strpos($haystack, $needle, $offset = null) {}'
      'strrchr|strrchr($haystack, $needle) {}'
      'strrev|strrev($str) {}'
      'strrpos|strrpos($haystack, $needle) {}'
      'strspn|strspn($str, $mask, $start = null, $len = null) {}'
      'strstr|strstr($haystack, $needle) {}'
      'strtok|strtok($str = null, $token) {}'
      'strtolower|strtolower($str) {}'
      'strtotime|strtotime($time, $now) {}'
      'strtoupper|strtoupper($str) {}'
      'strtr|strtr($str, $from, $to) {}'
      'strval|strval($var) {}'
      'substr|substr($str, $start, $length = null) {}'
      'substr_count|substr_count($haystack, $needle) {}'
      
        'substr_replace|substr_replace($str, $repl, $start, $length = nul' +
        'l) {}'
      'swf_actiongeturl|swf_actiongeturl($url, $target) {}'
      'swf_actiongotoframe|swf_actiongotoframe($frame_number) {}'
      'swf_actiongotolabel|swf_actiongotolabel($label) {}'
      'swf_actionnextframe|swf_actionnextframe() {}'
      'swf_actionplay|swf_actionplay() {}'
      'swf_actionprevframe|swf_actionprevframe() {}'
      'swf_actionsettarget|swf_actionsettarget($target) {}'
      'swf_actionstop|swf_actionstop() {}'
      'swf_actiontogglequality|swf_actiontogglequality() {}'
      
        'swf_actionwaitforframe|swf_actionwaitforframe($frame, $skipcount' +
        ') {}'
      
        'swf_addbuttonrecord|swf_addbuttonrecord($state, $objid, $depth) ' +
        '{}'
      'swf_addcolor|swf_addcolor($r, $g, $b, $a) {}'
      'swf_closefile|swf_closefile() {}'
      'swf_definebitmap|swf_definebitmap($objid, $imgname) {}'
      'swf_definefont|swf_definefont($fontid, $name) {}'
      
        'swf_defineline|swf_defineline($objid, $x1, $y1, $x2, $y2, $width' +
        ') {}'
      
        'swf_definepoly|swf_definepoly($obj_id, $coords, $npoints, $width' +
        ') {}'
      
        'swf_definerect|swf_definerect($objid, $x1, $y1, $x2, $y2, $width' +
        ') {}'
      'swf_definetext|swf_definetext($objid, $str, $docCenter) {}'
      'swf_endbutton|swf_endbutton() {}'
      'swf_enddoaction|swf_enddoaction() {}'
      'swf_endshape|swf_endshape() {}'
      'swf_endsymbol|swf_endsymbol() {}'
      'swf_fontsize|swf_fontsize($height) {}'
      'swf_fontslant|swf_fontslant($slant) {}'
      'swf_fonttracking|swf_fonttracking($track) {}'
      'swf_getbitmapinfo|swf_getbitmapinfo($bitmapid) {}'
      'swf_getfontinfo|swf_getfontinfo() {}'
      'swf_getframe|swf_getframe() {}'
      'swf_labelframe|swf_labelframe($name) {}'
      'swf_lookat|swf_lookat($vx, $vy, $vz, $px, $py, $pz, $twist) {}'
      'swf_modifyobject|swf_modifyobject($depth, $how) {}'
      'swf_mulcolor|swf_mulcolor($r, $g, $b, $a) {}'
      'swf_nextid|swf_nextid() {}'
      'swf_oncondition|swf_oncondition($transitions) {}'
      
        'swf_openfile|swf_openfile($name, $xsize, $ysize, $framerate, $r,' +
        ' $g, $b) {}'
      'swf_ortho|swf_ortho($xmin, $xmax, $ymin, $ymax, $zmin, $zmax) {}'
      'swf_ortho2|swf_ortho2($xmin, $xmax, $ymin, $ymax) {}'
      'swf_perspective|swf_perspective($fovy, $aspect, $near, $far) {}'
      'swf_placeobject|swf_placeobject($objid, $depth) {}'
      
        'swf_polarview|swf_polarview($dist, $azimuth, $incidence, $twist)' +
        ' {}'
      'swf_popmatrix|swf_popmatrix() {}'
      'swf_posround|swf_posround($doit) {}'
      'swf_pushmatrix|swf_pushmatrix() {}'
      'swf_removeobject|swf_removeobject($depth) {}'
      'swf_rotate|swf_rotate($angle, $axis) {}'
      'swf_scale|swf_scale($x, $y, $z) {}'
      'swf_setfont|swf_setfont($fontid) {}'
      'swf_setframe|swf_setframe($frame_number) {}'
      'swf_shapearc|swf_shapearc($x, $y, $r, $ang1, $ang2) {}'
      'swf_shapecurveto|swf_shapecurveto($x1, $y1, $x2, $y2) {}'
      
        'swf_shapecurveto3|swf_shapecurveto3($x1, $y1, $x2, $y2, $x3, $y3' +
        ') {}'
      'swf_shapefillbitmapclip|swf_shapefillbitmapclip($bitmapid) {}'
      'swf_shapefillbitmaptile|swf_shapefillbitmaptile($bitmapid) {}'
      'swf_shapefilloff|swf_shapefilloff() {}'
      'swf_shapefillsolid|swf_shapefillsolid($r, $g, $b, $a) {}'
      'swf_shapelinesolid|swf_shapelinesolid($r, $g, $b, $a, $width) {}'
      'swf_shapelineto|swf_shapelineto($x, $y) {}'
      'swf_shapemoveto|swf_shapemoveto($x, $y) {}'
      'swf_showframe|swf_showframe() {}'
      'swf_startbutton|swf_startbutton($objid, $type) {}'
      'swf_startdoaction|swf_startdoaction() {}'
      'swf_startshape|swf_startshape($objid) {}'
      'swf_startsymbol|swf_startsymbol($objid) {}'
      'swf_textwidth|swf_textwidth($str) {}'
      'swf_translate|swf_translate($x, $y, $z) {}'
      'swf_viewport|swf_viewport($xmin, $xmax, $ymin, $ymax) {}'
      'swfaction|swfaction($string) {}'
      'swfbitmap|swfbitmap($file, $maskfile = null) {}'
      'swfbutton|swfbutton() {}'
      'swfbutton_keypress|swfbutton_keypress($str) {}'
      'swffill|swffill() {}'
      'swffont|swffont($filename) {}'
      'swfgradient|swfgradient() {}'
      'swfmorph|swfmorph() {}'
      'swfmovie|swfmovie($version) {}'
      'swfmovie_labelframe|swfmovie_labelframe($SWFBlock) {}'
      'swfmovie_nextframe|swfmovie_nextframe() {}'
      'swfshape|swfshape() {}'
      'swfsprite|swfsprite() {}'
      'swftext|swftext() {}'
      'switch|switch'
      'swftextfield|swftextfield($flags = null) {}'
      'sybase_affected_rows|sybase_affected_rows($link_id = null) {}'
      'sybase_close|sybase_close($link_id = null) {}'
      
        'sybase_connect|sybase_connect($host = null, $user = null, $passw' +
        'ord = null, $charset = null, $appname = null) {}'
      'sybase_data_seek|sybase_data_seek($result, $offset) {}'
      
        'sybase_deadlock_retry_count|sybase_deadlock_retry_count($retry_c' +
        'ount) {}'
      'sybase_fetch_array|sybase_fetch_array($result) {}'
      'sybase_fetch_assoc|sybase_fetch_assoc($result) {}'
      
        'sybase_fetch_field|sybase_fetch_field($result, $offset = null) {' +
        '}'
      
        'sybase_fetch_object|sybase_fetch_object($result, $object = null)' +
        ' {}'
      'sybase_fetch_row|sybase_fetch_row($result) {}'
      'sybase_field_seek|sybase_field_seek($result, $offset) {}'
      'sybase_free_result|sybase_free_result($result) {}'
      'sybase_get_last_message|sybase_get_last_message() {}'
      
        'sybase_min_client_severity|sybase_min_client_severity($severity)' +
        ' {}'
      
        'sybase_min_error_severity|sybase_min_error_severity($severity) {' +
        '}'
      
        'sybase_min_message_severity|sybase_min_message_severity($severit' +
        'y) {}'
      
        'sybase_min_server_severity|sybase_min_server_severity($severity)' +
        ' {}'
      'sybase_num_fields|sybase_num_fields($result) {}'
      'sybase_num_rows|sybase_num_rows($result) {}'
      
        'sybase_pconnect|sybase_pconnect($host = null, $user = null, $pas' +
        'sword = null, $charset = null, $appname = null) {}'
      'sybase_query|sybase_query($query, $link_id = null) {}'
      'sybase_result|sybase_result($result, $row, $field) {}'
      'sybase_select_db|sybase_select_db($database, $link_id = null) {}'
      
        'sybase_set_message_handler|sybase_set_message_handler($error_fun' +
        'c) {}'
      
        'sybase_unbuffered_query|sybase_unbuffered_query($query, $link_id' +
        ' = null) {}'
      'symlink|symlink($target, $link) {}'
      'syslog|syslog($priority, $message) {}'
      'system|system($command, $return_value = null) {}'
      'system_id|system_id() {}'
      'tagname|tagname() {}'
      'tan|tan($number) {}'
      'tanh|tanh($number) {}'
      'target|target() {}'
      'tempnam|tempnam($dir, $prefix) {}'
      'text_concat|text_concat($content) {}'
      'textdomain|textdomain($domain) {}'
      'time|time() {}'
      'tmpfile|tmpfile() {}'
      'token_get_all|token_get_all($source) {}'
      'token_name|token_name($type) {}'
      'touch|touch($filename, $time = null, $atime = null) {}'
      'trigger_error|trigger_error($messsage, $error_type = null) {}'
      'trim|trim($collection, $num) {}'
      'uasort|uasort($array_arg, $cmp_function) {}'
      'ucfirst|ucfirst($str) {}'
      'ucwords|ucwords($str) {}'
      'udm_add_search_limit|udm_add_search_limit($agent, $var, $val) {}'
      'udm_alloc_agent|udm_alloc_agent($dbaddr, $dbmode = null) {}'
      'udm_alloc_agent_array|udm_alloc_agent_array($dbaddr) {}'
      'udm_api_version|udm_api_version() {}'
      'udm_cat_list|udm_cat_list($agent, $category) {}'
      'udm_cat_path|udm_cat_path($agent, $category) {}'
      'udm_check_charset|udm_check_charset($agent, $charset) {}'
      'udm_check_stored|udm_check_stored($agent, $link, $doc_id) {}'
      'udm_clear_search_limits|udm_clear_search_limits($agent) {}'
      'udm_close_stored|udm_close_stored($agent, $link) {}'
      'udm_crc32|udm_crc32($agent, $str) {}'
      'udm_errno|udm_errno($agent) {}'
      'udm_error|udm_error($agent) {}'
      'udm_find|udm_find($agent, $query) {}'
      'udm_free_agent|udm_free_agent($agent) {}'
      'udm_free_ispell_data|udm_free_ispell_data($agent) {}'
      'udm_free_res|udm_free_res($res) {}'
      'udm_get_doc_count|udm_get_doc_count($agent) {}'
      'udm_get_res_field|udm_get_res_field($res, $row, $field) {}'
      'udm_get_res_field_ex|udm_get_res_field_ex($res, $row, $field) {}'
      'udm_get_res_param|udm_get_res_param($res, $param) {}'
      'udm_hash32|udm_hash32($agent, $str) {}'
      
        'udm_load_ispell_data|udm_load_ispell_data($agent, $var, $val1, $' +
        'charset = null, $val2, $flag) {}'
      'udm_make_excerpt|udm_make_excerpt($agent, $res, $row) {}'
      'udm_open_stored|udm_open_stored($agent, $storedaddr) {}'
      'udm_parse_query_string|udm_parse_query_string($agent, $str) {}'
      'udm_set_agent_param|udm_set_agent_param($agent, $var, $val) {}'
      
        'udm_set_agent_param_ex|udm_set_agent_param_ex($agent, $var, $val' +
        ') {}'
      'uksort|uksort($array_arg, $cmp_function) {}'
      'umask|umask($mask = null) {}'
      'uniqid|uniqid($prefix, $more_entropy = null) {}'
      'unixtojd|unixtojd($timestamp = null) {}'
      'unlink|unlink($node = null) {}'
      'unlink_node|unlink_node($node = null) {}'
      'unpack|unpack($format, $input) {}'
      
        'unregister_tick_function|unregister_tick_function($function_name' +
        ') {}'
      'unserialize|unserialize($variable_representation) {}'
      'unset()|unset()'
      'urldecode|urldecode($str) {}'
      'urlencode|urlencode($str) {}'
      'user_error|user_error($messsage, $error_type = null) {}'
      'usleep|usleep($micro_seconds) {}'
      'usort|usort($array_arg, $cmp_function) {}'
      'utf8_decode|utf8_decode($data) {}'
      'utf8_encode|utf8_encode($data) {}'
      'use|use'
      'validate|validate(&$error) {}'
      'value|value() {}'
      'var|var'
      'var_dump|var_dump($var) {}'
      'var_export|var_export($var, $return = null) {}'
      'version_compare|version_compare($ver1, $ver2, $oper = null) {}'
      'virtual|virtual($uri) {}'
      'vprintf|vprintf($format, $args) {}'
      'vsprintf|vsprintf($format, $args) {}'
      'wattroff|wattroff($window, $attrs) {}'
      'wattron|wattron($window, $attrs) {}'
      'wattrset|wattrset($window, $attrs) {}'
      'wddx_add_vars|wddx_add_vars($packet_id, $var_names) {}'
      'wddx_deserialize|wddx_deserialize($packet) {}'
      'wddx_packet_end|wddx_packet_end($packet_id) {}'
      'wddx_packet_start|wddx_packet_start($comment = null) {}'
      
        'wddx_serialize_value|wddx_serialize_value($var, $comment = null)' +
        ' {}'
      'wddx_serialize_vars|wddx_serialize_vars($var_name) {}'
      'while|while'
      
        'wordwrap|wordwrap($str, $width = null, $break = null, $cut = nul' +
        'l) {}'
      'writetemporary|writetemporary($stmt, $loc, $var) {}'
      
        'writetofile|writetofile($lob, $filename = null, $start = null, $' +
        'length = null) {}'
      'wstandend|wstandend($window) {}'
      'wstandout|wstandout($window) {}'
      'xinclude|xinclude() {}'
      'xml_error_string|xml_error_string($code) {}'
      
        'xml_get_current_byte_index|xml_get_current_byte_index($parser) {' +
        '}'
      
        'xml_get_current_column_number|xml_get_current_column_number($par' +
        'ser) {}'
      
        'xml_get_current_line_number|xml_get_current_line_number($parser)' +
        ' {}'
      'xml_get_error_code|xml_get_error_code($parser) {}'
      'xml_parse|xml_parse($parser, $data, $isFinal = null) {}'
      
        'xml_parse_into_struct|xml_parse_into_struct($parser, $data, &$st' +
        'ruct, &$index) {}'
      'xml_parser_create|xml_parser_create($encoding = null) {}'
      
        'xml_parser_create_ns|xml_parser_create_ns($encoding = null, $sep' +
        ' = null) {}'
      'xml_parser_free|xml_parser_free($parser) {}'
      'xml_parser_get_option|xml_parser_get_option($parser, $option) {}'
      
        'xml_parser_set_option|xml_parser_set_option($parser, $option, $v' +
        'alue) {}'
      
        'xml_set_character_data_handler|xml_set_character_data_handler($p' +
        'arser, $hdl) {}'
      
        'xml_set_default_handler|xml_set_default_handler($parser, $hdl) {' +
        '}'
      
        'xml_set_element_handler|xml_set_element_handler($parser, $shdl, ' +
        '$ehdl) {}'
      
        'xml_set_end_namespace_decl_handler|xml_set_end_namespace_decl_ha' +
        'ndler($parser, $hdl) {}'
      
        'xml_set_external_entity_ref_handler|xml_set_external_entity_ref_' +
        'handler($parser, $hdl) {}'
      
        'xml_set_notation_decl_handler|xml_set_notation_decl_handler($par' +
        'ser, $hdl) {}'
      'xml_set_object|xml_set_object($parser, &$obj) {}'
      
        'xml_set_processing_instruction_handler|xml_set_processing_instru' +
        'ction_handler($parser, $hdl) {}'
      
        'xml_set_start_namespace_decl_handler|xml_set_start_namespace_dec' +
        'l_handler($parser, $hdl) {}'
      
        'xml_set_unparsed_entity_decl_handler|xml_set_unparsed_entity_dec' +
        'l_handler($parser, $hdl) {}'
      'xmldocfile|xmldocfile($filename, $mode, $error) {}'
      'xmlrpc_decode|xmlrpc_decode($xml, $encoding = null) {}'
      
        'xmlrpc_decode_request|xmlrpc_decode_request($xml, $method, $enco' +
        'ding = null) {}'
      'xmlrpc_encode|xmlrpc_encode($value) {}'
      'xmlrpc_encode_request|xmlrpc_encode_request($method, $params) {}'
      'xmlrpc_get_type|xmlrpc_get_type($value) {}'
      'xmlrpc_is_fault|xmlrpc_is_fault($array) {}'
      
        'xmlrpc_parse_method_descriptions|xmlrpc_parse_method_description' +
        's($xml) {}'
      
        'xmlrpc_server_add_introspection_data|xmlrpc_server_add_introspec' +
        'tion_data($server, $desc) {}'
      
        'xmlrpc_server_call_method|xmlrpc_server_call_method($server, $xm' +
        'l, $user_data, $output_options = null) {}'
      'xmlrpc_server_create|xmlrpc_server_create() {}'
      'xmlrpc_server_destroy|xmlrpc_server_destroy($server) {}'
      
        'xmlrpc_server_register_introspection_callback|xmlrpc_server_regi' +
        'ster_introspection_callback($server, $function) {}'
      
        'xmlrpc_server_register_method|xmlrpc_server_register_method($ser' +
        'ver, $method_name, $function) {}'
      'xmlrpc_set_type|xmlrpc_set_type($value, $type) {}'
      'xmltree|xmltree($xmltree) {}'
      'xor|xor'
      'xptr_eval|xptr_eval($xpathctx_handle = null, $str) {}'
      'xslt_backend_info|xslt_backend_info() {}'
      'xslt_backend_name|xslt_backend_name() {}'
      'xslt_backend_version|xslt_backend_version() {}'
      'xslt_create|xslt_create() {}'
      'xslt_errno|xslt_errno($processor) {}'
      'xslt_error|xslt_error($processor) {}'
      'xslt_free|xslt_free($processor) {}'
      'xslt_getopt|xslt_getopt($processor) {}'
      
        'xslt_process|xslt_process($processor, $xml, $xslt, $result, $arg' +
        's, $params) {}'
      'xslt_set_base|xslt_set_base($processor, $base) {}'
      'xslt_set_encoding|xslt_set_encoding($processor, $encoding) {}'
      
        'xslt_set_error_handler|xslt_set_error_handler($processor, $error' +
        '_func) {}'
      'xslt_set_log|xslt_set_log($processor, $logfile) {}'
      'xslt_set_object|xslt_set_object($parser, $obj) {}'
      
        'xslt_set_sax_handlers|xslt_set_sax_handlers($processor, $handler' +
        's) {}'
      
        'xslt_set_scheme_handlers|xslt_set_scheme_handlers($processor, $h' +
        'andlers) {}'
      'xslt_setopt|xslt_setopt($processor, $newmask) {}'
      'yaz_addinfo|yaz_addinfo($id) {}'
      'yaz_ccl_conf|yaz_ccl_conf($id, $package) {}'
      'yaz_ccl_parse|yaz_ccl_parse($id, $query, $res) {}'
      'yaz_close|yaz_close($id) {}'
      'yaz_connect|yaz_connect($zurl_) {}'
      'yaz_database|yaz_database ($id, $databases) {}'
      'yaz_element|yaz_element($id, $elementsetname) {}'
      'yaz_errno|yaz_errno($id) {}'
      'yaz_error|yaz_error($id) {}'
      'yaz_es_result|yaz_es_result($id) {}'
      'yaz_hits|yaz_hits($id) {}'
      'yaz_itemorder|yaz_itemorder($id, $package) {}'
      'yaz_present|yaz_present($id) {}'
      'yaz_range|yaz_range($id, $start, $number) {}'
      'yaz_record|yaz_record($id, $pos, $type) {}'
      'yaz_scan|yaz_scan($id, $type, $query, $flags = null) {}'
      'yaz_scan_result|yaz_scan_result($id, $options) {}'
      'yaz_schema|yaz_schema($id, $schema) {}'
      'yaz_search|yaz_search($id, $type, $query) {}'
      'yaz_sort|yaz_sort($id, $sortspec) {}'
      'yaz_syntax|yaz_syntax($id, $syntax) {}'
      'yaz_wait|yaz_wait($options = null) {}'
      'yp_all|yp_all($domain, $map, $callback) {}'
      'yp_cat|yp_cat($domain, $map) {}'
      'yp_err_string|yp_err_string($errorcode) {}'
      'yp_errno|yp_errno() {}'
      'yp_first|yp_first($domain, $map) {}'
      'yp_get_default_domain|yp_get_default_domain() {}'
      'yp_master|yp_master($domain, $map) {}'
      'yp_match|yp_match($domain, $map, $key) {}'
      'yp_next|yp_next($domain, $map, $key) {}'
      'yp_order|yp_order($domain, $map) {}'
      'zend_logo_guid|zend_logo_guid() {}'
      'zend_version|zend_version() {}'
      'zip_close|zip_close($zip) {}'
      'zip_entry_close|zip_entry_close($zip_ent) {}'
      'zip_entry_compressedsize|zip_entry_compressedsize($zip_entry) {}'
      
        'zip_entry_compressionmethod|zip_entry_compressionmethod($zip_ent' +
        'ry) {}'
      'zip_entry_filesize|zip_entry_filesize($zip_entry) {}'
      'zip_entry_name|zip_entry_name($zip_entry) {}'
      'zip_entry_open|zip_entry_open($zip_dp, $zip_entry, $mode) {}'
      'zip_entry_read|zip_entry_read($zip_ent) {}'
      'zip_open|zip_open($filename) {}'
      'zip_read|zip_read($zip) {}'
      'swfshape_init|swfshape_init() {}'
      
        'swfshape_setline|swfshape_setline($width, $r, $g, $b, $a = null)' +
        ' {}'
      
        'swfshape_addfill|swfshape_addfill($arg1, $arg2, $b = null, $a = ' +
        'null) {}'
      
        'swfshape_setleftfill|swfshape_setleftfill($arg1, $g = null, $b, ' +
        '$a = null) {}'
      'swfshape_movepento|swfshape_movepento($x, $y) {}'
      'swfshape_movepen|swfshape_movepen($x, $y) {}'
      'swfshape_drawlineto|swfshape_drawlineto($x, $y) {}'
      'swfshape_drawline|swfshape_drawline($dx, $dy) {}'
      
        'swfshape_drawcurveto|swfshape_drawcurveto($ax, $ay, $bx, $by, $d' +
        'x = null, $dy) {}'
      
        'swfshape_drawcurve|swfshape_drawcurve($adx, $ady, $bdx, $bdy, $c' +
        'dx = null, $cdy) {}'
      
        'swfshape_drawglyph|swfshape_drawglyph($font, $character, $size =' +
        ' null) {}'
      'swfshape_drawcircle|swfshape_drawcircle($r) {}'
      'swfshape_drawarc|swfshape_drawarc($r, $startAngle, $endAngle) {}'
      
        'swfshape_drawcubic|swfshape_drawcubic($bx, $by, $cx, $cy, $dx, $' +
        'dy) {}'
      'swffill_init|swffill_init() {}'
      'swffill_moveTo|swffill_moveTo($x, $y) {}'
      'swffill_scaleTo|swffill_scaleTo($xScale, $yScale = null) {}'
      'swffill_rotateTo|swffill_rotateTo($degrees) {}'
      'swffill_skewXTo|swffill_skewXTo($xSkew) {}'
      'swffill_skewYTo|swffill_skewYTo($ySkew) {}'
      'swfgradient_init|swfgradient_init() {}'
      
        'swfgradient_addEntry|swfgradient_addEntry($ratio, $r, $g, $b, $a' +
        ' = null) {}'
      'swfbitmap_init|swfbitmap_init($file, $maskfile = null) {}'
      'swfbitmap_getWidth|swfbitmap_getWidth() {}'
      'swfbitmap_getHeight|swfbitmap_getHeight() {}'
      'swftext_init|swftext_init() {}'
      'swftext_setFont|swftext_setFont($font) {}'
      'swftext_setHeight|swftext_setHeight($height) {}'
      'swftext_setSpacing|swftext_setSpacing($spacing) {}'
      'swftext_setColor|swftext_setColor($r, $g, $b, $a = null) {}'
      'swftext_moveTo|swftext_moveTo($x, $y) {}'
      'swftext_addString|swftext_addString($text) {}'
      'swftext_getWidth|swftext_getWidth($str) {}'
      'swftext_getAscent|swftext_getAscent() {}'
      'swftext_getDescent|swftext_getDescent() {}'
      'swftext_getLeading|swftext_getLeading() {}'
      'swftextfield_init|swftextfield_init($flags = null) {}'
      'swftextfield_setFont|swftextfield_setFont($font) {}'
      
        'swftextfield_setBounds|swftextfield_setBounds($width, $height) {' +
        '}'
      'swftextfield_align|swftextfield_align($alignment) {}'
      'swftextfield_setHeight|swftextfield_setHeight($height) {}'
      
        'swftextfield_setLeftMargin|swftextfield_setLeftMargin($margin) {' +
        '}'
      
        'swftextfield_setRightMargin|swftextfield_setRightMargin($margin)' +
        ' {}'
      
        'swftextfield_setMargins|swftextfield_setMargins($left, $right) {' +
        '}'
      
        'swftextfield_setIndentation|swftextfield_setIndentation($indenta' +
        'tion) {}'
      
        'swftextfield_setLineSpacing|swftextfield_setLineSpacing($space) ' +
        '{}'
      
        'swftextfield_setColor|swftextfield_setColor($r, $g, $b, $a = nul' +
        'l) {}'
      'swftextfield_setName|swftextfield_setName($var_name) {}'
      'swftextfield_addString|swftextfield_addString($str) {}'
      'swffont_init|swffont_init($filename) {}'
      'swffont_getWidth|swffont_getWidth($str) {}'
      'swffont_getAscent|swffont_getAscent() {}'
      'swffont_getDescent|swffont_getDescent() {}'
      'swffont_getLeading|swffont_getLeading() {}'
      'swfdisplayitem_moveTo|swfdisplayitem_moveTo($x, $y) {}'
      'swfdisplayitem_move|swfdisplayitem_move($dx, $dy) {}'
      
        'swfdisplayitem_scaleTo|swfdisplayitem_scaleTo($xScale, $yScale =' +
        ' null) {}'
      'swfdisplayitem_scale|swfdisplayitem_scale($xScale, $yScale) {}'
      'swfdisplayitem_rotateTo|swfdisplayitem_rotateTo($degrees) {}'
      'swfdisplayitem_rotate|swfdisplayitem_rotate($degrees) {}'
      'swfdisplayitem_skewXTo|swfdisplayitem_skewXTo($xSkew) {}'
      'swfdisplayitem_skewX|swfdisplayitem_skewX($xSkew) {}'
      'swfdisplayitem_skewYTo|swfdisplayitem_skewYTo($ySkew) {}'
      'swfdisplayitem_skewY|swfdisplayitem_skewY($ySkew) {}'
      
        'swfdisplayitem_setMatrix|swfdisplayitem_setMatrix($a, $b, $c, $d' +
        ', $x, $y) {}'
      'swfdisplayitem_setDepth|swfdisplayitem_setDepth($depth) {}'
      'swfdisplayitem_setRatio|swfdisplayitem_setRatio($ratio) {}'
      
        'swfdisplayitem_addColor|swfdisplayitem_addColor($r, $g, $b, $a =' +
        ' null) {}'
      
        'swfdisplayitem_multColor|swfdisplayitem_multColor($r, $g, $b, $a' +
        ' = null) {}'
      'swfdisplayitem_setName|swfdisplayitem_setName($name) {}'
      
        'swfdisplayitem_addAction|swfdisplayitem_addAction($SWFAction, $f' +
        'lags) {}'
      'swfmovie_init|swfmovie_init($version) {}'
      'swfmovie_add|swfmovie_add($SWFBlock) {}'
      'swfmovie_output|swfmovie_output($compression = null) {}'
      'swfmovie_save|swfmovie_save($where, $compression = null) {}'
      
        'swfmovie_saveToFile|swfmovie_saveToFile($x, $compression = null)' +
        ' {}'
      'swfmovie_setBackground|swfmovie_setBackground($r, $g, $b) {}'
      'swfmovie_setRate|swfmovie_setRate($rate) {}'
      'swfmovie_setDimension|swfmovie_setDimension($x, $y) {}'
      'swfmovie_setFrames|swfmovie_setFrames($frames) {}'
      'swfmovie_streamMp3|swfmovie_streamMp3($file) {}'
      'swfbutton_init|swfbutton_init() {}'
      'swfbutton_setHit|swfbutton_setHit($SWFCharacter) {}'
      'swfbutton_setOver|swfbutton_setOver($SWFCharacter) {}'
      'swfbutton_setUp|swfbutton_setUp($SWFCharacter) {}'
      'swfbutton_setDown|swfbutton_setDown($SWFCharacter) {}'
      'swfbutton_setAction|swfbutton_setAction($SWFAction) {}'
      'swfbutton_addShape|swfbutton_addShape($SWFCharacter, $flags) {}'
      'swfbutton_addAction|swfbutton_addAction($SWFAction, $flags) {}'
      'swfaction_init|swfaction_init($string) {}'
      'swfmorph_init|swfmorph_init() {}'
      'swfmorph_getShape1|swfmorph_getShape1() {}'
      'swfmorph_getShape2|swfmorph_getShape2() {}'
      'swfsprite_init|swfsprite_init() {}'
      'swfsprite_add|swfsprite_add($SWFCharacter) {}'
      'swfsprite_remove|swfsprite_remove($SWFDisplayItem) {}'
      'swfsprite_nextFrame|swfsprite_nextFrame() {}'
      'swfsprite_labelFrame|swfsprite_labelFrame($label) {}'
      'swfsprite_setFrames|swfsprite_setFrames($frames) {}'
      'ociloadlob|ociloadlob($lob) {}'
      
        'ociwritelobtofile|ociwritelobtofile($lob, $filename = null, $sta' +
        'rt = null, $length = null) {}'
      'ociwritetemporarylob|ociwritetemporarylob($stmt, $loc, $var) {}'
      'ocicloselob|ocicloselob($lob) {}'
      'ocisavelob|ocisavelob($lob) {}'
      'ocisavelobfile|ocisavelobfile($lob) {}'
      'ocifreedesc|ocifreedesc($lob) {}'
      'ocicollappend|ocicollappend($collection, $value) {}'
      'ocicollgetelem|ocicollgetelem($collection, $ndx) {}'
      'ocicollassignelem|ocicollassignelem($collection, $ndx, $val) {}'
      'ocicollassign|ocicollassign($collection, $object) {}'
      'ocicollsize|ocicollsize($collection) {}'
      'ocicollmax|ocicollmax($collection) {}'
      'ocicolltrim|ocicolltrim($collection, $num) {}'
      'ocifreecollection|ocifreecollection($lob) {}'
      'closedir|closedir($dir_handle = null) {}'
      'rewinddir|rewinddir($dir_handle = null) {}'
      '__FILE__|__FILE__'
      '__LINE__|__LINE__'
      '__FUNCTION__|__FUNCTION__'
      '__CLASS__|__CLASS__'
      '__METHOD__  |__METHOD__  '
      '$GLOBALS|$GLOBALS'
      '$_SERVER|$_SERVER'
      '$_GET|$_GET'
      '$_POST|$_POST'
      '$_COOKIE|$_COOKIE'
      '$_FILES|$_FILES'
      '$_ENV|$_ENV'
      '$_REQUEST|$_REQUEST'
      '$_SESSION|$_SESSION')
    Completion.ItemHeight = 15
    Completion.Interval = 800
    Completion.ListBoxStyle = lbStandard
    Completion.CaretChar = '|'
    Completion.CRLF = '/n'
    Completion.Separator = '|'
    TabStops = '3 5'
    SelForeColor = clHighlightText
    SelBackColor = clHighlight
    Align = alClient
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    PopupMenu = PopupMenu1
    TabStop = True
    UseDockManager = False
    HighLighter = hlPhp
    Colors.Comment.Style = [fsItalic]
    Colors.Comment.ForeColor = clOlive
    Colors.Number.ForeColor = clNavy
    Colors.Strings.ForeColor = clPurple
    Colors.Symbol.ForeColor = clBlue
    Colors.Reserved.Style = [fsBold]
    Colors.Preproc.ForeColor = clGreen
    Colors.Statement.Style = [fsBold]
  end
  object Panel1: TPanel
    Left = 0
    Top = 525
    Width = 791
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 344
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Save'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 464
    Top = 528
    object Sceltacampi1: TMenuItem
      Caption = 'Zoom'
      ShortCut = 116
      OnClick = Sceltacampi1Click
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = Exit1Click
    end
    object Viewsstate1: TMenuItem
      Caption = 'Views state'
      ShortCut = 117
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 512
    Top = 528
    object MenuItem1: TMenuItem
      Caption = 'Zoom'
      ShortCut = 116
      OnClick = Sceltacampi1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Exit'
      ShortCut = 27
      OnClick = Exit1Click
    end
    object Return1: TMenuItem
      Caption = 'Return'
      ShortCut = 13
      OnClick = Button1Click
    end
  end
end
