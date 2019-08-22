<?php

/**
 * Janox Upgrade Tool
 * PHP5
 *
 * @name      jxconv
 * @package   janox/bin/jxconv.php
 * @version   2.6
 * @copyright Tommaso Vannini (tvannini@janox.it) 2007
 * @author    Tommaso Vannini (tvannini@janox.it)
 */

$jxrel = "2.6";
$info  = <<<JANOX_SCRIPT_HEAD

                      Janox Upgrade Tool


   This file is part of Janox.

    - LICENSE -

   Janox is free software; you can redistribute  it  and/or
   modify it under the  terms  of  the  GNU  Lesser General
   Public License  as  published   by   the   Free Software
   Foundation; either version 3 of the License, or (at your
   option) any later version.

   Janox is distributed in the hope that it will be useful,
   but WITHOUT  ANY  WARRANTY;  without  even  the  implied
   warranty of MERCHANTABILITY or FITNESS FOR A  PARTICULAR
   PURPOSE. See the  GNU Lesser General Public License  for
   more details.

   You should have  received  a  copy  of  the  GNU  Lesser
   General Public License along with this program.
   If not, see <http://www.gnu.org/licenses/>.

    - DESCRIPTION -

   This script contains needed functions to  convert  Janox
   applications from an older release to the current one.

    - USAGE -

   You can run jxconv.php using a working PHP installation,
   typing at the command line:

     <path_to_php>/php <jxroot>/jxconv.php <app_main_file>

   Where <app_main_file> is the upgrading application  main
   file full path.

JANOX_SCRIPT_HEAD;

// _________________________________________ If aplication file is passed as parameter ___
if ($_SERVER['argc'] > 1) {
    // _____________________________________________________ Get application main file ___
    $app_main = realpath($_SERVER['argv'][1]);
    // _____________________________________________ If file exists and it is readable ___
    if (is_file($app_main) && file_exists($app_main) &&
        $main_text = @file_get_contents($app_main)) {
        // _______________________________________________________ Get current release ___
        $rnt_rel  = get_rnt_rel();
        // _______________________________________ Get application name from main file ___
        $app_name = preg_replace("/\..*$/i", "", basename($app_main));
        // _________________________________________________ Get application directory ___
        $app_dir  = new dir_descriptor(realpath(dirname($app_main).DIRECTORY_SEPARATOR.
                                                "..".DIRECTORY_SEPARATOR));
        print "   Processing application ".$app_name." (".$app_dir.")\n";
        // _______________________________ Get application release from main file text ___
        $app_rel = get_app_rel($main_text);
        check_upgrade($rnt_rel, $app_rel);
        backup_app($app_name, $app_dir, $app_rel);
        clear_app($app_dir);
        upgrade_app($app_name, $app_dir, $app_rel);
        }
    // _________________________________ If file does not exists or it is not readable ___
    else {
        die("\n\nJanox Converter Utility\n=======================\n\nError opening file ".
            $_SERVER['argv'][1]."\n\n");
        }
    }
// _________________________________________________________ If no parameter is passed ___
else {
    // __________________________________________ Output formatted JXConv informations ___
    die("\n\n".$info."\n\n");
    }


/**
 * Reads runtime release code from jxruntime global object
 *
 * @return array   Release code in the form array('ver'=>x, 'sub'=>y, 'rel'=>z)
 */
function get_rnt_rel() {

    $parts = array();
    list($ver, $sub, $rel) = explode(".", $GLOBALS['jxrel'], 3);
    $ver                   = intval($ver);
    $sub                   = intval($sub);
    $rel                   = intval($rel);;
    print "\n\n          Janox Upgrade Tool ".$ver.".".$sub."\n\n";
    return array('ver' => $ver, 'sub' => $sub, 'rel' => $rel);

    }


/**
 * Reads application release code from main file text
 *
 * @param  string $text   Application main file text
 * @return array          Release code in the form array('ver'=>x, 'sub'=>y, 'rel'=>z)
 */
function get_app_rel($text) {

    $parts = array();
    preg_match('/o2def\:\:app\(\"(.*)\"\)\;/', $text, $parts);
    list($ver, $sub, $rel) = explode(".", $parts[1], 3);
    $ver                   = intval($ver);
    $sub                   = intval($sub);
    $rel                   = intval($rel);;
    return array('ver' => $ver, 'sub' => $sub, 'rel' => $rel);

    }


/**
 * Checks if application needs to be upgraded
 *
 * @param array $rel_rnt   Application release code in the form
 *                         array('ver'=>x, 'sub'=>y, 'rel'=>z)
 * @param array $rel_app   Runtime release code in the form
 *                         array('ver'=>x, 'sub'=>y, 'rel'=>z)
 */
