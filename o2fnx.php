<?php

/***********************************
 *   name: o2/o2fnx.php            *
 *   desc: o2 callable functions   *
 *   copy: www.o2gen.it, 2006      *
 *   lang: php                     *
 *   vers: 5.x                     *
 ***********************************/

// ================================= o2 =================================

/**
 * Returns current value of the requested field of a view. Any further parameter
 * will be used as index of an array for recovering values from structured variables
 *
 * @param string $view_name
 * @param string $field_name
 * @return mix
 */
function o2val($view_name, $field_name) {
	if ($view_name == '_o2SESSION') {
		if (array_key_exists($field_name, $_SESSION['o2_app']->vars)) {
			return $_SESSION['o2_app']->vars[$field_name]->valore;
			}
		else {
			o2_errore(__LINE__, "<b>UNKNOWN APPLICATION VARIABLE</b> <i>".$field_name."</i>");
			}
		}
    if (!($_SESSION['o2_app']->istanze_prg[$_SESSION['o2_app']->progressivo_istanze]->
           contesto[$view_name] instanceof o2_view )) {
        o2_errore(__LINE__,
                  "<b>UNKNOWN VIEW</b> ".
                  "<i>".$view_name."</i> ".
                  "in program <i>".$_SESSION['o2_app']->istanze_prg[$_SESSION['o2_app']->progressivo_istanze]->nome."</i>",
                  false);
        return "";
        }
	if (func_num_args() > 2) {
		$array_keys = func_get_args();
		array_shift($array_keys);
		array_shift($array_keys);
		$keys = "['".implode("']['", $array_keys)."']";
		$value_local = $_SESSION['o2_app']->istanze_prg[$_SESSION['o2_app']->progressivo_istanze]->
		                contesto[$view_name]->campo($field_name);
//		$value_local = obj2array($_SESSION['o2_app']->istanze_prg[$_SESSION['o2_app']->progressivo_istanze]->
//                      contesto[$view_name]->campo($field_name));
		eval("\$value_local = \$value_local".$keys.";");
		return $value_local;
		}
	else {
		return $_SESSION['o2_app']->istanze_prg[$_SESSION['o2_app']->progressivo_istanze]->
		        contesto[$view_name]->campo($field_name);
		}
	}


/**
 * Returns previous value of the requested field of a view, as red from
 * database, before any update operation. Any further parameter will be
 * used as index of an array for recovering values from structured variables
 *
 * @param string $view_name
 * @param string $field_name
 * @return mix
 */
function o2pre($view_name, $field_name) {
	$field_local = $_SESSION['o2_app']->istanze_prg[$_SESSION['o2_app']->progressivo_istanze]->contesto[$view_name]->campo_per_controllo($field_name);
	if (func_num_args() > 2 && $field_local->maschera->tipo == "S") {
		$array_keys = func_get_args();
		array_shift($array_keys);
		array_shift($array_keys);
		$keys = "['".implode("']['", $array_keys)."']";
		$value_local = obj2array($_SESSION['o2_app']->istanze_prg[$_SESSION['o2_app']->progressivo_istanze]->contesto[$view_name]->precedente($field_name));
		eval("\$value_local = \$value_local".$keys.";");
		return $value_local;
		}
	else {
		return $_SESSION['o2_app']->istanze_prg[$_SESSION['o2_app']->progressivo_istanze]->contesto[$view_name]->precedente($field_name);
		}
	}


/**
 * Returns boolean value true/false if field value is equal/different from its
 * own default value
 *
 * @param string $view_name
 * @param string $field_name
 * @return boolean
 */
function o2zero($view_name, $field_name) {
	if ($view_name == '_o2SESSION') {
		if (array_key_exists($field_name, $_SESSION['o2_app']->vars)) {
			$field_local = $_SESSION['o2_app']->vars[$field_name];
			}
		else {
			o2_errore(__LINE__, "<b>UNKNOWN APPLICATION VARIABLE</b> <i>".$field_name."</i>");
			}
		}
	else {
		$field_local = $_SESSION['o2_app']->istanze_prg[$_SESSION['o2_app']->progressivo_istanze]->contesto[$view_name]->campo_per_controllo($field_name);
		}
	$default_local = $field_local->maschera->default;
	$val_local = o2val($view_name, $field_name);
	$ret_local = false;
	switch ($field_local->maschera->tipo) {
		case "S":
			$ret_local = (obj2array($val_local) === obj2array($default_local));
			break;
		case "N":
			$ret_local = (floatval($val_local) === floatval($default_local));
			break;
		case "L":
			$ret_local = (!($val_local) === !($default_local));
			break;
		default:
			$ret_local = (trim($val_local) === trim($default_local));
			break;
		}
	return $ret_local;
	}


/**
 * Returns value of requested expression
 *
 * @param integer $exp_n
 * @return mix
 */
function o2exp($exp_n = 0) {
	$exp_n = intval($exp_n);
	$func_name = trim($_SESSION['o2_app']->istanze_prg[$_SESSION['o2_app']->progressivo_istanze]->nome)."_exp_".$exp_n;
	if (function_exists($func_name)) {
		eval("\$value_local = ".$func_name."();");
		return $value_local;
		}
	else {
		o2_errore(__LINE__, "<b>EXPRESSION NOT FOUND</b> number <i>".$exp_n."</i>", 0);
		return "";
		}
	}


/**
 * Returns passed value formatted according with model
 *
 * @param mix $value
 * @param string $model
 * @return string
 */
function o2format($value, $model) {
	if (!$_SESSION['o2_app']->maschere[$model]) {
		o2_errore(__LINE__, "<b>UNKNOWN MODEL</b> <i>".$model."</i> requested in format", 1);
		}
	else {
		$dummy_ctrl = new o2_ctrl();
		$dummy_ctrl->maschera = $_SESSION['o2_app']->maschere[$model];
		$dummy_ctrl->valore = $value;
		return $dummy_ctrl->sql2ctrl();
		}
	}