function check_upgrade($rel_rnt, $rel_app) {

    $rnt_str = $rel_rnt['ver'].".".$rel_rnt['sub'];
    $app_str = $rel_app['ver'].".".$rel_app['sub'];
    // _____________________________________________ Application is newer than runtime ___
    if ($rel_rnt['ver'] < $rel_app['ver'] ||
        ($rel_rnt['ver'] == $rel_app['ver'] && $rel_rnt['sub'] < $rel_app['sub'])) {
        die("\n   Runtime release ".$rnt_str." - Application release ".$app_str.
            "\n   NOTHING TO DO: runtime release is older than application release!\n\n");
        }
    elseif ($rel_rnt['ver'] == $rel_app['ver'] && $rel_rnt['sub'] == $rel_app['sub']) {
        die("\n   Runtime release ".$rnt_str." - Application release ".$app_str.
            "\n   NOTHING TO DO: application is up to grade with current runtime.\n\n");
        }
    else {
        print "   Upgrading application from release ".$app_str.
              " to release ".$rnt_str."\n";
        }

    }


/**
 * Backup application folder
 *
 * @param string         $app_name   Application name
 * @param dir_descriptor $app_dir    Application root directory
 * @param array          $app_rel    Application release code in the form
 *                                    array('ver'=>x, 'sub'=>y, 'rel'=>z)
 */
function backup_app($app_name, $app_dir, $app_rel) {

    $app_backup = new dir_descriptor($app_dir->path.DIRECTORY_SEPARATOR.
                                     $app_name."_".$app_rel['ver']."_".$app_rel['sub']);
    $app_dir->copy_to($app_backup);
    print "   Original application folder has beeen copied to ".$app_backup."\n";

    }


/**
 * Clear application folder and subfolders from interface working files (cds, __SUORCE__,
 * o2bak, ...)
 *
 * @param dir_descriptor $app_dir   Application root directory
 */
function clear_app($app_dir) {

    $dir   = new dir_descriptor($app_dir."prgs/");
    $files = $dir->get_elements();
    $prgs  = array();
    // _____________________________________________________ Loop on folder files list ___
    while ($file = array_shift($files)) {
        // ________________________________________________________ Manage sub folders ___
        if ($file->type == "D") {
            // ________________________________________ Strip "__source__" directories ___
            if ($file->short_name == "__source__") {
                $file->remove();
                }
            // ________________________________________________ Add all others to list ___
            else {
                $files+= $file->get_elements();
                }
            }
        // ______________________________________________________________ Manage files ___
        elseif ($file->ext == "cds" || $file->ext == "o2bak" || $file->ext == "cache") {
            @unlink($file->full_name);
            }
        }
    print "   Application folders cleared up\n";

    }


/**
 * Performs application upgrading
 *
 * @param string         $app_name   Application name
 * @param dir_descriptor $app_dir    Application root directory
 * @param array          $app_rel    Application release code in the form
 *                                    array('ver'=>x, 'sub'=>y, 'rel'=>z)
 */
function upgrade_app($app_name, $app_dir, $app_rel) {

    $new_rel_code = $app_rel['ver'].".".$app_rel['sub'];
    $app_str      = "to".$app_rel['ver']."_".$app_rel['sub'];
    print "\n";
    // _____________________________________________ Retrieves available upgrades list ___
    foreach (get_class_methods("upgrades_collection") as $upgrade_func) {
        // __________________________ If application is older than single upgrade step ___
        if ($upgrade_func > $app_str) {
            // ______________________________________________________ New release code ___
            $app_rel_code = $new_rel_code;
            $new_rel_code = preg_replace('/to(\d+)\_(\d+)/', "$1.$2", $upgrade_func);
            print "   ".$app_rel_code." --> ".$new_rel_code;
            // __________________________________ Executes upgrade step on application ___
            call_user_func(array("upgrades_collection", $upgrade_func),
                           $app_name,
                           $app_dir);
            // ______________________ Writes new release code to application main file ___
            upgrade_main_page($app_name, $app_dir, $new_rel_code);
            print " ... OK\n";
            }
        }
    print "\n *** Convertion completed\n     Application ".$app_name.
          " has been upgraded to release ".$new_rel_code."\n\n\n";

    }


/**
 * Update release code on application main file to passed string.
 *
 * @param string         $app_name   Application name
 * @param dir_descriptor $app_dir    Application root directory
 * @param string         $app_rel    New application release code string
 */
function upgrade_main_page($app_name, $app_dir, $app_rel) {

    $main_file = $app_dir.DIRECTORY_SEPARATOR."htdocs".DIRECTORY_SEPARATOR.
                 $app_name.".php";
    $new_file  = dirname(__FILE__)."/jxapp.php";
    // ____________________________________________ Replace old main file with new one ___
    if (file_exists($new_file)) {
        $file_content = file_get_contents($new_file);
        $old_content  = file_get_contents($main_file);
        $parts        = array();
        // _____________________________________________ Check for custom runtime path ___
        preg_match('/^\s*\$jxrnt\s*=\s*\"([^"]*)\";\s*$/m', $old_content, $parts);
        $custom_rnt = $parts[1];
        if ($custom_rnt) {
            // ________________________________________ Set custom runtime in new file ___
            $file_content = preg_replace('/^\s*\$jxrnt\s*=\s*\"([^"]*)\";\s*$/m',
                                         '$jxrnt = "'.addslashes($custom_rnt).'";'."\n\n",
                                         $file_content);
            }
        }
    // _________________________________________________________ Upgrade old main page ___
    else {
        $file_content = file_get_contents($main_file);
        }
    // __________________________________________________ Replace release in main file ___
    $file_content = preg_replace('/o2def\:\:app\(\".*\"\)\;/',
                                 'o2def::app("'.$app_rel.'");',
                                 $file_content);
    file_put_contents($main_file, $file_content);

    }