/**
 * Returns value of the requested parameter
 *
 * @param integer $parameter_id
 * @return mix
 */
function o2par($parameter_id) {
	$args = func_get_args();
	return call_user_func_array(array(&$_SESSION['o2_app']->istanze_prg[$_SESSION['o2_app']->progressivo_istanze], 'get_par'),$args);
	}


/**
 * Takes an o2-date as first parameter, adds to it the passed numbers of years,
 * months and days and returns the result as an o2-date. o2-date = 'YYYYMMDD'.
 *
 * @param string $date
 * @param integer $years
 * @param integer $months
 * @param integer $days
 * @return string
 */
function o2_mkdate($date, $years = 0, $months = 0, $days = 0) {
	$ts_local = @mktime(0, 0, 0, substr($date, 4, 2) + $months, substr($date, 6, 2) + $days, substr($date, 0, 4) + $years);
	return ($ts_local ? date("Ymd", $ts_local) : "00000000");
	}


/**
 * Takes an o2-time as first parameter, adds to it the passed numbers of hours,
 * minutes and seconds and returns the result as an o2-time. o2-time = 'HHMMSS'.
 *
 * @param string $time
 * @param integer $hours
 * @param integer $minutes
 * @param integer $seconds
 * @return string
 */
function o2_mktime($time, $hours = 0, $minutes = 0, $seconds = 0) {
	$ts_local = @mktime(substr($time, 0, 2) + $hours, substr($time, 2, 2) + $minutes, substr($time, 4, 2) + $seconds, 1, 1, 1);
	return ($ts_local ? date("His", $ts_local) : "000000");
	}


/**
 * Opens a benchmark segment
 *
 * @param string $segment
 * @param string $label
 * @return boolean
 */
function o2_timestart($segment, $label = "") {
    return $GLOBALS['o2_runtime']->time_set_start($segment, $label);
    }


/**
 * Closes a benchmark segment
 *
 * @param string $segment
 * @return boolean
 */
function o2_timeend($segment) {
    return $GLOBALS['o2_runtime']->time_set_end($segment);
    }


/**
 * Disposes requested file for download and returns the url leading to it.
 *
 * @param string $file_name
 * @return string
 */
function o2_file2http($file_name = "") {
	return $_SESSION['o2_app']->file2http($file_name);
	}


/**
 * Returns the url to request for calling a program and passing parameters
 *
 * @param string $prg_name
 * @return string
 */
function o2_prg4http($prg_name = "") {

	$parameters = func_get_args();
	array_shift($parameters);

	$parameters_str = "";
	$counter_local = 0;
	foreach ($parameters as $single_parameter) {
		$counter_local++;
		$parameters_str.= "&extp_".$counter_local."=".htmlentities(urlencode($single_parameter));
		}

	return $_SERVER['PHP_SELF']."?o2c=".$prg_name.$parameters_str;
	}


/**
 * Returns the url to request for executing an action into a running program
 * ($id_prg = 0 for actually running program)
 *
 * @param integer $id_prg
 * @param string $action_name
 * @return string
 */
function o2_act4http($prg_id, $action_name) {
	$parameters = func_get_args();
	array_shift($parameters);
	array_shift($parameters);

	$prg_id = ($prg_id ? $prg_id : $_SESSION['o2_app']->progressivo_istanze);

	$parameters_str = "";
	$counter_local = 0;
	foreach ($parameters as $single_parameter) {
		$counter_local++;
		$parameters_str.= ", '".htmlentities(urlencode($single_parameter))."'";
		}
	return "javascript:{o2j_action('', ".$prg_id.", '".$action_name."'".$parameters_str.");}";
	}


/**
 * Returns the javascript for executing an action into a running program
 * ($id_prg = 0 for actually running program)
 *
 * @param integer $id_prg
 * @param string $action_name
 * @return string
 */
function o2_act4js($prg_id, $action_name) {
	$parameters = func_get_args();
	array_shift($parameters);
	array_shift($parameters);

	$prg_id = ($prg_id ? $prg_id : $_SESSION['o2_app']->progressivo_istanze);

	$parameters_str = "";
	$counter_local = 0;
	foreach ($parameters as $single_parameter) {
		$counter_local++;
		$parameters_str.= ", '".htmlentities(urlencode($single_parameter))."'";
		}
	return "o2j_action(event, ".$prg_id.", '".$action_name."'".$parameters_str.");";
	}


/**
 * Sends a mail throw an smtp server. Returns true on success.
 *
 * @param string $from
 * @param string $to
 * @param string $cc
 * @param string $bcc
 * @param string $subject
 * @param boolean $as_html
 * @param string $text
 * @return boolean
 */
function o2mail_send($from, $to, $cc, $bcc, $subject, $as_html, $text) {
	if ($from) {
		$mail_local = new o2_mail($from);
		if ($to) {
			$mail_local->to($to);
			}
		else {
			return false;
			}
		if ($cc) {
			$mail_local->cc($cc);
			}
		if ($bcc) {
			$mail_local->bcc($bcc);
			}
		if ($subject) {
			$mail_local->subject($subject);
			}
		if ($as_html) {
			$mail_local->html($text);
			}
		else {
			$mail_local->text($text);
			}
		$mail_local->send();
		return true;
		}
	else {
		return false;
		}
	}


/**
 * Sets HTML headers to allow browsers to recover page in production
 * from cache. Returns TRUE if set possible, FALSE if headers
 * have already been sent.
 *
 * @param boolean $allow
 * @return boolean
 */
function o2_allow_history($allow = true) {
    if (headers_sent()) {
        return false;
        }
    elseif ($allow) {
        session_cache_limiter("nocache");
        print "<script> document.o2_info_html_form.o2pagemark.value=''; </script>";
        return true;
        }
    else {
        session_cache_limiter("must_revalidate");
        return true;
        }
    }


/**
 * Sets focus to the specified control of form
 *
 * @param string $form_name
 * @param string $ctrl_name
 * @return boolean
 */
function o2ctrl_focus($form_name, $ctrl_name) {
    $_SESSION['o2_app']->istanze_prg[$_SESSION['o2_app']->progressivo_istanze]->set_caret($form_name, $ctrl_name, true);
    return true;
    }


// ============================== o2 RUNTIME ===============================

/**
 * Returns current o2runtime alias
 *
 * @return string
 */
function o2rnt_alias() {
	return $GLOBALS['o2_runtime']->alias;
	}

/**
 * Returns current o2runtime root path
 *
 * @return string
 */
function o2rnt_root() {
	return $GLOBALS['o2_runtime']->root;
	}


/**
 * Returns current o2runtime css folder path
 *
 * @return string
 */
function o2rnt_dircss() {
	return $GLOBALS['o2_runtime']->dir_css;
	}


// =============================== DEVELOPER ===============================

/**
 * Starts log recording for application runlevel "development"
 *
 */
function o2dev_tracestart() {
	if ($_SESSION['o2_app']->run_level == "DEV") {
		$_SESSION['o2_app']->log_recording = true;
		}
	}


/**
 * Stops log recording for application runlevel "development"
 *
 */
function o2dev_tracestop() {
	if ($_SESSION['o2_app']->run_level == "DEV") {
		$_SESSION['o2_app']->log_recording = false;
		}
	}


/**
 * Returns log recording current status
 *
 */
function o2dev_tracestatus() {
	if ($_SESSION['o2_app']->run_level == "DEV") {
		return $_SESSION['o2_app']->log_recording;
		}
	}


/**
 * Returns log recording file current dimension in KB
 *
 */
function o2dev_tracedim() {
	if ($_SESSION['o2_app']->run_level == "DEV") {
		$log_file = new o2_elemento_fs($_SESSION['o2_app']->dir_home->nome_completo."/logs/".$_SESSION['o2_app']->developer.".log");
		$dim = round($log_file->dimensioni / 1024, 1);
		}
	return $dim;
	}


// ================================= USER ==================================
/**
 * Returns logged user roles list as an array
 *
 * @return array
 */
function o2user_roles() {
	return $_SESSION['o2_app']->user_roles;
	}


/**
 * Returns logged user rights list as an array
 *
 * @return array
 */
function o2user_rights() {
	return $_SESSION['o2_app']->user_rights;
	}


/**
 * Returns TRUE if logged user has got requested right
 *
 * @param string $right_code
 * @return boolean
 */
function o2user_has($right_code) {
	return $_SESSION['o2_app']->has_right($right_code);
	}


/**
 * Returns TRUE if logged user is in the requested role
 *
 * @param string $role_name
 * @return boolean
 */
function o2user_is($role_name) {
	return $_SESSION['o2_app']->is_user($role_name);
	}



// ================================ BROWSER ================================
/**
 * Returns information string provided by the client browser
 *
 * @return string
 */
function o2client_browser() {
	return $_SERVER['HTTP_USER_AGENT'];
	}


/**
 * Returns client browser ip address
 *
 * @return string
 */
function o2client_ip() {
	return $_SERVER['REMOTE_ADDR'].($_SERVER['REMOTE_PORT'] ? ":".$_SERVER['REMOTE_PORT'] : "");
	}


/**
 * Returns client machine host name
 *
 * @return string
 */
function o2client_host() {
	return $_SERVER['HTTP_HOST'];
	}


/**
 * Returns client machine platform description
 *
 * @return string
 */
function o2client_platform() {
	$cli_str = $_SERVER['HTTP_USER_AGENT'];
	$sub_str = array();
	preg_match("/\(([^\(\)]*)\)/", $cli_str, $sub_str);
	$str_parts = explode(";", $sub_str[1]);
	return $str_parts[0];
	}


/**
 * Returns client machine operating system description
 *
 * @return string
 */
function o2client_os() {
	$cli_str = $_SERVER['HTTP_USER_AGENT'];
	$sub_str = array();
	preg_match("/\(([^\(\)]*)\)/", $cli_str, $sub_str);
	$str_parts = explode(";", $sub_str[1]);
	return $str_parts[2];
	}


/**
 * Returns client browser window width
 *
 * @return integer
 */
function o2client_width() {
	return intval($_SESSION['o2_app']->client_width);
	}


/**
 * Returns client browser window height
 *
 * @return integer
 */
function o2client_height() {
	return intval($_SESSION['o2_app']->client_height);
	}


// ================================= APPLICATION =================================

/**
 * Returns php session id
 *
 * @return string
 */
function o2app_sid() {
	return session_id();
	}


/**
 * Returns currently logged user
 *
 * @return string
 */
function o2app_user() {
	return $_SESSION['o2_app']->user;
	}


/**
 * Returns application css file name
 *
 * @return string
 */
function o2app_css() {
	return $_SESSION['o2_app']->css;
	}


/**
 * Returns the names of running programs in an array
 *
 * @return array
 */
function o2app_prg() {
	$prg_local = array();
	foreach ($_SESSION['o2_app']->istanze_prg as &$single_prg) {
		$prg_local[] = $single_prg->nome;
		}
	return $prg_local;
	}


/**
 * Returns application name
 *
 * @return string
 */
function o2app_name() {
	return $_SESSION['o2_app']->nome;
	}


/**
 * Returns application alias in the form "http://domine/app_alias/"
 *
 * @return string
 */
function o2app_alias() {
	return $_SESSION['o2_app']->alias;
	}


/**
 * Returns application title
 *
 * @return string
 */
function o2app_title() {
	return $_SESSION['o2_app']->titolo;
	}


/**
 * Returns application type of validation
 *
 * @return integer
 */
function o2app_validate() {
	return $_SESSION['o2_app']->validazione;
	}


/**
 * Returns session timeout
 *
 * @return integer
 */
function o2app_timeout() {
	return $_SESSION['o2_app']->timeout;
	}


/**
 * Returns elapsed time in microseconds since script started
 *
 * @return float
 */
function o2app_exetime() {
	return o2_time() - $GLOBALS['o2time'];
	}


/**
 * Returns application run-level: [DEV] for development or [EXE] for normal
 * execution
 *
 * @return string
 */