/**
 * Add a new field definition to (system) tables defined in repository
 *
 * @param  string $code    Tables repository code
 * @param  string $table   Name of table to add field to
 * @param  string $field   New field defining logical name
 * @param  string $name    New field defining physical name
 * @param  string $model   New field defining model
 * @return string
 */
function add_tab_field($code, $table, $field, $name, $model) {

    $parts = array();
    $res   = preg_match_all('/o2def::tab\("'.$table.
                            '",[^;]*\);\s+(o2def::field\([^;]+\);\s+)++o2def::index/',
                            $code, $parts, PREG_OFFSET_CAPTURE);

    // _____________________________________ Check for field already existing in table ___
    if (preg_match('/o2def::field\(\s*[\'"]'.$field.'[\'"]\s*,/', $parts[0][0][0]) ===0) {
        // ________________________________________________ Last field definition code ___
        $f_code = $parts[1][0][0];
        if ($f_code) {
            // _____________________________________ last field definition code lenght ___
            $f_len  = strlen($f_code);
            // __________________________________ Last field definition code last char ___
            $f_char = $parts[1][0][1] + $f_len;
            // ________________________ Add new field definition after existing fields ___
            $code   = substr($code, 0, $f_char - 3).
                      "\t".'o2def::field("'.$field.'", "'.$name.'", "'.$model."\");\r\n".
                      substr($code, $f_char - 2);
            }
        }
    return $code;

    }


/**
 * Add a new index definition to (system) tables defined in repository
 *
 * @param  string $code    Tables repository code
 * @param  string $table   Name of table to add index to
 * @param  string $index   New index defining logical name
 * @param  array  $segms   New index defining segments in the form (<field> => "A|D")
 * @return string
 */
function add_tab_index($code, $table, $index, $segms) {

    $parts = array();
    $res   = preg_match_all('/o2def::tab\("'.$table.
                            '",[^;]*\);\s+(o2def::field\([^;]+\);\s+)++'.
                            '(o2def::index\([^;]+\);\s+)++o2def::tab\(/',
                            $code, $parts, PREG_OFFSET_CAPTURE);
    // _____________________________________ Check for index already existing in table ___
    if (preg_match('/o2def::index\(\s*[\'"]'.$index.'[\'"]\s*,/', $parts[0][0][0]) ===0) {
        // ________________________________________________ Last index definition code ___
        $i_code = $parts[2][0][0];
        if ($i_code) {
            // _____________________________________ last index definition code lenght ___
            $i_len  = strlen($i_code);
            // __________________________________ Last index definition code last char ___
            $i_char = $parts[2][0][1] + $i_len;
            // ______________________________________________________ Compose segments ___
            $s = '';
            foreach ($segms as $seg => $dir) {
                $s.= ($s ? ', ' : '').'"'.$seg.'","'.$dir.'"';
                }
            // _______________________ Add new field definition after existing indexes ___
            $code   = substr($code, 0, $i_char - 3).
                      "\t".'o2def::index("'.$index.'", '.$s.");\r\n".
                      substr($code, $i_char - 2);
            }
        }
    return $code;

    }


/**
 * This class is a collections of static methods called by upgrade_app() function in the
 * upgrading loop.
 *
 * Each method ensures application upgrading from a previous release to a next one: in
 * order to upgrade from a release x to a release y, all upgrades between x and y are to
 * be performed. So each method can expect to find application in the directly previous
 * state.
 *
 * Upgrade methods, in order to be correctly called, must be named in the form
 * "to[v]_[r]" where [v] is the version number and [r] the release number.
 * For example: method for upgrading to release 1.3 will be named "to1_3".
 */
class upgrades_collection {

    /**
     * Upgrades application to release 1.4
     * Application INI file will be processed in order to remove "_o2" in front of
     * parameters names.
     *
     * @param string $app_name Application name
     * @param jxdir  $app_dir  Application root directory
     */
    static function to1_4($app_name, $app_dir) {

        $ini_content = file_get_contents($app_dir.$app_name.".ini");
        $ini_content = preg_replace('/^\_o2/m', "", $ini_content);
        file_put_contents($app_dir.$app_name.".ini", $ini_content);

        }