function o2app_runlevel() {
	return $_SESSION['o2_app']->run_level;
	}


/**
 * Returns currently logged developer name
 *
 * @return string
 */
function o2app_developer() {
	return $_SESSION['o2_app']->developer;
	}


/**
 * Returns application root as lan sharable path
 *
 * @return string
 */
function o2app_sharedir() {
	return $_SESSION['o2_app']->sharable_dir;
	}


/**
 * Returns page to be displayed on login failure
 *
 * @return string
 */
function o2app_nologin() {
	return $_SESSION['o2_app']->no_login;
	}


/**
 * Returns the name of the currently active application menu
 *
 * @return string
 */
function o2app_menu() {
	return $_SESSION['o2_app']->menu_attivo;
	}


/**
 * Returns menus repository as an array
 *
 * @return array
 */
function o2app_menus() {
	$arr_local = array_keys($_SESSION['o2_app']->menu);
	foreach ($arr_local as $single_menu) {
		if (isset($_SESSION['o2_app']->menu[$single_menu]) && count($_SESSION['o2_app']->menu[$single_menu]->voci)) {
			$arr_local = array_merge($arr_local, array_keys($_SESSION['o2_app']->menu[$single_menu]->voci));
			}
		}
	return array_unique($arr_local);
	}


/**
 * Returns data models repository as an array
 *
 * @return array
 */
function o2app_models() {
	return array_keys($_SESSION['o2_app']->maschere);
	}


/**
 * Returns servers repository as an array
 *
 * @return array
 */
function o2app_servers() {
	return array_keys($_SESSION['o2_app']->server);
	}


/**
 * Returns databases repository as an array
 *
 * @return array
 */
function o2app_databases() {
	return array_keys($_SESSION['o2_app']->db);
	}


/**
 * Returns tables repository as an array
 *
 * @return array
 */
function o2app_tables() {
	return array_keys($_SESSION['o2_app']->tab);
	}


/**
 * Returns the name of the program to be executed once after login
 *
 * @return string
 */
function o2app_startprg() {
	return obj2array($_SESSION['o2_app']->prg_start);
	}


/**
 * Returns the name of the program to be executed on every request
 *
 * @return string
 */
function o2app_reqprg() {
	return $_SESSION['o2_app']->prg_request;
	}


/**
 * Returns information about html form and controls which sent the
 * submit as an array
 *
 * @return array
 */
function o2app_submit() {
	return $_SESSION['o2_app']->info_submit;
	}


/**
 * Returns application "home" folder path
 *
 * @return string
 */
function o2app_dir_home() {
	return $_SESSION['o2_app']->dir_home->nome_completo;
	}


/**
 * Returns application "web home" folder path
 *
 * @return string
 */
function o2app_dir_htdocs() {
	return $_SESSION['o2_app']->dir_htdocs->nome_completo;
	}


/**
 * Returns application programs folder path, containing programs
 * and repositories
 *
 * @return string
 */
function o2app_dir_prgs() {
	return $_SESSION['o2_app']->dir_progs->nome_completo;
	}


/**
 * Returns current cvs (team development) folder path
 *
 * @return string
 */
function o2app_dir_cvsprgs() {
	return $_SESSION['o2_app']->dir_cvs_progs->nome_completo;
	}


/**
 * Returns current tmp folder path, depending on logged user name
 *
 * @return string
 */
function o2app_dir_tmp() {
	return $_SESSION['o2_app']->dir_tmp->nome_completo;
	}


/**
 * Returns current data folder path
 *
 * @return string
 */
function o2app_dir_data() {
	return $_SESSION['o2_app']->dir_data->nome_completo;
	}


/**
 * Returns path to documentation files folder
 *
 * @return string
 */
function o2app_dir_doc() {
	return $_SESSION['o2_app']->dir_doc->nome_completo;
	}


/**
 * Returns css folder path
 *
 * @return string
 */
function o2app_dir_css() {
	return $_SESSION['o2_app']->dir_css->nome_completo;
	}


/**
 * Returns logs folder path
 *
 * @return string
 */
function o2app_dir_logs() {
	return $_SESSION['o2_app']->dir_logs->nome_completo;
	}


/**
 * Returns pdf printing templates folder path
 *
 * @return string
 */
function o2app_dir_templates() {
	return $_SESSION['o2_app']->dir_models->nome_completo;
	}


/**
 * Returns user personal pdf printing templates folder path
 *
 * @return string
 */
function o2app_dir_usertemplates() {
	return $_SESSION['o2_app']->dir_models_u->nome_completo;
	}


/**
 * Returns images folder path
 *
 * @return string
 */
function o2app_dir_img() {
	return $_SESSION['o2_app']->dir_img->nome_completo;
	}


/**
 * Returns user personal images folder path
 *
 * @return string
 */
function o2app_dir_userimg() {
	return $_SESSION['o2_app']->dir_img_u->nome_completo;
	}


/**
 * Returns currently logged user
 *
 * @return string
 */
function o2app_dir_user() {
	return $_SESSION['o2_app']->dir_user->nome_completo;
	}


/**
 * Returns uploaded files folder path
 *
 * @return string
 */
function o2app_dir_uploads() {
	return $_SESSION['o2_app']->dir_uploads->nome_completo;
	}


/**
 * Returns label for passed index
 *
 * @param int $index
 * @return string
 */
function o2app_lab($index = 0) {
	return $labellist[$index];
	}


// ================================= MENU ==================================

/**
 * Return type of a requested menu item
 *
 * @param string $menu_name
 * @return string
 */
function o2menu_type($menu_name = "") {
	$arr_local = $_SESSION['o2_app']->menu;
	foreach ($arr_local as $single_menu) {
		if (isset($_SESSION['o2_app']->menu[$single_menu->nome]) && count($_SESSION['o2_app']->menu[$single_menu->nome]->voci)) {
			$arr_local = array_merge($arr_local, $_SESSION['o2_app']->menu[$single_menu->nome]->voci);
			}
		}
	foreach ($arr_local as $single_menu) {
		if ($single_menu->nome == $menu_name) {
			return ($single_menu->tipo ? strtoupper($single_menu->tipo) : "M");
			}
		}
	return false;
	}


/**
 * Return label of a requested menu item
 *
 * @param string $menu_name
 * @return string
 */
function o2menu_label($menu_name = "") {
	$arr_local = $_SESSION['o2_app']->menu;
	foreach ($arr_local as $single_menu) {
		if (isset($_SESSION['o2_app']->menu[$single_menu->nome]) && count($_SESSION['o2_app']->menu[$single_menu->nome]->voci)) {
			$arr_local = array_merge($arr_local, $_SESSION['o2_app']->menu[$single_menu->nome]->voci);
			}
		}
	foreach ($arr_local as $single_menu) {
		if ($single_menu->nome == $menu_name) {
			return $single_menu->label;
			}
		}
	return false;
	}


/**
 * Return data value of a requested menu item
 *
 * @param string $menu_name
 * @return string
 */
function o2menu_data($menu_name = "") {
	$arr_local = $_SESSION['o2_app']->menu;
	foreach ($arr_local as $single_menu) {
		if (isset($_SESSION['o2_app']->menu[$single_menu->nome]) && count($_SESSION['o2_app']->menu[$single_menu->nome]->voci)) {
			$arr_local = array_merge($arr_local, $_SESSION['o2_app']->menu[$single_menu->nome]->voci);
			}
		}
	foreach ($arr_local as $single_menu) {
		if ($single_menu->nome == $menu_name) {
			return $single_menu->data;
			}
		}
	return false;
	}


/**
 * Return icon file name of a requested menu item
 *
 * @param string $menu_name
 * @return string
 */
function o2menu_icon($menu_name = "") {
	$arr_local = $_SESSION['o2_app']->menu;
	foreach ($arr_local as $single_menu) {
		if (isset($_SESSION['o2_app']->menu[$single_menu->nome]) && count($_SESSION['o2_app']->menu[$single_menu->nome]->voci)) {
			$arr_local = array_merge($arr_local, $_SESSION['o2_app']->menu[$single_menu->nome]->voci);
			}
		}
	foreach ($arr_local as $single_menu) {
		if ($single_menu->nome == $menu_name) {
			return $single_menu->ico;
			}
		}
	return false;
	}


// ================================ SERVER =================================

/**
 * Returns database server host name or ip
 *
 * @param string $server_name
 * @return string
 */
function o2dbs_name($server_name) {
	if (isset($_SESSION['o2_app']->server[$server_name])) {
		return $_SESSION['o2_app']->server[$server_name]->server;
		}
	else {
		return false;
		}
	}


/**
 * Returns database server engine type
 *
 * @param string $server_name
 * @return string
 */
function o2dbs_engine($server_name) {
	if (isset($_SESSION['o2_app']->server[$server_name])) {
		return $_SESSION['o2_app']->server[$server_name]->type;
		}
	else {
		return false;
		}
	}


/**
 * Returns database server user id
 *
 * @param string $server_name
 * @return string
 */
function o2dbs_user($server_name) {
	if (isset($_SESSION['o2_app']->server[$server_name])) {
		return $_SESSION['o2_app']->server[$server_name]->user;
		}
	else {
		return false;
		}
	}


/**
 * Returns database server user password
 *
 * @param string $server_name
 * @return string
 */
function o2dbs_password($server_name) {
	if (isset($_SESSION['o2_app']->server[$server_name])) {
		return $_SESSION['o2_app']->server[$server_name]->password;
		}
	else {
		return false;
		}
	}


/**
 * Executes sql script commands directly on database server
 *
 * @param string $server_name
 * @param string $command_str
 * @return string
 */
function o2dbs_exe($server_name, $command_str) {
	if (isset($_SESSION['o2_app']->server[$server_name])) {
		return $_SESSION['o2_app']->server[$server_name]->esegui($command_str);
		}
	else {
		return false;
		}
	}

/**
 * Commits transaction on server if transaction started
 *
 * @param string $server_name
 * @return boolean
 */
function o2dbs_commit($server_name) {
	if (isset($_SESSION['o2_app']->server[$server_name])) {
		return o2_gateway::commit($_SESSION['o2_app']->server[$server_name]->type,
								  $_SESSION['o2_app']->server[$server_name]->server,
								  $_SESSION['o2_app']->server[$server_name]->user,
								  $_SESSION['o2_app']->server[$server_name]->password);
		}
	else {
		return false;
		}
	}


// =============================== DATABASE ================================

/**
 * Returns database physical name
 *
 * @param string $db_name
 * @return string
 */
function o2db_name($db_name) {
	if (isset($_SESSION['o2_app']->db[$db_name])) {
		return $_SESSION['o2_app']->db[$db_name]->nome;
		}
	else {
		return false;
		}
	}


/**
 * Returns database server name
 *
 * @param string $db_name
 * @return string
 */
function o2db_server($db_name) {
	if (isset($_SESSION['o2_app']->db[$db_name])) {
		return $_SESSION['o2_app']->db[$db_name]->server->nome;
		}
	else {
		return false;
		}
	}


/**
 * Returns database schema identifier
 *
 * @param string $db_name
 * @return string
 */
function o2db_schema($db_name) {
	if (isset($_SESSION['o2_app']->db[$db_name])) {
		return $_SESSION['o2_app']->db[$db_name]->proprietario;
		}
	else {
		return false;
		}
	}


/**
 * Returns database tables list as an array
 *
 * @param string $db_name
 * @return array
 */
function o2db_tables($db_name) {
	if (isset($_SESSION['o2_app']->db[$db_name])) {
		return $_SESSION['o2_app']->db[$db_name]->tabelle();
		}
	else {
		return false;
		}
	}


// ================================= MODEL =================================

/**
 * Returns model type
 *
 * @param string $model_name
 * @return string
 */