    /**
     * Upgrades application to release 1.5
     * Programs files will be scanned and edited to copy windows URL expression from prf
     * to prg file.
     *
     * @param string $app_name Application name
     * @param jxdir  $app_dir  Application root directory
     */
    static function to1_5($app_name, $app_dir) {

        $dir   = new dir_descriptor($app_dir."prgs/");
        $files = $dir->get_elements();
        $prgs  = array();
        // _________________________________________________ Loop on folder files list ___
        while ($file = array_shift($files)) {
            // ___________________________________________________ Make all stuff here ___
            if ($file->ext == "prg") {
                $prg   = $file->full_name;
                $prf   = $file->path.$file->name.".prf";
                if (file_exists($prf)) {
                    $parts = array();
                    // ______________ Match all URL settings in forms (form & url-exp) ___
                    preg_match_all('/\$form_(\w+)\-\>url\((.+)\);/',
                                   file_get_contents($prf),
                                   $parts);
                    // ____________________________________ If any URL setting in form ___
                    if ($parts[1]) {
                        $prg_txt  = file_get_contents($prg);
                        // _____________________________________ Loop on matched forms ___
                        foreach ($parts[1] as $form_index => $form) {
                            $subparts = array();
                            // __________________________ Match form definition in PRG ___
                            preg_match_all('/o2def::form\("'.$form.'",[^;]*\);/',
                                           $prg_txt,
                                           $subparts);
                            // ________________________ Add url-exp to form definition ___
                            $form_def = $subparts[0][$form_index];
                            $prg_txt  = str_replace($form_def,
                                                    substr($form_def, 0, -2).', '.
                                                    $parts[2][$form_index].');',
                                                    $prg_txt);
                            }
                        file_put_contents($prg, $prg_txt);
                        }
                    }
                }
            // _________________________________________ Add sub folders files to list ___
            elseif ($file->type == "D") {
                $files+= $file->get_elements();
                }
            }

        }


    /**
     * Upgrades application to release 1.6
     * Programs files  will be scanned and edited to patch windows URL expressions
     * adding quotes (").
     * Version 1.5 is a "wrong version" and will be not released. Upgrade step is
     * conserved for compatibility with already upgraded applications.
     *
     * @param string $app_name Application name
     * @param jxdir  $app_dir  Application root directory
     */
    static function to1_6($app_name, $app_dir) {

        $dir   = new dir_descriptor($app_dir."prgs/");
        $files = $dir->get_elements();
        $prgs  = array();
        // _________________________________________________ Loop on folder files list ___
        while ($file = array_shift($files)) {
            // ___________________________________________________ Make all stuff here ___
            if ($file->ext == "prg") {
                $prg   = $file->full_name;
                $prf   = $file->path.$file->name.".prf";
                if (file_exists($prf)) {
                    $prf_txt = file_get_contents($prf);
                    $parts   = array();
                    // ______________ Match all URL settings in forms (form & url-exp) ___
                    preg_match_all('/[\t]?\$form_(\w+)\-\>url\((.+)\);[\n\r]*/',
                                   $prf_txt, $parts);
                    // ____________________________________ If any URL setting in form ___
                    if ($parts[1]) {
                        $prg_txt = file_get_contents($prg);
                        // _____________________________________ Loop on matched forms ___
                        foreach ($parts[1] as $form_index => $form) {
                            $subparts = array();
                            // __________________________ Match form definition in PRG ___
                            preg_match_all('/o2def::form\("'.$form.'",[^;]*\);/',
                                           $prg_txt,
                                           $subparts);
                            // ______________ Add quotes to url-exp to form definition ___
                            $form_def   = $subparts[0][$form_index];
                            $def_no_exp = substr($form_def, 0,
                                                 -(strlen($parts[2][$form_index]) + 4));
                            $prg_txt    = str_replace($form_def,
                                                      $def_no_exp.', "'.
                                                      $parts[2][$form_index].'");',
                                                      $prg_txt);
                            // _______________ Remove URL settings in forms definition ___
                            $prf_txt    = str_replace($parts[0][$form_index],
                                                      "", $prf_txt);
                            }
                        file_put_contents($prg, $prg_txt);
                        file_put_contents($prf, $prf_txt);
                        }
                    }
                }
            // _________________________________________ Add sub folders files to list ___
            elseif ($file->type == "D") {
                $files+= $file->get_elements();
                }
            }

        }