function o2model_type($model_name) {
	if (isset($_SESSION['o2_app']->maschere[$model_name])) {
		return $_SESSION['o2_app']->maschere[$model_name]->tipo;
		}
	else {
		return false;
		}
	}


/**
 * Returns model input/output mask
 *
 * @param string $model_name
 * @return string
 */
function o2model_mask($model_name) {
	if (isset($_SESSION['o2_app']->maschere[$model_name])) {
		return $_SESSION['o2_app']->maschere[$model_name]->maschera;
		}
	else {
		return false;
		}
	}


/**
 * Returns model data dimension as "string_length"
 *
 * @param string $model_name
 * @return integer
 */
function o2model_dim($model_name) {
	if (isset($_SESSION['o2_app']->maschere[$model_name])) {
		return $_SESSION['o2_app']->maschere[$model_name]->dimensione;
		}
	else {
		return false;
		}
	}


// ================================= FIELD =================================

/**
 * Returns a table field physical name
 *
 * @param string $table_name
 * @param string $field_name
 * @return string
 */
function o2field_name($table_name, $field_name) {
	if (isset($_SESSION['o2_app']->tab[$table_name]) &&
		isset($_SESSION['o2_app']->tab[$table_name]->campi[$field_name])) {
		return strtoupper($_SESSION['o2_app']->tab[$table_name]->campi[$field_name]->nome_fisico);
		}
	elseif (isset($_SESSION['o2_app']->tab[$table_name]) &&
			$_SESSION['o2_app']->tab[$table_name]->asp &&
			strtoupper($field_name) == "O2ASPID") {
		return "O2ASPID";
		}
	else {
		return false;
		}
	}


/**
 * Returns a table field model
 *
 * @param string $table_name
 * @param string $field_name
 * @return string
 */
function o2field_model($table_name, $field_name) {
	if (isset($_SESSION['o2_app']->tab[$table_name]) && isset($_SESSION['o2_app']->tab[$table_name]->campi[$field_name])) {
		return $_SESSION['o2_app']->tab[$table_name]->campi[$field_name]->maschera->nome;
		}
	elseif (isset($_SESSION['o2_app']->tab[$table_name]) &&
			$_SESSION['o2_app']->tab[$table_name]->asp &&
			strtoupper($field_name) == "O2ASPID") {
		return $_SESSION['o2_app']->vars['_area']->maschera->nome;
		}
	else {
		return false;
		}
	}


// ================================= TABLE =================================

/**
 * Returns true if table physically exists, else false
 *
 * @param string $table_name
 * @return boolean
 */
function o2tab_exists($table_name) {
	if (isset($_SESSION['o2_app']->tab[$table_name])) {
		return $_SESSION['o2_app']->tab[$table_name]->exists();
		}
	else {
		return false;
		}
	}


/**
 * Returns true if table contains any data, else false
 *
 * @param string $table_name
 * @return boolean
 */
function o2tab_data($table_name) {
	if (isset($_SESSION['o2_app']->tab[$table_name])) {
		return $_SESSION['o2_app']->tab[$table_name]->data();
		}
	else {
		return false;
		}
	}


/**
 * Creates the table
 *
 * @param string $table_name
 * @return boolean
 */
function o2tab_create($table_name) {
	if (isset($_SESSION['o2_app']->tab[$table_name])) {
		return $_SESSION['o2_app']->tab[$table_name]->crea();
		}
	else {
		return false;
		}
	}


/**
 * Drops the table
 *
 * @param string $table_name
 * @return boolean
 */
function o2tab_drop($table_name) {
	if (isset($_SESSION['o2_app']->tab[$table_name])) {
		return $_SESSION['o2_app']->tab[$table_name]->elimina();
		}
	else {
		return false;
		}
	}


/**
 * Return sql creation script for the table
 *
 * @param string $table_name
 * @return string
 */
function o2tab_script($table_name) {
	if (isset($_SESSION['o2_app']->tab[$table_name])) {
		return $_SESSION['o2_app']->tab[$table_name]->crea(false);
		}
	else {
		return false;
		}
	}


/**
 * Returns table database
 *
 * @param string $table_name
 * @return string
 */
function o2tab_db($table_name) {
	if (isset($_SESSION['o2_app']->tab[$table_name])) {
		return $_SESSION['o2_app']->tab[$table_name]->db->id;
		}
	else {
		return false;
		}
	}


/**
 * Returns table physical name
 *
 * @param string $table_name
 * @return string
 */
function o2tab_name($table_name) {
	if (isset($_SESSION['o2_app']->tab[$table_name])) {
		return $_SESSION['o2_app']->tab[$table_name]->nome;
		}
	else {
		return false;
		}
	}


/**
 * Returns table fields as an array
 *
 * @param string $table_name
 * @return array
 */
function o2tab_fields($table_name) {
	if (isset($_SESSION['o2_app']->tab[$table_name])) {
		$fields_list = array_keys($_SESSION['o2_app']->tab[$table_name]->campi);
		if ($_SESSION['o2_app']->tab[$table_name]->asp) {
			array_unshift($fields_list, "O2ASPID");
			}
		return $fields_list;
		}
	else {
		return false;
		}
	}


/**
 * Returns table indexes as an array
 *
 * @param string $table_name
 * @return array
 */
function o2tab_indexes($table_name) {
	if (isset($_SESSION['o2_app']->tab[$table_name])) {
		return array_keys($_SESSION['o2_app']->tab[$table_name]->chiavi);
		}
	else {
		return false;
		}
	}


/**
 * Returns physical table informations as an array
 *
 * @param string $table_name
 * @return array
 */
function o2tab_info($table_name) {
	if (isset($_SESSION['o2_app']->tab[$table_name])) {
		return $_SESSION['o2_app']->tab[$table_name]->info();
		}
	else {
		return false;
		}
	}


/**
 * Rebuilds table, eliminating differences between o2 structure and physical one
 *
 * @param string $table_name
 * @param array $matches
 * @return boolean
 */
function o2tab_rebuild($table_name, $matches = null) {
	if (isset($_SESSION['o2_app']->tab[$table_name])) {
		return $_SESSION['o2_app']->tab[$table_name]->ricostruisci($matches);
		}
	else {
		return false;
		}
	}


/**
 * Physically renames table
 *
 * @param string $table_name
 * @return boolean
 */
function o2tab_rename($table_name, $new_name) {
	if (isset($_SESSION['o2_app']->tab[$table_name])) {
		return $_SESSION['o2_app']->tab[$table_name]->rinomina($new_name);
		}
	else {
		return false;
		}
	}


/**
 * Export table data to an o2xml format file
 *
 * @param string $table_name
 * @param string $file_name
 * @param boolean $asp_mode
 * @return boolean
 */
function o2tab_export($table_name, $file_name, $asp_mode = false) {
	if (isset($_SESSION['o2_app']->tab[$table_name])) {
		return $_SESSION['o2_app']->tab[$table_name]->export($file_name, $asp_mode);
		}
	else {
		return false;
		}
	}


/**
 * Import table data from an o2xml format file
 *
 * @param string $table_name
 * @param boolean $asp_mode
 * @return boolean
 */
function o2tab_import($table_name, $file_name, $asp_mode = false) {
	if (isset($_SESSION['o2_app']->tab[$table_name])) {
		return $_SESSION['o2_app']->tab[$table_name]->import($file_name, $asp_mode);
		}
	else {
		return false;
		}
	}


/**
 * Open a window on table content allowing data browsing and modifying.
 * If an index name is passed data will be ordered by the index.
 *
 * @param string $table_name
 * @param string $index
 * @return boolean
 */
function o2tab_browse($table_name, $index = "") {
	if (isset($_SESSION['o2_app']->tab[$table_name])) {
		return $_SESSION['o2_app']->tab[$table_name]->data_browser($index);
		}
	else {
		return false;
		}
	}


/**
 * Returns true if is active ASP mode for the table
 *
 * @param string $table_name
 * @param string $index
 * @return boolean
 */
function o2tab_asp($table_name) {
	if (isset($_SESSION['o2_app']->tab[$table_name])) {
		return $_SESSION['o2_app']->tab[$table_name]->asp;
		}
	else {
		return false;
		}
	}

// ================================= VIEW ==================================

/**
 * Returns true if view current record has been modified
 *
 * @param string $view_name
 * @return boolean
 */
function o2view_mod($view_name) {
	$view_local = $_SESSION['o2_app']->istanze_prg[$_SESSION['o2_app']->progressivo_istanze]->contesto[$view_name];
	if ($view_local) {
		return $view_local->modificato;
		}
	else {
		return false;
		}
	}


/**
 * Returns view mode flag
 *
 * @param string $view_name
 * @return string
 */
function o2view_status($view_name) {
	$view_local = $_SESSION['o2_app']->istanze_prg[$_SESSION['o2_app']->progressivo_istanze]->contesto[$view_name];
	if ($view_local) {
		return $view_local->status;
		}
	else {
		return false;
		}
	}


/**
 * Returns view start offset
 *
 * @param string $view_name
 * @return integer
 */
function o2view_start($view_name) {
	$view_local = $_SESSION['o2_app']->istanze_prg[$_SESSION['o2_app']->progressivo_istanze]->contesto[$view_name];
	if ($view_local) {
		$view_local->refresh();
		return $view_local->offset_ini;
		}
	else {
		return false;
		}
	}


/**
 * Returns view end offset
 *
 * @param string $view_name
 * @return integer
 */
function o2view_end($view_name) {
	$view_local = $_SESSION['o2_app']->istanze_prg[$_SESSION['o2_app']->progressivo_istanze]->contesto[$view_name];
	if ($view_local) {
		$view_local->refresh();
		return $view_local->offset_fine;
		}
	else {
		return false;
		}
	}


/**
 * Returns number or requested records
 *
 * @param string $view_name
 * @return integer
 */
function o2view_reqrows($view_name) {
	$view_local = $_SESSION['o2_app']->istanze_prg[$_SESSION['o2_app']->progressivo_istanze]->contesto[$view_name];
	if ($view_local) {
		$view_local->refresh();
		return $view_local->righe_vis;
		}
	else {
		return false;
		}
	}


/**
 * Returns number of returned records
 *
 * @param string $view_name
 * @return integer
 */
function o2view_retrows($view_name) {
	$view_local = $_SESSION['o2_app']->istanze_prg[$_SESSION['o2_app']->progressivo_istanze]->contesto[$view_name];
	if ($view_local) {
		$view_local->refresh();
		return count($view_local->recordset);
		}
	else {
		return false;
		}
	}


/**
 * Returns total number of records of view main file
 *
 * @param string $view_name
 * @return integer
 */
function o2view_total($view_name) {
	$view_local = $_SESSION['o2_app']->istanze_prg[$_SESSION['o2_app']->progressivo_istanze]->contesto[$view_name];
	if ($view_local) {
		$view_local->refresh();
		return $view_local->totale_record;
		}
	else {
		return 0;
		}
	}


/**
 * Returns actual view selection [from 0 to o2view_retrows() - 1]
 *
 * @param string $view_name
 * @return integer
 */
function o2view_select($view_name) {
	$view_local = $_SESSION['o2_app']->istanze_prg[$_SESSION['o2_app']->progressivo_istanze]->contesto[$view_name];
	if ($view_local) {
		$view_local->refresh();
		return $view_local->selezione;
		}
	else {
		return false;
		}
	}


// ================================== DIR ==================================

/**
 * Returns complete names list of files of a file system folder. Accepts a
 * standard wildcards expression as second parameter.
 *
 * @param string $dir_path
 * @param string $file_match
 * @return array
 */
function o2dir_list($dir_path, $file_match = "*") {
	$dir_obj_local = new o2_dir($dir_path.DIRECTORY_SEPARATOR, $file_match);
	$list_local = array();
	foreach ($dir_obj_local->elementi as &$single_file) {
		$list_local[] = $single_file->nome_completo;
		}
	return $list_local;
	}