    /**
     * Upgrades application to release 1.7
     * Programs files will be scanned and edited to change action "goto" to "gotoprg".
     * This modification is needed to match PHP5.3 syntax,  where  "goto"  is  a  reserved
     * word.
     *
     * @param string $app_name Application name
     * @param jxdir  $app_dir  Application root directory
     */
    static function to1_7($app_name, $app_dir) {

        $dir   = new dir_descriptor($app_dir."prgs/");
        $files = $dir->get_elements();
        $prgs  = array();
        // _________________________________________________ Loop on folder files list ___
        while ($file = array_shift($files)) {
            // ___________________________________________________ Make all stuff here ___
            if ($file->ext == "prf") {
                $prf = $file->full_name;
                if (file_exists($prf)) {
                    $prf_txt = file_get_contents($prf);
                    if (preg_match('/o2act::goto\(/', $prf_txt)) {
                        // _________________________________ Replace goto with gotoprg ___
                        $prf_txt = preg_replace('/o2act::goto\(/',
                                                "o2act::gotoprg(",
                                                $prf_txt);
                        file_put_contents($prf, $prf_txt);
                        }
                    }
                }
            // _________________________________________ Add sub folders files to list ___
            elseif ($file->type == "D") {
                $files+= $file->get_elements();
                }
            }

        }


    /**
     * Upgrades application to release 1.8
     * No changes for existing programs.
     *
     * @param string $app_name Application name
     * @param jxdir  $app_dir  Application root directory
     */
    static function to1_8($app_name, $app_dir) {

        // _____________________________________________________________ NOTHING TO DO ___

        }


    /**
     * Upgrades application to release 2.0
     * Removes ->azione() e ->on_change() methods from multipage controls.
     *
     * @param string $app_name Application name
     * @param jxdir  $app_dir  Application root directory
     */
    static function to2_0($app_name, $app_dir) {

        $dir   = new dir_descriptor($app_dir."prgs/");
        $files = $dir->get_elements();
        $prgs  = array();
        // _________________________________________________ Loop on folder files list ___
        while ($file = array_shift($files)) {
            // ___________________________________________________ Make all stuff here ___
            if ($file->ext == "prg") {
                $prg  = $file->full_name;
                $prf  = $file->path.$file->name.".prf";
                $done = false;
                if (file_exists($prf)) {
                    $prf_txt = file_get_contents($prf);
                    $parts   = array();
                    // __________________________________ Match all multipage controls ___
                    preg_match_all('/\&\$(\w*)\-\>ctrldef\("(\w*)",\s+"multipage/',
                                   $prf_txt, $parts);

                    // _______________________ If at last one multipage has been found ___
                    if ($parts[2]) {
                        foreach ($parts[2] as $mp_name) {
                            // ______________________________ Remove ->azione() method ___
                            $prf_txt = preg_replace('/\$ctrl_'.$mp_name.
                                                    '\-\>azione\("\w*"\);\s*/',
                                                    "", $prf_txt);
                            }
                        $done = true;
                        }
                    // _______________________ If at last one multipage has been found ___
                    if ($parts[2]) {
                        foreach ($parts[2] as $mp_name) {
                            // ___________________________ Remove ->on_change() method ___
                            $prf_txt = preg_replace('/\$ctrl_'.$mp_name.
                                                    '\-\>on_change\([^;]*;\s*/',
                                                    "", $prf_txt);
                            }
                        $done = true;
                        }
                    if ($done) {
                        file_put_contents($prf, $prf_txt);
                        }
                    }
                }
            // _________________________________________ Add sub folders files to list ___
            elseif ($file->type == "D") {
                $files+= $file->get_elements();
                }
            }

        }


    /**
     * Upgrades application to release 2.1
     * No changes for existing programs.
     *
     * @param string $app_name Application name
     * @param jxdir  $app_dir  Application root directory
     */
    static function to2_1($app_name, $app_dir) {

        // _____________________________________________________________ NOTHING TO DO ___

        }


    /**
     * Upgrades application to release 2.2
     * Add fields to system tables:
     *  - o2_users:
     *     - expire_date
     *     - last_date
     *     - last_time
     *  - o2_sessions:
     *     - terminal_id
     *
     * @param string $app_name Application name
     * @param jxdir  $app_dir  Application root directory
     */
    static function to2_2($app_name, $app_dir) {

        // ______________________ Read tab-repository file from INI or use default one ___
        $ini_content = file_get_contents($app_dir.$app_name.".ini");
        $parts       = array();
        preg_match('/tables\s*=\s*"([^"]*)"/', $ini_content, $parts);
        if ($parts[1]) {
            $tables = $parts[1];
            }
        else {
            $tables = 'file_repository.inc';
            }
        // ________________________________________________ Get tables definition code ___
        $code = file_get_contents($app_dir.'prgs'.DIRECTORY_SEPARATOR.$tables);
        // ____________________________________________________________ Add new fields ___
        $code = add_tab_field($code,
                              'o2_users',
                              'expire_date',
                              'expire_date',
                              '_o2date');
        $code = add_tab_field($code,
                              'o2_users',
                              'last_date',
                              'last_date',
                              '_o2date');
        $code = add_tab_field($code,
                              'o2_users',
                              'last_time',
                              'last_time',
                              '_o2time');
        $code = add_tab_field($code,
                              'o2_users',
                              'login_type',
                              'login_type',
                              'o2sys_login_type');
        $code = add_tab_field($code,
                              'o2_sessions',
                              'terminal_id',
                              'terminal_id',
                              'jxterminal_id');
        $code = add_tab_index($code,
                              'o2_sessions',
                              'upd_desc',
                              array('a_date' => 'D', 'a_time' => 'D', 'sid' => 'A'));
        $code = add_tab_field($code,
                              'jx_jobs',
                              'job_service',
                              'job_service',
                              'jxservice');
        $code = add_tab_field($code,
                              'jx_running_jobs',
                              'run_service',
                              'run_service',
                              'jxservice');
        $code = add_tab_field($code,
                              'jx_running_jobs',
                              'run_host',
                              'run_host',
                              'jxhost');
        $code = add_tab_field($code,
                              'jx_running_jobs',
                              'run_at_date',
                              'run_at_date',
                              '_o2date');
        $code = add_tab_field($code,
                              'jx_running_jobs',
                              'run_at_time',
                              'run_at_time',
                              '_o2time');
        $code = add_tab_field($code,
                              'jx_running_jobs',
                              'run_developer',
                              'run_developer',
                              '_o2alpha');
        // ____________________________________________ Write down new repository code ___
        file_put_contents($app_dir.'prgs'.DIRECTORY_SEPARATOR.$tables, $code);

        }