/**
 * Creates directory if it does not exist
 *
 * @param string $dir_path
 * @return boolean
 */
function o2dir_create($dir_path) {
	$dir_obj_local = new o2_dir($dir_path.DIRECTORY_SEPARATOR);
	return $dir_obj_local->crea();
	}


// ================================= FILE ==================================

/**
 * Returns the rightly separated absolute path to file, with relatives paths
 * resolved
 *
 * @param string $file_path
 * @return string
 */
function o2file_fullname($file_path) {
	$file_local = new o2_elemento_fs($file_path);
	return $file_local->nome_completo;
	}


/**
 * Returns file name and extension
 *
 * @param string $file_path
 * @return string
 */
function o2file_basename($file_path) {
	$file_local = new o2_elemento_fs($file_path);
	return $file_local->nome;
	}


/**
 * Returns file extension without dot (.)
 *
 * @param string $file_path
 * @return string
 */
function o2file_ext($file_path) {
	$file_local = new o2_elemento_fs($file_path);
	return $file_local->ext;
	}


/**
 * Returns path to the folder containing file
 *
 * @param string $file_path
 * @return string
 */
function o2file_dir($file_path) {
	$file_local = new o2_elemento_fs($file_path);
	return $file_local->path;
	}


/**
 * Returns file type ([D]irectory - [F]file)
 *
 * @param string $file_path
 * @return string
 */
function o2file_type($file_path) {
	$file_local = new o2_elemento_fs($file_path);
	return $file_local->tipo;
	}


/**
 * Returns icon file name according with extension
 *
 * @param string $file_path
 * @return string
 */
function o2file_ico($file_path) {
	$file_local = new o2_elemento_fs($file_path);
	if ($file_local->tipo == "D") {
		$ico_file = "folder.png";
		}
	else {
		switch ($file_local->ext) {
			case "xls":
				$ico_file = "excel.png";
				break;
			case "doc":
				$ico_file = "word.png";
				break;
			case "txt":
				$ico_file = "text.png";
				break;
			case "ini":
				$ico_file = "text.png";
				break;
			case "exe":
				$ico_file = "exe.png";
				break;
			case "bin":
				$ico_file = "exe.png";
				break;
			case "hlp":
				$ico_file = "help.png";
				break;
			case "mp3":
				$ico_file = "sound.png";
				break;
			case "wav":
				$ico_file = "sound.png";
				break;
			case "mid":
				$ico_file = "sound.png";
				break;
			case "xml":
				$ico_file = "xml.png";
				break;
			case "avi":
				$ico_file = "movie.png";
				break;
			case "mpg":
				$ico_file = "movie.png";
				break;
			case "mpeg":
				$ico_file = "movie.png";
				break;
			case "htm":
				$ico_file = "html.png";
				break;
			case "html":
				$ico_file = "html.png";
				break;
			case "img":
				$ico_file = "img.png";
				break;
			case "png":
				$ico_file = "img.png";
				break;
			case "gif":
				$ico_file = "img.png";
				break;
			case "jpg":
				$ico_file = "img.png";
				break;
			case "tif":
				$ico_file = "img.png";
				break;
			case "ico":
				$ico_file = "img.png";
				break;
			case "pdf":
				$ico_file = "pdf.png";
				break;
			case "zip":
				$ico_file = "zip.png";
				break;
			case "rar":
				$ico_file = "zip.png";
				break;
			case "tar":
				$ico_file = "zip.png";
				break;
			case "gz":
				$ico_file = "zip.png";
				break;
			case "php":
				$ico_file = "php.png";
				break;
			case "inc":
				$ico_file = "php.png";
				break;
			case "prf":
				$ico_file = "o2prf.png";
				break;
			case "prg":
				$ico_file = "o2prg.png";
				break;
			default:
				$ico_file = "unknown.png";
				break;
			}
		}
	return $GLOBALS['o2_runtime']->alias."img/fs/".$ico_file;
	}


/**
 * Returns file size in bytes
 *
 * @param string $file_path
 * @return string
 */
function o2file_size($file_path) {
	$file_local = new o2_elemento_fs($file_path);
	return $file_local->dimensioni;
	}


/**
 * Returns file last modification date as o2-date
 *
 * @param string $file_path
 * @return string
 */
function o2file_date($file_path) {
	$file_local = new o2_elemento_fs($file_path);
	return $file_local->data_modifica;
	}


/**
 * Returns file last modification time as o2-time
 *
 * @param string $file_path
 * @return string
 */
function o2file_time($file_path) {
	$file_local = new o2_elemento_fs($file_path);
	return $file_local->ora_modifica;
	}


/**
 * Returns true if file exists, else false
 *
 * @param string $file_path
 * @return string
 */
function o2file_exists($file_path) {
	$file_local = new o2_elemento_fs($file_path);
	return $file_local->esiste();
	}


/**
 * Physically removes file from file system
 *
 * @param string $file_path
 * @return boolean
 */
function o2file_delete($file_path) {
	$file_local = new o2_elemento_fs($file_path);
	if ($file_local->esiste()) {
		return unlink($file_local->nome_completo);
		}
	else {
		return true;
		}
	}


/**
 * Renames file
 *
 * @param string $file_path
 * @param string $new_name
 * @return boolean
 */
function o2file_rename($file_path, $new_name) {
	$file_local = new o2_elemento_fs($file_path);
	if ($file_local->esiste()) {
		return rename($file_local->nome_completo, $file_local->path.basename($new_name));
		}
	else {
		return false;
		}
	}


/**
 * Makes a copy of the file
 *
 * @param string $file_path
 * @param string $new_file
 * @return string
 */
function o2file_copy($file_path, $new_file) {
	$file_local_s = new o2_elemento_fs($file_path);
	$file_local_d = new o2_elemento_fs($new_file);
	if ($file_local_s->esiste() && !$file_local_d->esiste()) {
		return copy($file_local_s->nome_completo, $file_local_d->nome_completo);
		}
	else {
		return false;
		}
	}


?>