    /**
     * Upgrades application to release 2.3
     *
     * Add fields to system tables:
     *  - o2_sessions:
     *     - app_name
     *
     * In controls replace property "wide" with property "expand"
     *
     * @param string $app_name Application name
     * @param jxdir  $app_dir  Application root directory
     */
    static function to2_3($app_name, $app_dir) {

        // ______________________ Read tab-repository file from INI or use default one ___
        $ini_content = file_get_contents($app_dir.$app_name.".ini");
        $parts       = array();
        preg_match('/tables\s*=\s*"([^"]*)"/', $ini_content, $parts);
        if ($parts[1]) {
            $tables = $parts[1];
            }
        else {
            $tables = 'file_repository.inc';
            }
        // ________________________________________________ Get tables definition code ___
        $code = file_get_contents($app_dir.'prgs'.DIRECTORY_SEPARATOR.$tables);
        // ____________________________________________________________ Add new fields ___
        $code = add_tab_field($code,
                              'o2_sessions',
                              'app_name',
                              'app_name',
                              '_o2alpha');
        // ____________________________________________ Write down new repository code ___
        file_put_contents($app_dir.'prgs'.DIRECTORY_SEPARATOR.$tables, $code);
        // ____________________________ Remove ->wide syntax and replace with ->expand ___
        $dir   = new dir_descriptor($app_dir."prgs/");
        $files = $dir->get_elements();
        $prgs  = array();
        // _________________________________________________ Loop on folder files list ___
        while ($file = array_shift($files)) {
            // ___________________________________________________ Make all stuff here ___
            if ($file->ext == "prf") {
                $prf = $file->full_name;
                if (file_exists($prf)) {
                    $prf_txt = file_get_contents($prf);
                    while (strpos($prf_txt, '->wide(')) {
                        // ______________________________ Replace ->wide with ->expand ___
                        $prf_txt = preg_replace_callback('/->wide\([\'"](\d)[\'"]\)/',
                            function ($matches) {
                                return '->expand("'.
                                       ($matches[1] == '1' ? 'H' :
                                        ($matches[1] == '2' ? 'V' : 'B')).'")';
                                },
                            $prf_txt);
                        file_put_contents($prf, $prf_txt);
                        }
                    }
                }
            // _________________________________________ Add sub folders files to list ___
            elseif ($file->type == "D") {
                $files+= $file->get_elements();
                }
            }

        }


    /**
     * Upgrades application to release 2.4
     *
     * Add fields to system tables:
     *  - o2_users:
     *     - last_pwd_date      Last date when password was changed
     *     - force_pwd_change   Force user to change password at next login
     *     - pwds_history       History of last N passsowrds to check a new one against
     *     - no_pwd_change      Password never expires for user, regardless INI settings
     *
     * @param string $app_name Application name
     * @param jxdir  $app_dir  Application root directory
     */
    static function to2_4($app_name, $app_dir) {

        // ______________________ Read tab-repository file from INI or use default one ___
        $ini_content = file_get_contents($app_dir.$app_name.".ini");
        $parts       = array();
        preg_match('/tables\s*=\s*"([^"]*)"/', $ini_content, $parts);
        if ($parts[1]) {
            $tables = $parts[1];
            }
        else {
            $tables = 'file_repository.inc';
            }
        // ________________________________________________ Get tables definition code ___
        $code = file_get_contents($app_dir.'prgs'.DIRECTORY_SEPARATOR.$tables);
        // ____________________________________________________________ Add new fields ___
        $code = add_tab_field($code,
                              'o2_users',
                              'last_pwd_date',
                              'last_pwd_date',
                              '_o2date');
        $code = add_tab_field($code,
                              'o2_users',
                              'force_pwd_change',
                              'force_pwd_change',
                              '_o2logical');
        $code = add_tab_field($code,
                              'o2_users',
                              'pwds_history',
                              'pwds_history',
                              'o2sys_long_str');
        $code = add_tab_field($code,
                              'o2_users',
                              'no_pwd_change',
                              'no_pwd_change',
                              '_o2logical');
        // ____________________________________________ Write down new repository code ___
        file_put_contents($app_dir.'prgs'.DIRECTORY_SEPARATOR.$tables, $code);

        }


    /**
     * Upgrades application to release 2.5
     *
     * Add fields to system tables:
     *  - o2_users:
     *     - creation_date   User creation date
     *
     * @param string $app_name Application name
     * @param jxdir  $app_dir  Application root directory
     */
    static function to2_5($app_name, $app_dir) {

        // ______________________ Read tab-repository file from INI or use default one ___
        $ini_content = file_get_contents($app_dir.$app_name.".ini");
        $parts       = array();
        preg_match('/tables\s*=\s*"([^"]*)"/', $ini_content, $parts);
        if ($parts[1]) {
            $tables = $parts[1];
            }
        else {
            $tables = 'file_repository.inc';
            }
        // ________________________________________________ Get tables definition code ___
        $code = file_get_contents($app_dir.'prgs'.DIRECTORY_SEPARATOR.$tables);
        // ____________________________________________________________ Add new fields ___
        $code = add_tab_field($code,
                              'o2_users',
                              'creation_date',
                              'creation_date',
                              '_o2date');
        // ____________________________________________ Write down new repository code ___
        file_put_contents($app_dir.'prgs'.DIRECTORY_SEPARATOR.$tables, $code);

        }


    /**
     * Upgrades application to release 2.6
     *
     * Add fields to system tables:
     *  - jx_running_jobs
     *     - run_sessid   Session ID of process
     *  - o2_sessions:
     *     - run_mode   Session execution mode [WEB | JOB | CMD | RPC]
     *
     * @param string $app_name Application name
     * @param jxdir  $app_dir  Application root directory
     */
    static function to2_6($app_name, $app_dir) {

        // ______________________ Read tab-repository file from INI or use default one ___
        $ini_content = file_get_contents($app_dir.$app_name.".ini");
        $parts       = array();
        preg_match('/tables\s*=\s*"([^"]*)"/', $ini_content, $parts);
        if ($parts[1]) {
            $tables = $parts[1];
            }
        else {
            $tables = 'file_repository.inc';
            }
        // ________________________________________________ Get tables definition code ___
        $code = file_get_contents($app_dir.'prgs'.DIRECTORY_SEPARATOR.$tables);
        // ____________________________________________________________ Add new fields ___
        $code = add_tab_field($code,
                              'jx_running_jobs',
                              'run_sessid',
                              'run_sessid',
                              '_o2sid');
        $code = add_tab_field($code,
                              'jx_running_jobs',
                              'run_sched_id',
                              'run_sched_id',
                              'jxscheduler_id');
        $code = add_tab_index($code,
                              'jx_running_jobs',
                              'run_sessid',
                              array('run_sessid' => 'A', 'run_id' => 'A'));
        $code = add_tab_field($code,
                              'o2_sessions',
                              'run_mode',
                              'run_mode',
                              'o2sys_app_run_mode');
        $code = add_tab_field($code,
                              'o2_sessions',
                              'host',
                              'host',
                              'jxhost');
        // ____________________________________________ Write down new repository code ___
        file_put_contents($app_dir.'prgs'.DIRECTORY_SEPARATOR.$tables, $code);

        }

    }


/**
 * Filesystem element (file or folder)
 *
 */
class file_descriptor {

    /*     ===== PROPERTIES =========================================================== */
    public $full_name  = ""; /* Complete element name (path/name.extension)             */
    public $short_name = ""; /* Element name without path (name.extension)              */
    public $name       = ""; /* Element base name without path and extension            */
    public $path       = ""; /* Path (for folder is equal to $full_name)                */
    public $ext        = ""; /* Extension                                               */
    public $type       = ""; /* Type [F] = file, [D] = directory                        */
    public $http_mime  = ""; /* Upload files mime type                                  */
    public $mod_date   = ""; /* Last modification date                                  */
    public $mod_time   = ""; /* Last modification time                                  */
    public $size       = 0;  /* File size                                               */


    /**
     * Constructor
     *
     * @param string  $file
     */
    function __construct($file) {

        $this->full_name  = (realpath($file) ? realpath($file) : $file);
        $parts            = pathinfo($this->full_name);
        $this->ext        = (isset($parts['extension']) ? $parts['extension'] : "");
        $this->short_name = $parts['basename'];
        $this->name       = ($this->ext ?
                             substr($this->short_name, 0, - strlen($this->ext) - 1) :
                             $this->short_name);
        $this->path       = $parts['dirname'].DIRECTORY_SEPARATOR;
        if (is_dir($this->full_name)) {
            $this->type = "D";
            }
        else {
            $this->type = "F";
            $this->size = @filesize($this->full_name);
            }
        $timestamp_local = @filemtime($this->full_name);
        $this->mod_date  = date("Ymd", $timestamp_local);
        $this->mod_time  = date("His", $timestamp_local);

        }


    /**
     * Verifica l'esistenza del file
     *
     * @return boolean
     */
    function exists() {

        return file_exists($this->full_name);

        }


    /**
     * Copy filesystem element to passed target.
     *
     * @param  string $target
     * @return boolean
     */
    function copy_to($target) {

        $target = new file_descriptor($target);
        if ($target->type != "D") {
            return copy($this->full_name, $target);
            }
        else {
            return copy($this->full_name, $target.$this->short_name);
            }

        }


   public function __toString() {

       return $this->full_name;

       }

    }


/**
 * Filesystem folder
 *
 */
class dir_descriptor extends file_descriptor {

    /*     ===== PROPERTIES =========================================================== */
    public $match  = "*";   /* Filesystem match criteria                                */


    /**
     * Costruttore
     *
     * @param  string $dir
     * @param  string $match
     * @return o2_dir
     */
    function __construct($dir, $match = "*") {

        $this->type       = "D";
        $this->match      = ($match != "" ? $match : "*");
        $dir              = preg_replace("/\\\/", "/", rtrim($dir, " \\/"));
        $dir              = preg_replace("/\/+/", DIRECTORY_SEPARATOR, $dir);
        $parts            = pathinfo($dir);
        $this->ext        = (isset($parts['extension']) ? $parts['extension'] : "");
        $this->short_name = $parts['basename'];
        $this->name       = ($this->ext ?
                             substr($parts['basename'], 0, - strlen($this->ext) - 1) :
                             $parts['basename']);
        $this->path       = $parts['dirname'].DIRECTORY_SEPARATOR;
        $this->full_name  = $dir.DIRECTORY_SEPARATOR;
        $timestamp        = @filemtime($this->full_name);
        $this->mod_date   = date("Ymd", $timestamp);
        $this->mod_time   = date("His", $timestamp);

        }


    /**
     * Crea la cartella e ritorna true se la creazione ha successo
     *
     * @return boolean
     */
    function create() {

        return ($this->exists() || mkdir($this->full_name));

        }


    /**
     * Ritorna l'elenco di tutti gli elementi di filesystem contenuti nella folder e che
     * soddisfano la maschera $match
     *
     * @param  string $match
     * @return array
     */
    function get_elements($match = "") {

        if (!$match) {
            $match = $this->match;
            }
        $elements       = array();
        $elements_names = glob($this->full_name.$match);
        if ($elements_names) {
            foreach ($elements_names as $element) {
                if (is_dir($element)) {
                    $elements[basename($element)] = new dir_descriptor($element);
                    }
                else {
                    $elements[basename($element)] = new file_descriptor($element);
                    }
                }
            }
        return $elements;

        }


    /**
     * Removes folder and all its content
     *
     * @return boolean
     */
    function remove() {

        $res_val = false;
        if ($this->exists()) {
            $res_val = $this->make_empty();
            if ($res_val) {
                $res_val      = @rmdir($this->full_name);
                }
            }
        return $res_val;

        }


    /**
     * Removes all folder content
     *
     * @return boolean
     */
    function make_empty() {

        clearstatcache();
        $res_val              = true;
        $elements_names_local = glob($this->full_name."*");
        if ($elements_names_local) {
            foreach ($elements_names_local as $single_element) {
                $element_local = new file_descriptor($single_element);
                if ($element_local->type == "D") {
                    $folder_local = new dir_descriptor($element_local->full_name.
                                                       DIRECTORY_SEPARATOR);
                    $res_val      = $res_val && $folder_local->remove();
                    unset($folder_local);
                    }
                else {
                    $res_val = $res_val && @unlink($element_local->full_name);
                    }
                }
            }
        return $res_val;

        }


    /**
     * Copy filesystem element to passed target.
     *
     * @param  string $target
     * @return boolean
     */
    function copy_to($target) {

        $target = new dir_descriptor($target);
        if ($target->exists()) {
            $target->make_empty();
            }
        else {
            $target->create();
            }
        foreach ($this->get_elements() as $element_name => $element) {
            $element->copy_to($target.$element_name);
            }

        }


    /**
     * Ritorna l'oggetto o2_fsitem dell'elemento di filesystem richiesto
     *
     * @param  string $file
     * @return o2_elemento_fs
     */
    function get_element($file) {

        return new file_descriptor($this->full_name.basename($file));

        }


    /**
     * Verifica l'esistenza della cartella (con $file == null) o di $file all'interno
     * della cartella
     *
     * @param  string $file
     * @return boolean
     */
    function exists($file = null) {

        if ($file) {
            return (count($this->get_elements(basename($file))) > 0);
            }
        else {
            return file_exists($this->full_name);
            }

        }

    }

?>
