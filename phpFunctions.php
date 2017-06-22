<?php

/**
 * @return unknown
 * @desc   
 */
function _ldap_rebind_proc() {}

/**
 * @return int
 * @param  number int
 * @desc   Return the absolute value of the number 
 */
function abs($number) {}

/**
 * @return array
 * @desc   Obtain the contents of the black-list 
 */
function accelerator_get_blacklist() {}

/**
 * @return array
 * @desc   Obtain the list of black-listed paths 
 */
function accelerator_get_blacklisted_paths() {}

/**
 * @return array
 * @desc   Obtain configuration information for the Zend Performance Suite 
 */
function accelerator_get_configuration() {}

/**
 * @return array
 * @desc   Get the scripts which are accelerated by the Zend Performance Suite 
 */
function accelerator_get_scripts() {}

/**
 * @return long
 * @desc   Obtain the server's start time as recorded by the Zend Performance Suite 
 */
function accelerator_get_server_start_time() {}

/**
 * @return array
 * @desc   Obtain statistics information regarding code acceleration in the Zend Performance Suite 
 */
function accelerator_get_statistics() {}

/**
 * @return array
 * @desc   Obtain the list of URIs that were detected by the Zend Performance Suite 
 */
function accelerator_get_uris() {}

/**
 * @return array
 * @desc   Obtain version information for the Zend Performance Suite 
 */
function accelerator_get_version_info() {}

/**
 * @return void
 * @desc   Request that the contents of the Accelerator module in the ZPS be reset 
 */
function accelerator_reset() {}

/**
 * @return boolean
 * @param  status boolean
 * @desc   Enable/disable code acceleration in the Zend Performance Suite 
 */
function accelerator_set_status($status) {}

/**
 * @return boolean
 * @param  password string
 * @desc   Unlock the Zend Performance Suite API functions for usage 
 */
function accelerator_unlock_functions($password) {}

/**
 * @return float
 * @param  number float
 * @desc   Return the arc cosine of the number in radians 
 */
function acos($number) {}

/**
 * @return float
 * @param  number float
 * @desc   Returns the inverse hyperbolic cosine of the number, i.e. the value whose hyperbolic cosine is number 
 */
function acosh($number) {}

/**
 * @return string
 * @param  str string
 * @param  charlist string
 * @desc   Escapes all chars mentioned in charlist with backslash. It creates octal representations if asked to backslash characters with 8th bit set or with ASCII<32 (except '\n', '\r', '\t' etc...) 
 */
function addcslashes($str, $charlist) {}

/**
 * @return string
 * @param  str string
 * @desc   Escapes single quote, double quotes and backslash characters in a string with backslashes 
 */
function addslashes($str) {}

/**
 * @return bool
 * @desc   Terminate apache process after this request 
 */
function apache_child_terminate() {}

/**
 * @return array
 * @desc   Get a list of loaded Apache modules 
 */
function apache_get_modules() {}

/**
 * @return string
 * @desc   Fetch Apache version 
 */
function apache_get_version() {}

/**
 * @return bool
 * @param  variable string
 * @param  walk_to_top bool[optional]
 * @desc   Get an Apache subprocess_env variable 
 */
function apache_getenv($variable, $walk_to_top = null) {}

/**
 * @return object
 * @param  URI string
 * @desc   Perform a partial request of the given URI to obtain information about it 
 */
function apache_lookup_uri($URI) {}

/**
 * @return string
 * @param  note_name string
 * @param  note_value string[optional]
 * @desc   Get and set Apache request notes 
 */
function apache_note($note_name, $note_value = null) {}






/**
 * @return array
 * @desc   Get all headers from the request 
 */
function apache_request_headers() {}

















/**
 * @return array
 * @desc   Get all headers from the response 
 */
function apache_response_headers() {}

/**
 * @return bool
 * @param  variable string
 * @param  value string
 * @param  walk_to_top bool[optional]
 * @desc   Set an Apache subprocess_env variable 
 */
function apache_setenv($variable, $value, $walk_to_top = null) {}

/**
 * @return array
 * @param  input array
 * @param  case int[optional]
 * @desc   Retuns an array with all string keys lowercased [or uppercased] 
 */
function array_change_key_case($input, $case = CASE_LOWER) {}

/**
 * @return array
 * @param  input array
 * @param  size int
 * @param  preserve_keys bool[optional]
 * @desc   Split array into chunks 
 */
function array_chunk($input, $size, $preserve_keys = null) {}

/**
 * @return array
 * @param  keys array
 * @param  values array
 * @desc   Creates an array by using the elements of the first parameter as keys and the elements of the second as correspoding keys 
 */
function array_combine($keys, $values) {}

/**
 * @return array
 * @param  input array
 * @desc   Return the value as key and the frequency of that value in input as value 
 */
function array_count_values($input) {}

/**
 * @return array
 * @param  arr1 array
 * @param  arr2 array
 * @vararg ... array
 * @desc   Returns the entries of arr1 that have values which are not present in any of the others arguments. 
 */
function array_diff($arr1, $arr2) {}

/**
 * @return array
 * @param  arr1 array
 * @param  arr2 array
 * @vararg ... array
 * @desc   Returns the entries of arr1 that have values which are not present in any of the others arguments but do additional checks whether the keys are equal 
 */
function array_diff_assoc($arr1, $arr2) {}

/**
 * @return array
 * @param  arr1 array
 * @param  arr2 array
 * @vararg ... array
 * @param  data_comp_func callback
 * @desc   Returns the entries of arr1 that have values which are not present in any of the others arguments but do additional checks whether the keys are equal. Elements are compared by user supplied function. 
 */
function array_diff_uassoc($arr1, $arr2, $data_comp_func) {}

/**
 * @return array
 * @param  start_key int
 * @param  num int
 * @param  val mixed
 * @desc   Create an array containing num elements starting with index start_key each initialized to val 
 */
function array_fill($start_key, $num, $val) {}

/**
 * @return array
 * @param  input array
 * @param  callback mixed[optional]
 * @desc   Filters elements from the array via the callback. 
 */
function array_filter($input, $callback = null) {}

/**
 * @return array
 * @param  input array
 * @desc   Return array with key <-> value flipped 
 */
function array_flip($input) {}

/**
 * @return array
 * @param  arr1 array
 * @param  arr2 array
 * @vararg ... array
 * @desc   Returns the entries of arr1 that have values which are present in all the other arguments 
 */
function array_intersect($arr1, $arr2) {}

/**
 * @return array
 * @param  arr1 array
 * @param  arr2 array
 * @vararg ... array
 * @desc   Returns the entries of arr1 that have values which are present in all the other arguments. Keys are used to do more restrictive check 
 */
function array_intersect_assoc($arr1, $arr2) {}

/**
 * @return array
 * @param  arr1 array
 * @param  arr2 array
 * @vararg ... array
 * @param  key_compare_func callback
 * @desc   Returns the entries of arr1 that have values which are present in all the other arguments. Keys are used to do more restrictive check and they are compared by using an user-supplied callback. 
 */
function array_intersect_uassoc($arr1, $arr2, $key_compare_func) {}

/**
 * @return bool
 * @param  key mixed
 * @param  search array
 * @desc   Checks if the given key or index exists in the array 
 */
function array_key_exists($key, $search) {}

/**
 * @return array
 * @param  input array
 * @param  search_value mixed[optional]
 * @param  strict bool
 * @desc   Return just the keys from the input array, optionally only for the specified search_value 
 */
function array_keys($input, $search_value = null, $strict) {}

/**
 * @return array
 * @param  callback mixed
 * @param  input1 array
 * @param  input2 array[optional]
 * @vararg ...
 * @desc   Applies the callback to the elements in given arrays. 
 */
function array_map($callback, $input1, $input2 = null) {}

/**
 * @return array
 * @param  arr1 array
 * @param  arr2 array
 * @vararg ... array
 * @desc   Merges elements from passed arrays into one array 
 */
function array_merge($arr1, $arr2) {}

/**
 * @return array
 * @param  arr1 array
 * @param  arr2 array
 * @vararg ... array
 * @desc   Recursively merges elements from passed arrays into one array 
 */
function array_merge_recursive($arr1, $arr2) {}

/**
 * @return bool
 * @param  ar1 array
 * @param  SORT_ASC|SORT_DESC[optional]
 * @param  SORT_REGULAR|SORT_NUMERIC|SORT_STRING[optional]
 * @param  ar2 array[optional]
 * @param  SORT_ASC|SORT_DESC[optional]
 * @param  SORT_REGULAR|SORT_NUMERIC|SORT_STRING[optional]
 * @vararg ...
 * @desc   Sort multiple arrays at once similar to how ORDER BY clause works in SQL 
 */
function array_multisort($ar1, $SORT_ASC = null, $SORT_REGULAR = null, $ar2 = null, $SORT_ASC = null, $SORT_REGULAR = null) {}

/**
 * @return array
 * @param  input array
 * @param  pad_size int
 * @param  pad_value mixed
 * @desc   Returns a copy of input array padded with pad_value to size pad_size 
 */
function array_pad($input, $pad_size, $pad_value) {}

/**
 * @return mixed
 * @param  stack array
 * @desc   Pops an element off the end of the array 
 */
function array_pop($stack) {}

/**
 * @return int
 * @param  stack array
 * @param  var mixed
 * @vararg ... mixed
 * @desc   Pushes elements onto the end of the array 
 */
function array_push($stack, $var) {}

/**
 * @return mixed
 * @param  input array
 * @param  num_req int[optional]
 * @desc   Return key/keys for random entry/entries in the array 
 */
function array_rand($input, $num_req = null) {}

/**
 * @return mixed
 * @param  input array
 * @param  callback mixed
 * @param  initial int[optional]
 * @desc   Iteratively reduce the array to a single value via the callback. 
 */
function array_reduce($input, $callback, $initial = null) {}

/**
 * @return array
 * @param  input array
 * @param  preserve_keys bool[optional]
 * @desc   Return input as a new array with the order of the entries reversed 
 */
function array_reverse($input, $preserve_keys = null) {}

/**
 * @return mixed
 * @param  needle mixed
 * @param  haystack array
 * @param  strict bool[optional]
 * @desc   Searches the array for a given value and returns the corresponding key if successful 
 */
function array_search($needle, $haystack, $strict = null) {}

/**
 * @return mixed
 * @param  stack array
 * @desc   Pops an element off the beginning of the array 
 */
function array_shift($stack) {}

/**
 * @return array
 * @param  input array
 * @param  offset int
 * @param  length int[optional]
 * @desc   Returns elements specified by offset and length 
 */
function array_slice($input, $offset, $length = null) {}

/**
 * @return array
 * @param  input array
 * @param  offset int
 * @param  length int[optional]
 * @param  replacement array[optional]
 * @desc   Removes the elements designated by offset and length and replace them with supplied array 
 */
function array_splice($input, $offset, $length = null, $replacement = null) {}

/**
 * @return mixed
 * @param  input array
 * @desc   Returns the sum of the array entries 
 */
function array_sum($input) {}

/**
 * @return array
 * @param  arr1 array
 * @param  arr2 array
 * @vararg ... array
 * @param  data_comp_func callback
 * @desc   Returns the entries of arr1 that have values which are not present in any of the others arguments. Elements are compared by user supplied function. 
 */
function array_udiff($arr1, $arr2, $data_comp_func) {}

/**
 * @return array
 * @param  arr1 array
 * @param  arr2 array
 * @vararg ... array
 * @param  key_comp_func callback
 * @desc   Returns the entries of arr1 that have values which are not present in any of the others arguments but do additional checks whether the keys are equal. Keys are compared by user supplied function. 
 */
function array_udiff_assoc($arr1, $arr2, $key_comp_func) {}

/**
 * @return array
 * @param  arr1 array
 * @param  arr2 array
 * @vararg ... array
 * @param  data_comp_func callback
 * @param  key_comp_func callback
 * @desc   Returns the entries of arr1 that have values which are not present in any of the others arguments but do additional checks whether the keys are equal. Keys and elements are compared by user supplied functions. 
 */
function array_udiff_uassoc($arr1, $arr2, $data_comp_func, $key_comp_func) {}

/**
 * @return array
 * @param  arr1 array
 * @param  arr2 array
 * @vararg ... array
 * @param  data_compare_func callback
 * @desc   Returns the entries of arr1 that have values which are present in all the other arguments. Data is compared by using an user-supplied callback. 
 */
function array_uintersect($arr1, $arr2, $data_compare_func) {}

/**
 * @return array
 * @param  arr1 array
 * @param  arr2 array
 * @vararg ... array
 * @param  data_compare_func callback
 * @desc   Returns the entries of arr1 that have values which are present in all the other arguments. Keys are used to do more restrictive check. Data is compared by using an user-supplied callback. 
 */
function array_uintersect_assoc($arr1, $arr2, $data_compare_func) {}

/**
 * @return array
 * @param  arr1 array
 * @param  arr2 array
 * @vararg ... array
 * @param  data_compare_func callback
 * @param  key_compare_func callback
 * @desc   Returns the entries of arr1 that have values which are present in all the other arguments. Keys are used to do more restrictive check. Both data and keys are compared by using user-supplied callbacks. 
 */
function array_uintersect_uassoc($arr1, $arr2, $data_compare_func, $key_compare_func) {}

/**
 * @return array
 * @param  input array
 * @desc   Removes duplicate values from array 
 */
function array_unique($input) {}

/**
 * @return int
 * @param  stack array
 * @param  var mixed
 * @vararg ... mixed
 * @desc   Pushes elements onto the beginning of the array 
 */
function array_unshift($stack, $var) {}

/**
 * @return array
 * @param  input array
 * @desc   Return just the values from the input array 
 */
function array_values($input) {}

/**
 * @return bool
 * @param  input array
 * @param  funcname string
 * @param  userdata mixed[optional]
 * @desc   Apply a user function to every member of an array 
 */
function array_walk($input, $funcname, $userdata = null) {}

/**
 * @return bool
 * @param  input array
 * @param  funcname string
 * @param  userdata mixed[optional]
 * @desc   Apply a user function recursively to every member of an array 
 */
function array_walk_recursive($input, $funcname, $userdata = null) {}

/**
 * @return bool
 * @param  array_arg array
 * @param  sort_flags int[optional]
 * @desc   Sort an array in reverse order and maintain index association 
 */
function arsort($array_arg, $sort_flags = null) {}

/**
 * @return float
 * @param  number float
 * @desc   Returns the arc sine of the number in radians 
 */
function asin($number) {}

/**
 * @return float
 * @param  number float
 * @desc   Returns the inverse hyperbolic sine of the number, i.e. the value whose hyperbolic sine is number 
 */
function asinh($number) {}

/**
 * @return bool
 * @param  array_arg array
 * @param  sort_flags int[optional]
 * @desc   Sort an array and maintain index association 
 */
function asort($array_arg, $sort_flags = null) {}

/**
 * @return int
 * @param  assertion string|bool
 * @desc   Checks if assertion is false 
 */
function assert($assertion) {}

/**
 * @return mixed
 * @param  what int
 * @param  value mixed[optional]
 * @desc   Set/get the various assert flags 
 */
function assert_options($what, $value = null) {}

/**
 * @return float
 * @param  number float
 * @desc   Returns the arc tangent of the number in radians 
 */
function atan($number) {}

/**
 * @return float
 * @param  y float
 * @param  x float
 * @desc   Returns the arc tangent of y/x, with the resulting quadrant determined by the signs of y and x 
 */
function atan2($y, $x) {}

/**
 * @return float
 * @param  number float
 * @desc   Returns the inverse hyperbolic tangent of the number, i.e. the value whose hyperbolic tangent is number 
 */
function atanh($number) {}

/**
 * @return string
 * @param  str string
 * @desc   Decodes string using MIME base64 algorithm 
 */
function base64_decode($str) {}

/**
 * @return string
 * @param  str string
 * @desc   Encodes string using MIME base64 algorithm 
 */
function base64_encode($str) {}

/**
 * @return string
 * @param  number string
 * @param  frombase int
 * @param  tobase int
 * @desc   Converts a number in a string from any base <= 36 to any base <= 36 
 */
function base_convert($number, $frombase, $tobase) {}

/**
 * @return string
 * @param  path string
 * @param  suffix string[optional]
 * @desc   Returns the filename component of the path 
 */
function basename($path, $suffix = null) {}

/**
 * @return string
 * @param  left_operand string
 * @param  right_operand string
 * @param  scale int[optional]
 * @desc   Returns the sum of two arbitrary precision numbers 
 */
function bcadd($left_operand, $right_operand, $scale = null) {}

/**
 * @return int
 * @param  left_operand string
 * @param  right_operand string
 * @param  scale int[optional]
 * @desc   Compares two arbitrary precision numbers 
 */
function bccomp($left_operand, $right_operand, $scale = null) {}

/**
 * @return string
 * @param  left_operand string
 * @param  right_operand string
 * @param  scale int[optional]
 * @desc   Returns the quotient of two arbitrary precision numbers (division) 
 */
function bcdiv($left_operand, $right_operand, $scale = null) {}

/**
 * @return string
 * @param  left_operand string
 * @param  right_operand string
 * @desc   Returns the modulus of the two arbitrary precision operands 
 */
function bcmod($left_operand, $right_operand) {}

/**
 * @return string
 * @param  left_operand string
 * @param  right_operand string
 * @param  scale int[optional]
 * @desc   Returns the multiplication of two arbitrary precision numbers 
 */
function bcmul($left_operand, $right_operand, $scale = null) {}

/**
 * @return string
 * @param  x string
 * @param  y string
 * @param  scale int[optional]
 * @desc   Returns the value of an arbitrary precision number raised to the power of another 
 */
function bcpow($x, $y, $scale = null) {}

/**
 * @return string
 * @param  x string
 * @param  y string
 * @param  mod string
 * @param  scale int[optional]
 * @desc   Returns the value of an arbitrary precision number raised to the power of another reduced by a modulous 
 */
function bcpowmod($x, $y, $mod, $scale = null) {}

/**
 * @return bool
 * @param  scale int
 * @desc   Sets default scale parameter for all bc math functions 
 */
function bcscale($scale) {}

/**
 * @return string
 * @param  operand string
 * @param  scale int[optional]
 * @desc   Returns the square root of an arbitray precision number 
 */
function bcsqrt($operand, $scale = null) {}

/**
 * @return string
 * @param  left_operand string
 * @param  right_operand string
 * @param  scale int[optional]
 * @desc   Returns the difference between two arbitrary precision numbers 
 */
function bcsub($left_operand, $right_operand, $scale = null) {}

/**
 * @return string
 * @param  data string
 * @desc   Converts the binary representation of data to hex 
 */
function bin2hex($data) {}

/**
 * @return string
 * @param  domain string
 * @param  codeset string
 * @desc   Specify the character encoding in which the messages from the DOMAIN message catalog will be returned. 
 */
function bind_textdomain_codeset ($domain, $codeset) {}

/**
 * @return int
 * @param  binary_number string
 * @desc   Returns the decimal equivalent of the binary number 
 */
function bindec($binary_number) {}

/**
 * @return string
 * @param  domain_name string
 * @param  dir string
 * @desc   Bind to the text domain domain_name, looking for translations in dir. Returns the current domain 
 */
function bindtextdomain($domain_name, $dir) {}

/**
 * @return bool
 * @param  index int
 * @desc   
 */
function birdstep_autocommit($index) {}

/**
 * @return bool
 * @param  id int
 * @desc   
 */
function birdstep_close($id) {}

/**
 * @return bool
 * @param  index int
 * @desc   
 */
function birdstep_commit($index) {}

/**
 * @return int
 * @param  server string
 * @param  user string
 * @param  pass string
 * @desc   
 */
function birdstep_connect($server, $user, $pass) {}

/**
 * @return int
 * @param  index int
 * @param  exec_str string
 * @desc   
 */
function birdstep_exec($index, $exec_str) {}

/**
 * @return bool
 * @param  index int
 * @desc   
 */
function birdstep_fetch($index) {}

/**
 * @return string
 * @param  index int
 * @param  col int
 * @desc   
 */
function birdstep_fieldname($index, $col) {}

/**
 * @return int
 * @param  index int
 * @desc   
 */
function birdstep_fieldnum($index) {}

/**
 * @return bool
 * @param  index int
 * @desc   
 */
function birdstep_freeresult($index) {}

/**
 * @return bool
 * @param  index int
 * @desc   
 */
function birdstep_off_autocommit($index) {}

/**
 * @return mixed
 * @param  index int
 * @param  col int
 * @desc   
 */
function birdstep_result($index, $col) {}

/**
 * @return bool
 * @param  index int
 * @desc   
 */
function birdstep_rollback($index) {}

/**
 * @return bool
 * @param  fp resource
 * @desc   Close an open file pointer 
 */
function bzclose($fp) {}

/**
 * @return string
 * @param  source string
 * @param  blocksize100k int[optional]
 * @param  workfactor int[optional]
 * @desc   Compresses a string into BZip2 encoded data 
 */
function bzcompress($source, $blocksize100k = null, $workfactor = null) {}

/**
 * @return string
 * @param  source string
 * @param  small int[optional]
 * @desc   Decompresses BZip2 compressed data 
 */
function bzdecompress($source, $small = null) {}

/**
 * @return int
 * @param  bz resource
 * @desc   Returns the error number 
 */
function bzerrno($bz) {}

/**
 * @return array
 * @param  bz resource
 * @desc   Returns the error number and error string in an associative array 
 */
function bzerror($bz) {}

/**
 * @return string
 * @param  bz resource
 * @desc   Returns the error string 
 */
function bzerrstr($bz) {}

/**
 * @return bool
 * @param  fp resource
 * @desc   Flushes output 
 */
function bzflush($fp) {}

/**
 * @return resource
 * @param  file|fp string|int
 * @param  mode string
 * @desc   Opens a new BZip2 stream 
 */
function bzopen($file, $mode) {}

/**
 * @return string
 * @param  bz int
 * @param  length int
 * @desc   Reads up to length bytes from a BZip2 stream, or 1024 bytes if length is not specified 
 */
function bzread($bz, $length) {}

/**
 * @return int
 * @param  fp resource
 * @param  str string
 * @param  length int[optional]
 * @desc   Binary-safe file write 
 */
function bzwrite($fp, $str, $length = null) {}

/**
 * @return int
 * @param  calendar int
 * @param  month int
 * @param  year int
 * @desc   Returns the number of days in a month for a given year and calendar 
 */
function cal_days_in_month($calendar, $month, $year) {}

/**
 * @return array
 * @param  jd int
 * @param  calendar int
 * @desc   Converts from Julian Day Count to a supported calendar and return extended information 
 */
function cal_from_jd($jd, $calendar) {}

/**
 * @return array
 * @param  calendar int
 * @desc   Returns information about a particular calendar 
 */
function cal_info($calendar) {}

/**
 * @return int
 * @param  calendar int
 * @param  month int
 * @param  day int
 * @param  year int
 * @desc   Converts from a supported calendar to Julian Day Count 
 */
function cal_to_jd($calendar, $month, $day, $year) {}

/**
 * @return mixed
 * @param  function_name string
 * @param  parmeter mixed[optional]
 * @vararg ... mixed
 * @desc   Call a user function which is the first parameter 
 */
function call_user_func($function_name, $parmeter = null) {}

/**
 * @return mixed
 * @param  function_name string
 * @param  parameters array
 * @desc   Call a user function which is the first parameter with the arguments contained in array 
 */
function call_user_func_array($function_name, $parameters) {}

/**
 * @return mixed
 * @param  method_name string
 * @param  object mixed
 * @param  parameter mixed[optional]
 * @vararg ... mixed
 * @desc   Call a user method on a specific object or class 
 */
function call_user_method($method_name, $object, $parameter = null) {}

/**
 * @return mixed
 * @param  method_name string
 * @param  object mixed
 * @param  params array
 * @desc   Call a user method on a specific object or class using a parameter array 
 */
function call_user_method_array($method_name, $object, $params) {}

/**
 * @return float
 * @param  number float
 * @desc   Returns the next highest integer value of the number 
 */
function ceil($number) {}

/**
 * @return bool
 * @param  directory string
 * @desc   Change the current directory 
 */
function chdir($directory) {}

/**
 * @return bool
 * @param  month int
 * @param  day int
 * @param  year int
 * @desc   Returns true(1) if it is a valid date in gregorian calendar 
 */
function checkdate($month, $day, $year) {}

/**
 * @return int
 * @param  host string
 * @param  type string[optional]
 * @desc   Check DNS records corresponding to a given Internet host name or IP address 
 */
function checkdnsrr($host, $type = null) {}

/**
 * @return bool
 * @param  filename string
 * @param  group mixed
 * @desc   Change file group 
 */
function chgrp($filename, $group) {}

/**
 * @return bool
 * @param  filename string
 * @param  mode int
 * @desc   Change file mode 
 */
function chmod($filename, $mode) {}

/**
 * @return string
 * @param  str string
 * @param  character_mask string[optional]
 * @desc   Removes trailing whitespace 
 */
function chop($str, $character_mask = null) {}

/**
 * @return bool
 * @param  filename string
 * @param  user mixed
 * @desc   Change file owner 
 */
function chown ($filename, $user) {}

/**
 * @return string
 * @param  ascii int
 * @desc   Converts ASCII code to a character 
 */
function chr($ascii) {}

/**
 * @return bool
 * @param  directory string
 * @desc   Change root directory 
 */
function chroot($directory) {}

/**
 * @return string
 * @param  str string
 * @param  chunklen int[optional]
 * @param  ending string[optional]
 * @desc   Returns split line 
 */
function chunk_split($str, $chunklen = null, $ending = null) {}

/**
 * @return bool
 * @param  classname string
 * @param  autoload bool[optional]
 * @desc   Checks if the class exists 
 */
function class_exists($classname, $autoload = null) {}

/**
 * @return void
 * @desc   Clear file stat cache 
 */
function clearstatcache() {}

/**
 * @return void
 * @param  dir_handle resource[optional]
 * @desc   Close directory connection identified by the dir_handle 
 */
function closedir($dir_handle = null) {}

/**
 * @return bool
 * @desc   Close connection to system logger 
 */
function closelog() {}

/**
 * @return string
 * @desc   Generate a globally unique identifier (GUID) 
 */
function com_create_guid() {}

/**
 * @return bool
 * @param  comobject object
 * @param  sinkobject object
 * @param  sinkinterface mixed[optional]
 * @desc   Connect events from a COM object to a PHP object 
 */
function com_event_sink($comobject, $sinkobject, $sinkinterface = null) {}

/**
 * @return object
 * @param  progid string
 * @param  code_page int[optional]
 * @desc   Returns a handle to an already running instance of a COM object 
 */
function com_get_active_object($progid, $code_page = null) {}

/**
 * @return bool
 * @param  typelib_name string
 * @param  case_insensitive int[optional]
 * @desc   Loads a Typelibrary and registers its constants 
 */
function com_load_typelib($typelib_name, $case_insensitive = null) {}

/**
 * @return bool
 * @param  timeoutms int[optional]
 * @desc   Process COM messages, sleeping for up to timeoutms milliseconds 
 */
function com_message_pump($timeoutms = null) {}

/**
 * @return bool
 * @param  comobject_|_string_typelib object
 * @param  dispinterface string
 * @param  wantsink bool
 * @desc   Print out a PHP class definition for a dispatchable interface 
 */
function com_print_typeinfo($comobject_, $dispinterface, $wantsink) {}

/**
 * @return array
 * @param  var_names mixed
 * @vararg ... mixed
 * @desc   Creates a hash containing variables and their values 
 */
function compact($var_names) {}

/**
 * @return string
 * @param  arg string
 * @desc   Return a string to confirm that the module is compiled in 
 */
function confirm_extname_compiled($arg) {}

/**
 * @return int
 * @desc   Returns true if client disconnected 
 */
function connection_aborted() {}

/**
 * @return int
 * @desc   Returns the connection status bitfield 
 */
function connection_status() {}

/**
 * @return mixed
 * @param  const_name string
 * @desc   Given the name of a constant this function will return the constants associated value 
 */
function constant($const_name) {}

/**
 * @return string
 * @param  str string
 * @param  from string
 * @param  to string
 * @desc   Convert from one Cyrillic character set to another 
 */
function convert_cyr_string($str, $from, $to) {}

/**
 * @return bool
 * @param  source_file string
 * @param  destination_file string
 * @desc   Copy a file 
 */
function copy($source_file, $destination_file) {}

/**
 * @return float
 * @param  number float
 * @desc   Returns the cosine of the number in radians 
 */
function cos($number) {}

/**
 * @return float
 * @param  number float
 * @desc   Returns the hyperbolic cosine of the number, defined as (exp(number) + exp(-number))/2 
 */
function cosh($number) {}

/**
 * @return int
 * @param  var mixed
 * @param  mode int[optional]
 * @desc   Count the number of elements in a variable (usually an array) 
 */
function count($var, $mode = null) {}

/**
 * @return mixed
 * @param  input string
 * @param  mode int[optional]
 * @desc   Returns info about what characters are used in input 
 */
function count_chars($input, $mode = null) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  xll float
 * @param  yll float
 * @param  xur float
 * @param  xur float
 * @param  title string
 * @param  text string
 * @param  mode int[optional]
 * @desc   Sets annotation 
 */
function cpdf_add_annotation($pdfdoc, $xll, $yll, $xur, $xur, $title, $text, $mode = null) {}

/**
 * @return int
 * @param  pdfdoc int
 * @param  lastoutline int
 * @param  sublevel int
 * @param  open int
 * @param  pagenr int
 * @param  title string
 * @desc   Adds outline 
 */
function cpdf_add_outline($pdfdoc, $lastoutline, $sublevel, $open, $pagenr, $title) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  x float
 * @param  y float
 * @param  radius float
 * @param  start float
 * @param  end float
 * @param  mode int[optional]
 * @desc   Draws an arc 
 */
function cpdf_arc($pdfdoc, $x, $y, $radius, $start, $end, $mode = null) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @desc   Starts text section 
 */
function cpdf_begin_text($pdfdoc) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  x float
 * @param  y float
 * @param  radius float
 * @param  mode int[optional]
 * @desc   Draws a circle 
 */
function cpdf_circle($pdfdoc, $x, $y, $radius, $mode = null) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @desc   Clips to current path 
 */
function cpdf_clip($pdfdoc) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @desc   Closes the pdf document 
 */
function cpdf_close($pdfdoc) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @desc   Close path 
 */
function cpdf_closepath($pdfdoc) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @desc   Close, fill and stroke current path 
 */
function cpdf_closepath_fill_stroke($pdfdoc) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @desc   Close path and draw line along path 
 */
function cpdf_closepath_stroke($pdfdoc) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  text string
 * @desc   Outputs text in next line 
 */
function cpdf_continue_text($pdfdoc, $text) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  x1 float
 * @param  y1 float
 * @param  x2 float
 * @param  y2 float
 * @param  x3 float
 * @param  y3 float
 * @param  mode int[optional]
 * @desc   Draws a curve 
 */
function cpdf_curveto($pdfdoc, $x1, $y1, $x2, $y2, $x3, $y3, $mode = null) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @desc   Ends text section 
 */
function cpdf_end_text($pdfdoc) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @desc   Fills current path 
 */
function cpdf_fill($pdfdoc) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @desc   Fills and stroke current path 
 */
function cpdf_fill_stroke($pdfdoc) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @desc   Creates PDF doc in memory 
 */
function cpdf_finalize($pdfdoc) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  pagenr int
 * @desc   Ends the page to save memory 
 */
function cpdf_finalize_page($pdfdoc, $pagenr) {}

/**
 * @return bool
 * @param  maxPages int
 * @param  maxFonts int
 * @param  maxImages int
 * @param  maxAnnots int
 * @param  maxObjects int
 * @desc   Sets document settings for all documents 
 */
function cpdf_global_set_document_limits($maxPages, $maxFonts, $maxImages, $maxAnnots, $maxObjects) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  filename string
 * @param  x float
 * @param  y float
 * @param  angle float
 * @param  width float
 * @param  height float
 * @param  x_scale float
 * @param  y_scale float
 * @param  gsave int
 * @param  mode int[optional]
 * @desc   Includes JPEG image 
 */
function cpdf_import_jpeg($pdfdoc, $filename, $x, $y, $angle, $width, $height, $x_scale, $y_scale, $gsave, $mode = null) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  x float
 * @param  y float
 * @param  mode int[optional]
 * @desc   Draws a line 
 */
function cpdf_lineto($pdfdoc, $x, $y, $mode = null) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  x float
 * @param  y float
 * @param  mode int[optional]
 * @desc   Sets current point 
 */
function cpdf_moveto($pdfdoc, $x, $y, $mode = null) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @desc   Starts new path 
 */
function cpdf_newpath($pdfdoc) {}

/**
 * @return int
 * @param  compression int
 * @param  filename string[optional]
 * @param  doc_limits array[optional]
 * @desc   Opens a new pdf document 
 */
function cpdf_open($compression, $filename = null, $doc_limits = null) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @desc   Returns the internal memory stream as string 
 */
function cpdf_output_buffer($pdfdoc) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  pagenr int
 * @param  orientation int
 * @param  height int
 * @param  width int
 * @param  unit float[optional]
 * @desc   Starts page 
 */
function cpdf_page_init($pdfdoc, $pagenr, $orientation, $height, $width, $unit = null) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  gdimage int
 * @param  x float
 * @param  y float
 * @param  angle float
 * @param  width fload
 * @param  height float
 * @param  gsave int
 * @param  mode int[optional]
 * @desc   Includes image 
 */
function cpdf_place_inline_image($pdfdoc, $gdimage, $x, $y, $angle, $width, $height, $gsave, $mode = null) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  x float
 * @param  y float
 * @param  width float
 * @param  height float
 * @param  mode int[optional]
 * @desc   Draws a rectangle 
 */
function cpdf_rect($pdfdoc, $x, $y, $width, $height, $mode = null) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @desc   Restores formerly saved enviroment 
 */
function cpdf_restore($pdfdoc) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  x float
 * @param  y float
 * @param  mode int[optional]
 * @desc   Draws a line relative to current point 
 */
function cpdf_rlineto($pdfdoc, $x, $y, $mode = null) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  x float
 * @param  y float
 * @param  mode int[optional]
 * @desc   Sets current point 
 */
function cpdf_rmoveto($pdfdoc, $x, $y, $mode = null) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  angle float
 * @desc   Sets rotation 
 */
function cpdf_rotate($pdfdoc, $angle) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  angle float
 * @desc   Sets text rotation angle 
 */
function cpdf_rotate_text($pdfdoc, $angle) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @desc   Saves current enviroment 
 */
function cpdf_save($pdfdoc) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  filename string
 * @desc   Saves the internal memory stream to a file 
 */
function cpdf_save_to_file($pdfdoc, $filename) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  x_scale float
 * @param  y_scale float
 * @desc   Sets scaling 
 */
function cpdf_scale($pdfdoc, $x_scale, $y_scale) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  xll float
 * @param  yll float
 * @param  xur float
 * @param  xur float
 * @param  url string
 * @param  mode int[optional]
 * @desc   Sets hyperlink 
 */
function cpdf_set_action_url($pdfdoc, $xll, $yll, $xur, $xur, $url, $mode = null) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  space float
 * @desc   Sets character spacing 
 */
function cpdf_set_char_spacing($pdfdoc, $space) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  creator string
 * @desc   Sets the creator field 
 */
function cpdf_set_creator($pdfdoc, $creator) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  pagenr int
 * @desc   Sets page for output 
 */
function cpdf_set_current_page($pdfdoc, $pagenr) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  font string
 * @param  size float
 * @param  encoding string
 * @desc   Selects the current font face, size and encoding 
 */
function cpdf_set_font($pdfdoc, $font, $size, $encoding) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  pfmdir string
 * @param  pfbdir string
 * @desc   Sets directories to search when using external fonts 
 */
function cpdf_set_font_directories($pdfdoc, $pfmdir, $pfbdir) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  filename string
 * @desc   Sets fontname to filename translation map when using external fonts 
 */
function cpdf_set_font_map_file($pdfdoc, $filename) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  scale float
 * @desc   Sets horizontal scaling of text 
 */
function cpdf_set_horiz_scaling($pdfdoc, $scale) {}

/**
 * @return bool
 * @param  pdfptr int
 * @param  keywords string
 * @desc   Fills the keywords field of the info structure 
 */
function cpdf_set_keywords($pdfptr, $keywords) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  distance float
 * @desc   Sets distance between text lines 
 */
function cpdf_set_leading($pdfdoc, $distance) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  transition int
 * @param  duration float
 * @param  direction float
 * @param  orientation int
 * @param  inout int
 * @desc   Sets transition between pages 
 */
function cpdf_set_page_animation($pdfdoc, $transition, $duration, $direction, $orientation, $inout) {}

/**
 * @return bool
 * @param  pdfptr int
 * @param  subject string
 * @desc   Fills the subject field of the info structure 
 */
function cpdf_set_subject($pdfptr, $subject) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  matrix arry
 * @desc   Sets the text matrix 
 */
function cpdf_set_text_matrix($pdfdoc, $matrix) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  x float
 * @param  y float
 * @param  mode int[optional]
 * @desc   Sets the position of text for the next cpdf_show call 
 */
function cpdf_set_text_pos($pdfdoc, $x, $y, $mode = null) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  rendermode int
 * @desc   Determines how text is rendered 
 */
function cpdf_set_text_rendering($pdfdoc, $rendermode) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  value float
 * @desc   Sets the text rise 
 */
function cpdf_set_text_rise($pdfdoc, $value) {}

/**
 * @return bool
 * @param  pdfptr int
 * @param  title string
 * @desc   Fills the title field of the info structure 
 */
function cpdf_set_title($pdfptr, $title) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  preferences array
 * @desc   How to show the document in the viewer 
 */
function cpdf_set_viewer_preferences($pdfdoc, $preferences) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  space float
 * @desc   Sets spacing between words 
 */
function cpdf_set_word_spacing($pdfdoc, $space) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  white long
 * @param  black long
 * @desc   Sets dash pattern 
 */
function cpdf_setdash($pdfdoc, $white, $black) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  value float
 * @desc   Sets flatness 
 */
function cpdf_setflat($pdfdoc, $value) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  value float
 * @desc   Sets drawing and filling color to gray value 
 */
function cpdf_setgray($pdfdoc, $value) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  value float
 * @desc   Sets filling color to gray value 
 */
function cpdf_setgray_fill($pdfdoc, $value) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  value float
 * @desc   Sets drawing color to gray value 
 */
function cpdf_setgray_stroke($pdfdoc, $value) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  value int
 * @desc   Sets linecap parameter 
 */
function cpdf_setlinecap($pdfdoc, $value) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  value int
 * @desc   Sets linejoin parameter 
 */
function cpdf_setlinejoin($pdfdoc, $value) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  width float
 * @desc   Sets line width 
 */
function cpdf_setlinewidth($pdfdoc, $width) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  value float
 * @desc   Sets miter limit 
 */
function cpdf_setmiterlimit($pdfdoc, $value) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  red float
 * @param  green float
 * @param  blue float
 * @desc   Sets drawing and filling color to RGB color value 
 */
function cpdf_setrgbcolor($pdfdoc, $red, $green, $blue) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  red float
 * @param  green float
 * @param  blue float
 * @desc   Sets filling color to rgb color value 
 */
function cpdf_setrgbcolor_fill($pdfdoc, $red, $green, $blue) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  red float
 * @param  green float
 * @param  blue float
 * @desc   Sets drawing color to RGB color value 
 */
function cpdf_setrgbcolor_stroke($pdfdoc, $red, $green, $blue) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  text string
 * @desc   Output text at current position 
 */
function cpdf_show($pdfdoc, $text) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  text string
 * @param  x_koor float
 * @param  y_koor float
 * @param  mode int[optional]
 * @desc   Output text at position 
 */
function cpdf_show_xy($pdfdoc, $text, $x_koor, $y_koor, $mode = null) {}

/**
 * @return float
 * @param  pdfdoc int
 * @param  text string
 * @desc   Returns width of text in current font 
 */
function cpdf_stringwidth($pdfdoc, $text) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @desc   Draws line along path path 
 */
function cpdf_stroke($pdfdoc) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  text string
 * @param  x_koor float[optional]
 * @param  y_koor float
 * @param  mode int[optional]
 * @param  orientation float[optional]
 * @param  alignmode int[optional]
 * @desc   Outputs text 
 */
function cpdf_text($pdfdoc, $text, $x_koor = null, $y_koor, $mode = null, $orientation = null, $alignmode = null) {}

/**
 * @return bool
 * @param  pdfdoc int
 * @param  x float
 * @param  y float
 * @desc   Sets origin of coordinate system 
 */
function cpdf_translate($pdfdoc, $x, $y) {}

/**
 * @return string
 * @param  str string
 * @desc   Calculate the crc32 polynomial of a string 
 */
function crc32($str) {}

/**
 * @return string
 * @param  args string
 * @param  code string
 * @desc   Creates an anonymous function, and returns its name (funny, eh?) 
 */
function create_function($args, $code) {}

/**
 * @return string
 * @param  str string
 * @param  salt string[optional]
 * @desc   Encrypt a string 
 */
function crypt($str, $salt = null) {}

/**
 * @return bool
 * @param  c mixed
 * @desc   Checks for alphanumeric character(s) 
 */
function ctype_alnum($c) {}

/**
 * @return bool
 * @param  c mixed
 * @desc   Checks for alphabetic character(s) 
 */
function ctype_alpha($c) {}

/**
 * @return bool
 * @param  c mixed
 * @desc   Checks for control character(s) 
 */
function ctype_cntrl($c) {}

/**
 * @return bool
 * @param  c mixed
 * @desc   Checks for numeric character(s) 
 */
function ctype_digit($c) {}

/**
 * @return bool
 * @param  c mixed
 * @desc   Checks for any printable character(s) except space 
 */
function ctype_graph($c) {}

/**
 * @return bool
 * @param  c mixed
 * @desc   Checks for lowercase character(s)  
 */
function ctype_lower($c) {}

/**
 * @return bool
 * @param  c mixed
 * @desc   Checks for printable character(s) 
 */
function ctype_print($c) {}

/**
 * @return bool
 * @param  c mixed
 * @desc   Checks for any printable character which is not whitespace or an alphanumeric character 
 */
function ctype_punct($c) {}

/**
 * @return bool
 * @param  c mixed
 * @desc   Checks for whitespace character(s)
 */
function ctype_space($c) {}

/**
 * @return bool
 * @param  c mixed
 * @desc   Checks for uppercase character(s) 
 */
function ctype_upper($c) {}

/**
 * @return bool
 * @param  c mixed
 * @desc   Checks for character(s) representing a hexadecimal digit 
 */
function ctype_xdigit($c) {}

/**
 * @return void
 * @param  ch resource
 * @desc   Close a CURL session 
 */
function curl_close($ch) {}

/**
 * @return resource
 * @param  ch resource
 * @desc   Copy a cURL handle along with all of it's preferences 
 */
function curl_copy_handle($ch) {}

/**
 * @return int
 * @param  ch resource
 * @desc   Return an integer containing the last error number 
 */
function curl_errno($ch) {}

/**
 * @return string
 * @param  ch resource
 * @desc   Return a string contain the last error for the current session 
 */
function curl_error($ch) {}

/**
 * @return bool
 * @param  ch resource
 * @desc   Perform a CURL session 
 */
function curl_exec($ch) {}

/**
 * @return mixed
 * @param  ch resource
 * @param  opt int
 * @desc   Get information regarding a specific transfer 
 */
function curl_getinfo($ch, $opt) {}

/**
 * @return resource
 * @param  url string[optional]
 * @desc   Initialize a CURL session 
 */
function curl_init($url = null) {}

/**
 * @return int
 * @param  multi resource
 * @param  ch resource
 * @desc   Add a normal cURL handle to a cURL multi handle 
 */
function curl_multi_add_handle($multi, $ch) {}

/**
 * @return void
 * @param  mh resource
 * @desc   Close a set of cURL handles 
 */
function curl_multi_close($mh) {}

/**
 * @return int
 * @param  mh resource
 * @param  &still_running int
 * @desc   Run the sub-connections of the current cURL handle 
 */
function curl_multi_exec($mh, &$still_running) {}

/**
 * @return string
 * @param  ch resource
 * @desc   Return the content of a cURL handle if CURLOPT_RETURNTRANSFER is set 
 */
function curl_multi_getcontent($ch) {}

/**
 * @return array
 * @param  mh resource
 * @desc   Get information about the current transfers 
 */
function curl_multi_info_read($mh) {}

/**
 * @return resource
 * @desc   Returns a new cURL multi handle 
 */
function curl_multi_init() {}

/**
 * @return int
 * @param  mh resource
 * @param  ch resource
 * @desc   Remove a multi handle from a set of cURL handles 
 */
function curl_multi_remove_handle($mh, $ch) {}

/**
 * @return int
 * @param  mh resource
 * @param  timeout double
 * @desc   Get all the sockets associated with the cURL extension, which can then be "selected" 
 */
function curl_multi_select($mh, $timeout) {}

/**
 * @return bool
 * @param  ch resource
 * @param  option string
 * @param  value mixed
 * @desc   Set an option for a CURL transfer 
 */
function curl_setopt($ch, $option, $value) {}

/**
 * @return array
 * @param  version int[optional]
 * @desc   Return cURL version information. 
 */
function curl_version($version = null) {}

/**
 * @return mixed
 * @param  array_arg array
 * @desc   Return the element currently pointed to by the internal array pointer 
 */
function current($array_arg) {}

/**
 * @return string
 * @param  format string
 * @param  timestamp int[optional]
 * @desc   Format a local time/date 
 */
function date($format, $timestamp = null) {}

/**
 * @return mixed
 * @param  time mixed
 * @param  format int[optional]
 * @param  latitude float[optional]
 * @param  longitude float[optional]
 * @param  zenith float[optional]
 * @param  gmt_offset float[optional]
 * @desc   Returns time of sunrise for a given day & location 
 */
function date_sunrise($time, $format = null, $latitude = null, $longitude = null, $zenith = null, $gmt_offset = null) {}

/**
 * @return mixed
 * @param  time mixed
 * @param  format int[optional]
 * @param  latitude float[optional]
 * @param  longitude float[optional]
 * @param  zenith float[optional]
 * @param  gmt_offset float[optional]
 * @desc   Returns time of sunset for a given day & location 
 */
function date_sunset($time, $format = null, $latitude = null, $longitude = null, $zenith = null, $gmt_offset = null) {}

/**
 * @return void
 * @param  handle resource
 * @desc   Closes database 
 */
function dba_close($handle) {}

/**
 * @return bool
 * @param  key string
 * @param  handle resource
 * @desc   
 */
function dba_delete($key, $handle) {}

/**
 * @return bool
 * @param  key string
 * @param  handle resource
 * @desc   Checks, if the specified key exists 
 */
function dba_exists($key, $handle) {}

/**
 * @return string
 * @param  key string
 * @param  skip int[optional]
 * @param  handle resource
 * @desc   Fetches the data associated with key 
 */
function dba_fetch($key, $skip = null, $handle) {}

/**
 * @return string
 * @param  handle resource
 * @desc   Resets the internal key pointer and returns the first key 
 */
function dba_firstkey($handle) {}

/**
 * @return array
 * @param  full_info bool[optional]
 * @desc   List configured database handlers 
 */
function dba_handlers($full_info = null) {}

/**
 * @return bool
 * @param  key string
 * @param  value string
 * @param  handle resource
 * @desc   
 */
function dba_insert($key, $value, $handle) {}

/**
 * @return array|false
 * @param  key string
 * @desc   Splits an inifile key into an array of the form array(0=>group,1=>value_name) but returns false if input is false or null 
 */
function dba_key_split($key) {}

/**
 * @return array
 * @desc   List opened databases 
 */
function dba_list() {}

/**
 * @return string
 * @param  handle resource
 * @desc   Returns the next key 
 */
function dba_nextkey($handle) {}

/**
 * @return resource
 * @param  path string
 * @param  mode string
 * @param  handlername string[optional]
 * @vararg ... string
 * @desc   Opens path using the specified handler in mode
 */
function dba_open($path, $mode, $handlername = null) {}

/**
 * @return bool
 * @param  handle resource
 * @desc   Optimizes (e.g. clean up, vacuum) database 
 */
function dba_optimize($handle) {}

/**
 * @return resource
 * @param  path string
 * @param  mode string
 * @param  handlername string[optional]
 * @vararg ... string
 * @desc   Opens path using the specified handler in mode persistently 
 */
function dba_popen($path, $mode, $handlername = null) {}

/**
 * @return bool
 * @param  key string
 * @param  value string
 * @param  handle resource
 * @desc   
 */
function dba_replace($key, $value, $handle) {}

/**
 * @return bool
 * @param  handle resource
 * @desc   Synchronizes database 
 */
function dba_sync($handle) {}

/**
 * @return bool
 * @param  identifier int
 * @param  data array
 * @desc   Adds a record to the database 
 */
function dbase_add_record($identifier, $data) {}

/**
 * @return bool
 * @param  identifier int
 * @desc   Closes an open dBase-format database file 
 */
function dbase_close($identifier) {}

/**
 * @return bool
 * @param  filename string
 * @param  fields array
 * @desc   Creates a new dBase-format database file 
 */
function dbase_create($filename, $fields) {}

/**
 * @return bool
 * @param  identifier int
 * @param  record int
 * @desc   Marks a record to be deleted 
 */
function dbase_delete_record($identifier, $record) {}

/**
 * @return array
 * @param  database_handle int
 * @desc   
 */
function dbase_get_header_info($database_handle) {}

/**
 * @return array
 * @param  identifier int
 * @param  record int
 * @desc   Returns an array representing a record from the database 
 */
function dbase_get_record($identifier, $record) {}

/**
 * @return array
 * @param  identifier int
 * @param  record int
 * @desc   Returns an associative array representing a record from the database 
 */
function dbase_get_record_with_names($identifier, $record) {}

/**
 * @return int
 * @param  identifier int
 * @desc   Returns the number of fields (columns) in the database 
 */
function dbase_numfields($identifier) {}

/**
 * @return int
 * @param  identifier int
 * @desc   Returns the number of records in the database 
 */
function dbase_numrecords($identifier) {}

/**
 * @return int
 * @param  name string
 * @param  mode int
 * @desc   Opens a dBase-format database file 
 */
function dbase_open($name, $mode) {}

/**
 * @return bool
 * @param  identifier int
 * @desc   Packs the database (deletes records marked for deletion) 
 */
function dbase_pack($identifier) {}

/**
 * @return bool
 * @param  identifier int
 * @param  data array
 * @param  recnum int
 * @desc   Replaces a record to the database 
 */
function dbase_replace_record($identifier, $data, $recnum) {}

/**
 * @return int
 * @param  dbx_link dbx_link_object
 * @desc   
 */
function dbx_close($dbx_link) {}

/**
 * @return int
 * @param  row_x array
 * @param  row_y array
 * @param  columnname string
 * @param  flags int[optional]
 * @desc   Returns row_y[columnname] - row_x[columnname], converted to -1, 0 or 1 
 */
function dbx_compare($row_x, $row_y, $columnname, $flags = null) {}

/**
 * @return dbx_link_object
 * @param  module_name string
 * @param  host string
 * @param  db string
 * @param  username string
 * @param  password string
 * @param  persistent bool[optional]
 * @desc   Returns a dbx_link_object on success and returns 0 on failure 
 */
function dbx_connect($module_name, $host, $db, $username, $password, $persistent = null) {}

/**
 * @return string
 * @param  dbx_link dbx_link_object
 * @desc   
 */
function dbx_error($dbx_link) {}

/**
 * @return string
 * @param  dbx_link dbx_link_object
 * @param  sz string
 * @desc   
 */
function dbx_escape_string($dbx_link, $sz) {}

/**
 * @return dbx_row
 * @param  dbx_q dbx_query_object
 * @desc   Returns a row (index and assoc based on query) on success and returns 0 on failure or no more rows 
 */
function dbx_fetch_row($dbx_q) {}

/**
 * @return dbx_result_object
 * @param  dbx_link dbx_link_object
 * @param  sql_statement string
 * @param  flags int[optional]
 * @desc   Returns a dbx_link_object on success and returns 0 on failure 
 */
function dbx_query($dbx_link, $sql_statement, $flags = null) {}

/**
 * @return int
 * @param  dbx_result object
 * @param  compare_function_name string
 * @desc   Returns 0 on failure, 1 on success 
 */
function dbx_sort($dbx_result, $compare_function_name) {}

/**
 * @return string
 * @param  domain_name string
 * @param  msgid string
 * @param  category long
 * @desc   Return the translation of msgid for domain_name and category, or msgid unaltered if a translation does not exist 
 */
function dcgettext($domain_name, $msgid, $category) {}

/**
 * @return string
 * @param  domain string
 * @param  msgid1 string
 * @param  msgid2 string
 * @param  n int
 * @param  category int
 * @desc   Plural version of dcgettext() 
 */
function dcngettext ($domain, $msgid1, $msgid2, $n, $category) {}

/**
 * @return array
 * @desc   Return backtrace as array 
 */
function debug_backtrace() {}

/**
 * @return void
 * @desc   
 */
function debug_print_backtrace() {}

/**
 * @return void
 * @param  var mixed
 * @desc   Dumps a string representation of an internal zend value to output. 
 */
function debug_zval_dump($var) {}

/**
 * @return string
 * @param  decimal_number int
 * @desc   Returns a string containing a binary representation of the number 
 */
function decbin($decimal_number) {}

/**
 * @return string
 * @param  decimal_number int
 * @desc   Returns a string containing a hexadecimal representation of the given number 
 */
function dechex($decimal_number) {}

/**
 * @return string
 * @param  decimal_number int
 * @desc   Returns a string containing an octal representation of the given number 
 */
function decoct($decimal_number) {}

/**
 * @return bool
 * @param  constant_name string
 * @param  value mixed
 * @param  case_sensitive=true
 * @desc   Define a new constant 
 */
function define($constant_name, $value, $case_sensitive=true) {}

/**
 * @return void
 * @desc   Initializes all syslog-related variables 
 */
function define_syslog_variables() {}

/**
 * @return bool
 * @param  constant_name string
 * @desc   Check whether a constant exists 
 */
function defined($constant_name) {}

/**
 * @return float
 * @param  number float
 * @desc   Converts the number in degrees to the radian equivalent 
 */
function deg2rad($number) {}

/**
 * @return string
 * @param  domain_name string
 * @param  msgid string
 * @desc   Return the translation of msgid for domain_name, or msgid unaltered if a translation does not exist 
 */
function dgettext($domain_name, $msgid) {}

/**
 * @return void
 * @param  fd resource
 * @desc   Close the file descriptor given by fd 
 */
function dio_close($fd) {}

/**
 * @return mixed
 * @param  fd resource
 * @param  cmd int
 * @param  arg mixed
 * @desc   Perform a c library fcntl on fd 
 */
function dio_fcntl($fd, $cmd, $arg) {}

/**
 * @return resource
 * @param  filename string
 * @param  flags int
 * @param  mode int
 * @desc   Open a new filename with specified permissions of flags and creation permissions of mode 
 */
function dio_open($filename, $flags, $mode) {}

/**
 * @return string
 * @param  fd resource
 * @param  n int
 * @desc   Read n bytes from fd and return them, if n is not specified, read 1k 
 */
function dio_read($fd, $n) {}

/**
 * @return int
 * @param  fd resource
 * @param  pos int
 * @param  whence int
 * @desc   Seek to pos on fd from whence 
 */
function dio_seek($fd, $pos, $whence) {}

/**
 * @return array
 * @param  fd resource
 * @desc   Get stat information about the file descriptor fd 
 */
function dio_stat($fd) {}

/**
 * @return mixed
 * @param  fd resource
 * @param  args array
 * @desc   Perform a c library tcsetattr on fd 
 */
function dio_tcsetattr($fd, $args) {}

/**
 * @return bool
 * @param  fd resource
 * @param  offset int
 * @desc   Truncate file descriptor fd to offset bytes 
 */
function dio_truncate($fd, $offset) {}

/**
 * @return int
 * @param  fd resource
 * @param  data string
 * @param  len int
 * @desc   Write data to fd with optional truncation at length 
 */
function dio_write($fd, $data, $len) {}

/**
 * @return object
 * @param  directory string
 * @param  context resource
 * @desc   Directory class with properties, handle and class and methods read, rewind and close 
 */
function dir($directory, $context) {}

/**
 * @return string
 * @param  path string
 * @desc   Returns the directory name component of the path 
 */
function dirname($path) {}

/**
 * @return float
 * @param  path string
 * @desc   Get free disk space for filesystem that path is on 
 */
function disk_free_space($path) {}

/**
 * @return float
 * @param  path string
 * @desc   Get total disk space for filesystem that path is on 
 */
function disk_total_space($path) {}

/**
 * @return float
 * @param  path string
 * @desc   Get free disk space for filesystem that path is on 
 */
function diskfreespace($path) {}

/**
 * @return int
 * @param  extension_filename string
 * @desc   Load a PHP extension at runtime 
 */
function dl($extension_filename) {}

/**
 * @return string
 * @param  domain string
 * @param  msgid1 string
 * @param  msgid2 string
 * @param  count int
 * @desc   Plural version of dgettext() 
 */
function dngettext ($domain, $msgid1, $msgid2, $count) {}

/**
 * @return int
 * @param  host string
 * @param  type string[optional]
 * @desc   Check DNS records corresponding to a given Internet host name or IP address 
 */
function dns_check_record($host, $type = null) {}

/**
 * @return bool
 * @param  hostname string
 * @param  mxhosts array
 * @param  weight array[optional]
 * @desc   Get MX records corresponding to a given Internet host name 
 */
function dns_get_mx($hostname, $mxhosts, $weight = null) {}

/**
 * @return array|false
 * @param  hostname string
 * @param  type int[optional]
 * @param  authns array
 * @param  addtl array
 * @desc   Get any Resource Record corresponding to a given Internet host name 
 */
function dns_get_record($hostname, $type = null, $authns, $addtl) {}

/**
 * @return boolean
 * @desc   
 */
function dom_attr_is_id() {}

/**
 * @return void
 * @param  arg string
 * @desc   
 */
function dom_characterdata_append_data($arg) {}

/**
 * @return void
 * @param  offset long
 * @param  count long
 * @desc   
 */
function dom_characterdata_delete_data($offset, $count) {}

/**
 * @return void
 * @param  offset long
 * @param  arg string
 * @desc   
 */
function dom_characterdata_insert_data($offset, $arg) {}

/**
 * @return void
 * @param  offset long
 * @param  count long
 * @param  arg string
 * @desc   
 */
function dom_characterdata_replace_data($offset, $count, $arg) {}

/**
 * @return string
 * @param  offset long
 * @param  count long
 * @desc   
 */
function dom_characterdata_substring_data($offset, $count) {}

/**
 * @return DOMNode
 * @param  source DOMNode
 * @desc   
 */
function dom_document_adopt_node($source) {}

/**
 * @return DOMAttr
 * @param  name string
 * @desc   
 */
function dom_document_create_attribute($name) {}

/**
 * @return DOMAttr
 * @param  namespaceURI string
 * @param  qualifiedName string
 * @desc   
 */
function dom_document_create_attribute_ns($namespaceURI, $qualifiedName) {}

/**
 * @return DOMCdataSection
 * @param  data string
 * @desc   
 */
function dom_document_create_cdatasection($data) {}

/**
 * @return DOMComment
 * @param  data string
 * @desc   
 */
function dom_document_create_comment($data) {}

/**
 * @return DOMDocumentFragment
 * @desc   
 */
function dom_document_create_document_fragment() {}

/**
 * @return DOMElement
 * @param  tagName string
 * @param  value string[optional]
 * @desc   
 */
function dom_document_create_element($tagName, $value = null) {}

/**
 * @return DOMElement
 * @param  namespaceURI string
 * @param  qualifiedName string
 * @param  value string[optional]
 * @desc   
 */
function dom_document_create_element_ns($namespaceURI, $qualifiedName, $value = null) {}

/**
 * @return DOMEntityReference
 * @param  name string
 * @desc   
 */
function dom_document_create_entity_reference($name) {}

/**
 * @return DOMProcessingInstruction
 * @param  target string
 * @param  data string
 * @desc   
 */
function dom_document_create_processing_instruction($target, $data) {}

/**
 * @return DOMText
 * @param  data string
 * @desc   
 */
function dom_document_create_text_node($data) {}

/**
 * @return DOMElement
 * @param  elementId string
 * @desc   
 */
function dom_document_get_element_by_id($elementId) {}

/**
 * @return DOMNodeList
 * @param  tagname string
 * @desc   
 */
function dom_document_get_elements_by_tag_name($tagname) {}

/**
 * @return DOMNodeList
 * @param  namespaceURI string
 * @param  localName string
 * @desc   
 */
function dom_document_get_elements_by_tag_name_ns($namespaceURI, $localName) {}

/**
 * @return DOMNode
 * @param  importedNode DOMNode
 * @param  deep boolean
 * @desc   
 */
function dom_document_import_node($importedNode, $deep) {}

/**
 * @return boolean|DOMNode
 * @param  source string
 * @desc   
 */
function dom_document_load($source) {}

/**
 * @return boolean|DOMNode
 * @param  source string
 * @desc   
 */
function dom_document_load_html($source) {}

/**
 * @return boolean|DOMNode
 * @param  source string
 * @desc   
 */
function dom_document_load_html_file($source) {}

/**
 * @return boolean|DOMNode
 * @param  source string
 * @desc   
 */
function dom_document_loadxml($source) {}

/**
 * @return void
 * @desc   
 */
function dom_document_normalize_document() {}

/**
 * @return boolean
 * @param  filename string
 * @desc   
 */
function dom_document_relaxNG_validate_file($filename) {}

/**
 * @return boolean
 * @param  source string
 * @desc   
 */
function dom_document_relaxNG_validate_xml($source) {}

/**
 * @return DOMNode
 * @param  n node
 * @param  namespaceURI string
 * @param  qualifiedName string
 * @desc   
 */
function dom_document_rename_node($n, $namespaceURI, $qualifiedName) {}

/**
 * @return long
 * @param  file string
 * @desc   
 */
function dom_document_save($file) {}

/**
 * @return string
 * @desc   
 */
function dom_document_save_html() {}

/**
 * @return long
 * @param  file string
 * @desc   
 */
function dom_document_save_html_file($file) {}

/**
 * @return string
 * @param  n node[optional]
 * @desc   
 */
function dom_document_savexml($n = null) {}

/**
 * @return boolean
 * @param  source string
 * @desc   
 */
function dom_document_schema_validate($source) {}

/**
 * @return boolean
 * @param  filename string
 * @desc   
 */
function dom_document_schema_validate_file($filename) {}

/**
 * @return boolean
 * @desc   
 */
function dom_document_validate() {}

/**
 * @return int
 * @desc   Substitutues xincludes in a DomDocument 
 */
function dom_document_xinclude() {}

/**
 * @return boolean
 * @param  name string
 * @param  value domuserdata
 * @desc   
 */
function dom_domconfiguration_can_set_parameter($name, $value) {}

/**
 * @return domdomuserdata
 * @param  name string
 * @desc   
 */
function dom_domconfiguration_get_parameter($name) {}

/**
 * @return dom_void
 * @param  name string
 * @param  value domuserdata
 * @desc   
 */
function dom_domconfiguration_set_parameter($name, $value) {}

/**
 * @return dom_boolean
 * @param  error domerror
 * @desc   
 */
function dom_domerrorhandler_handle_error($error) {}

/**
 * @return DOMDocument
 * @param  namespaceURI string
 * @param  qualifiedName string
 * @param  doctype DOMDocumentType
 * @desc   
 */
function dom_domimplementation_create_document($namespaceURI, $qualifiedName, $doctype) {}

/**
 * @return DOMDocumentType
 * @param  qualifiedName string
 * @param  publicId string
 * @param  systemId string
 * @desc   
 */
function dom_domimplementation_create_document_type($qualifiedName, $publicId, $systemId) {}

/**
 * @return DOMNode
 * @param  feature string
 * @param  version string
 * @desc   
 */
function dom_domimplementation_get_feature($feature, $version) {}

/**
 * @return boolean
 * @param  feature string
 * @param  version string
 * @desc   
 */
function dom_domimplementation_has_feature($feature, $version) {}

/**
 * @return domdomimplementation
 * @param  long_index unsigned
 * @desc   
 */
function dom_domimplementationlist_item($long_index) {}

/**
 * @return domdomimplementation
 * @param  features string
 * @desc   
 */
function dom_domimplementationsource_get_domimplementation($features) {}

/**
 * @return domimplementationlist
 * @param  features string
 * @desc   
 */
function dom_domimplementationsource_get_domimplementations($features) {}

/**
 * @return domstring
 * @param  long_index unsigned
 * @desc   
 */
function dom_domstringlist_item($long_index) {}

/**
 * @return string
 * @param  name string
 * @desc   
 */
function dom_element_get_attribute($name) {}

/**
 * @return DOMAttr
 * @param  name string
 * @desc   
 */
function dom_element_get_attribute_node($name) {}

/**
 * @return DOMAttr
 * @param  namespaceURI string
 * @param  localName string
 * @desc   
 */
function dom_element_get_attribute_node_ns($namespaceURI, $localName) {}

/**
 * @return string
 * @param  namespaceURI string
 * @param  localName string
 * @desc   
 */
function dom_element_get_attribute_ns($namespaceURI, $localName) {}

/**
 * @return DOMNodeList
 * @param  name string
 * @desc   
 */
function dom_element_get_elements_by_tag_name($name) {}

/**
 * @return DOMNodeList
 * @param  namespaceURI string
 * @param  localName string
 * @desc   
 */
function dom_element_get_elements_by_tag_name_ns($namespaceURI, $localName) {}

/**
 * @return boolean
 * @param  name string
 * @desc   
 */
function dom_element_has_attribute($name) {}

/**
 * @return boolean
 * @param  namespaceURI string
 * @param  localName string
 * @desc   
 */
function dom_element_has_attribute_ns($namespaceURI, $localName) {}

/**
 * @return void
 * @param  name string
 * @desc   
 */
function dom_element_remove_attribute($name) {}

/**
 * @return DOMAttr
 * @param  oldAttr DOMAttr
 * @desc   
 */
function dom_element_remove_attribute_node($oldAttr) {}

/**
 * @return void
 * @param  namespaceURI string
 * @param  localName string
 * @desc   
 */
function dom_element_remove_attribute_ns($namespaceURI, $localName) {}

/**
 * @return void
 * @param  name string
 * @param  value string
 * @desc   
 */
function dom_element_set_attribute($name, $value) {}

/**
 * @return DOMAttr
 * @param  newAttr DOMAttr
 * @desc   
 */
function dom_element_set_attribute_node($newAttr) {}

/**
 * @return DOMAttr
 * @param  newAttr DOMAttr
 * @desc   
 */
function dom_element_set_attribute_node_ns($newAttr) {}

/**
 * @return void
 * @param  namespaceURI string
 * @param  qualifiedName string
 * @param  value string
 * @desc   
 */
function dom_element_set_attribute_ns($namespaceURI, $qualifiedName, $value) {}

/**
 * @return void
 * @param  name string
 * @param  isId boolean
 * @desc   
 */
function dom_element_set_id_attribute($name, $isId) {}

/**
 * @return void
 * @param  idAttr attr
 * @param  isId boolean
 * @desc   
 */
function dom_element_set_id_attribute_node($idAttr, $isId) {}

/**
 * @return void
 * @param  namespaceURI string
 * @param  localName string
 * @param  isId boolean
 * @desc   
 */
function dom_element_set_id_attribute_ns($namespaceURI, $localName, $isId) {}

/**
 * @return somNode
 * @param  node sxeobject
 * @desc   Get a simplexml_element object from dom to allow for processing 
 */
function dom_import_simplexml($node) {}

/**
 * @return DOMNode
 * @param  name string
 * @desc   
 */
function dom_namednodemap_get_named_item($name) {}

/**
 * @return DOMNode
 * @param  namespaceURI string
 * @param  localName string
 * @desc   
 */
function dom_namednodemap_get_named_item_ns($namespaceURI, $localName) {}

/**
 * @return DOMNode
 * @param  index int
 * @desc   
 */
function dom_namednodemap_item($index) {}

/**
 * @return DOMNode
 * @param  name string
 * @desc   
 */
function dom_namednodemap_remove_named_item($name) {}

/**
 * @return DOMNode
 * @param  namespaceURI string
 * @param  localName string
 * @desc   
 */
function dom_namednodemap_remove_named_item_ns($namespaceURI, $localName) {}

/**
 * @return DOMNode
 * @param  arg DOMNode
 * @desc   
 */
function dom_namednodemap_set_named_item($arg) {}

/**
 * @return DOMNode
 * @param  arg DOMNode
 * @desc   
 */
function dom_namednodemap_set_named_item_ns($arg) {}

/**
 * @return string
 * @param  index int
 * @desc   
 */
function dom_namelist_get_name($index) {}

/**
 * @return string
 * @param  index int
 * @desc   
 */
function dom_namelist_get_namespace_uri($index) {}

/**
 * @return DomNode
 * @param  newChild DomNode
 * @desc   
 */
function dom_node_append_child($newChild) {}

/**
 * @return DomNode
 * @param  deep boolean
 * @desc   
 */
function dom_node_clone_node($deep) {}

/**
 * @return short
 * @param  other DomNode
 * @desc   
 */
function dom_node_compare_document_position($other) {}

/**
 * @return DomNode
 * @param  feature string
 * @param  version string
 * @desc   
 */
function dom_node_get_feature($feature, $version) {}

/**
 * @return DomUserData
 * @param  key string
 * @desc   
 */
function dom_node_get_user_data($key) {}

/**
 * @return boolean
 * @desc   
 */
function dom_node_has_attributes() {}

/**
 * @return boolean
 * @desc   
 */
function dom_node_has_child_nodes() {}

/**
 * @return domnode
 * @param  newChild DomNode
 * @param  refChild DomNode
 * @desc   
 */
function dom_node_insert_before($newChild, $refChild) {}

/**
 * @return boolean
 * @param  namespaceURI string
 * @desc   
 */
function dom_node_is_default_namespace($namespaceURI) {}

/**
 * @return boolean
 * @param  arg DomNode
 * @desc   
 */
function dom_node_is_equal_node($arg) {}

/**
 * @return boolean
 * @param  other DomNode
 * @desc   
 */
function dom_node_is_same_node($other) {}

/**
 * @return boolean
 * @param  feature string
 * @param  version string
 * @desc   
 */
function dom_node_is_supported($feature, $version) {}

/**
 * @return string
 * @param  prefix string
 * @desc   
 */
function dom_node_lookup_namespace_uri($prefix) {}

/**
 * @return string
 * @param  namespaceURI string
 * @desc   
 */
function dom_node_lookup_prefix($namespaceURI) {}

/**
 * @return void
 * @desc   
 */
function dom_node_normalize() {}

/**
 * @return DomNode
 * @param  oldChild DomNode
 * @desc   
 */
function dom_node_remove_child($oldChild) {}

/**
 * @return DomNode
 * @param  newChild DomNode
 * @param  oldChild DomNode
 * @desc   
 */
function dom_node_replace_child($newChild, $oldChild) {}

/**
 * @return DomUserData
 * @param  key string
 * @param  data DomUserData
 * @param  handler userdatahandler
 * @desc   
 */
function dom_node_set_user_data($key, $data, $handler) {}

/**
 * @return DOMNode
 * @param  index int
 * @desc   
 */
function dom_nodelist_item($index) {}

/**
 * @return int
 * @param  offset32 int
 * @desc   
 */
function dom_string_extend_find_offset16($offset32) {}

/**
 * @return int
 * @param  offset16 int
 * @desc   
 */
function dom_string_extend_find_offset32($offset16) {}

/**
 * @return boolean
 * @desc   
 */
function dom_text_is_whitespace_in_element_content() {}

/**
 * @return DOMText
 * @param  content string
 * @desc   
 */
function dom_text_replace_whole_text($content) {}

/**
 * @return DOMText
 * @param  offset int
 * @desc   
 */
function dom_text_split_text($offset) {}

/**
 * @return dom_void
 * @param  short_operation unsigned
 * @param  key string
 * @param  data domobject
 * @param  src node
 * @param  dst node
 * @desc   
 */
function dom_userdatahandler_handle($short_operation, $key, $data, $src, $dst) {}

/**
 * @return DOMNodeList
 * @param  expr string
 * @param  context DOMNode[optional]
 * @desc   
 */
function dom_xpath_query($expr, $context = null) {}

/**
 * @return boolean
 * @param  prefix string
 * @param  uri string
 * @desc   
 */
function dom_xpath_register_ns($prefix, $uri) {}

/**
 * @return float
 * @param  var mixed
 * @desc   Get the float value of a variable 
 */
function doubleval($var) {}

/**
 * @return array
 * @param  arr array
 * @desc   Return the currently pointed key..value pair in the passed array, and advance the pointer to the next element 
 */
function each($arr) {}

/**
 * @return int
 * @param  year int[optional]
 * @desc   Return the timestamp of midnight on Easter of a given year (defaults to current year) 
 */
function easter_date($year = null) {}

/**
 * @return int
 * @param  year int[optional]
 * @param  method int[optional]
 * @desc   Return the number of days after March 21 that Easter falls on for a given year (defaults to current year) 
 */
function easter_days($year = null, $method = null) {}

/**
 * @return mixed
 * @param  array_arg array
 * @desc   Advances array argument's internal pointer to the last element and return it 
 */
function end($array_arg) {}

/**
 * @return int
 * @param  pattern string
 * @param  string string
 * @param  registers array[optional]
 * @desc   Regular expression match 
 */
function ereg($pattern, $string, $registers = null) {}

/**
 * @return string
 * @param  pattern string
 * @param  replacement string
 * @param  string string
 * @desc   Replace regular expression 
 */
function ereg_replace($pattern, $replacement, $string) {}

/**
 * @return int
 * @param  pattern string
 * @param  string string
 * @param  registers array[optional]
 * @desc   Case-insensitive regular expression match 
 */
function eregi($pattern, $string, $registers = null) {}

/**
 * @return string
 * @param  pattern string
 * @param  replacement string
 * @param  string string
 * @desc   Case insensitive replace regular expression 
 */
function eregi_replace($pattern, $replacement, $string) {}

/**
 * @return bool
 * @param  message string
 * @param  message_type int[optional]
 * @param  destination string[optional]
 * @param  extra_headers string[optional]
 * @desc   Send an error message somewhere 
 */
function error_log($message, $message_type = null, $destination = null, $extra_headers = null) {}

/**
 * @return int
 * @param  new_error_level int[optional]
 * @desc   Return the current error_reporting level, and if an argument was passed - change to the new level 
 */
function error_reporting($new_error_level = null) {}

/**
 * @return string
 * @param  arg string
 * @desc   Quote and escape an argument for use in a shell command 
 */
function escapeshellarg($arg) {}

/**
 * @return string
 * @param  command string
 * @desc   Escape shell metacharacters 
 */
function escapeshellcmd($command) {}

/**
 * @return string
 * @param  command string
 * @param  &output array[optional]
 * @param  &return_value int[optional]
 * @desc   Execute an external program 
 */
function exec($command, &$output, &$return_value) {}

/**
 * @return int
 * @param  imagefile string
 * @desc   Get the type of an image 
 */
function exif_imagetype($imagefile) {}

/**
 * @return array
 * @param  filename string
 * @param  sections_needed[optional]
 * @param  sub_arrays[optional]
 * @param  read_thumbnail
 * @desc   Reads header data from the JPEG/TIFF image filename and optionally reads the internal thumbnails 
 */
function exif_read_data($filename, $sections_needed = null, $sub_arrays = null, $read_thumbnail) {}

/**
 * @return string
 * @param  index
 * @desc   Get headername for index or false if not defined 
 */
function exif_tagname($index) {}

/**
 * @return string
 * @param  filename string
 * @param  &width[optional]
 * @param  &height
 * @param  &imagetype[optional]
 * @desc   Reads the embedded thumbnail 
 */
function exif_thumbnail($filename, &$width, &$height, &$imagetype) {}

/**
 * @return float
 * @param  number float
 * @desc   Returns e raised to the power of the number 
 */
function exp($number) {}

/**
 * @return array
 * @param  separator string
 * @param  str string
 * @param  limit int[optional]
 * @desc   Splits a string on string separator and return array of components 
 */
function explode($separator, $str, $limit = null) {}

/**
 * @return float
 * @param  number float
 * @desc   Returns exp(number) - 1, computed in a way that accurate even when the value of number is close to zero 
 */
function expm1($number) {}

/**
 * @return bool
 * @param  extension_name string
 * @desc   Returns true if the named extension is loaded 
 */
function extension_loaded($extension_name) {}

/**
 * @return int
 * @param  var_array array
 * @param  extract_type int[optional]
 * @param  prefix string[optional]
 * @desc   Imports variables into symbol table from an array 
 */
function extract($var_array, $extract_type = null, $prefix = null) {}

/**
 * @return int
 * @param  addr string
 * @desc   Calculate EZMLM list hash value. 
 */
function ezmlm_hash($addr) {}

/**
 * @return bool
 * @param  id resource
 * @param  monitor_id resource
 * @desc   Terminate monitoring 
 */
function fam_cancel_monitor($id, $monitor_id) {}

/**
 * @return void
 * @param  id resource
 * @desc   Close FAM connection 
 */
function fam_close($id) {}

/**
 * @return resource
 * @param  id resource
 * @param  dirname string
 * @param  depth int
 * @param  mask string
 * @desc   Monitor a collection of files in a directory for changes 
 */
function fam_monitor_collection($id, $dirname, $depth, $mask) {}

/**
 * @return resource
 * @param  id resource
 * @param  dirname string
 * @desc   Monitor a directory for changes 
 */
function fam_monitor_directory($id, $dirname) {}

/**
 * @return resource
 * @param  id resource
 * @param  filename string
 * @desc   Monitor a regular file for changes 
 */
function fam_monitor_file($id, $filename) {}

/**
 * @return array
 * @param  id resource
 * @desc   Get next pending FAM event 
 */
function fam_next_event($id) {}

/**
 * @return resource
 * @param  appname string[optional]
 * @desc   Open FAM connection 
 */
function fam_open($appname = null) {}

/**
 * @return int
 * @param  id resource
 * @desc   Check for pending FAM events 
 */
function fam_pending($id) {}

/**
 * @return bool
 * @param  id resource
 * @param  monitor_id resource
 * @desc   Resume suspended monitoring 
 */
function fam_resume_monitor($id, $monitor_id) {}

/**
 * @return bool
 * @param  id resource
 * @param  monitor_id resource
 * @desc   Temporary suspend monitoring 
 */
function fam_suspend_monitor($id, $monitor_id) {}

/**
 * @return bool
 * @param  service_handle resource
 * @param  user_name string
 * @param  password string
 * @param  first_name string[optional]
 * @param  middle_name string[optional]
 * @param  last_name string[optional]
 * @desc   Add a user to security database 
 */
function fbird_add_user($service_handle, $user_name, $password, $first_name = null, $middle_name = null, $last_name = null) {}

/**
 * @return int
 * @param  link_identifier resource[optional]
 * @desc   Returns the number of rows affected by the previous INSERT, UPDATE or DELETE statement 
 */
function fbird_affected_rows($link_identifier = null) {}

/**
 * @return mixed
 * @param  service_handle resource
 * @param  source_db string
 * @param  dest_file string
 * @param  options int[optional]
 * @param  verbose bool[optional]
 * @desc   Initiates a backup task in the service manager and returns immediately 
 */
function fbird_backup($service_handle, $source_db, $dest_file, $options = null, $verbose = null) {}

/**
 * @return bool
 * @param  blob_handle resource
 * @param  data string
 * @desc   Add data into created blob 
 */
function fbird_blob_add($blob_handle, $data) {}

/**
 * @return bool
 * @param  blob_handle resource
 * @desc   Cancel creating blob 
 */
function fbird_blob_cancel($blob_handle) {}

/**
 * @return string
 * @param  blob_handle resource
 * @desc   Close blob 
 */
function fbird_blob_close($blob_handle) {}

/**
 * @return resource
 * @param  link_identifier resource[optional]
 * @desc   Create blob for adding data 
 */
function fbird_blob_create($link_identifier = null) {}

/**
 * @return bool
 * @param  link_identifier resource[optional]
 * @param  blob_id string
 * @desc   Output blob contents to browser 
 */
function fbird_blob_echo($link_identifier = null, $blob_id) {}

/**
 * @return string
 * @param  blob_handle resource
 * @param  len int
 * @desc   Get len bytes data from open blob 
 */
function fbird_blob_get($blob_handle, $len) {}

/**
 * @return string
 * @param  link_identifier resource[optional]
 * @param  file resource
 * @desc   Create blob, copy file in it, and close it 
 */
function fbird_blob_import($link_identifier = null, $file) {}

/**
 * @return array
 * @param  link_identifier resource[optional]
 * @param  blob_id string
 * @desc   Return blob length and other useful info 
 */
function fbird_blob_info($link_identifier = null, $blob_id) {}

/**
 * @return resource
 * @param  link_identifier resource[optional]
 * @param  blob_id string
 * @desc   Open blob for retrieving data parts 
 */
function fbird_blob_open($link_identifier = null, $blob_id) {}

/**
 * @return bool
 * @param  link_identifier resource[optional]
 * @desc   Close an InterBase connection 
 */
function fbird_close($link_identifier = null) {}

/**
 * @return bool
 * @param  link_identifier resource
 * @desc   Commit transaction 
 */
function fbird_commit($link_identifier) {}

/**
 * @return bool
 * @param  link_identifier resource
 * @desc   Commit transaction and retain the transaction context 
 */
function fbird_commit_ret($link_identifier) {}

/**
 * @return resource
 * @param  database string
 * @param  username string[optional]
 * @param  password string[optional]
 * @param  charset string[optional]
 * @param  buffers int[optional]
 * @param  dialect int[optional]
 * @param  role string[optional]
 * @desc   Open a connection to an InterBase database 
 */
function fbird_connect($database, $username = null, $password = null, $charset = null, $buffers = null, $dialect = null, $role = null) {}

/**
 * @return string
 * @param  service_handle resource
 * @param  db string
 * @param  action int
 * @param  argument int[optional]
 * @desc   Request statistics about a database 
 */
function fbird_db_info($service_handle, $db, $action, $argument = null) {}

/**
 * @return bool
 * @param  service_handle resource
 * @param  user_name string
 * @param  password string
 * @param  first_name string[optional]
 * @param  middle_name string[optional]
 * @param  last_name string[optional]
 * @desc   Delete a user from security database 
 */
function fbird_delete_user($service_handle, $user_name, $password, $first_name = null, $middle_name = null, $last_name = null) {}

/**
 * @return bool
 * @param  link_identifier resource[optional]
 * @desc   Drop an InterBase database 
 */
function fbird_drop_db($link_identifier = null) {}

/**
 * @return int
 * @desc   Return error code 
 */
function fbird_errcode() {}

/**
 * @return string
 * @desc   Return error message 
 */
function fbird_errmsg() {}

/**
 * @return mixed
 * @param  query resource
 * @param  bind_arg mixed[optional]
 * @param  bind_arg mixed[optional]
 * @vararg ...
 * @desc   Execute a previously prepared query 
 */
function fbird_execute($query, $bind_arg = null, $bind_arg = null) {}

/**
 * @return array
 * @param  result resource
 * @param  fetch_flags int[optional]
 * @desc   Fetch a row  from the results of a query 
 */
function fbird_fetch_assoc($result, $fetch_flags = null) {}

/**
 * @return object
 * @param  result resource
 * @param  fetch_flags int[optional]
 * @desc   Fetch a object from the results of a query 
 */
function fbird_fetch_object($result, $fetch_flags = null) {}

/**
 * @return array
 * @param  result resource
 * @param  fetch_flags int[optional]
 * @desc   Fetch a row  from the results of a query 
 */
function fbird_fetch_row($result, $fetch_flags = null) {}

/**
 * @return array
 * @param  query_result resource
 * @param  field_number int
 * @desc   Get information about a field 
 */
function fbird_field_info($query_result, $field_number) {}

/**
 * @return bool
 * @param  event resource
 * @desc   Frees the event handler set by ibase_set_event_handler() 
 */
function fbird_free_event_handler($event) {}

/**
 * @return bool
 * @param  query resource
 * @desc   Free memory used by a query 
 */
function fbird_free_query($query) {}

/**
 * @return bool
 * @param  result resource
 * @desc   Free the memory used by a result 
 */
function fbird_free_result($result) {}

/**
 * @return int
 * @param  generator string
 * @param  increment int[optional]
 * @param  link_identifier resource[optional]
 * @desc   Increments the named generator and returns its new value 
 */
function fbird_gen_id($generator, $increment = null, $link_identifier = null) {}

/**
 * @return bool
 * @param  service_handle resource
 * @param  db string
 * @param  action int
 * @param  argument int[optional]
 * @desc   Execute a maintenance command on the database server 
 */
function fbird_maintain_db($service_handle, $db, $action, $argument = null) {}

/**
 * @return bool
 * @param  service_handle resource
 * @param  user_name string
 * @param  password string
 * @param  first_name string[optional]
 * @param  middle_name string[optional]
 * @param  last_name string[optional]
 * @desc   Modify a user in security database 
 */
function fbird_modify_user($service_handle, $user_name, $password, $first_name = null, $middle_name = null, $last_name = null) {}

/**
 * @return bool
 * @param  result resource
 * @param  name string
 * @desc   Assign a name to a result for use with ... WHERE CURRENT OF <name> statements 
 */
function fbird_name_result($result, $name) {}

/**
 * @return int
 * @param  query_result resource
 * @desc   Get the number of fields in result 
 */
function fbird_num_fields($query_result) {}

/**
 * @return int
 * @param  query resource
 * @desc   Get the number of params in a prepared query 
 */
function fbird_num_params($query) {}

/**
 * @return int
 * @param  result_identifier resource
 * @desc   Return the number of rows that are available in a result 
 */
function fbird_num_rows($result_identifier) {}

/**
 * @return array
 * @param  query resource
 * @param  field_number int
 * @desc   Get information about a parameter 
 */
function fbird_param_info($query, $field_number) {}

/**
 * @return resource
 * @param  database string
 * @param  username string[optional]
 * @param  password string[optional]
 * @param  charset string[optional]
 * @param  buffers int[optional]
 * @param  dialect int[optional]
 * @param  role string[optional]
 * @desc   Open a persistent connection to an InterBase database 
 */
function fbird_pconnect($database, $username = null, $password = null, $charset = null, $buffers = null, $dialect = null, $role = null) {}

/**
 * @return resource
 * @param  link_identifier resource[optional]
 * @param  query string
 * @desc   Prepare a query for later execution 
 */
function fbird_prepare($link_identifier = null, $query) {}

/**
 * @return mixed
 * @param  link_identifier resource[optional]
 * @param  link_identifier resource[optional]
 * @param  query string
 * @param  bind_arg mixed[optional]
 * @param  bind_arg mixed[optional]
 * @vararg ...
 * @desc   Execute a query 
 */
function fbird_query($link_identifier = null, $link_identifier = null, $query, $bind_arg = null, $bind_arg = null) {}

/**
 * @return mixed
 * @param  service_handle resource
 * @param  source_file string
 * @param  dest_db string
 * @param  options int[optional]
 * @param  verbose bool[optional]
 * @desc   Initiates a restore task in the service manager and returns immediately 
 */
function fbird_restore($service_handle, $source_file, $dest_db, $options = null, $verbose = null) {}

/**
 * @return bool
 * @param  link_identifier resource
 * @desc   Rollback transaction 
 */
function fbird_rollback($link_identifier) {}

/**
 * @return bool
 * @param  link_identifier resource
 * @desc   Rollback transaction and retain the transaction context 
 */
function fbird_rollback_ret($link_identifier) {}

/**
 * @return string
 * @param  service_handle resource
 * @param  action int
 * @desc   Request information about a database server 
 */
function fbird_server_info($service_handle, $action) {}

/**
 * @return resource
 * @param  host string
 * @param  dba_username string
 * @param  dba_password string
 * @desc   Connect to the service manager 
 */
function fbird_service_attach($host, $dba_username, $dba_password) {}

/**
 * @return bool
 * @param  service_handle resource
 * @desc   Disconnect from the service manager 
 */
function fbird_service_detach($service_handle) {}

/**
 * @return resource
 * @param  link_identifier resource[optional]
 * @param  handler callback
 * @param  event string
 * @param  event string[optional]
 * @vararg ...
 * @desc   Register the callback for handling each of the named events 
 */
function fbird_set_event_handler($link_identifier = null, $handler, $event, $event = null) {}

/**
 * @return resource
 * @param  trans_args int[optional]
 * @param  link_identifier resource[optional]
 * @vararg ...
 * @param  trans_args int
 * @param  link_identifier resource[optional]
 * @vararg ...
 * @vararg ...
 * @desc   Start a transaction over one or several databases 
 */
function fbird_trans($trans_args = null, $link_identifier = null, $trans_args, $link_identifier = null) {}

/**
 * @return string
 * @param  link_identifier resource[optional]
 * @param  event string
 * @param  event string[optional]
 * @vararg ...
 * @desc   Waits for any one of the passed Interbase events to be posted by the database, and returns its name 
 */
function fbird_wait_event($link_identifier = null, $event, $event = null) {}

/**
 * @return resource
 * @param  database_name string
 * @param  query string
 * @param  link_identifier resource[optional]
 * @desc   Send one or more SQL statements to a specified database on the server 
 */
function fbsql($database_name, $query, $link_identifier = null) {}

/**
 * @return int
 * @param  link_identifier resource[optional]
 * @desc   Get the number of rows affected by the last statement 
 */
function fbsql_affected_rows($link_identifier = null) {}

/**
 * @return bool
 * @param  link_identifier resource
 * @param  OnOff bool[optional]
 * @desc   Turns on auto-commit 
 */
function fbsql_autocommit($link_identifier, $OnOff = null) {}

/**
 * @return int
 * @param  blob_handle string
 * @param  link_identifier resource[optional]
 * @desc   Get the size of a BLOB identified by blob_handle 
 */
function fbsql_blob_size($blob_handle, $link_identifier = null) {}

/**
 * @return int
 * @param  user string
 * @param  password string
 * @param  database string[optional]
 * @param  link_identifier resource[optional]
 * @desc   Change the user for a session 
 */
function fbsql_change_user($user, $password, $database = null, $link_identifier = null) {}

/**
 * @return int
 * @param  clob_handle string
 * @param  link_identifier resource[optional]
 * @desc   Get the size of a CLOB identified by clob_handle 
 */
function fbsql_clob_size($clob_handle, $link_identifier = null) {}

/**
 * @return bool
 * @param  link_identifier resource[optional]
 * @desc   Close a connection to a database server 
 */
function fbsql_close($link_identifier = null) {}

/**
 * @return bool
 * @param  link_identifier resource[optional]
 * @desc   Commit the transaction 
 */
function fbsql_commit($link_identifier = null) {}

/**
 * @return resource
 * @param  hostname string[optional]
 * @param  username string[optional]
 * @param  password string[optional]
 * @desc   Create a connection to a database server 
 */
function fbsql_connect($hostname = null, $username = null, $password = null) {}

/**
 * @return string
 * @param  blob_data string
 * @param  link_identifier resource[optional]
 * @desc   Create a BLOB in the database for use with an insert or update statement 
 */
function fbsql_create_blob($blob_data, $link_identifier = null) {}

/**
 * @return string
 * @param  clob_data string
 * @param  link_identifier resource[optional]
 * @desc   Create a CLOB in the database for use with an insert or update statement 
 */
function fbsql_create_clob($clob_data, $link_identifier = null) {}

/**
 * @return bool
 * @param  database_name string
 * @param  link_identifier resource[optional]
 * @desc   Create a new database on the server 
 */
function fbsql_create_db($database_name, $link_identifier = null) {}

/**
 * @return bool
 * @param  result int
 * @param  row_number int
 * @desc   Move the internal row counter to the specified row_number 
 */
function fbsql_data_seek($result, $row_number) {}

/**
 * @return string
 * @param  link_identifier resource
 * @param  database string[optional]
 * @desc   Get or set the database name used with a connection 
 */
function fbsql_database($link_identifier, $database = null) {}

/**
 * @return string
 * @param  link_identifier resource
 * @param  database_password string[optional]
 * @desc   Get or set the databsae password used with a connection 
 */
function fbsql_database_password($link_identifier, $database_password = null) {}

/**
 * @return resource
 * @param  database_name string
 * @param  query string
 * @param  link_identifier resource[optional]
 * @desc   Send one or more SQL statements to a specified database on the server 
 */
function fbsql_db_query($database_name, $query, $link_identifier = null) {}

/**
 * @return int
 * @param  database_name string
 * @param  link_identifier resource[optional]
 * @desc   Gets the status (Stopped, Starting, Running, Stopping) for a given database 
 */
function fbsql_db_status($database_name, $link_identifier = null) {}

/**
 * @return int
 * @param  database_name string
 * @param  link_identifier resource[optional]
 * @desc   Drop a database on the server 
 */
function fbsql_drop_db($database_name, $link_identifier = null) {}

/**
 * @return int
 * @param  link_identifier resource[optional]
 * @desc   Returns the last error code 
 */
function fbsql_errno($link_identifier = null) {}

/**
 * @return string
 * @param  link_identifier resource[optional]
 * @desc   Returns the last error string 
 */
function fbsql_error($link_identifier = null) {}

/**
 * @return array
 * @param  result resource
 * @param  result_type int[optional]
 * @desc   Fetches a result row as an array (associative, numeric or both)
 */
function fbsql_fetch_array($result, $result_type = null) {}

/**
 * @return object
 * @param  result resource
 * @desc   Detch a row of data. Returns an assoc array 
 */
function fbsql_fetch_assoc($result) {}

/**
 * @return object
 * @param  result int
 * @param  field_index int[optional]
 * @desc   Get the field properties for a specified field_index 
 */
function fbsql_fetch_field($result, $field_index = null) {}

/**
 * @return array
 * @param  result int
 * @desc   Returns an array of the lengths of each column in the result set 
 */
function fbsql_fetch_lengths($result) {}

/**
 * @return object
 * @param  result resource
 * @param  result_type int[optional]
 * @desc   Fetch a row of data. Returns an object 
 */
function fbsql_fetch_object($result, $result_type = null) {}

/**
 * @return array
 * @param  result resource
 * @desc   Fetch a row of data. Returns an indexed array 
 */
function fbsql_fetch_row($result) {}

/**
 * @return string
 * @param  result int
 * @param  field_index int[optional]
 * @desc   ??? 
 */
function fbsql_field_flags($result, $field_index = null) {}

/**
 * @return mixed
 * @param  result int
 * @param  field_index int[optional]
 * @desc   Get the column length for a specified field_index 
 */
function fbsql_field_len($result, $field_index = null) {}

/**
 * @return string
 * @param  result int
 * @param  field_index int[optional]
 * @desc   Get the column name for a specified field_index 
 */
function fbsql_field_name($result, $field_index = null) {}

/**
 * @return bool
 * @param  result int
 * @param  field_index int[optional]
 * @desc   ??? 
 */
function fbsql_field_seek($result, $field_index = null) {}

/**
 * @return string
 * @param  result int
 * @param  field_index int[optional]
 * @desc   Get the table name for a specified field_index 
 */
function fbsql_field_table($result, $field_index = null) {}

/**
 * @return string
 * @param  result int
 * @param  field_index int[optional]
 * @desc   Get the field type for a specified field_index 
 */
function fbsql_field_type($result, $field_index = null) {}

/**
 * @return bool
 * @param  result resource
 * @desc   free the memory used to store a result 
 */
function fbsql_free_result($result) {}

/**
 * @return array
 * @param  link_identifier resource[optional]
 * @desc   ??? 
 */
function fbsql_get_autostart_info($link_identifier = null) {}

/**
 * @return string
 * @param  link_identifier resource
 * @param  host_name string[optional]
 * @desc   Get or set the host name used with a connection 
 */
function fbsql_hostname($link_identifier, $host_name = null) {}

/**
 * @return int
 * @param  link_identifier resource[optional]
 * @desc   Get the internal index for the last insert statement 
 */
function fbsql_insert_id($link_identifier = null) {}

/**
 * @return resource
 * @param  link_identifier resource[optional]
 * @desc   Retreive a list of all databases on the server 
 */
function fbsql_list_dbs($link_identifier = null) {}

/**
 * @return resource
 * @param  database_name string
 * @param  table_name string
 * @param  link_identifier resource[optional]
 * @desc   Retrieve a list of all fields for the specified database.table 
 */
function fbsql_list_fields($database_name, $table_name, $link_identifier = null) {}

/**
 * @return resource
 * @param  database string
 * @param  link_identifier int[optional]
 * @desc   Retreive a list of all tables from the specifoied database 
 */
function fbsql_list_tables($database, $link_identifier = null) {}

/**
 * @return bool
 * @param  result int
 * @desc   Switch to the next result if multiple results are available 
 */
function fbsql_next_result($result) {}

/**
 * @return int
 * @param  result int
 * @desc   Get number of fields in the result set 
 */
function fbsql_num_fields($result) {}

/**
 * @return int
 * @param  result int
 * @desc   Get number of rows 
 */
function fbsql_num_rows($result) {}

/**
 * @return string
 * @param  link_identifier resource
 * @param  password string[optional]
 * @desc   Get or set the user password used with a connection 
 */
function fbsql_password($link_identifier, $password = null) {}

/**
 * @return resource
 * @param  hostname string[optional]
 * @param  username string[optional]
 * @param  password string[optional]
 * @desc   Create a persistant connection to a database server 
 */
function fbsql_pconnect($hostname = null, $username = null, $password = null) {}

/**
 * @return resource
 * @param  query string
 * @param  link_identifier resource[optional]
 * @desc   Send one or more SQL statements to the server and execute them 
 */
function fbsql_query($query, $link_identifier = null) {}

/**
 * @return string
 * @param  blob_handle string
 * @param  link_identifier resource[optional]
 * @desc   Read the BLOB data identified by blob_handle 
 */
function fbsql_read_blob($blob_handle, $link_identifier = null) {}

/**
 * @return string
 * @param  clob_handle string
 * @param  link_identifier resource[optional]
 * @desc   Read the CLOB data identified by clob_handle 
 */
function fbsql_read_clob($clob_handle, $link_identifier = null) {}

/**
 * @return mixed
 * @param  result int
 * @param  row int[optional]
 * @param  field mixed[optional]
 * @desc   ??? 
 */
function fbsql_result($result, $row = null, $field = null) {}

/**
 * @return bool
 * @param  link_identifier resource[optional]
 * @desc   Rollback all statments since last commit 
 */
function fbsql_rollback($link_identifier = null) {}

/**
 * @return bool
 * @param  database_name string[optional]
 * @param  link_identifier resource[optional]
 * @desc   Select the database to open 
 */
function fbsql_select_db($database_name = null, $link_identifier = null) {}

/**
 * @return bool
 * @param  result resource
 * @param  lob_mode int
 * @desc   Sets the mode for how LOB data re retreived (actual data or a handle) 
 */
function fbsql_set_lob_mode($result, $lob_mode) {}

/**
 * @return bool
 * @param  link_identifier resource
 * @param  user string
 * @param  password string
 * @param  old_password string
 * @desc   Change the password for a given user 
 */
function fbsql_set_password($link_identifier, $user, $password, $old_password) {}

/**
 * @return void
 * @param  link_identifier resource
 * @param  locking int
 * @param  isolation int
 * @desc   Sets the transaction locking and isolation 
 */
function fbsql_set_transaction($link_identifier, $locking, $isolation) {}

/**
 * @return bool
 * @param  database_name string
 * @param  link_identifier resource[optional]
 * @desc   Start a database on the server 
 */
function fbsql_start_db($database_name, $link_identifier = null) {}

/**
 * @return bool
 * @param  database_name string
 * @param  link_identifier resource[optional]
 * @desc   Stop a database on the server 
 */
function fbsql_stop_db($database_name, $link_identifier = null) {}

/**
 * @return string
 * @param  result resource
 * @param  index int
 * @desc   Retreive the table name for index after a call to fbsql_list_tables() 
 */
function fbsql_table_name($result, $index) {}

/**
 * @return string
 * @param  result resource
 * @param  index int
 * @desc   Retreive the table name for index after a call to fbsql_list_tables() 
 */
function fbsql_tablename($result, $index) {}

/**
 * @return string
 * @param  link_identifier resource
 * @param  username string[optional]
 * @desc   Get or set the host user used with a connection 
 */
function fbsql_username($link_identifier, $username = null) {}

/**
 * @return bool
 * @param  flag int[optional]
 * @desc   Enable or disable FrontBase warnings 
 */
function fbsql_warnings($flag = null) {}

/**
 * @return bool
 * @param  fp resource
 * @desc   Close an open file pointer 
 */
function fclose($fp) {}

/**
 * @return bool
 * @param  fdfdoc resource
 * @param  scriptname string
 * @param  script string
 * @desc   Add javascript code to the fdf file 
 */
function fdf_add_doc_javascript($fdfdoc, $scriptname, $script) {}

/**
 * @return bool
 * @param  fdfdoc resource
 * @param  newpage int
 * @param  filename string
 * @param  template string
 * @param  rename int
 * @desc   Adds a template into the FDF document 
 */
function fdf_add_template($fdfdoc, $newpage, $filename, $template, $rename) {}

/**
 * @return void
 * @param  fdfdoc resource
 * @desc   Closes the FDF document 
 */
function fdf_close($fdfdoc) {}

/**
 * @return resource
 * @desc   Creates a new FDF document 
 */
function fdf_create() {}

/**
 * @return bool
 * @param  fdfdoc resource
 * @param  function callback
 * @param  userdata mixed[optional]
 * @desc   Call a user defined function for each document value 
 */
function fdf_enum_values($fdfdoc, $function, $userdata = null) {}

/**
 * @return int
 * @desc   Gets error code for last operation 
 */
function fdf_errno() {}

/**
 * @return string
 * @param  errno int[optional]
 * @desc   Gets error description for error code 
 */
function fdf_error($errno = null) {}

/**
 * @return bool
 * @param  fdfdoc resource
 * @param  fieldname string
 * @param  face int
 * @param  filename string
 * @desc   Gets the appearance of a field and creates a PDF document out of it. 
 */
function fdf_get_ap($fdfdoc, $fieldname, $face, $filename) {}

/**
 * @return array
 * @param  fdfdoc resource
 * @param  fieldname string
 * @param  savepath string
 * @desc   Get attached uploaded file 
 */
function fdf_get_attachment($fdfdoc, $fieldname, $savepath) {}

/**
 * @return string
 * @param  fdf resource
 * @desc   Gets FDF file encoding scheme 
 */
function fdf_get_encoding($fdf) {}

/**
 * @return string
 * @param  fdfdoc resource
 * @desc   Gets the value of /F key 
 */
function fdf_get_file($fdfdoc) {}

/**
 * @return int
 * @param  fdfdoc resorce
 * @param  fieldname string
 * @param  whichflags int
 * @desc   Gets the flags of a field 
 */
function fdf_get_flags($fdfdoc, $fieldname, $whichflags) {}

/**
 * @return mixed
 * @param  fdfdof resource
 * @param  fieldname string
 * @param  element int[optional]
 * @desc   Gets a value from the opt array of a field 
 */
function fdf_get_opt($fdfdof, $fieldname, $element = null) {}

/**
 * @return string
 * @param  fdfdoc resource
 * @desc   Gets the value of /Status key 
 */
function fdf_get_status($fdfdoc) {}

/**
 * @return string
 * @param  fdfdoc resource
 * @param  fieldname string
 * @param  which int[optional]
 * @desc   Gets the value of a field as string 
 */
function fdf_get_value($fdfdoc, $fieldname, $which = null) {}

/**
 * @return string
 * @param  fdfdoc resource[optional]
 * @desc   Gets version number for FDF api or file 
 */
function fdf_get_version($fdfdoc = null) {}

/**
 * @return void
 * @desc   Set FDF specific HTTP headers 
 */
function fdf_header() {}

/**
 * @return string
 * @param  fdfdoc resource
 * @param  fieldname string[optional]
 * @desc   Gets the name of the next field name or the first field name 
 */
function fdf_next_field_name($fdfdoc, $fieldname = null) {}

/**
 * @return resource
 * @param  filename string
 * @desc   Opens a new FDF document 
 */
function fdf_open($filename) {}

/**
 * @return resource
 * @param  fdf_data string
 * @desc   Opens a new FDF document from string 
 */
function fdf_open_string($fdf_data) {}

/**
 * @return bool
 * @param  fdfdoc resource
 * @param  fieldname string
 * @param  item int
 * @desc   Sets target frame for form 
 */
function fdf_remove_item($fdfdoc, $fieldname, $item) {}

/**
 * @return bool
 * @param  fdfdoc resource
 * @param  filename string[optional]
 * @desc   Writes out the FDF file 
 */
function fdf_save($fdfdoc, $filename = null) {}

/**
 * @return string
 * @param  fdfdoc resource
 * @desc   Returns the FDF file as a string 
 */
function fdf_save_string($fdfdoc) {}

/**
 * @return bool
 * @param  fdfdoc resource
 * @param  fieldname string
 * @param  face int
 * @param  filename string
 * @param  pagenr int
 * @desc   Sets the appearence of a field 
 */
function fdf_set_ap($fdfdoc, $fieldname, $face, $filename, $pagenr) {}

/**
 * @return bool
 * @param  fdf_document resource
 * @param  encoding string
 * @desc   Sets FDF encoding (either "Shift-JIS" or "Unicode") 
 */
function fdf_set_encoding($fdf_document, $encoding) {}

/**
 * @return bool
 * @param  fdfdoc resource
 * @param  filename string
 * @param  target_frame string[optional]
 * @desc   Sets the value of /F key 
 */
function fdf_set_file($fdfdoc, $filename, $target_frame = null) {}

/**
 * @return bool
 * @param  fdfdoc resource
 * @param  fieldname string
 * @param  whichflags int
 * @param  newflags int
 * @desc   Sets flags for a field in the FDF document 
 */
function fdf_set_flags($fdfdoc, $fieldname, $whichflags, $newflags) {}

/**
 * @return bool
 * @param  fdfdoc resource
 * @param  fieldname string
 * @param  whichtrigger int
 * @param  script string
 * @desc   Sets the javascript action for a field 
 */
function fdf_set_javascript_action($fdfdoc, $fieldname, $whichtrigger, $script) {}

/**
 * @return bool
 * @param  fdfdoc resource
 * @param  script string
 * @param  before_data_import bool[optional]
 * @desc   Adds javascript code to be executed when Acrobat opens the FDF 
 */
function fdf_set_on_import_javascript($fdfdoc, $script, $before_data_import = null) {}

/**
 * @return bool
 * @param  fdfdoc resource
 * @param  fieldname string
 * @param  element int
 * @param  value string
 * @param  name string
 * @desc   Sets a value in the opt array for a field 
 */
function fdf_set_opt($fdfdoc, $fieldname, $element, $value, $name) {}

/**
 * @return bool
 * @param  fdfdoc resource
 * @param  status string
 * @desc   Sets the value of /Status key 
 */
function fdf_set_status($fdfdoc, $status) {}

/**
 * @return bool
 * @param  fdfdoc resource
 * @param  fieldname string
 * @param  whichtrigger int
 * @param  url string
 * @param  flags int
 * @desc   Sets the submit form action for a field 
 */
function fdf_set_submit_form_action($fdfdoc, $fieldname, $whichtrigger, $url, $flags) {}

/**
 * @return bool
 * @param  fdfdoc resource
 * @param  target string
 * @desc   Sets target frame for form 
 */
function fdf_set_target_frame($fdfdoc, $target) {}

/**
 * @return bool
 * @param  fdfdoc resource
 * @param  fieldname string
 * @param  value mixed
 * @param  isname int[optional]
 * @desc   Sets the value of a field 
 */
function fdf_set_value($fdfdoc, $fieldname, $value, $isname = null) {}

/**
 * @return bool
 * @param  fdfdoc resourece
 * @param  version string
 * @desc   Sets FDF version for a file
 */
function fdf_set_version($fdfdoc, $version) {}

/**
 * @return bool
 * @param  fp resource
 * @desc   Test for end-of-file on a file pointer 
 */
function feof($fp) {}

/**
 * @return bool
 * @param  fp resource
 * @desc   Flushes output 
 */
function fflush($fp) {}

/**
 * @return string
 * @param  fp resource
 * @desc   Get a character from file pointer 
 */
function fgetc($fp) {}

/**
 * @return array
 * @param  fp resource
 * @param  length int[optional]
 * @param  delimiter string[optional]
 * @param  enclosure string[optional]
 * @desc   Get line from file pointer and parse for CSV fields 
 */
function fgetcsv($fp, $length = null, $delimiter = null, $enclosure = null) {}

/**
 * @return string
 * @param  fp resource
 * @param  length int
 * @desc   Get a line from file pointer 
 */
function fgets($fp, $length) {}

/**
 * @return string
 * @param  fp resource
 * @param  length int[optional]
 * @param  allowable_tags string
 * @desc   Get a line from file pointer and strip HTML tags 
 */
function fgetss($fp, $length = null, $allowable_tags) {}

/**
 * @return array
 * @param  filename string
 * @param  flags int[optional]
 * @param  context resource
 * @desc   Read entire file into an array 
 */
function file($filename, $flags = null, $context) {}

/**
 * @return bool
 * @param  filename string
 * @desc   Returns true if filename exists 
 */
function file_exists($filename) {}

/**
 * @return string
 * @param  filename string
 * @param  use_include_path bool[optional]
 * @param  context resource[optional]
 * @desc   Read the entire file into a string 
 */
function file_get_contents($filename, $use_include_path = null, $context = null) {}

/**
 * @return int
 * @param  file string
 * @param  data mixed
 * @param  flags int[optional]
 * @param  context resource[optional]
 * @desc   Write/Create a file with contents data and return the number of bytes written 
 */
function file_put_contents($file, $data, $flags = null, $context = null) {}

/**
 * @return int
 * @param  filename string
 * @desc   Get last access time of file 
 */
function fileatime($filename) {}

/**
 * @return int
 * @param  filename string
 * @desc   Get inode modification time of file 
 */
function filectime($filename) {}

/**
 * @return int
 * @param  filename string
 * @desc   Get file group 
 */
function filegroup($filename) {}

/**
 * @return int
 * @param  filename string
 * @desc   Get file inode 
 */
function fileinode($filename) {}

/**
 * @return int
 * @param  filename string
 * @desc   Get last modification time of file 
 */
function filemtime($filename) {}

/**
 * @return int
 * @param  filename string
 * @desc   Get file owner 
 */
function fileowner($filename) {}

/**
 * @return int
 * @param  filename string
 * @desc   Get file permissions 
 */
function fileperms($filename) {}

/**
 * @return bool
 * @param  directory string
 * @desc   Read and verify the map file 
 */
function filepro($directory) {}

/**
 * @return int
 * @desc   Find out how many fields are in a filePro database 
 */
function filepro_fieldcount() {}

/**
 * @return string
 * @param  fieldnumber int
 * @desc   Gets the name of a field 
 */
function filepro_fieldname($fieldnumber) {}

/**
 * @return string
 * @param  field_number int
 * @desc   Gets the type of a field 
 */
function filepro_fieldtype($field_number) {}

/**
 * @return int
 * @param  field_number int
 * @desc   Gets the width of a field 
 */
function filepro_fieldwidth($field_number) {}

/**
 * @return string
 * @param  row_number int
 * @param  field_number int
 * @desc   Retrieves data from a filePro database 
 */
function filepro_retrieve($row_number, $field_number) {}

/**
 * @return int
 * @desc   Find out how many rows are in a filePro database 
 */
function filepro_rowcount() {}

/**
 * @return int
 * @param  filename string
 * @desc   Get file size 
 */
function filesize($filename) {}

/**
 * @return string
 * @param  filename string
 * @desc   Get file type 
 */
function filetype($filename) {}

/**
 * @return float
 * @param  var mixed
 * @desc   Get the float value of a variable 
 */
function floatval($var) {}

/**
 * @return bool
 * @param  fp resource
 * @param  operation int
 * @param  &wouldblock int[optional]
 * @desc   Portable file locking 
 */
function flock($fp, $operation, &$wouldblock) {}

/**
 * @return float
 * @param  number float
 * @desc   Returns the next lowest integer value from the number 
 */
function floor($number) {}

/**
 * @return void
 * @desc   Flush the output buffer 
 */
function flush() {}

/**
 * @return float
 * @param  x float
 * @param  y float
 * @desc   Returns the remainder of dividing x by y as a float 
 */
function fmod($x, $y) {}

/**
 * @return bool
 * @param  pattern string
 * @param  filename string
 * @param  flags int[optional]
 * @desc   Match filename against pattern 
 */
function fnmatch($pattern, $filename, $flags = null) {}

/**
 * @return resource
 * @param  filename string
 * @param  mode string
 * @param  use_include_path bool[optional]
 * @param  context resource[optional]
 * @desc   Open a file or a URL and return a file pointer 
 */
function fopen($filename, $mode, $use_include_path = null, $context = null) {}

/**
 * @return int
 * @param  fp resource
 * @desc   Output all remaining data from a file pointer 
 */
function fpassthru($fp) {}

/**
 * @return int
 * @param  stream resource
 * @param  format string
 * @param  arg1 mixed[optional]
 * @vararg ... mixed
 * @desc   Output a formatted string into a stream 
 */
function fprintf($stream, $format, $arg1 = null) {}

/**
 * @return int
 * @param  fp resource
 * @param  str string
 * @param  length int[optional]
 * @desc   Binary-safe file write 
 */
function fputs($fp, $str, $length = null) {}

/**
 * @return string
 * @param  fp resource
 * @param  length int
 * @desc   Binary-safe file read 
 */
function fread($fp, $length) {}

/**
 * @return int
 * @param  month int
 * @param  day int
 * @param  year int
 * @desc   Converts a french republic calendar date to julian day count 
 */
function frenchtojd($month, $day, $year) {}

/**
 * @return mixed
 * @param  stream resource
 * @param  format string
 * @vararg ... string
 * @desc   Implements a mostly ANSI compatible fscanf() 
 */
function fscanf($stream, $format) {}

/**
 * @return int
 * @param  fp resource
 * @param  offset int
 * @param  whence int[optional]
 * @desc   Seek on a file pointer 
 */
function fseek($fp, $offset, $whence = null) {}

/**
 * @return resource
 * @param  hostname string
 * @param  port int
 * @param  errno int[optional]
 * @param  errstr string[optional]
 * @param  timeout float[optional]
 * @desc   Open Internet or Unix domain socket connection 
 */
function fsockopen($hostname, $port, $errno = null, $errstr = null, $timeout = null) {}

/**
 * @return int
 * @param  fp resource
 * @desc   Stat() on a filehandle 
 */
function fstat($fp) {}

/**
 * @return int
 * @param  fp resource
 * @desc   Get file pointer's read/write position 
 */
function ftell($fp) {}

/**
 * @return int
 * @param  pathname string
 * @param  proj string
 * @desc   Convert a pathname and a project identifier to a System V IPC key 
 */
function ftok($pathname, $proj) {}

/**
 * @return bool
 * @param  stream resource
 * @param  size int
 * @param  &response
 * @desc   Attempt to allocate space on the remote FTP server 
 */
function ftp_alloc($stream, $size, &$response) {}

/**
 * @return bool
 * @param  stream resource
 * @desc   Changes to the parent directory 
 */
function ftp_cdup($stream) {}

/**
 * @return bool
 * @param  stream resource
 * @param  directory string
 * @desc   Changes directories 
 */
function ftp_chdir($stream, $directory) {}

/**
 * @return int
 * @param  stream resource
 * @param  mode int
 * @param  filename string
 * @desc   Sets permissions on a file 
 */
function ftp_chmod($stream, $mode, $filename) {}

/**
 * @return bool
 * @param  stream resource
 * @desc   Closes the FTP stream 
 */
function ftp_close($stream) {}

/**
 * @return resource
 * @param  host string
 * @param  port int[optional]
 * @param  timeout int[optional]
 * @desc   Opens a FTP stream 
 */
function ftp_connect($host, $port = null, $timeout = null) {}

/**
 * @return bool
 * @param  stream resource
 * @param  file string
 * @desc   Deletes a file 
 */
function ftp_delete($stream, $file) {}

/**
 * @return bool
 * @param  stream resource
 * @param  command string
 * @desc   Requests execution of a program on the FTP server 
 */
function ftp_exec($stream, $command) {}

/**
 * @return bool
 * @param  stream resource
 * @param  fp resource
 * @param  remote_file string
 * @param  mode int
 * @param  resumepos int
 * @desc   Retrieves a file from the FTP server and writes it to an open file 
 */
function ftp_fget($stream, $fp, $remote_file, $mode, $resumepos) {}

/**
 * @return bool
 * @param  stream resource
 * @param  remote_file string
 * @param  fp resource
 * @param  mode int
 * @param  startpos int
 * @desc   Stores a file from an open file to the FTP server 
 */
function ftp_fput($stream, $remote_file, $fp, $mode, $startpos) {}

/**
 * @return bool
 * @param  stream resource
 * @param  local_file string
 * @param  remote_file string
 * @param  mode int
 * @param  resume_pos int
 * @desc   Retrieves a file from the FTP server and writes it to a local file 
 */
function ftp_get($stream, $local_file, $remote_file, $mode, $resume_pos) {}

/**
 * @return mixed
 * @param  stream resource
 * @param  option int
 * @desc   Gets an FTP option 
 */
function ftp_get_option($stream, $option) {}

/**
 * @return bool
 * @param  stream resource
 * @param  username string
 * @param  password string
 * @desc   Logs into the FTP server 
 */
function ftp_login($stream, $username, $password) {}

/**
 * @return int
 * @param  stream resource
 * @param  filename string
 * @desc   Returns the last modification time of the file, or -1 on error 
 */
function ftp_mdtm($stream, $filename) {}

/**
 * @return string
 * @param  stream resource
 * @param  directory string
 * @desc   Creates a directory and returns the absolute path for the new directory or false on error 
 */
function ftp_mkdir($stream, $directory) {}

/**
 * @return int
 * @param  stream resource
 * @desc   Continues retrieving/sending a file nbronously 
 */
function ftp_nb_continue($stream) {}

/**
 * @return int
 * @param  stream resource
 * @param  fp resource
 * @param  remote_file string
 * @param  mode int
 * @param  resumepos int
 * @desc   Retrieves a file from the FTP server asynchronly and writes it to an open file 
 */
function ftp_nb_fget($stream, $fp, $remote_file, $mode, $resumepos) {}

/**
 * @return int
 * @param  stream resource
 * @param  remote_file string
 * @param  fp resource
 * @param  mode int
 * @param  startpos int
 * @desc   Stores a file from an open file to the FTP server nbronly 
 */
function ftp_nb_fput($stream, $remote_file, $fp, $mode, $startpos) {}

/**
 * @return int
 * @param  stream resource
 * @param  local_file string
 * @param  remote_file string
 * @param  mode int
 * @param  resume_pos int
 * @desc   Retrieves a file from the FTP server nbhronly and writes it to a local file 
 */
function ftp_nb_get($stream, $local_file, $remote_file, $mode, $resume_pos) {}

/**
 * @return int
 * @param  stream resource
 * @param  remote_file string
 * @param  local_file string
 * @param  mode int
 * @param  startpos int
 * @desc   Stores a file on the FTP server 
 */
function ftp_nb_put($stream, $remote_file, $local_file, $mode, $startpos) {}

/**
 * @return array
 * @param  stream resource
 * @param  directory string
 * @desc   Returns an array of filenames in the given directory 
 */
function ftp_nlist($stream, $directory) {}

/**
 * @return bool
 * @param  stream resource
 * @param  pasv bool
 * @desc   Turns passive mode on or off 
 */
function ftp_pasv($stream, $pasv) {}

/**
 * @return bool
 * @param  stream resource
 * @param  remote_file string
 * @param  local_file string
 * @param  mode int
 * @param  startpos int
 * @desc   Stores a file on the FTP server 
 */
function ftp_put($stream, $remote_file, $local_file, $mode, $startpos) {}

/**
 * @return string
 * @param  stream resource
 * @desc   Returns the present working directory 
 */
function ftp_pwd($stream) {}

/**
 * @return bool
 * @param  stream resource
 * @desc   Closes the FTP stream 
 */
function ftp_quit($stream) {}

/**
 * @return array
 * @param  stream resource
 * @param  command string
 * @desc   Sends a literal command to the FTP server 
 */
function ftp_raw($stream, $command) {}

/**
 * @return array
 * @param  stream resource
 * @param  directory string
 * @param  recursive bool[optional]
 * @desc   Returns a detailed listing of a directory as an array of output lines 
 */
function ftp_rawlist($stream, $directory, $recursive = null) {}

/**
 * @return bool
 * @param  stream resource
 * @param  src string
 * @param  dest string
 * @desc   Renames the given file to a new path 
 */
function ftp_rename($stream, $src, $dest) {}

/**
 * @return bool
 * @param  stream resource
 * @param  directory string
 * @desc   Removes a directory 
 */
function ftp_rmdir($stream, $directory) {}

/**
 * @return bool
 * @param  stream resource
 * @param  option int
 * @param  value mixed
 * @desc   Sets an FTP option 
 */
function ftp_set_option($stream, $option, $value) {}

/**
 * @return bool
 * @param  stream resource
 * @param  cmd string
 * @desc   Sends a SITE command to the server 
 */
function ftp_site($stream, $cmd) {}

/**
 * @return int
 * @param  stream resource
 * @param  filename string
 * @desc   Returns the size of the file, or -1 on error 
 */
function ftp_size($stream, $filename) {}

/**
 * @return resource
 * @param  host string
 * @param  port int[optional]
 * @param  timeout int[optional]
 * @desc   Opens a FTP-SSL stream 
 */
function ftp_ssl_connect($host, $port = null, $timeout = null) {}

/**
 * @return string
 * @param  stream resource
 * @desc   Returns the system type identifier 
 */
function ftp_systype($stream) {}

/**
 * @return bool
 * @param  fp resource
 * @param  size int
 * @desc   Truncate file to 'size' length 
 */
function ftruncate($fp, $size) {}

/**
 * @return mixed
 * @param  arg_num int
 * @desc   Get the $arg_num'th argument that was passed to the function 
 */
function func_get_arg($arg_num) {}

/**
 * @return array
 * @desc   Get an array of the arguments that were passed to the function 
 */
function func_get_args() {}

/**
 * @return int
 * @desc   Get the number of arguments that were passed to the function 
 */
function func_num_args() {}

/**
 * @return bool
 * @param  function_name string
 * @desc   Checks if the function exists 
 */
function function_exists($function_name) {}

/**
 * @return int
 * @param  fp resource
 * @param  str string
 * @param  length int[optional]
 * @desc   Binary-safe file write 
 */
function fwrite($fp, $str, $length = null) {}

/**
 * @return array
 * @desc   
 */
function gd_info() {}

/**
 * @return DOMNode
 * @param  name string
 * @desc   
 */
function getNamedItem($name) {}

/**
 * @return DOMNode
 * @param  namespaceURI string
 * @param  localName string
 * @desc   
 */
function getNamedItemNS($namespaceURI, $localName) {}

/**
 * @return mixed
 * @param  browser_name string[optional]
 * @param  return_array bool[optional]
 * @desc   
 */
function get_browser($browser_name = null, $return_array = null) {}

/**
 * @return array
 * @desc   Obtain the function call stack trace 
 */
function get_call_stack() {}

/**
 * @return string
 * @param  option_name string
 * @desc   Get the value of a PHP configuration option 
 */
function get_cfg_var($option_name) {}

/**
 * @return string
 * @param  object object[optional]
 * @desc   Retrieves the class name 
 */
function get_class($object = null) {}

/**
 * @return array
 * @param  class mixed
 * @desc   Returns an array of method names for class or class instance. 
 */
function get_class_methods($class) {}

/**
 * @return array
 * @param  class_name string
 * @desc   Returns an array of default properties of the class 
 */
function get_class_vars($class_name) {}

/**
 * @return string
 * @desc   Get the name of the owner of the current PHP script 
 */
function get_current_user() {}

/**
 * @return array
 * @desc   Returns an array of all declared classes. 
 */
function get_declared_classes() {}

/**
 * @return array
 * @desc   Returns an array of all declared interfaces. 
 */
function get_declared_interfaces() {}

/**
 * @return array
 * @desc   Return an array containing the names and values of all defined constants 
 */
function get_defined_constants() {}

/**
 * @return array
 * @desc   Returns an array of all defined functions 
 */
function get_defined_functions() {}

/**
 * @return array
 * @desc   Returns an associative array of names and values of all currently defined variable names (variables in the current scope) 
 */
function get_defined_vars() {}

/**
 * @return array
 * @param  extension_name string
 * @desc   Returns an array with the names of functions belonging to the named extension 
 */
function get_extension_funcs($extension_name) {}

/**
 * @return array
 * @param  url string
 * @desc   fetches all the headers sent by the server in response to a HTTP request 
 */
function get_headers($url) {}

/**
 * @return array
 * @param  table int[optional]
 * @param  quote_style int[optional]
 * @desc   Returns the internal translation table used by htmlspecialchars and htmlentities 
 */
function get_html_translation_table($table = null, $quote_style = null) {}

/**
 * @return string
 * @desc   Get the current include_path configuration option 
 */
function get_include_path() {}

/**
 * @return array
 * @desc   Returns an array with the file names that were include_once()'d 
 */
function get_included_files() {}

/**
 * @return array
 * @desc   Return an array containing names of loaded extensions 
 */
function get_loaded_extensions() {}

/**
 * @return int
 * @desc   Get the current active configuration setting of magic_quotes_gpc 
 */
function get_magic_quotes_gpc() {}

/**
 * @return int
 * @desc   Get the current active configuration setting of magic_quotes_runtime 
 */
function get_magic_quotes_runtime() {}

/**
 * @return array
 * @param  filename string
 * @param  use_include_path bool[optional]
 * @desc   Extracts all meta tag content attributes from a file and returns an array 
 */
function get_meta_tags($filename, $use_include_path = null) {}

/**
 * @return array
 * @param  obj object
 * @desc   Returns an array of object properties 
 */
function get_object_vars($obj) {}

/**
 * @return string
 * @param  object mixed
 * @desc   Retrieves the parent class name for object or class. 
 */
function get_parent_class($object) {}

/**
 * @return array
 * @desc   Returns an array with the file names that were include_once()'d 
 */
function get_required_files() {}

/**
 * @return string
 * @param  res resource
 * @desc   Get the resource type name for a given resource 
 */
function get_resource_type($res) {}

/**
 * @return array
 * @desc   Get all headers from the request 
 */
function getallheaders() {}

/**
 * @return mixed
 * @desc   Gets the current directory 
 */
function getcwd() {}

/**
 * @return array
 * @param  timestamp int[optional]
 * @desc   Get date/time information 
 */
function getdate($timestamp = null) {}

/**
 * @return string
 * @param  varname string
 * @desc   Get the value of an environment variable 
 */
function getenv($varname) {}

/**
 * @return string
 * @param  ip_address string
 * @desc   Get the Internet host name corresponding to a given IP address 
 */
function gethostbyaddr($ip_address) {}

/**
 * @return string
 * @param  hostname string
 * @desc   Get the IP address corresponding to a given Internet host name 
 */
function gethostbyname($hostname) {}

/**
 * @return array
 * @param  hostname string
 * @desc   Return a list of IP addresses that a given hostname resolves to. 
 */
function gethostbynamel($hostname) {}

/**
 * @return array
 * @param  imagefile string
 * @param  info array[optional]
 * @desc   Get the size of an image as 4-element array 
 */
function getimagesize($imagefile, $info = null) {}

/**
 * @return int
 * @desc   Get time of last page modification 
 */
function getlastmod() {}

/**
 * @return bool
 * @param  hostname string
 * @param  mxhosts array
 * @param  weight array[optional]
 * @desc   Get MX records corresponding to a given Internet host name 
 */
function getmxrr($hostname, $mxhosts, $weight = null) {}

/**
 * @return int
 * @desc   Get PHP script owner's GID 
 */
function getmygid() {}

/**
 * @return int
 * @desc   Get the inode of the current script being parsed 
 */
function getmyinode() {}

/**
 * @return int
 * @desc   Get current process ID 
 */
function getmypid() {}

/**
 * @return int
 * @desc   Get PHP script owner's UID 
 */
function getmyuid() {}

/**
 * @return array
 * @param  options string
 * @param  longopts array[optional]
 * @desc   Get options from the command line argument list 
 */
function getopt($options, $longopts = null) {}

/**
 * @return int
 * @param  name string
 * @desc   Returns protocol number associated with name as per /etc/protocols 
 */
function getprotobyname($name) {}

/**
 * @return string
 * @param  proto int
 * @desc   Returns protocol name associated with protocol number proto 
 */
function getprotobynumber($proto) {}

/**
 * @return int
 * @desc   Returns the maximum value a random number can have 
 */
function getrandmax() {}

/**
 * @return array
 * @param  who int[optional]
 * @desc   Returns an array of usage statistics 
 */
function getrusage($who = null) {}

/**
 * @return int
 * @param  service string
 * @param  protocol string
 * @desc   Returns port associated with service. Protocol must be "tcp" or "udp" 
 */
function getservbyname($service, $protocol) {}

/**
 * @return string
 * @param  port int
 * @param  protocol string
 * @desc   Returns service name associated with port. Protocol must be "tcp" or "udp" 
 */
function getservbyport($port, $protocol) {}

/**
 * @return string
 * @param  msgid string
 * @desc   Return the translation of msgid for the current domain, or msgid unaltered if a translation does not exist 
 */
function gettext($msgid) {}

/**
 * @return array
 * @desc   Returns the current time as array 
 */
function gettimeofday() {}

/**
 * @return string
 * @param  var mixed
 * @desc   Returns the type of the variable 
 */
function gettype($var) {}

/**
 * @return array
 * @param  pattern string
 * @param  flags int[optional]
 * @desc   Find pathnames matching a pattern 
 */
function glob($pattern, $flags = null) {}

/**
 * @return string
 * @param  format string
 * @param  timestamp int[optional]
 * @desc   Format a GMT/UTC date/time 
 */
function gmdate($format, $timestamp = null) {}

/**
 * @return int
 * @param  hour int
 * @param  min int
 * @param  sec int
 * @param  mon int
 * @param  day int
 * @param  year int
 * @desc   Get UNIX timestamp for a GMT date 
 */
function gmmktime($hour, $min, $sec, $mon, $day, $year) {}

/**
 * @return resource
 * @param  a resource
 * @desc   Calculates absolute value 
 */
function gmp_abs($a) {}

/**
 * @return resource
 * @param  a resource
 * @param  b resource
 * @desc   Add a and b 
 */
function gmp_add($a, $b) {}

/**
 * @return resource
 * @param  a resource
 * @param  b resource
 * @desc   Calculates logical AND of a and b 
 */
function gmp_and($a, $b) {}

/**
 * @return void
 * @param  &a resource
 * @param  index int
 * @desc   Clears bit in a 
 */
function gmp_clrbit(&$a, $index) {}

/**
 * @return int
 * @param  a resource
 * @param  b resource
 * @desc   Compares two numbers 
 */
function gmp_cmp($a, $b) {}

/**
 * @return resource
 * @param  a resource
 * @desc   Calculates one's complement of a 
 */
function gmp_com($a) {}

/**
 * @return resource
 * @param  a resource
 * @param  b resource
 * @param  round int[optional]
 * @desc   Divide a by b, returns quotient only 
 */
function gmp_div($a, $b, $round = null) {}

/**
 * @return resource
 * @param  a resource
 * @param  b resource
 * @param  round int[optional]
 * @desc   Divide a by b, returns quotient only 
 */
function gmp_div_q($a, $b, $round = null) {}

/**
 * @return array
 * @param  a resource
 * @param  b resource
 * @param  round int[optional]
 * @desc   Divide a by b, returns quotient and reminder 
 */
function gmp_div_qr($a, $b, $round = null) {}

/**
 * @return resource
 * @param  a resource
 * @param  b resource
 * @param  round int[optional]
 * @desc   Divide a by b, returns reminder only 
 */
function gmp_div_r($a, $b, $round = null) {}

/**
 * @return resource
 * @param  a resource
 * @param  b resource
 * @desc   Divide a by b using exact division algorithm 
 */
function gmp_divexact($a, $b) {}

/**
 * @return resource
 * @param  a int
 * @desc   Calculates factorial function 
 */
function gmp_fact($a) {}

/**
 * @return resource
 * @param  a resource
 * @param  b resource
 * @desc   Computes greatest common denominator (gcd) of a and b 
 */
function gmp_gcd($a, $b) {}

/**
 * @return array
 * @param  a resource
 * @param  b resource
 * @desc   Computes G, S, and T, such that AS + BT = G = `gcd' (A, B) 
 */
function gmp_gcdext($a, $b) {}

/**
 * @return int
 * @param  a resource
 * @param  b resource
 * @desc   Calculates hamming distance between a and b 
 */
function gmp_hamdist($a, $b) {}

/**
 * @return resource
 * @param  number mixed
 * @param  base int[optional]
 * @desc   Initializes GMP number 
 */
function gmp_init($number, $base = null) {}

/**
 * @return int
 * @param  gmpnumber resource
 * @desc   Gets signed long value of GMP number 
 */
function gmp_intval($gmpnumber) {}

/**
 * @return resource
 * @param  a resource
 * @param  b resource
 * @desc   Computes the inverse of a modulo b 
 */
function gmp_invert($a, $b) {}

/**
 * @return int
 * @param  a resource
 * @param  b resource
 * @desc   Computes Jacobi symbol 
 */
function gmp_jacobi($a, $b) {}

/**
 * @return int
 * @param  a resource
 * @param  b resource
 * @desc   Computes Legendre symbol 
 */
function gmp_legendre($a, $b) {}

/**
 * @return resource
 * @param  a resource
 * @param  b resource
 * @desc   Computes a modulo b 
 */
function gmp_mod($a, $b) {}

/**
 * @return resource
 * @param  a resource
 * @param  b resource
 * @desc   Multiply a and b 
 */
function gmp_mul($a, $b) {}

/**
 * @return resource
 * @param  a resource
 * @desc   Negates a number 
 */
function gmp_neg($a) {}

/**
 * @return resource
 * @param  a resource
 * @param  b resource
 * @desc   Calculates logical OR of a and b 
 */
function gmp_or($a, $b) {}

/**
 * @return bool
 * @param  a resource
 * @desc   Checks if a is an exact square 
 */
function gmp_perfect_square($a) {}

/**
 * @return int
 * @param  a resource
 * @desc   Calculates the population count of a 
 */
function gmp_popcount($a) {}

/**
 * @return resource
 * @param  base resource
 * @param  exp int
 * @desc   Raise base to power exp 
 */
function gmp_pow($base, $exp) {}

/**
 * @return resource
 * @param  base resource
 * @param  exp resource
 * @param  mod resource
 * @desc   Raise base to power exp and take result modulo mod 
 */
function gmp_powm($base, $exp, $mod) {}

/**
 * @return int
 * @param  a resource
 * @param  reps int
 * @desc   Checks if a is "probably prime" 
 */
function gmp_prob_prime($a, $reps) {}

/**
 * @return resource
 * @param  limiter int[optional]
 * @desc   Gets random number 
 */
function gmp_random($limiter = null) {}

/**
 * @return int
 * @param  a resource
 * @param  start int
 * @desc   Finds first zero bit 
 */
function gmp_scan0($a, $start) {}

/**
 * @return int
 * @param  a resource
 * @param  start int
 * @desc   Finds first non-zero bit 
 */
function gmp_scan1($a, $start) {}

/**
 * @return void
 * @param  &a resource
 * @param  index int
 * @param  set_clear bool
 * @desc   Sets or clear bit in a 
 */
function gmp_setbit(&$a, $index, $set_clear) {}

/**
 * @return int
 * @param  a resource
 * @desc   Gets the sign of the number 
 */
function gmp_sign($a) {}

/**
 * @return resource
 * @param  a resource
 * @desc   Takes integer part of square root of a 
 */
function gmp_sqrt($a) {}

/**
 * @return array
 * @param  a resource
 * @desc   Square root with remainder 
 */
function gmp_sqrtrem($a) {}

/**
 * @return string
 * @param  gmpnumber resource
 * @param  base int[optional]
 * @desc   Gets string representation of GMP number  
 */
function gmp_strval($gmpnumber, $base = null) {}

/**
 * @return resource
 * @param  a resource
 * @param  b resource
 * @desc   Subtract b from a 
 */
function gmp_sub($a, $b) {}

/**
 * @return resource
 * @param  a resource
 * @param  b resource
 * @desc   Calculates logical exclusive OR of a and b 
 */
function gmp_xor($a, $b) {}

/**
 * @return string
 * @param  format string
 * @param  timestamp int[optional]
 * @desc   Format a GMT/UCT time/date according to locale settings 
 */
function gmstrftime($format, $timestamp = null) {}

/**
 * @return int
 * @param  month int
 * @param  day int
 * @param  year int
 * @desc   Converts a gregorian calendar date to julian day count 
 */
function gregoriantojd($month, $day, $year) {}

/**
 * @return bool
 * @param  fp resource
 * @desc   Close an open file pointer 
 */
function gzclose($fp) {}

/**
 * @return string
 * @param  data string
 * @param  level int[optional]
 * @desc   Gzip-compress a string 
 */
function gzcompress($data, $level = null) {}

/**
 * @return string
 * @param  data string
 * @param  level int[optional]
 * @desc   Gzip-compress a string 
 */
function gzdeflate($data, $level = null) {}

/**
 * @return string
 * @param  data string
 * @param  level int[optional]
 * @param  encoding_mode int[optional]
 * @desc   GZ encode a string 
 */
function gzencode($data, $level = null, $encoding_mode = null) {}

/**
 * @return bool
 * @param  fp resource
 * @desc   Test for end-of-file on a file pointer 
 */
function gzeof($fp) {}

/**
 * @return array
 * @param  filename string
 * @param  use_include_path int[optional]
 * @desc   Read und uncompress entire .gz-file into an array 
 */
function gzfile($filename, $use_include_path = null) {}

/**
 * @return string
 * @param  fp resource
 * @desc   Get a character from file pointer 
 */
function gzgetc($fp) {}

/**
 * @return string
 * @param  fp resource
 * @param  length int
 * @desc   Get a line from file pointer 
 */
function gzgets($fp, $length) {}

/**
 * @return string
 * @param  fp resource
 * @param  length int[optional]
 * @param  allowable_tags string
 * @desc   Get a line from file pointer and strip HTML tags 
 */
function gzgetss($fp, $length = null, $allowable_tags) {}

/**
 * @return string
 * @param  data string
 * @param  length int[optional]
 * @desc   Unzip a gzip-compressed string 
 */
function gzinflate($data, $length = null) {}

/**
 * @return resource
 * @param  filename string
 * @param  mode string
 * @param  use_include_path int[optional]
 * @desc   Open a .gz-file and return a .gz-file pointer 
 */
function gzopen($filename, $mode, $use_include_path = null) {}

/**
 * @return int
 * @param  fp resource
 * @desc   Output all remaining data from a file pointer 
 */
function gzpassthru($fp) {}

/**
 * @return int
 * @param  fp resource
 * @param  str string
 * @param  length int[optional]
 * @desc   Binary-safe file write 
 */
function gzputs($fp, $str, $length = null) {}

/**
 * @return string
 * @param  fp resource
 * @param  length int
 * @desc   Binary-safe file read 
 */
function gzread($fp, $length) {}

/**
 * @return bool
 * @param  fp resource
 * @desc   Rewind the position of a file pointer 
 */
function gzrewind($fp) {}

/**
 * @return int
 * @param  fp resource
 * @param  offset int
 * @param  whence int[optional]
 * @desc   Seek on a file pointer 
 */
function gzseek($fp, $offset, $whence = null) {}

/**
 * @return int
 * @param  fp resource
 * @desc   Get file pointer's read/write position 
 */
function gztell($fp) {}

/**
 * @return string
 * @param  data string
 * @param  length int[optional]
 * @desc   Unzip a gzip-compressed string 
 */
function gzuncompress($data, $length = null) {}

/**
 * @return int
 * @param  fp resource
 * @param  str string
 * @param  length int[optional]
 * @desc   Binary-safe file write 
 */
function gzwrite($fp, $str, $length = null) {}

/**
 * @return void
 * @param  header string
 * @param  replace bool[optional]
 * @param  http_response_code int[optional]
 * @desc   Sends a raw HTTP header 
 */
function header($header, $replace = null, $http_response_code = null) {}

/**
 * @return string
 * @desc   Return list of headers to be sent / already sent 
 */
function headers_list() {}

/**
 * @return bool
 * @param  &$file string[optional]
 * @param  &$line int[optional]
 * @desc   Returns true if headers have already been sent, false otherwise 
 */
function headers_sent(&$file, &$line) {}

/**
 * @return string
 * @param  str string
 * @param  max_chars_per_line int[optional]
 * @desc   Converts logical Hebrew text to visual text 
 */
function hebrev($str, $max_chars_per_line = null) {}

/**
 * @return string
 * @param  str string
 * @param  max_chars_per_line int[optional]
 * @desc   Converts logical Hebrew text to visual text with newline conversion 
 */
function hebrevc($str, $max_chars_per_line = null) {}

/**
 * @return int
 * @param  hexadecimal_number string
 * @desc   Returns the decimal equivalent of the hexadecimal number 
 */
function hexdec($hexadecimal_number) {}

/**
 * @return bool
 * @param  file_name string
 * @param  return bool[optional]
 * @desc   Syntax highlight a source file 
 */
function highlight_file($file_name, $return = null) {}

/**
 * @return bool
 * @param  string string
 * @param  return bool[optional]
 * @desc   Syntax highlight a string or optionally return it 
 */
function highlight_string($string, $return = null) {}

/**
 * @return string
 * @param  string string
 * @param  quote_style int[optional]
 * @param  charset string[optional]
 * @desc   Convert all HTML entities to their applicable characters 
 */
function html_entity_decode($string, $quote_style = null, $charset = null) {}

/**
 * @return string
 * @param  string string
 * @param  quote_style int[optional]
 * @param  charset string[optional]
 * @desc   Convert all applicable characters to HTML entities 
 */
function htmlentities($string, $quote_style = null, $charset = null) {}

/**
 * @return string
 * @param  string string
 * @param  quote_style int[optional]
 * @param  charset string[optional]
 * @desc   Convert special characters to HTML entities 
 */
function htmlspecialchars($string, $quote_style = null, $charset = null) {}

/**
 * @return string
 * @param  formdata mixed
 * @param  prefix string[optional]
 * @desc   Generates a form-encoded query string from an associative array or object. 
 */
function http_build_query($formdata, $prefix = null) {}

/**
 * @return float
 * @param  num1 float
 * @param  num2 float
 * @desc   Returns sqrt(num1*num1 + num2*num2) 
 */
function hypot($num1, $num2) {}

/**
 * @return bool
 * @param  service_handle resource
 * @param  user_name string
 * @param  password string
 * @param  first_name string[optional]
 * @param  middle_name string[optional]
 * @param  last_name string[optional]
 * @desc   Add a user to security database 
 */
function ibase_add_user($service_handle, $user_name, $password, $first_name = null, $middle_name = null, $last_name = null) {}

/**
 * @return int
 * @param  link_identifier resource[optional]
 * @desc   Returns the number of rows affected by the previous INSERT, UPDATE or DELETE statement 
 */
function ibase_affected_rows($link_identifier = null) {}

/**
 * @return mixed
 * @param  service_handle resource
 * @param  source_db string
 * @param  dest_file string
 * @param  options int[optional]
 * @param  verbose bool[optional]
 * @desc   Initiates a backup task in the service manager and returns immediately 
 */
function ibase_backup($service_handle, $source_db, $dest_file, $options = null, $verbose = null) {}

/**
 * @return bool
 * @param  blob_handle resource
 * @param  data string
 * @desc   Add data into created blob 
 */
function ibase_blob_add($blob_handle, $data) {}

/**
 * @return bool
 * @param  blob_handle resource
 * @desc   Cancel creating blob 
 */
function ibase_blob_cancel($blob_handle) {}

/**
 * @return string
 * @param  blob_handle resource
 * @desc   Close blob 
 */
function ibase_blob_close($blob_handle) {}

/**
 * @return resource
 * @param  link_identifier resource[optional]
 * @desc   Create blob for adding data 
 */
function ibase_blob_create($link_identifier = null) {}

/**
 * @return bool
 * @param  link_identifier resource[optional]
 * @param  blob_id string
 * @desc   Output blob contents to browser 
 */
function ibase_blob_echo($link_identifier = null, $blob_id) {}

/**
 * @return string
 * @param  blob_handle resource
 * @param  len int
 * @desc   Get len bytes data from open blob 
 */
function ibase_blob_get($blob_handle, $len) {}

/**
 * @return string
 * @param  link_identifier resource[optional]
 * @param  file resource
 * @desc   Create blob, copy file in it, and close it 
 */
function ibase_blob_import($link_identifier = null, $file) {}

/**
 * @return array
 * @param  link_identifier resource[optional]
 * @param  blob_id string
 * @desc   Return blob length and other useful info 
 */
function ibase_blob_info($link_identifier = null, $blob_id) {}

/**
 * @return resource
 * @param  link_identifier resource[optional]
 * @param  blob_id string
 * @desc   Open blob for retrieving data parts 
 */
function ibase_blob_open($link_identifier = null, $blob_id) {}

/**
 * @return bool
 * @param  link_identifier resource[optional]
 * @desc   Close an InterBase connection 
 */
function ibase_close($link_identifier = null) {}

/**
 * @return bool
 * @param  link_identifier resource
 * @desc   Commit transaction 
 */
function ibase_commit($link_identifier) {}

/**
 * @return bool
 * @param  link_identifier resource
 * @desc   Commit transaction and retain the transaction context 
 */
function ibase_commit_ret($link_identifier) {}

/**
 * @return resource
 * @param  database string
 * @param  username string[optional]
 * @param  password string[optional]
 * @param  charset string[optional]
 * @param  buffers int[optional]
 * @param  dialect int[optional]
 * @param  role string[optional]
 * @desc   Open a connection to an InterBase database 
 */
function ibase_connect($database, $username = null, $password = null, $charset = null, $buffers = null, $dialect = null, $role = null) {}

/**
 * @return string
 * @param  service_handle resource
 * @param  db string
 * @param  action int
 * @param  argument int[optional]
 * @desc   Request statistics about a database 
 */
function ibase_db_info($service_handle, $db, $action, $argument = null) {}

/**
 * @return bool
 * @param  service_handle resource
 * @param  user_name string
 * @param  password string
 * @param  first_name string[optional]
 * @param  middle_name string[optional]
 * @param  last_name string[optional]
 * @desc   Delete a user from security database 
 */
function ibase_delete_user($service_handle, $user_name, $password, $first_name = null, $middle_name = null, $last_name = null) {}

/**
 * @return bool
 * @param  link_identifier resource[optional]
 * @desc   Drop an InterBase database 
 */
function ibase_drop_db($link_identifier = null) {}

/**
 * @return int
 * @desc   Return error code 
 */
function ibase_errcode() {}

/**
 * @return string
 * @desc   Return error message 
 */
function ibase_errmsg() {}

/**
 * @return mixed
 * @param  query resource
 * @param  bind_arg mixed[optional]
 * @param  bind_arg mixed[optional]
 * @vararg ...
 * @desc   Execute a previously prepared query 
 */
function ibase_execute($query, $bind_arg = null, $bind_arg = null) {}

/**
 * @return array
 * @param  result resource
 * @param  fetch_flags int[optional]
 * @desc   Fetch a row  from the results of a query 
 */
function ibase_fetch_assoc($result, $fetch_flags = null) {}

/**
 * @return object
 * @param  result resource
 * @param  fetch_flags int[optional]
 * @desc   Fetch a object from the results of a query 
 */
function ibase_fetch_object($result, $fetch_flags = null) {}

/**
 * @return array
 * @param  result resource
 * @param  fetch_flags int[optional]
 * @desc   Fetch a row  from the results of a query 
 */
function ibase_fetch_row($result, $fetch_flags = null) {}

/**
 * @return array
 * @param  query_result resource
 * @param  field_number int
 * @desc   Get information about a field 
 */
function ibase_field_info($query_result, $field_number) {}

/**
 * @return bool
 * @param  event resource
 * @desc   Frees the event handler set by ibase_set_event_handler() 
 */
function ibase_free_event_handler($event) {}

/**
 * @return bool
 * @param  query resource
 * @desc   Free memory used by a query 
 */
function ibase_free_query($query) {}

/**
 * @return bool
 * @param  result resource
 * @desc   Free the memory used by a result 
 */
function ibase_free_result($result) {}

/**
 * @return int
 * @param  generator string
 * @param  increment int[optional]
 * @param  link_identifier resource[optional]
 * @desc   Increments the named generator and returns its new value 
 */
function ibase_gen_id($generator, $increment = null, $link_identifier = null) {}

/**
 * @return bool
 * @param  service_handle resource
 * @param  db string
 * @param  action int
 * @param  argument int[optional]
 * @desc   Execute a maintenance command on the database server 
 */
function ibase_maintain_db($service_handle, $db, $action, $argument = null) {}

/**
 * @return bool
 * @param  service_handle resource
 * @param  user_name string
 * @param  password string
 * @param  first_name string[optional]
 * @param  middle_name string[optional]
 * @param  last_name string[optional]
 * @desc   Modify a user in security database 
 */
function ibase_modify_user($service_handle, $user_name, $password, $first_name = null, $middle_name = null, $last_name = null) {}

/**
 * @return bool
 * @param  result resource
 * @param  name string
 * @desc   Assign a name to a result for use with ... WHERE CURRENT OF <name> statements 
 */
function ibase_name_result($result, $name) {}

/**
 * @return int
 * @param  query_result resource
 * @desc   Get the number of fields in result 
 */
function ibase_num_fields($query_result) {}

/**
 * @return int
 * @param  query resource
 * @desc   Get the number of params in a prepared query 
 */
function ibase_num_params($query) {}

/**
 * @return int
 * @param  result_identifier resource
 * @desc   Return the number of rows that are available in a result 
 */
function ibase_num_rows($result_identifier) {}

/**
 * @return array
 * @param  query resource
 * @param  field_number int
 * @desc   Get information about a parameter 
 */
function ibase_param_info($query, $field_number) {}

/**
 * @return resource
 * @param  database string
 * @param  username string[optional]
 * @param  password string[optional]
 * @param  charset string[optional]
 * @param  buffers int[optional]
 * @param  dialect int[optional]
 * @param  role string[optional]
 * @desc   Open a persistent connection to an InterBase database 
 */
function ibase_pconnect($database, $username = null, $password = null, $charset = null, $buffers = null, $dialect = null, $role = null) {}

/**
 * @return resource
 * @param  link_identifier resource[optional]
 * @param  query string
 * @desc   Prepare a query for later execution 
 */
function ibase_prepare($link_identifier = null, $query) {}

/**
 * @return mixed
 * @param  link_identifier resource[optional]
 * @param  link_identifier resource[optional]
 * @param  query string
 * @param  bind_arg mixed[optional]
 * @param  bind_arg mixed[optional]
 * @vararg ...
 * @desc   Execute a query 
 */
function ibase_query($link_identifier = null, $link_identifier = null, $query, $bind_arg = null, $bind_arg = null) {}

/**
 * @return mixed
 * @param  service_handle resource
 * @param  source_file string
 * @param  dest_db string
 * @param  options int[optional]
 * @param  verbose bool[optional]
 * @desc   Initiates a restore task in the service manager and returns immediately 
 */
function ibase_restore($service_handle, $source_file, $dest_db, $options = null, $verbose = null) {}

/**
 * @return bool
 * @param  link_identifier resource
 * @desc   Rollback transaction 
 */
function ibase_rollback($link_identifier) {}

/**
 * @return bool
 * @param  link_identifier resource
 * @desc   Rollback transaction and retain the transaction context 
 */
function ibase_rollback_ret($link_identifier) {}

/**
 * @return string
 * @param  service_handle resource
 * @param  action int
 * @desc   Request information about a database server 
 */
function ibase_server_info($service_handle, $action) {}

/**
 * @return resource
 * @param  host string
 * @param  dba_username string
 * @param  dba_password string
 * @desc   Connect to the service manager 
 */
function ibase_service_attach($host, $dba_username, $dba_password) {}

/**
 * @return bool
 * @param  service_handle resource
 * @desc   Disconnect from the service manager 
 */
function ibase_service_detach($service_handle) {}

/**
 * @return resource
 * @param  link_identifier resource[optional]
 * @param  handler callback
 * @param  event string
 * @param  event string[optional]
 * @vararg ...
 * @desc   Register the callback for handling each of the named events 
 */
function ibase_set_event_handler($link_identifier = null, $handler, $event, $event = null) {}

/**
 * @return resource
 * @param  trans_args int[optional]
 * @param  link_identifier resource[optional]
 * @vararg ...
 * @param  trans_args int
 * @param  link_identifier resource[optional]
 * @vararg ...
 * @vararg ...
 * @desc   Start a transaction over one or several databases 
 */
function ibase_trans($trans_args = null, $link_identifier = null, $trans_args, $link_identifier = null) {}

/**
 * @return string
 * @param  link_identifier resource[optional]
 * @param  event string
 * @param  event string[optional]
 * @vararg ...
 * @desc   Waits for any one of the passed Interbase events to be posted by the database, and returns its name 
 */
function ibase_wait_event($link_identifier = null, $event, $event = null) {}

/**
 * @return string
 * @param  in_charset string
 * @param  out_charset string
 * @param  str string
 * @desc   Returns str converted to the out_charset character set 
 */
function iconv($in_charset, $out_charset, $str) {}

/**
 * @return mixed
 * @param  type string[optional]
 * @desc   Get internal encoding and output encoding for ob_iconv_handler() 
 */
function iconv_get_encoding($type = null) {}

/**
 * @return string
 * @param  encoded_string string
 * @param  mode int[optional]
 * @param  charset string
 * @desc   Decodes a mime header field 
 */
function iconv_mime_decode($encoded_string, $mode = null, $charset) {}

/**
 * @return array
 * @param  headers string
 * @param  mode int[optional]
 * @param  charset string
 * @desc   Decodes multiple mime header fields 
 */
function iconv_mime_decode_headers($headers, $mode = null, $charset) {}

/**
 * @return string
 * @param  field_name string
 * @param  field_value string
 * @param  preference array[optional]
 * @desc   Composes a mime header field with field_name and field_value in a specified scheme 
 */
function iconv_mime_encode($field_name, $field_value, $preference = null) {}

/**
 * @return bool
 * @param  type string
 * @param  charset string
 * @desc   Sets internal encoding and output encoding for ob_iconv_handler() 
 */
function iconv_set_encoding($type, $charset) {}

/**
 * @return int
 * @param  str string
 * @param  charset string[optional]
 * @desc   Returns the character count of str 
 */
function iconv_strlen($str, $charset = null) {}

/**
 * @return int
 * @param  haystack string
 * @param  needle string
 * @param  offset int
 * @param  charset string[optional]
 * @desc   Finds position of first occurrence of needle within part of haystack beginning with offset 
 */
function iconv_strpos($haystack, $needle, $offset, $charset = null) {}

/**
 * @return int
 * @param  haystack string
 * @param  needle string
 * @param  charset string[optional]
 * @desc   Finds position of last occurrence of needle within part of haystack beginning with offset 
 */
function iconv_strrpos($haystack, $needle, $charset = null) {}

/**
 * @return string
 * @param  str string
 * @param  offset int
 * @param  length int[optional]
 * @param  charset string
 * @desc   Returns specified part of a string 
 */
function iconv_substr($str, $offset, $length = null, $charset) {}

/**
 * @return int
 * @param  format string
 * @param  timestamp int[optional]
 * @desc   Format a local time/date as integer 
 */
function idate($format, $timestamp = null) {}

/**
 * @return int
 * @param  resultid resource
 * @desc   Returns the number of rows affected by query identified by resultid 
 */
function ifx_affected_rows($resultid) {}

/**
 * @return bool
 * @param  mode int
 * @desc   Sets the default blob-mode for all select-queries  
 */
function ifx_blobinfile_mode($mode) {}

/**
 * @return bool
 * @param  mode int
 * @desc   Sets the default byte-mode for all select-queries  
 */
function ifx_byteasvarchar($mode) {}

/**
 * @return bool
 * @param  connid resource[optional]
 * @desc   Close informix connection 
 */
function ifx_close($connid = null) {}

/**
 * @return resource
 * @param  database string[optional]
 * @param  userid string[optional]
 * @param  password string[optional]
 * @desc   Connects to database using userid/password, returns connection id 
 */
function ifx_connect($database = null, $userid = null, $password = null) {}

/**
 * @return int
 * @param  bid int
 * @desc   Duplicates the given blob-object 
 */
function ifx_copy_blob($bid) {}

/**
 * @return int
 * @param  type int
 * @param  mode int
 * @param  param string
 * @desc   Creates a blob-object 
 */
function ifx_create_blob($type, $mode, $param) {}

/**
 * @return int
 * @param  param string
 * @desc   Creates a char-object 
 */
function ifx_create_char($param) {}

/**
 * @return bool
 * @param  resultid resource
 * @desc   Executes a previously prepared query or opens a cursor for it 
 */
function ifx_do($resultid) {}

/**
 * @return string
 * @param  connection_id resource[optional]
 * @desc   Returns the Informix error codes (SQLSTATE & SQLCODE) 
 */
function ifx_error($connection_id = null) {}

/**
 * @return string
 * @param  errorcode int[optional]
 * @desc   Returns the Informix errormessage associated with  
 */
function ifx_errormsg($errorcode = null) {}

/**
 * @return array
 * @param  resultid resource
 * @param  position mixed[optional]
 * @desc   Fetches the next row or <position> row if using a scroll cursor 
 */
function ifx_fetch_row($resultid, $position = null) {}

/**
 * @return array
 * @param  resultid resource
 * @desc   Returns an associative for query <resultid> array with fieldnames as key 
 */
function ifx_fieldproperties($resultid) {}

/**
 * @return array
 * @param  resultid resource
 * @desc   Returns an associative array with fieldnames as key for query <resultid> 
 */
function ifx_fieldtypes($resultid) {}

/**
 * @return int
 * @param  bid int
 * @desc   Deletes the blob-object 
 */
function ifx_free_blob($bid) {}

/**
 * @return bool
 * @param  bid int
 * @desc   Deletes the char-object 
 */
function ifx_free_char($bid) {}

/**
 * @return bool
 * @param  resultid resource
 * @desc   Releases resources for query associated with resultid 
 */
function ifx_free_result($resultid) {}

/**
 * @return string
 * @param  bid int
 * @desc   Returns the content of the blob-object 
 */
function ifx_get_blob($bid) {}

/**
 * @return string
 * @param  bid int
 * @desc   Returns the content of the char-object 
 */
function ifx_get_char($bid) {}

/**
 * @return array
 * @param  resultid resource
 * @desc   Returns the sqlerrd[] fields of the sqlca struct for query resultid 
 */
function ifx_getsqlca($resultid) {}

/**
 * @return int
 * @param  resultid resource
 * @param  htmltableoptions string[optional]
 * @desc   Formats all rows of the resultid query into a html table 
 */
function ifx_htmltbl_result($resultid, $htmltableoptions = null) {}

/**
 * @return bool
 * @param  mode int
 * @desc   Sets the default return value of a NULL-value on a fetch-row  
 */
function ifx_nullformat($mode) {}

/**
 * @return int
 * @param  resultid resource
 * @desc   Returns the number of columns in query resultid 
 */
function ifx_num_fields($resultid) {}

/**
 * @return int
 * @param  resultid resource
 * @desc   Returns the number of rows already fetched for query identified by resultid 
 */
function ifx_num_rows($resultid) {}

/**
 * @return resource
 * @param  database string[optional]
 * @param  userid string[optional]
 * @param  password string[optional]
 * @desc   Connects to database using userid/password, returns connection id 
 */
function ifx_pconnect($database = null, $userid = null, $password = null) {}

/**
 * @return resource
 * @param  query string
 * @param  connid resource
 * @param  cursortype int[optional]
 * @param  idarray array[optional]
 * @desc   Prepare a query on a given connection 
 */
function ifx_prepare($query, $connid, $cursortype = null, $idarray = null) {}

/**
 * @return resource
 * @param  query string
 * @param  connid resource
 * @param  cursortype int[optional]
 * @param  idarray array[optional]
 * @desc   Perform a query on a given connection 
 */
function ifx_query($query, $connid, $cursortype = null, $idarray = null) {}

/**
 * @return bool
 * @param  mode int
 * @desc   Sets the default text-mode for all select-queries 
 */
function ifx_textasvarchar($mode) {}

/**
 * @return int
 * @param  bid int
 * @param  content string
 * @desc   Updates the content of the blob-object 
 */
function ifx_update_blob($bid, $content) {}

/**
 * @return bool
 * @param  bid int
 * @param  content string
 * @desc   Updates the content of the char-object 
 */
function ifx_update_char($bid, $content) {}

/**
 * @return bool
 * @param  bid int
 * @desc   Deletes the slob-object 
 */
function ifxus_close_slob($bid) {}

/**
 * @return int
 * @param  mode int
 * @desc   Creates a slob-object and opens it 
 */
function ifxus_create_slob($mode) {}

/**
 * @return bool
 * @param  bid int
 * @desc   Deletes the slob-object 
 */
function ifxus_free_slob($bid) {}

/**
 * @return int
 * @param  bid int
 * @param  mode int
 * @desc   Opens an slob-object 
 */
function ifxus_open_slob($bid, $mode) {}

/**
 * @return string
 * @param  bid int
 * @param  nbytes int
 * @desc   Reads nbytes of the slob-object 
 */
function ifxus_read_slob($bid, $nbytes) {}

/**
 * @return int
 * @param  bid int
 * @param  mode int
 * @param  offset long
 * @desc   Sets the current file or seek position of an open slob-object 
 */
function ifxus_seek_slob($bid, $mode, $offset) {}

/**
 * @return int
 * @param  bid int
 * @desc   Returns the current file or seek position of an open slob-object 
 */
function ifxus_tell_slob($bid) {}

/**
 * @return int
 * @param  bid int
 * @param  content string
 * @desc   Writes a string into the slob-object 
 */
function ifxus_write_slob($bid, $content) {}

/**
 * @return int
 * @param  value bool
 * @desc   Set whether we want to ignore a user abort event or not 
 */
function ignore_user_abort($value) {}

/**
 * @return bool
 * @param  im resource
 * @param  filename string[optional]
 * @param  threshold int[optional]
 * @desc   Output WBMP image to browser or file 
 */
function image2wbmp($im, $filename = null, $threshold = null) {}

/**
 * @return string
 * @param  imagetype int
 * @param  include_dot bool[optional]
 * @desc   Get file extension for image-type returned by getimagesize, exif_read_data, exif_thumbnail, exif_imagetype 
 */
function image_type_to_extension($imagetype, $include_dot = null) {}

/**
 * @return string
 * @param  imagetype int
 * @desc   Get Mime-Type for image-type returned by getimagesize, exif_read_data, exif_thumbnail, exif_imagetype 
 */
function image_type_to_mime_type($imagetype) {}

/**
 * @return bool
 * @param  im resource
 * @param  on bool
 * @desc   Turn alpha blending mode on or off for the given image 
 */
function imagealphablending($im, $on) {}

/**
 * @return bool
 * @param  im resource
 * @param  on bool
 * @desc   Should antialiased functions used or not
 */
function imageantialias($im, $on) {}

/**
 * @return bool
 * @param  im resource
 * @param  cx int
 * @param  cy int
 * @param  w int
 * @param  h int
 * @param  s int
 * @param  e int
 * @param  col int
 * @desc   Draw a partial ellipse 
 */
function imagearc($im, $cx, $cy, $w, $h, $s, $e, $col) {}

/**
 * @return bool
 * @param  im resource
 * @param  font int
 * @param  x int
 * @param  y int
 * @param  c string
 * @param  col int
 * @desc   Draw a character 
 */
function imagechar($im, $font, $x, $y, $c, $col) {}

/**
 * @return bool
 * @param  im resource
 * @param  font int
 * @param  x int
 * @param  y int
 * @param  c string
 * @param  col int
 * @desc   Draw a character rotated 90 degrees counter-clockwise 
 */
function imagecharup($im, $font, $x, $y, $c, $col) {}

/**
 * @return int
 * @param  im resource
 * @param  red int
 * @param  green int
 * @param  blue int
 * @desc   Allocate a color for an image 
 */
function imagecolorallocate($im, $red, $green, $blue) {}

/**
 * @return int
 * @param  im resource
 * @param  red int
 * @param  green int
 * @param  blue int
 * @param  alpha int
 * @desc   Allocate a color with an alpha level.  Works for true color and palette based images 
 */
function imagecolorallocatealpha($im, $red, $green, $blue, $alpha) {}

/**
 * @return int
 * @param  im resource
 * @param  x int
 * @param  y int
 * @desc   Get the index of the color of a pixel 
 */
function imagecolorat($im, $x, $y) {}

/**
 * @return int
 * @param  im resource
 * @param  red int
 * @param  green int
 * @param  blue int
 * @desc   Get the index of the closest color to the specified color 
 */
function imagecolorclosest($im, $red, $green, $blue) {}

/**
 * @return int
 * @param  im resource
 * @param  red int
 * @param  green int
 * @param  blue int
 * @param  alpha int
 * @desc   Find the closest matching colour with alpha transparency 
 */
function imagecolorclosestalpha($im, $red, $green, $blue, $alpha) {}

/**
 * @return int
 * @param  im resource
 * @param  red int
 * @param  green int
 * @param  blue int
 * @desc   Get the index of the color which has the hue, white and blackness nearest to the given color 
 */
function imagecolorclosesthwb($im, $red, $green, $blue) {}

/**
 * @return bool
 * @param  im resource
 * @param  index int
 * @desc   De-allocate a color for an image 
 */
function imagecolordeallocate($im, $index) {}

/**
 * @return int
 * @param  im resource
 * @param  red int
 * @param  green int
 * @param  blue int
 * @desc   Get the index of the specified color 
 */
function imagecolorexact($im, $red, $green, $blue) {}

/**
 * @return int
 * @param  im resource
 * @param  red int
 * @param  green int
 * @param  blue int
 * @param  alpha int
 * @desc   Find exact match for colour with transparency 
 */
function imagecolorexactalpha($im, $red, $green, $blue, $alpha) {}

/**
 * @return bool
 * @param  im1 resource
 * @param  im2 resource
 * @desc   Makes the colors of the palette version of an image more closely match the true color version 
 */
function imagecolormatch($im1, $im2) {}

/**
 * @return int
 * @param  im resource
 * @param  red int
 * @param  green int
 * @param  blue int
 * @desc   Get the index of the specified color or its closest possible alternative 
 */
function imagecolorresolve($im, $red, $green, $blue) {}

/**
 * @return int
 * @param  im resource
 * @param  red int
 * @param  green int
 * @param  blue int
 * @param  alpha int
 * @desc   Resolve/Allocate a colour with an alpha level.  Works for true colour and palette based images 
 */
function imagecolorresolvealpha($im, $red, $green, $blue, $alpha) {}

/**
 * @return void
 * @param  im resource
 * @param  col int
 * @param  red int
 * @param  green int
 * @param  blue int
 * @desc   Set the color for the specified palette index 
 */
function imagecolorset($im, $col, $red, $green, $blue) {}

/**
 * @return array
 * @param  im resource
 * @param  col int
 * @desc   Get the colors for an index 
 */
function imagecolorsforindex($im, $col) {}

/**
 * @return int
 * @param  im resource
 * @desc   Find out the number of colors in an image's palette 
 */
function imagecolorstotal($im) {}

/**
 * @return int
 * @param  im resource
 * @param  col int[optional]
 * @desc   Define a color as transparent 
 */
function imagecolortransparent($im, $col = null) {}

/**
 * @return bool
 * @param  dst_im resource
 * @param  src_im resource
 * @param  dst_x int
 * @param  dst_y int
 * @param  src_x int
 * @param  src_y int
 * @param  src_w int
 * @param  src_h int
 * @desc   Copy part of an image 
 */
function imagecopy($dst_im, $src_im, $dst_x, $dst_y, $src_x, $src_y, $src_w, $src_h) {}

/**
 * @return bool
 * @param  src_im resource
 * @param  dst_im resource
 * @param  dst_x int
 * @param  dst_y int
 * @param  src_x int
 * @param  src_y int
 * @param  src_w int
 * @param  src_h int
 * @param  pct int
 * @desc   Merge one part of an image with another 
 */
function imagecopymerge($src_im, $dst_im, $dst_x, $dst_y, $src_x, $src_y, $src_w, $src_h, $pct) {}

/**
 * @return bool
 * @param  src_im resource
 * @param  dst_im resource
 * @param  dst_x int
 * @param  dst_y int
 * @param  src_x int
 * @param  src_y int
 * @param  src_w int
 * @param  src_h int
 * @param  pct int
 * @desc   Merge one part of an image with another 
 */
function imagecopymergegray($src_im, $dst_im, $dst_x, $dst_y, $src_x, $src_y, $src_w, $src_h, $pct) {}

/**
 * @return bool
 * @param  dst_im resource
 * @param  src_im resource
 * @param  dst_x int
 * @param  dst_y int
 * @param  src_x int
 * @param  src_y int
 * @param  dst_w int
 * @param  dst_h int
 * @param  src_w int
 * @param  src_h int
 * @desc   Copy and resize part of an image using resampling to help ensure clarity 
 */
function imagecopyresampled($dst_im, $src_im, $dst_x, $dst_y, $src_x, $src_y, $dst_w, $dst_h, $src_w, $src_h) {}

/**
 * @return bool
 * @param  dst_im resource
 * @param  src_im resource
 * @param  dst_x int
 * @param  dst_y int
 * @param  src_x int
 * @param  src_y int
 * @param  dst_w int
 * @param  dst_h int
 * @param  src_w int
 * @param  src_h int
 * @desc   Copy and resize part of an image 
 */
function imagecopyresized($dst_im, $src_im, $dst_x, $dst_y, $src_x, $src_y, $dst_w, $dst_h, $src_w, $src_h) {}

/**
 * @return resource
 * @param  x_size int
 * @param  y_size int
 * @desc   Create a new image 
 */
function imagecreate($x_size, $y_size) {}

/**
 * @return resource
 * @param  filename string
 * @desc   Create a new image from GD file or URL 
 */
function imagecreatefromgd($filename) {}

/**
 * @return resource
 * @param  filename string
 * @desc   Create a new image from GD2 file or URL 
 */
function imagecreatefromgd2($filename) {}

/**
 * @return resource
 * @param  filename string
 * @param  srcX int
 * @param  srcY int
 * @param  width int
 * @param  height int
 * @desc   Create a new image from a given part of GD2 file or URL 
 */
function imagecreatefromgd2part($filename, $srcX, $srcY, $width, $height) {}

/**
 * @return resource
 * @param  filename string
 * @desc   Create a new image from GIF file or URL 
 */
function imagecreatefromgif($filename) {}

/**
 * @return resource
 * @param  filename string
 * @desc   Create a new image from JPEG file or URL 
 */
function imagecreatefromjpeg($filename) {}

/**
 * @return resource
 * @param  filename string
 * @desc   Create a new image from PNG file or URL 
 */
function imagecreatefrompng($filename) {}

/**
 * @return resource
 * @param  image string
 * @desc   Create a new image from the image stream in the string 
 */
function imagecreatefromstring($image) {}

/**
 * @return resource
 * @param  filename string
 * @desc   Create a new image from WBMP file or URL 
 */
function imagecreatefromwbmp($filename) {}

/**
 * @return resource
 * @param  filename string
 * @desc   Create a new image from XBM file or URL 
 */
function imagecreatefromxbm($filename) {}

/**
 * @return resource
 * @param  filename string
 * @desc   Create a new image from XPM file or URL 
 */
function imagecreatefromxpm($filename) {}

/**
 * @return resource
 * @param  x_size int
 * @param  y_size int
 * @desc   Create a new true color image 
 */
function imagecreatetruecolor($x_size, $y_size) {}

/**
 * @return bool
 * @param  im resource
 * @param  x1 int
 * @param  y1 int
 * @param  x2 int
 * @param  y2 int
 * @param  col int
 * @desc   Draw a dashed line 
 */
function imagedashedline($im, $x1, $y1, $x2, $y2, $col) {}

/**
 * @return bool
 * @param  im resource
 * @desc   Destroy an image 
 */
function imagedestroy($im) {}

/**
 * @return bool
 * @param  im resource
 * @param  cx int
 * @param  cy int
 * @param  w int
 * @param  h int
 * @param  color int
 * @desc   Draw an ellipse 
 */
function imageellipse($im, $cx, $cy, $w, $h, $color) {}

/**
 * @return bool
 * @param  im resource
 * @param  x int
 * @param  y int
 * @param  col int
 * @desc   Flood fill 
 */
function imagefill($im, $x, $y, $col) {}

/**
 * @return bool
 * @param  im resource
 * @param  cx int
 * @param  cy int
 * @param  w int
 * @param  h int
 * @param  s int
 * @param  e int
 * @param  col int
 * @param  style int
 * @desc   Draw a filled partial ellipse 
 */
function imagefilledarc($im, $cx, $cy, $w, $h, $s, $e, $col, $style) {}

/**
 * @return bool
 * @param  im resource
 * @param  cx int
 * @param  cy int
 * @param  w int
 * @param  h int
 * @param  color int
 * @desc   Draw an ellipse 
 */
function imagefilledellipse($im, $cx, $cy, $w, $h, $color) {}

/**
 * @return bool
 * @param  im resource
 * @param  point array
 * @param  num_points int
 * @param  col int
 * @desc   Draw a filled polygon 
 */
function imagefilledpolygon($im, $point, $num_points, $col) {}

/**
 * @return bool
 * @param  im resource
 * @param  x1 int
 * @param  y1 int
 * @param  x2 int
 * @param  y2 int
 * @param  col int
 * @desc   Draw a filled rectangle 
 */
function imagefilledrectangle($im, $x1, $y1, $x2, $y2, $col) {}

/**
 * @return bool
 * @param  im resource
 * @param  x int
 * @param  y int
 * @param  border int
 * @param  col int
 * @desc   Flood fill to specific color 
 */
function imagefilltoborder($im, $x, $y, $border, $col) {}

/**
 * @return bool
 * @param  src_im resource
 * @param  filtertype int
 * @param  args[optional]
 * @desc   Applies Filter an image using a custom angle 
 */
function imagefilter($src_im, $filtertype, $args = null) {}

/**
 * @return int
 * @param  font int
 * @desc   Get font height 
 */
function imagefontheight($font) {}

/**
 * @return int
 * @param  font int
 * @desc   Get font width 
 */
function imagefontwidth($font) {}

/**
 * @return array
 * @param  size int
 * @param  angle int
 * @param  font_file string
 * @param  text string
 * @param  extrainfo array
 * @desc   Give the bounding box of a text using fonts via freetype2 
 */
function imageftbbox($size, $angle, $font_file, $text, $extrainfo) {}

/**
 * @return array
 * @param  im resource
 * @param  size int
 * @param  angle int
 * @param  x int
 * @param  y int
 * @param  col int
 * @param  font_file string
 * @param  text string
 * @param  extrainfo array[optional]
 * @desc   Write text to the image using fonts via freetype2 
 */
function imagefttext($im, $size, $angle, $x, $y, $col, $font_file, $text, $extrainfo = null) {}

/**
 * @return bool
 * @param  im resource
 * @param  inputgamma float
 * @param  outputgamma float
 * @desc   Apply a gamma correction to a GD image 
 */
function imagegammacorrect($im, $inputgamma, $outputgamma) {}

/**
 * @return bool
 * @param  im resource
 * @param  filename string[optional]
 * @desc   Output GD image to browser or file 
 */
function imagegd($im, $filename = null) {}

/**
 * @return bool
 * @param  im resource
 * @param  filename string[optional]
 * @param  chunk_size int[optional]
 * @param  type int[optional]
 * @desc   Output GD2 image to browser or file 
 */
function imagegd2($im, $filename = null, $chunk_size = null, $type = null) {}

/**
 * @return bool
 * @param  im resource
 * @param  filename string[optional]
 * @desc   Output GIF image to browser or file 
 */
function imagegif($im, $filename = null) {}

/**
 * @return int
 * @param  im resource
 * @param  interlace int[optional]
 * @desc   Enable or disable interlace 
 */
function imageinterlace($im, $interlace = null) {}

/**
 * @return bool
 * @param  im resource
 * @desc   return true if the image uses truecolor 
 */
function imageistruecolor($im) {}

/**
 * @return bool
 * @param  im resource
 * @param  filename string[optional]
 * @param  quality int[optional]
 * @desc   Output JPEG image to browser or file 
 */
function imagejpeg($im, $filename = null, $quality = null) {}

/**
 * @return bool
 * @param  im resource
 * @param  effect int
 * @desc   Set the alpha blending flag to use the bundled libgd layering effects 
 */
function imagelayereffect($im, $effect) {}

/**
 * @return bool
 * @param  im resource
 * @param  x1 int
 * @param  y1 int
 * @param  x2 int
 * @param  y2 int
 * @param  col int
 * @desc   Draw a line 
 */
function imageline($im, $x1, $y1, $x2, $y2, $col) {}

/**
 * @return int
 * @param  filename string
 * @desc   Load a new font 
 */
function imageloadfont($filename) {}

/**
 * @return void
 * @param  dst resource
 * @param  src resource
 * @desc   Copy the palette from the src image onto the dst image 
 */
function imagepalettecopy($dst, $src) {}

/**
 * @return bool
 * @param  im resource
 * @param  filename string[optional]
 * @desc   Output PNG image to browser or file 
 */
function imagepng($im, $filename = null) {}

/**
 * @return bool
 * @param  im resource
 * @param  point array
 * @param  num_points int
 * @param  col int
 * @desc   Draw a polygon 
 */
function imagepolygon($im, $point, $num_points, $col) {}

/**
 * @return array
 * @param  text string
 * @param  font resource
 * @param  size int
 * @param  space int[optional]
 * @param  tightness int
 * @param  angle int
 * @desc   Return the bounding box needed by a string if rasterized 
 */
function imagepsbbox($text, $font, $size, $space = null, $tightness, $angle) {}

/**
 * @return int
 * @param  font_index int
 * @desc   Make a copy of a font for purposes like extending or reenconding 
 */
function imagepscopyfont($font_index) {}

/**
 * @return bool
 * @param  font_index resource
 * @param  filename string
 * @desc   To change a fonts character encoding vector 
 */
function imagepsencodefont($font_index, $filename) {}

/**
 * @return bool
 * @param  font_index resource
 * @param  extend float
 * @desc   Extend or or condense (if extend < 1) a font 
 */
function imagepsextendfont($font_index, $extend) {}

/**
 * @return bool
 * @param  font_index resource
 * @desc   Free memory used by a font 
 */
function imagepsfreefont($font_index) {}

/**
 * @return resource
 * @param  pathname string
 * @desc   Load a new font from specified file 
 */
function imagepsloadfont($pathname) {}

/**
 * @return bool
 * @param  font_index resource
 * @param  slant float
 * @desc   Slant a font 
 */
function imagepsslantfont($font_index, $slant) {}

/**
 * @return array
 * @param  image resource
 * @param  text string
 * @param  font resource
 * @param  size int
 * @param  xcoord int
 * @param  ycoord int
 * @param  space int[optional]
 * @param  tightness int
 * @param  angle float
 * @param  antialias int
 * @desc   Rasterize a string over an image 
 */
function imagepstext($image, $text, $font, $size, $xcoord, $ycoord, $space = null, $tightness, $angle, $antialias) {}

/**
 * @return bool
 * @param  im resource
 * @param  x1 int
 * @param  y1 int
 * @param  x2 int
 * @param  y2 int
 * @param  col int
 * @desc   Draw a rectangle 
 */
function imagerectangle($im, $x1, $y1, $x2, $y2, $col) {}

/**
 * @return resource
 * @param  src_im resource
 * @param  angle float
 * @param  bgdcolor int
 * @desc   Rotate an image using a custom angle 
 */
function imagerotate($src_im, $angle, $bgdcolor) {}

/**
 * @return bool
 * @param  im resource
 * @param  on bool
 * @desc   Include alpha channel to a saved image 
 */
function imagesavealpha($im, $on) {}

/**
 * @return bool
 * @param  image resource
 * @param  brush resource
 * @desc   Set the brush image to $brush when filling $image with the "IMG_COLOR_BRUSHED" color 
 */
function imagesetbrush($image, $brush) {}

/**
 * @return bool
 * @param  im resource
 * @param  x int
 * @param  y int
 * @param  col int
 * @desc   Set a single pixel 
 */
function imagesetpixel($im, $x, $y, $col) {}

/**
 * @return bool
 * @param  im resource
 * @param  styles array
 * @desc   Set the line drawing styles for use with imageline and IMG_COLOR_STYLED. 
 */
function imagesetstyle($im, $styles) {}

/**
 * @return bool
 * @param  im resource
 * @param  thickness int
 * @desc   Set line thickness for drawing lines, ellipses, rectangles, polygons etc. 
 */
function imagesetthickness($im, $thickness) {}

/**
 * @return bool
 * @param  image resource
 * @param  tile resource
 * @desc   Set the tile image to $tile when filling $image with the "IMG_COLOR_TILED" color 
 */
function imagesettile($image, $tile) {}

/**
 * @return bool
 * @param  im resource
 * @param  font int
 * @param  x int
 * @param  y int
 * @param  str string
 * @param  col int
 * @desc   Draw a string horizontally 
 */
function imagestring($im, $font, $x, $y, $str, $col) {}

/**
 * @return bool
 * @param  im resource
 * @param  font int
 * @param  x int
 * @param  y int
 * @param  str string
 * @param  col int
 * @desc   Draw a string vertically - rotated 90 degrees counter-clockwise 
 */
function imagestringup($im, $font, $x, $y, $str, $col) {}

/**
 * @return int
 * @param  im resource
 * @desc   Get image width 
 */
function imagesx($im) {}

/**
 * @return int
 * @param  im resource
 * @desc   Get image height 
 */
function imagesy($im) {}

/**
 * @return void
 * @param  im resource
 * @param  ditherFlag bool
 * @param  colorsWanted int
 * @desc   Convert a true colour image to a palette based image with a number of colours, optionally using dithering. 
 */
function imagetruecolortopalette($im, $ditherFlag, $colorsWanted) {}

/**
 * @return array
 * @param  size int
 * @param  angle int
 * @param  font_file string
 * @param  text string
 * @desc   Give the bounding box of a text using TrueType fonts 
 */
function imagettfbbox($size, $angle, $font_file, $text) {}

/**
 * @return array
 * @param  im resource
 * @param  size int
 * @param  angle int
 * @param  x int
 * @param  y int
 * @param  col int
 * @param  font_file string
 * @param  text string
 * @desc   Write text to the image using a TrueType font 
 */
function imagettftext($im, $size, $angle, $x, $y, $col, $font_file, $text) {}

/**
 * @return int
 * @desc   Return the types of images supported in a bitfield - 1=GIF, 2=JPEG, 4=PNG, 8=WBMP, 16=XPM 
 */
function imagetypes() {}

/**
 * @return bool
 * @param  im resource
 * @param  filename string[optional]
 * @param  foreground int[optional]
 * @desc   Output WBMP image to browser or file 
 */
function imagewbmp($im, $filename = null, $foreground = null) {}

/**
 * @return int
 * @param  im int
 * @param  filename string
 * @param  foreground int[optional]
 * @desc   Output XBM image to browser or file 
 */
function imagexbm($im, $filename, $foreground = null) {}

/**
 * @return string
 * @param  text string
 * @desc   Convert an 8-bit string to a quoted-printable string 
 */
function imap_8bit($text) {}

/**
 * @return array
 * @desc   Returns an array of all IMAP alerts that have been generated since the last page load or since the last imap_alerts() call, whichever came last. The alert stack is cleared after imap_alerts() is called. 
 */
function imap_alerts() {}

/**
 * @return bool
 * @param  stream_id resource
 * @param  folder string
 * @param  message string
 * @param  options string[optional]
 * @desc   Append a new message to a specified mailbox 
 */
function imap_append($stream_id, $folder, $message, $options = null) {}

/**
 * @return string
 * @param  text string
 * @desc   Decode BASE64 encoded text 
 */
function imap_base64($text) {}

/**
 * @return string
 * @param  text string
 * @desc   Convert an 8bit string to a base64 string 
 */
function imap_binary($text) {}

/**
 * @return string
 * @param  stream_id resource
 * @param  msg_no int
 * @param  options int[optional]
 * @desc   Read the message body 
 */
function imap_body($stream_id, $msg_no, $options = null) {}

/**
 * @return object
 * @param  stream_id resource
 * @param  msg_no int
 * @param  section int
 * @desc   Read the structure of a specified body section of a specific message 
 */
function imap_bodystruct($stream_id, $msg_no, $section) {}

/**
 * @return object
 * @param  stream_id resource
 * @desc   Get mailbox properties 
 */
function imap_check($stream_id) {}

/**
 * @return bool
 * @param  stream_id resource
 * @param  sequence string
 * @param  flag string
 * @param  options int[optional]
 * @desc   Clears flags on messages 
 */
function imap_clearflag_full($stream_id, $sequence, $flag, $options = null) {}

/**
 * @return bool
 * @param  stream_id resource
 * @param  options int[optional]
 * @desc   Close an IMAP stream 
 */
function imap_close($stream_id, $options = null) {}

/**
 * @return bool
 * @param  stream_id resource
 * @param  mailbox string
 * @desc   Create a new mailbox 
 */
function imap_create($stream_id, $mailbox) {}

/**
 * @return bool
 * @param  stream_id resource
 * @param  mailbox string
 * @desc   Create a new mailbox 
 */
function imap_createmailbox($stream_id, $mailbox) {}

/**
 * @return bool
 * @param  stream_id resource
 * @param  msg_no int
 * @param  options int[optional]
 * @desc   Mark a message for deletion 
 */
function imap_delete($stream_id, $msg_no, $options = null) {}

/**
 * @return bool
 * @param  stream_id resource
 * @param  mailbox string
 * @desc   Delete a mailbox 
 */
function imap_deletemailbox($stream_id, $mailbox) {}

/**
 * @return array
 * @desc   Returns an array of all IMAP errors generated since the last page load, or since the last imap_errors() call, whichever came last. The error stack is cleared after imap_errors() is called. 
 */
function imap_errors() {}

/**
 * @return bool
 * @param  stream_id resource
 * @desc   Permanently delete all messages marked for deletion 
 */
function imap_expunge($stream_id) {}

/**
 * @return array
 * @param  stream_id resource
 * @param  msg_no int
 * @param  options int[optional]
 * @desc   Read an overview of the information in the headers of the given message sequence 
 */
function imap_fetch_overview($stream_id, $msg_no, $options = null) {}

/**
 * @return string
 * @param  stream_id resource
 * @param  msg_no int
 * @param  section int
 * @param  options int[optional]
 * @desc   Get a specific body section 
 */
function imap_fetchbody($stream_id, $msg_no, $section, $options = null) {}

/**
 * @return string
 * @param  stream_id resource
 * @param  msg_no int
 * @param  options int[optional]
 * @desc   Get the full unfiltered header for a message 
 */
function imap_fetchheader($stream_id, $msg_no, $options = null) {}

/**
 * @return object
 * @param  stream_id resource
 * @param  msg_no int
 * @param  options int[optional]
 * @desc   Read the full structure of a message 
 */
function imap_fetchstructure($stream_id, $msg_no, $options = null) {}

/**
 * @return string
 * @param  stream_id resource
 * @param  msg_no int
 * @param  options int[optional]
 * @desc   Read the message body 
 */
function imap_fetchtext($stream_id, $msg_no, $options = null) {}

/**
 * @return array
 * @param  stream_id resource
 * @param  qroot string
 * @desc   Returns the quota set to the mailbox account qroot 
 */
function imap_get_quota($stream_id, $qroot) {}

/**
 * @return array
 * @param  stream_id resource
 * @param  mbox string
 * @desc   Returns the quota set to the mailbox account mbox 
 */
function imap_get_quotaroot($stream_id, $mbox) {}

/**
 * @return array
 * @param  stream_id resource
 * @param  mailbox string
 * @desc   Gets the ACL for a given mailbox 
 */
function imap_getacl($stream_id, $mailbox) {}

/**
 * @return array
 * @param  stream_id resource
 * @param  ref string
 * @param  pattern string
 * @desc   Reads the list of mailboxes and returns a full array of objects containing name, attributes, and delimiter 
 */
function imap_getmailboxes($stream_id, $ref, $pattern) {}

/**
 * @return array
 * @param  stream_id resource
 * @param  ref string
 * @param  pattern string
 * @desc   Return a list of subscribed mailboxes, in the same format as imap_getmailboxes() 
 */
function imap_getsubscribed($stream_id, $ref, $pattern) {}

/**
 * @return object
 * @param  stream_id resource
 * @param  msg_no int
 * @param  from_length int[optional]
 * @param  subject_length int[optional]
 * @param  default_host string[optional]
 * @desc   Read the headers of the message 
 */
function imap_header($stream_id, $msg_no, $from_length = null, $subject_length = null, $default_host = null) {}

/**
 * @return object
 * @param  stream_id resource
 * @param  msg_no int
 * @param  from_length int[optional]
 * @param  subject_length int[optional]
 * @param  default_host string[optional]
 * @desc   Read the headers of the message 
 */
function imap_headerinfo($stream_id, $msg_no, $from_length = null, $subject_length = null, $default_host = null) {}

/**
 * @return array
 * @param  stream_id resource
 * @desc   Returns headers for all messages in a mailbox 
 */
function imap_headers($stream_id) {}

/**
 * @return string
 * @desc   Returns the last error that was generated by an IMAP function. The error stack is NOT cleared after this call. 
 */
function imap_last_error() {}

/**
 * @return array
 * @param  stream_id resource
 * @param  ref string
 * @param  pattern string
 * @desc   Read the list of mailboxes 
 */
function imap_list($stream_id, $ref, $pattern) {}

/**
 * @return array
 * @param  stream_id resource
 * @param  ref string
 * @param  pattern string
 * @desc   Read the list of mailboxes 
 */
function imap_listmailbox($stream_id, $ref, $pattern) {}

/**
 * @return array
 * @param  stream_id resource
 * @param  ref string
 * @param  pattern string
 * @desc   Return a list of subscribed mailboxes 
 */
function imap_listsubscribed($stream_id, $ref, $pattern) {}

/**
 * @return array
 * @param  stream_id resource
 * @param  ref string
 * @param  pattern string
 * @desc   Return a list of subscribed mailboxes 
 */
function imap_lsub($stream_id, $ref, $pattern) {}

/**
 * @return bool
 * @param  to string
 * @param  subject string
 * @param  message string
 * @param  additional_headers string[optional]
 * @param  cc string[optional]
 * @param  bcc string[optional]
 * @param  rpath string[optional]
 * @desc   Send an email message 
 */
function imap_mail($to, $subject, $message, $additional_headers = null, $cc = null, $bcc = null, $rpath = null) {}

/**
 * @return string
 * @param  envelope array
 * @param  body array
 * @desc   Create a MIME message based on given envelope and body sections 
 */
function imap_mail_compose($envelope, $body) {}

/**
 * @return bool
 * @param  stream_id resource
 * @param  msg_no int
 * @param  mailbox string
 * @param  options int[optional]
 * @desc   Copy specified message to a mailbox 
 */
function imap_mail_copy($stream_id, $msg_no, $mailbox, $options = null) {}

/**
 * @return bool
 * @param  stream_id resource
 * @param  msg_no int
 * @param  mailbox string
 * @param  options int[optional]
 * @desc   Move specified message to a mailbox 
 */
function imap_mail_move($stream_id, $msg_no, $mailbox, $options = null) {}

/**
 * @return object
 * @param  stream_id resource
 * @desc   Returns info about the current mailbox 
 */
function imap_mailboxmsginfo($stream_id) {}

/**
 * @return array
 * @param  str string
 * @desc   Decode mime header element in accordance with RFC 2047 and return array of objects containing 'charset' encoding and decoded 'text' 
 */
function imap_mime_header_decode($str) {}

/**
 * @return int
 * @param  stream_id resource
 * @param  unique_msg_id int
 * @desc   Get the sequence number associated with a UID 
 */
function imap_msgno($stream_id, $unique_msg_id) {}

/**
 * @return int
 * @param  stream_id resource
 * @desc   Gives the number of messages in the current mailbox 
 */
function imap_num_msg($stream_id) {}

/**
 * @return int
 * @param  stream_id resource
 * @desc   Gives the number of recent messages in current mailbox 
 */
function imap_num_recent($stream_id) {}

/**
 * @return resource
 * @param  mailbox string
 * @param  user string
 * @param  password string
 * @param  options int[optional]
 * @desc   Open an IMAP stream to a mailbox 
 */
function imap_open($mailbox, $user, $password, $options = null) {}

/**
 * @return bool
 * @param  stream_id resource
 * @desc   Check if the IMAP stream is still active 
 */
function imap_ping($stream_id) {}

/**
 * @return string
 * @param  text string
 * @desc   Convert a quoted-printable string to an 8-bit string 
 */
function imap_qprint($text) {}

/**
 * @return bool
 * @param  stream_id resource
 * @param  old_name string
 * @param  new_name string
 * @desc   Rename a mailbox 
 */
function imap_rename($stream_id, $old_name, $new_name) {}

/**
 * @return bool
 * @param  stream_id resource
 * @param  old_name string
 * @param  new_name string
 * @desc   Rename a mailbox 
 */
function imap_renamemailbox($stream_id, $old_name, $new_name) {}

/**
 * @return bool
 * @param  stream_id resource
 * @param  mailbox string
 * @param  options int[optional]
 * @desc   Reopen an IMAP stream to a new mailbox 
 */
function imap_reopen($stream_id, $mailbox, $options = null) {}

/**
 * @return array
 * @param  address_string string
 * @param  default_host string
 * @desc   Parses an address string 
 */
function imap_rfc822_parse_adrlist($address_string, $default_host) {}

/**
 * @return object
 * @param  headers string
 * @param  default_host string[optional]
 * @desc   Parse a set of mail headers contained in a string, and return an object similar to imap_headerinfo() 
 */
function imap_rfc822_parse_headers($headers, $default_host = null) {}

/**
 * @return string
 * @param  mailbox string
 * @param  host string
 * @param  personal string
 * @desc   Returns a properly formatted email address given the mailbox, host, and personal info 
 */
function imap_rfc822_write_address($mailbox, $host, $personal) {}

/**
 * @return array
 * @param  stream_id resource
 * @param  ref string
 * @param  pattern string
 * @param  content string
 * @desc   Read list of mailboxes containing a certain string 
 */
function imap_scan($stream_id, $ref, $pattern, $content) {}

/**
 * @return array
 * @param  stream_id resource
 * @param  criteria string
 * @param  options int[optional]
 * @param  charset string[optional]
 * @desc   Return a list of messages matching the given criteria 
 */
function imap_search($stream_id, $criteria, $options = null, $charset = null) {}

/**
 * @return bool
 * @param  stream_id resource
 * @param  qroot string
 * @param  mailbox_size int
 * @desc   Will set the quota for qroot mailbox 
 */
function imap_set_quota($stream_id, $qroot, $mailbox_size) {}

/**
 * @return bool
 * @param  stream_id resource
 * @param  mailbox string
 * @param  id string
 * @param  rights string
 * @desc   Sets the ACL for a given mailbox 
 */
function imap_setacl($stream_id, $mailbox, $id, $rights) {}

/**
 * @return bool
 * @param  stream_id resource
 * @param  sequence string
 * @param  flag string
 * @param  options int[optional]
 * @desc   Sets flags on messages 
 */
function imap_setflag_full($stream_id, $sequence, $flag, $options = null) {}

/**
 * @return array
 * @param  stream_id resource
 * @param  criteria int
 * @param  reverse int
 * @param  options int[optional]
 * @param  search_criteria string[optional]
 * @param  charset string[optional]
 * @desc   Sort an array of message headers, optionally including only messages that meet specified criteria. 
 */
function imap_sort($stream_id, $criteria, $reverse, $options = null, $search_criteria = null, $charset = null) {}

/**
 * @return object
 * @param  stream_id resource
 * @param  mailbox string
 * @param  options int
 * @desc   Get status info from a mailbox 
 */
function imap_status($stream_id, $mailbox, $options) {}

/**
 * @return bool
 * @param  stream_id resource
 * @param  mailbox string
 * @desc   Subscribe to a mailbox 
 */
function imap_subscribe($stream_id, $mailbox) {}

/**
 * @return array
 * @param  stream_id resource
 * @param  options int[optional]
 * @desc   Return threaded by REFERENCES tree 
 */
function imap_thread($stream_id, $options = null) {}

/**
 * @return mixed
 * @param  timeout_type int
 * @param  timeout int[optional]
 * @desc   Set or fetch imap timeout 
 */
function imap_timeout($timeout_type, $timeout = null) {}

/**
 * @return int
 * @param  stream_id resource
 * @param  msg_no int
 * @desc   Get the unique message id associated with a standard sequential message number 
 */
function imap_uid($stream_id, $msg_no) {}

/**
 * @return bool
 * @param  stream_id resource
 * @param  msg_no int
 * @desc   Remove the delete flag from a message 
 */
function imap_undelete($stream_id, $msg_no) {}

/**
 * @return bool
 * @param  stream_id resource
 * @param  mailbox string
 * @desc   Unsubscribe from a mailbox 
 */
function imap_unsubscribe($stream_id, $mailbox) {}

/**
 * @return string
 * @param  buf string
 * @desc   Decode a modified UTF-7 string 
 */
function imap_utf7_decode($buf) {}

/**
 * @return string
 * @param  buf string
 * @desc   Encode a string in modified UTF-7 
 */
function imap_utf7_encode($buf) {}

/**
 * @return string
 * @param  mime_encoded_text string
 * @desc   Convert a mime-encoded text to UTF-8 
 */
function imap_utf8($mime_encoded_text) {}

/**
 * @return string
 * @param  glue string[optional]
 * @param  pieces array
 * @desc   Joins array elements placing glue string between items and return one string 
 */
function implode($glue = null, $pieces) {}

/**
 * @return bool
 * @param  types string
 * @param  prefix string[optional]
 * @desc   Import GET/POST/Cookie variables into the global scope 
 */
function import_request_variables($types, $prefix = null) {}

/**
 * @return bool
 * @param  needle mixed
 * @param  haystack array
 * @param  strict bool[optional]
 * @desc   Checks if the given value exists in the array 
 */
function in_array($needle, $haystack, $strict = null) {}

/**
 * @return bool
 * @param  link resource[optional]
 * @desc   Switch autocommit on or off 
 */
function ingres_autocommit($link = null) {}

/**
 * @return bool
 * @param  link resource[optional]
 * @desc   Close an Ingres II database connection 
 */
function ingres_close($link = null) {}

/**
 * @return bool
 * @param  link resource[optional]
 * @desc   Commit a transaction 
 */
function ingres_commit($link = null) {}

/**
 * @return resource
 * @param  database string[optional]
 * @param  username string[optional]
 * @param  password string[optional]
 * @desc   Open a connection to an Ingres II database the syntax of database is [node_id::]dbname[/svr_class] 
 */
function ingres_connect($database = null, $username = null, $password = null) {}

/**
 * @return array
 * @param  result_type int[optional]
 * @param  link resource[optional]
 * @desc   Fetch a row of result into an array result_type can be II_NUM for enumerated array, II_ASSOC for associative array, or II_BOTH (default) 
 */
function ingres_fetch_array($result_type = null, $link = null) {}

/**
 * @return array
 * @param  result_type int[optional]
 * @param  link resource[optional]
 * @desc   Fetch a row of result into an object result_type can be II_NUM for enumerated object, II_ASSOC for associative object, or II_BOTH (default) 
 */
function ingres_fetch_object($result_type = null, $link = null) {}

/**
 * @return array
 * @param  link resource[optional]
 * @desc   Fetch a row of result into an enumerated array 
 */
function ingres_fetch_row($link = null) {}

/**
 * @return string
 * @param  index int
 * @param  link resource[optional]
 * @desc   Return the length of a field in a query result index must be >0 and <= ingres_num_fields() 
 */
function ingres_field_length($index, $link = null) {}

/**
 * @return string
 * @param  index int
 * @param  link resource[optional]
 * @desc   Return the name of a field in a query result index must be >0 and <= ingres_num_fields() 
 */
function ingres_field_name($index, $link = null) {}

/**
 * @return string
 * @param  index int
 * @param  link resource[optional]
 * @desc   Return true if the field is nullable and false otherwise index must be >0 and <= ingres_num_fields() 
 */
function ingres_field_nullable($index, $link = null) {}

/**
 * @return string
 * @param  index int
 * @param  link resource[optional]
 * @desc   Return the precision of a field in a query result index must be >0 and <= ingres_num_fields() 
 */
function ingres_field_precision($index, $link = null) {}

/**
 * @return string
 * @param  index int
 * @param  link resource[optional]
 * @desc   Return the scale of a field in a query result index must be >0 and <= ingres_num_fields() 
 */
function ingres_field_scale($index, $link = null) {}

/**
 * @return string
 * @param  index int
 * @param  link resource[optional]
 * @desc   Return the type of a field in a query result index must be >0 and <= ingres_num_fields() 
 */
function ingres_field_type($index, $link = null) {}

/**
 * @return int
 * @param  link resource[optional]
 * @desc   Return the number of fields returned by the last query 
 */
function ingres_num_fields($link = null) {}

/**
 * @return int
 * @param  link resource[optional]
 * @desc   Return the number of rows affected/returned by the last query 
 */
function ingres_num_rows($link = null) {}

/**
 * @return resource
 * @param  database string[optional]
 * @param  username string[optional]
 * @param  password string[optional]
 * @desc   Open a persistent connection to an Ingres II database the syntax of database is [node_id::]dbname[/svr_class] 
 */
function ingres_pconnect($database = null, $username = null, $password = null) {}

/**
 * @return bool
 * @param  query string
 * @param  link resource[optional]
 * @desc   Send a SQL query to Ingres II 
 */
function ingres_query($query, $link = null) {}

/**
 * @return bool
 * @param  link resource[optional]
 * @desc   Roll back a transaction 
 */
function ingres_rollback($link = null) {}

/**
 * @return string
 * @param  varname string
 * @param  newvalue string
 * @desc   Set a configuration option, returns false on error and the old value of the configuration option on success 
 */
function ini_alter($varname, $newvalue) {}

/**
 * @return string
 * @param  varname string
 * @desc   Get a configuration option 
 */
function ini_get($varname) {}

/**
 * @return array
 * @param  extension string[optional]
 * @desc   Get all configuration options 
 */
function ini_get_all($extension = null) {}

/**
 * @return void
 * @param  varname string
 * @desc   Restore the value of a configuration option specified by varname 
 */
function ini_restore($varname) {}

/**
 * @return string
 * @param  varname string
 * @param  newvalue string
 * @desc   Set a configuration option, returns false on error and the old value of the configuration option on success 
 */
function ini_set($varname, $newvalue) {}

/**
 * @return int
 * @param  var mixed
 * @param  base int[optional]
 * @desc   Get the integer value of a variable using the optional base for the conversion 
 */
function intval($var, $base = null) {}

/**
 * @return int
 * @param  ip_address string
 * @desc   Converts a string containing an (IPv4) Internet Protocol dotted address into a proper address 
 */
function ip2long($ip_address) {}

/**
 * @return array
 * @param  iptcdata string
 * @param  jpeg_file_name string
 * @param  spool int[optional]
 * @desc   Embed binary IPTC data into a JPEG image. 
 */
function iptcembed($iptcdata, $jpeg_file_name, $spool = null) {}

/**
 * @return array
 * @param  iptcdata string
 * @desc   Parse binary IPTC-data into associative array 
 */
function iptcparse($iptcdata) {}

/**
 * @return bool
 * @param  connection int
 * @param  channel string
 * @param  mode_spec string
 * @param  nick string
 * @desc   Sets channel mode flags for user 
 */
function ircg_channel_mode($connection, $channel, $mode_spec, $nick) {}

/**
 * @return bool
 * @param  connection int
 * @param  reason string
 * @desc   Terminate IRC connection 
 */
function ircg_disconnect($connection, $reason) {}

/**
 * @return array
 * @param  params string
 * @desc   Decodes a list of JS-encoded parameters into a native array 
 */
function ircg_eval_ecmascript_params($params) {}

/**
 * @return array
 * @param  connection int
 * @desc   Returns the error from previous ircg operation 
 */
function ircg_fetch_error_msg($connection) {}

/**
 * @return string
 * @param  connection int
 * @desc   Gets username for connection 
 */
function ircg_get_username($connection) {}

/**
 * @return string
 * @param  html_text string
 * @desc   Encodes HTML preserving output 
 */
function ircg_html_encode($html_text) {}

/**
 * @return bool
 * @param  connection resource
 * @param  nick string
 * @desc   Adds a user to your ignore list on a server 
 */
function ircg_ignore_add($connection, $nick) {}

/**
 * @return bool
 * @param  connection int
 * @param  nick string
 * @desc   Removes a user from your ignore list 
 */
function ircg_ignore_del($connection, $nick) {}

/**
 * @return bool
 * @param  connection int
 * @param  channel string
 * @param  nickname string
 * @desc   INVITEs nickname to channel 
 */
function ircg_invite($connection, $channel, $nickname) {}

/**
 * @return bool
 * @param  connection int
 * @desc   Checks connection status 
 */
function ircg_is_conn_alive($connection) {}

/**
 * @return bool
 * @param  connection int
 * @param  channel string
 * @param  chan_key string[optional]
 * @desc   Joins a channel on a connected server 
 */
function ircg_join($connection, $channel, $chan_key = null) {}

/**
 * @return bool
 * @param  connection int
 * @param  channel string
 * @param  nick string
 * @param  reason string
 * @desc   Kicks user from channel 
 */
function ircg_kick($connection, $channel, $nick, $reason) {}

/**
 * @return bool
 * @param  connection int
 * @param  channel string
 * @desc   List topic/user count of channel(s) 
 */
function ircg_list($connection, $channel) {}

/**
 * @return bool
 * @param  name string
 * @desc   Selects a set of format strings for display of IRC messages 
 */
function ircg_lookup_format_messages($name) {}

/**
 * @return bool
 * @param  connection int
 * @desc   IRC network statistics 
 */
function ircg_lusers($connection) {}

/**
 * @return bool
 * @param  connection int
 * @param  recipient string
 * @param  message string
 * @param  loop_suppress bool[optional]
 * @desc   Delivers a message to the IRC network 
 */
function ircg_msg($connection, $recipient, $message, $loop_suppress = null) {}

/**
 * @return bool
 * @param  connection int
 * @param  channel string
 * @param  target string[optional]
 * @desc   Queries visible usernames 
 */
function ircg_names($connection, $channel, $target = null) {}

/**
 * @return bool
 * @param  connection int
 * @param  newnick string
 * @desc   Changes the nickname 
 */
function ircg_nick($connection, $newnick) {}

/**
 * @return string
 * @param  nick string
 * @desc   Escapes special characters in nickname to be IRC-compliant 
 */
function ircg_nickname_escape($nick) {}

/**
 * @return string
 * @param  nick string
 * @desc   Decodes encoded nickname 
 */
function ircg_nickname_unescape($nick) {}

/**
 * @return bool
 * @param  connection int
 * @param  recipient string
 * @param  message string
 * @desc   Sends a one-way communication NOTICE to a target 
 */
function ircg_notice($connection, $recipient, $message) {}

/**
 * @return bool
 * @param  connection int
 * @param  name string
 * @param  password string
 * @desc   Elevates privileges to IRC OPER 
 */
function ircg_oper($connection, $name, $password) {}

/**
 * @return bool
 * @param  connection int
 * @param  channel string
 * @desc   Leaves a channel 
 */
function ircg_part($connection, $channel) {}

/**
 * @return int
 * @param  username string
 * @param  server string[optional]
 * @param  port int[optional]
 * @param  format_msg_set_name string[optional]
 * @param  ctcp_set array[optional]
 * @param  user_details array[optional]
 * @param  bailout_on_trivial bool[optional]
 * @desc   Create a persistent IRC connection 
 */
function ircg_pconnect($username, $server = null, $port = null, $format_msg_set_name = null, $ctcp_set = null, $user_details = null, $bailout_on_trivial = null) {}

/**
 * @return bool
 * @param  name string
 * @param  messages array
 * @desc   Registers a set of format strings for display of IRC messages 
 */
function ircg_register_format_messages($name, $messages) {}

/**
 * @return bool
 * @param  connection int
 * @desc   Sets current connection for output 
 */
function ircg_set_current($connection) {}

/**
 * @return bool
 * @param  connection int
 * @param  path string
 * @desc   Sets logfile for connection 
 */
function ircg_set_file($connection, $path) {}

/**
 * @return bool
 * @param  connection int
 * @param  host string
 * @param  port int
 * @param  data string
 * @desc   Sets hostaction to be executed when connection dies 
 */
function ircg_set_on_die($connection, $host, $port, $data) {}

/**
 * @return bool
 * @param  connection int
 * @param  host string
 * @param  port int
 * @param  data string
 * @desc   Set action to be executed when data is received from a HTTP client 
 */
function ircg_set_on_read_data($connection, $host, $port, $data) {}

/**
 * @return bool
 * @param  connection int
 * @param  channel string
 * @param  topic string
 * @desc   Sets topic for channel 
 */
function ircg_topic($connection, $channel, $topic) {}

/**
 * @return bool
 * @param  connection int
 * @param  mask string
 * @param  ops_only bool[optional]
 * @desc   Queries server for WHO information 
 */
function ircg_who($connection, $mask, $ops_only = null) {}

/**
 * @return bool
 * @param  connection int
 * @param  nick string
 * @desc   Queries user information for nick on server 
 */
function ircg_whois($connection, $nick) {}

/**
 * @return bool
 * @param  object object
 * @param  class_name string
 * @desc   Returns true if the object is of this class or has this class as one of its parents 
 */
function is_a($object, $class_name) {}

/**
 * @return bool
 * @param  var mixed
 * @desc   Returns true if variable is an array 
 */
function is_array($var) {}

/**
 * @return bool
 * @param  var mixed
 * @desc   Returns true if variable is a boolean 
 */
function is_bool($var) {}

/**
 * @return bool
 * @param  var mixed
 * @param  syntax_only bool[optional]
 * @param  callable_name string[optional]
 * @desc   Returns true if var is callable. 
 */
function is_callable($var, $syntax_only = null, $callable_name = null) {}

/**
 * @return bool
 * @param  filename string
 * @desc   Returns true if file is directory 
 */
function is_dir($filename) {}

/**
 * @return bool
 * @param  var mixed
 * @desc   Returns true if variable is float point
 */
function is_double($var) {}

/**
 * @return bool
 * @param  filename string
 * @desc   Returns true if file is executable 
 */
function is_executable($filename) {}

/**
 * @return bool
 * @param  filename string
 * @desc   Returns true if file is a regular file 
 */
function is_file($filename) {}

/**
 * @return bool
 * @param  val float
 * @desc   Returns whether argument is finite 
 */
function is_finite($val) {}

/**
 * @return bool
 * @param  var mixed
 * @desc   Returns true if variable is float point
 */
function is_float($var) {}

/**
 * @return bool
 * @param  val float
 * @desc   Returns whether argument is infinite 
 */
function is_infinite($val) {}

/**
 * @return bool
 * @param  var mixed
 * @desc   Returns true if variable is a long (integer) 
 */
function is_int($var) {}

/**
 * @return bool
 * @param  var mixed
 * @desc   Returns true if variable is a long (integer) 
 */
function is_integer($var) {}

/**
 * @return bool
 * @param  filename string
 * @desc   Returns true if file is symbolic link 
 */
function is_link($filename) {}

/**
 * @return bool
 * @param  var mixed
 * @desc   Returns true if variable is a long (integer) 
 */
function is_long($var) {}

/**
 * @return bool
 * @param  val float
 * @desc   Returns whether argument is not a number 
 */
function is_nan($val) {}

/**
 * @return bool
 * @param  var mixed
 * @desc   Returns true if variable is null 
 */
function is_null($var) {}

/**
 * @return bool
 * @param  value mixed
 * @desc   Returns true if value is a number or a numeric string 
 */
function is_numeric($value) {}

/**
 * @return bool
 * @param  var mixed
 * @desc   Returns true if variable is an object 
 */
function is_object($var) {}

/**
 * @return bool
 * @param  filename string
 * @desc   Returns true if file can be read 
 */
function is_readable($filename) {}

/**
 * @return bool
 * @param  var mixed
 * @desc   Returns true if variable is float point
 */
function is_real($var) {}

/**
 * @return bool
 * @param  var mixed
 * @desc   Returns true if variable is a resource 
 */
function is_resource($var) {}

/**
 * @return bool
 * @param  value mixed
 * @desc   Returns true if value is a scalar 
 */
function is_scalar($value) {}

/**
 * @return bool
 * @param  var mixed
 * @desc   Returns true if variable is a string 
 */
function is_string($var) {}

/**
 * @return bool
 * @param  object object
 * @param  class_name string
 * @desc   Returns true if the object has this class as one of its parents 
 */
function is_subclass_of($object, $class_name) {}

/**
 * @return bool
 * @param  path string
 * @desc   Check if file was created by rfc1867 upload  
 */
function is_uploaded_file($path) {}

/**
 * @return bool
 * @param  filename string
 * @desc   Returns true if file can be written 
 */
function is_writable($filename) {}

/**
 * @return bool
 * @param  filename string
 * @desc   Returns true if file can be written 
 */
function is_writeable($filename) {}

/**
 * @return mixed
 * @param  juliandaycount int
 * @param  mode int[optional]
 * @desc   Returns name or number of day of week from julian day count 
 */
function jddayofweek($juliandaycount, $mode = null) {}

/**
 * @return string
 * @param  juliandaycount int
 * @param  mode int
 * @desc   Returns name of month for julian day count 
 */
function jdmonthname($juliandaycount, $mode) {}

/**
 * @return string
 * @param  juliandaycount int
 * @desc   Converts a julian day count to a french republic calendar date 
 */
function jdtofrench($juliandaycount) {}

/**
 * @return string
 * @param  juliandaycount int
 * @desc   Converts a julian day count to a gregorian calendar date 
 */
function jdtogregorian($juliandaycount) {}

/**
 * @return string
 * @param  juliandaycount int
 * @param  hebrew bool[optional]
 * @param  fl int[optional]
 * @desc   Converts a julian day count to a jewish calendar date 
 */
function jdtojewish($juliandaycount, $hebrew = null, $fl = null) {}

/**
 * @return string
 * @param  juliandaycount int
 * @desc   Convert a julian day count to a julian calendar date 
 */
function jdtojulian($juliandaycount) {}

/**
 * @return int
 * @param  jday int
 * @desc   Convert Julian Day to UNIX timestamp 
 */
function jdtounix($jday) {}

/**
 * @return int
 * @param  month int
 * @param  day int
 * @param  year int
 * @desc   Converts a jewish calendar date to a julian day count 
 */
function jewishtojd($month, $day, $year) {}

/**
 * @return string
 * @param  glue string[optional]
 * @param  pieces array
 * @desc   Joins array elements placing glue string between items and return one string 
 */
function join($glue = null, $pieces) {}

/**
 * @return bool
 * @param  f_org string
 * @param  f_dest string
 * @param  d_height int
 * @param  d_width int
 * @param  threshold int
 * @desc   Convert JPEG image to WBMP image 
 */
function jpeg2wbmp ($f_org, $f_dest, $d_height, $d_width, $threshold) {}

/**
 * @return int
 * @param  month int
 * @param  day int
 * @param  year int
 * @desc   Converts a julian calendar date to julian day count 
 */
function juliantojd($month, $day, $year) {}

/**
 * @return mixed
 * @param  array_arg array
 * @desc   Return the key of the element currently pointed to by the internal array pointer 
 */
function key($array_arg) {}

/**
 * @return bool
 * @param  key mixed
 * @param  search array
 * @desc   Checks if the given key or index exists in the array 
 */
function key_exists($key, $search) {}

/**
 * @return bool
 * @param  array_arg array
 * @param  sort_flags int[optional]
 * @desc   Sort an array by key value in reverse order 
 */
function krsort($array_arg, $sort_flags = null) {}

/**
 * @return bool
 * @param  array_arg array
 * @param  sort_flags int[optional]
 * @desc   Sort an array by key 
 */
function ksort($array_arg, $sort_flags = null) {}

/**
 * @return float
 * @desc   Returns a value from the combined linear congruential generator 
 */
function lcg_value() {}

/**
 * @return string
 * @param  value string
 * @desc   Translate 8859 characters to t61 characters 
 */
function ldap_8859_to_t61($value) {}

/**
 * @return bool
 * @param  link resource
 * @param  dn string
 * @param  entry array
 * @desc   Add entries to LDAP directory 
 */
function ldap_add($link, $dn, $entry) {}

/**
 * @return bool
 * @param  link resource
 * @param  dn string[optional]
 * @param  password string
 * @desc   Bind to LDAP directory 
 */
function ldap_bind($link, $dn = null, $password) {}

/**
 * @return bool
 * @param  link resource
 * @desc   Unbind from LDAP directory 
 */
function ldap_close($link) {}

/**
 * @return bool
 * @param  link resource
 * @param  dn string
 * @param  attr string
 * @param  value string
 * @desc   Determine if an entry has a specific value for one of its attributes 
 */
function ldap_compare($link, $dn, $attr, $value) {}

/**
 * @return resource
 * @param  host string[optional]
 * @param  port int[optional]
 * @desc   Connect to an LDAP server 
 */
function ldap_connect($host = null, $port = null) {}

/**
 * @return int
 * @param  link resource
 * @param  result resource
 * @desc   Count the number of entries in a search result 
 */
function ldap_count_entries($link, $result) {}

/**
 * @return bool
 * @param  link resource
 * @param  dn string
 * @desc   Delete an entry from a directory 
 */
function ldap_delete($link, $dn) {}

/**
 * @return string
 * @param  dn string
 * @desc   Convert DN to User Friendly Naming format 
 */
function ldap_dn2ufn($dn) {}

/**
 * @return string
 * @param  errno int
 * @desc   Convert error number to error string 
 */
function ldap_err2str($errno) {}

/**
 * @return int
 * @param  link resource
 * @desc   Get the current ldap error number 
 */
function ldap_errno($link) {}

/**
 * @return string
 * @param  link resource
 * @desc   Get the current ldap error string 
 */
function ldap_error($link) {}

/**
 * @return array
 * @param  dn string
 * @param  with_attrib int
 * @desc   Splits DN into its component parts 
 */
function ldap_explode_dn($dn, $with_attrib) {}

/**
 * @return string
 * @param  link resource
 * @param  result_entry resource
 * @param  ber int
 * @desc   Return first attribute 
 */
function ldap_first_attribute($link, $result_entry, $ber) {}

/**
 * @return resource
 * @param  link resource
 * @param  result resource
 * @desc   Return first result id 
 */
function ldap_first_entry($link, $result) {}

/**
 * @return resource
 * @param  link resource
 * @param  result resource
 * @desc   Return first reference 
 */
function ldap_first_reference($link, $result) {}

/**
 * @return bool
 * @param  result resource
 * @desc   Free result memory 
 */
function ldap_free_result($result) {}

/**
 * @return array
 * @param  link resource
 * @param  result_entry resource
 * @desc   Get attributes from a search result entry 
 */
function ldap_get_attributes($link, $result_entry) {}

/**
 * @return string
 * @param  link resource
 * @param  result_entry resource
 * @desc   Get the DN of a result entry 
 */
function ldap_get_dn($link, $result_entry) {}

/**
 * @return array
 * @param  link resource
 * @param  result resource
 * @desc   Get all result entries 
 */
function ldap_get_entries($link, $result) {}

/**
 * @return bool
 * @param  link resource
 * @param  option int
 * @param  retval mixed
 * @desc   Get the current value of various session-wide parameters 
 */
function ldap_get_option($link, $option, $retval) {}

/**
 * @return array
 * @param  link resource
 * @param  result_entry resource
 * @param  attribute string
 * @desc   Get all values from a result entry 
 */
function ldap_get_values($link, $result_entry, $attribute) {}

/**
 * @return array
 * @param  link resource
 * @param  result_entry resource
 * @param  attribute string
 * @desc   Get all values with lengths from a result entry 
 */
function ldap_get_values_len($link, $result_entry, $attribute) {}

/**
 * @return resource
 * @param  link resource
 * @param  base_dn string
 * @param  filter string
 * @param  attrs array[optional]
 * @param  attrsonly int[optional]
 * @param  sizelimit int[optional]
 * @param  timelimit int[optional]
 * @param  deref int[optional]
 * @desc   Single-level search 
 */
function ldap_list($link, $base_dn, $filter, $attrs = null, $attrsonly = null, $sizelimit = null, $timelimit = null, $deref = null) {}

/**
 * @return bool
 * @param  link resource
 * @param  dn string
 * @param  entry array
 * @desc   Add attribute values to current 
 */
function ldap_mod_add($link, $dn, $entry) {}

/**
 * @return bool
 * @param  link resource
 * @param  dn string
 * @param  entry array
 * @desc   Delete attribute values 
 */
function ldap_mod_del($link, $dn, $entry) {}

/**
 * @return bool
 * @param  link resource
 * @param  dn string
 * @param  entry array
 * @desc   Replace attribute values with new ones 
 */
function ldap_mod_replace($link, $dn, $entry) {}

/**
 * @return bool
 * @param  link resource
 * @param  dn string
 * @param  entry array
 * @desc   Replace attribute values with new ones 
 */
function ldap_modify($link, $dn, $entry) {}

/**
 * @return string
 * @param  link resource
 * @param  result_entry resource
 * @param  ber resource
 * @desc   Get the next attribute in result 
 */
function ldap_next_attribute($link, $result_entry, $ber) {}

/**
 * @return resource
 * @param  link resource
 * @param  result_entry resource
 * @desc   Get next result entry 
 */
function ldap_next_entry($link, $result_entry) {}

/**
 * @return resource
 * @param  link resource
 * @param  reference_entry resource
 * @desc   Get next reference 
 */
function ldap_next_reference($link, $reference_entry) {}

/**
 * @return bool
 * @param  link resource
 * @param  reference_entry resource
 * @param  referrals array
 * @desc   Extract information from reference entry 
 */
function ldap_parse_reference($link, $reference_entry, $referrals) {}

/**
 * @return bool
 * @param  link resource
 * @param  result resource
 * @param  errcode int
 * @param  matcheddn string
 * @param  errmsg string
 * @param  referrals array
 * @desc   Extract information from result 
 */
function ldap_parse_result($link, $result, $errcode, $matcheddn, $errmsg, $referrals) {}

/**
 * @return resource
 * @param  link resource
 * @param  base_dn string
 * @param  filter string
 * @param  attrs array[optional]
 * @param  attrsonly int[optional]
 * @param  sizelimit int[optional]
 * @param  timelimit int[optional]
 * @param  deref int[optional]
 * @desc   Read an entry 
 */
function ldap_read($link, $base_dn, $filter, $attrs = null, $attrsonly = null, $sizelimit = null, $timelimit = null, $deref = null) {}

/**
 * @return bool
 * @param  link resource
 * @param  dn string
 * @param  newrdn string
 * @param  newparent string
 * @param  deleteoldrdn bool
 * @desc   Modify the name of an entry 
 */
function ldap_rename($link, $dn, $newrdn, $newparent, $deleteoldrdn) {}

/**
 * @return bool
 * @param  link resource
 * @desc   Bind to LDAP directory using SASL 
 */
function ldap_sasl_bind($link) {}

/**
 * @return resource
 * @param  link resource
 * @param  base_dn string
 * @param  filter string
 * @param  attrs array[optional]
 * @param  attrsonly int[optional]
 * @param  sizelimit int[optional]
 * @param  timelimit int[optional]
 * @param  deref int[optional]
 * @desc   Search LDAP tree under base_dn 
 */
function ldap_search($link, $base_dn, $filter, $attrs = null, $attrsonly = null, $sizelimit = null, $timelimit = null, $deref = null) {}

/**
 * @return bool
 * @param  link resource
 * @param  option int
 * @param  newval mixed
 * @desc   Set the value of various session-wide parameters 
 */
function ldap_set_option($link, $option, $newval) {}

/**
 * @return bool
 * @param  link resource
 * @param  callback string
 * @desc   Set a callback function to do re-binds on referral chasing. 
 */
function ldap_set_rebind_proc($link, $callback) {}

/**
 * @return bool
 * @param  link resource
 * @param  result resource
 * @param  sortfilter string
 * @desc   Sort LDAP result entries 
 */
function ldap_sort($link, $result, $sortfilter) {}

/**
 * @return bool
 * @param  link resource
 * @desc   Start TLS 
 */
function ldap_start_tls($link) {}

/**
 * @return string
 * @param  value string
 * @desc   Translate t61 characters to 8859 characters 
 */
function ldap_t61_to_8859($value) {}

/**
 * @return bool
 * @param  link resource
 * @desc   Unbind from LDAP directory 
 */
function ldap_unbind($link) {}

/**
 * @return void
 * @param  num_bytes int[optional]
 * @desc   Cause an intentional memory leak, for testing/debugging purposes 
 */
function leak($num_bytes = 3) {}

/**
 * @return int
 * @param  str1 string
 * @param  str2 string
 * @desc   Calculate Levenshtein distance between two strings 
 */
function levenshtein($str1, $str2) {}

/**
 * @return void
 * @param  streams_context resource
 * @desc   Set the streams context for the next libxml document load or write 
 */
function libxml_set_streams_context($streams_context) {}

/**
 * @return int
 * @param  target string
 * @param  link string
 * @desc   Create a hard link 
 */
function link($target, $link) {}

/**
 * @return int
 * @param  filename string
 * @desc   Returns the st_dev field of the UNIX C stat structure describing the link 
 */
function linkinfo($filename) {}

/**
 * @return array
 * @desc   Returns numeric formatting information based on the current locale 
 */
function localeconv() {}

/**
 * @return array
 * @param  timestamp int[optional]
 * @param  associative_array bool[optional]
 * @desc   Returns the results of the C system call localtime as an associative array if the associative_array argument is set to 1 other wise it is a regular array 
 */
function localtime($timestamp = null, $associative_array = null) {}

/**
 * @return float
 * @param  number float
 * @param  base float[optional]
 * @desc   Returns the natural logarithm of the number, or the base log if base is specified 
 */
function log($number, $base = null) {}

/**
 * @return float
 * @param  number float
 * @desc   Returns the base-10 logarithm of the number 
 */
function log10($number) {}

/**
 * @return float
 * @param  number float
 * @desc   Returns log(1 + number), computed in a way that accurate even when the value of number is close to zero 
 */
function log1p($number) {}

/**
 * @return string
 * @param  proper_address int
 * @desc   Converts an (IPv4) Internet network address into a string in Internet standard dotted format 
 */
function long2ip($proper_address) {}

/**
 * @return array
 * @param  filename string
 * @desc   Give information about a file or symbolic link 
 */
function lstat($filename) {}

/**
 * @return string
 * @param  str string
 * @param  character_mask string[optional]
 * @desc   Strips whitespace from the beginning of a string 
 */
function ltrim($str, $character_mask = null) {}

/**
 * @return int
 * @param  conn resource
 * @param  admin_password string
 * @param  usersetup int
 * @desc   Add an MCVE user using usersetup structure 
 */
function m_adduser($conn, $admin_password, $usersetup) {}

/**
 * @return int
 * @param  usersetup resource
 * @param  argtype int
 * @param  argval string
 * @desc   Add a value to user configuration structure 
 */
function m_adduserarg($usersetup, $argtype, $argval) {}

/**
 * @return int
 * @param  conn resource
 * @param  username string
 * @param  password string
 * @desc   Get unsettled batch totals 
 */
function m_bt($conn, $username, $password) {}

/**
 * @return int
 * @param  conn resource
 * @param  identifier int
 * @desc   Check to see if a transaction has completed 
 */
function m_checkstatus($conn, $identifier) {}

/**
 * @return int
 * @param  conn resource
 * @param  username string
 * @param  password string
 * @desc   Verify Password 
 */
function m_chkpwd($conn, $username, $password) {}

/**
 * @return int
 * @param  conn resource
 * @param  admin_password string
 * @param  new_password string
 * @desc   Change the system administrator's password 
 */
function m_chngpwd($conn, $admin_password, $new_password) {}

/**
 * @return int
 * @param  conn resource
 * @param  &array int
 * @desc   Number of complete authorizations in queue, returning an array of their identifiers 
 */
function m_completeauthorizations($conn, &$array) {}

/**
 * @return int
 * @param  conn resource
 * @desc   Establish the connection to MCVE 
 */
function m_connect($conn) {}

/**
 * @return string
 * @param  conn resource
 * @desc   Get a textual representation of why a connection failed 
 */
function m_connectionerror($conn) {}

/**
 * @return bool
 * @param  conn resource
 * @param  identifier int
 * @desc   Delete specified transaction from MCVE_CONN structure 
 */
function m_deleteresponse($conn, $identifier) {}

/**
 * @return bool
 * @param  conn resource
 * @param  identifier int
 * @desc   Delete specified transaction from MCVE_CONN structure 
 */
function m_deletetrans($conn, $identifier) {}

/**
 * @return void
 * @param  usersetup resource
 * @desc   Deallocate data associated with usersetup structure 
 */
function m_deleteusersetup($usersetup) {}

/**
 * @return int
 * @param  conn resource
 * @param  admin_password string
 * @param  username string
 * @desc   Delete an MCVE user account 
 */
function m_deluser($conn, $admin_password, $username) {}

/**
 * @return void
 * @param  conn resource
 * @desc   Destroy the connection and MCVE_CONN structure 
 */
function m_destroyconn($conn) {}

/**
 * @return void
 * @desc   Free memory associated with IP/SSL connectivity 
 */
function m_destroyengine() {}

/**
 * @return int
 * @param  conn resource
 * @param  admin_password string
 * @param  username string
 * @desc   Disable an active MCVE user account 
 */
function m_disableuser($conn, $admin_password, $username) {}

/**
 * @return int
 * @param  conn resource
 * @param  admin_password string
 * @param  usersetup int
 * @desc   Edit MCVE user using usersetup structure 
 */
function m_edituser($conn, $admin_password, $usersetup) {}

/**
 * @return int
 * @param  conn resource
 * @param  admin_password string
 * @param  username string
 * @desc   Enable an inactive MCVE user account 
 */
function m_enableuser($conn, $admin_password, $username) {}

/**
 * @return int
 * @param  conn resiurce
 * @param  username string
 * @param  password string
 * @param  trackdata string
 * @param  account string
 * @param  expdate string
 * @param  amount float
 * @param  authcode string
 * @param  comments string
 * @param  clerkid string
 * @param  stationid string
 * @param  ptrannum int
 * @desc   Send a FORCE to MCVE.  (typically, a phone-authorization) 
 */
function m_force($conn, $username, $password, $trackdata, $account, $expdate, $amount, $authcode, $comments, $clerkid, $stationid, $ptrannum) {}

/**
 * @return string
 * @param  conn resource
 * @param  identifier int
 * @param  column string
 * @param  row int
 * @desc   Get a specific cell from a comma delimited response by column name 
 */
function m_getcell($conn, $identifier, $column, $row) {}

/**
 * @return string
 * @param  conn resource
 * @param  identifier int
 * @param  column int
 * @param  row int
 * @desc   Get a specific cell from a comma delimited response by column number 
 */
function m_getcellbynum($conn, $identifier, $column, $row) {}

/**
 * @return string
 * @param  conn resource
 * @param  identifier int
 * @desc   Get the RAW comma delimited data returned from MCVE 
 */
function m_getcommadelimited($conn, $identifier) {}

/**
 * @return string
 * @param  conn resource
 * @param  identifier int
 * @param  column_num int
 * @desc   Get the name of the column in a comma-delimited response 
 */
function m_getheader($conn, $identifier, $column_num) {}

/**
 * @return string
 * @param  usersetup resource
 * @param  argtype int
 * @desc   Grab a value from usersetup structure 
 */
function m_getuserarg($usersetup, $argtype) {}

/**
 * @return string
 * @param  conn resource
 * @param  identifier long
 * @param  key int
 * @desc   Get a user response parameter 
 */
function m_getuserparam($conn, $identifier, $key) {}

/**
 * @return int
 * @param  conn resource
 * @param  username string
 * @param  password string
 * @param  type int
 * @param  account string
 * @param  clerkid string
 * @param  stationid string
 * @param  comments string
 * @param  ptrannum int
 * @param  startdate string
 * @param  enddate string
 * @desc   
 */
function m_gft($conn, $username, $password, $type, $account, $clerkid, $stationid, $comments, $ptrannum, $startdate, $enddate) {}

/**
 * @return int
 * @param  conn int
 * @param  username string
 * @param  password string
 * @param  type int
 * @param  account string
 * @param  batch string
 * @param  clerkid string
 * @param  stationid string
 * @param  comments string
 * @param  ptrannum int
 * @param  startdate string
 * @param  enddate string
 * @desc   Audit MCVE for settled transactions 
 */
function m_gl($conn, $username, $password, $type, $account, $batch, $clerkid, $stationid, $comments, $ptrannum, $startdate, $enddate) {}

/**
 * @return int
 * @param  conn resource
 * @param  username string
 * @param  password string
 * @param  type int
 * @param  account string
 * @param  clerkid string
 * @param  stationid string
 * @param  comments string
 * @param  ptrannum int
 * @param  startdate string
 * @param  enddate string
 * @desc   Audit MCVE for Unsettled Transactions 
 */
function m_gut($conn, $username, $password, $type, $account, $clerkid, $stationid, $comments, $ptrannum, $startdate, $enddate) {}

/**
 * @return resource
 * @desc   Create and initialize an MCVE_CONN structure 
 */
function m_initconn() {}

/**
 * @return int
 * @param  location string
 * @desc   Ready the client for IP/SSL Communication 
 */
function m_initengine($location) {}

/**
 * @return resource
 * @desc   Initialize structure to store user data 
 */
function m_initusersetup() {}

/**
 * @return int
 * @param  conn resource
 * @param  identifier int
 * @desc   Checks to see if response is comma delimited 
 */
function m_iscommadelimited($conn, $identifier) {}

/**
 * @return int
 * @param  conn resource
 * @param  admin_password string
 * @desc   List statistics for all users on MCVE system 
 */
function m_liststats($conn, $admin_password) {}

/**
 * @return int
 * @param  conn resource
 * @param  admin_password string
 * @desc   List all users on MCVE system 
 */
function m_listusers($conn, $admin_password) {}

/**
 * @return bool
 * @param  conn resource
 * @param  secs int
 * @desc   
 */
function m_maxconntimeout($conn, $secs) {}

/**
 * @return int
 * @param  conn resource
 * @desc   Perform communication with MCVE (send/receive data)   Non-blocking 
 */
function m_monitor($conn) {}

/**
 * @return int
 * @param  conn resource
 * @param  identifier int
 * @desc   Number of columns returned in a comma delimited response 
 */
function m_numcolumns($conn, $identifier) {}

/**
 * @return int
 * @param  conn resource
 * @param  identifier int
 * @desc   Number of rows returned in a comma delimited response 
 */
function m_numrows($conn, $identifier) {}

/**
 * @return int
 * @param  conn resource
 * @param  username string
 * @param  password string
 * @param  trackdata string
 * @param  account string
 * @param  expdate string
 * @param  amount float
 * @param  street string
 * @param  zip string
 * @param  cv string
 * @param  comments string
 * @param  clerkid string
 * @param  stationid string
 * @param  ptrannum int
 * @desc   Send an OVERRIDE to MCVE 
 */
function m_override($conn, $username, $password, $trackdata, $account, $expdate, $amount, $street, $zip, $cv, $comments, $clerkid, $stationid, $ptrannum) {}

/**
 * @return int
 * @param  conn resource
 * @param  identifier int
 * @desc   Parse the comma delimited response so m_getcell, etc will work 
 */
function m_parsecommadelimited($conn, $identifier) {}

/**
 * @return int
 * @param  conn resource
 * @desc   Send a ping request to MCVE 
 */
function m_ping($conn) {}

/**
 * @return int
 * @param  conn resource
 * @param  username string
 * @param  password string
 * @param  trackdata string
 * @param  account string
 * @param  expdate string
 * @param  amount float
 * @param  street string
 * @param  zip string
 * @param  cv string
 * @param  comments string
 * @param  clerkid string
 * @param  stationid string
 * @param  ptrannum int
 * @desc   Send a PREAUTHORIZATION to MCVE 
 */
function m_preauth($conn, $username, $password, $trackdata, $account, $expdate, $amount, $street, $zip, $cv, $comments, $clerkid, $stationid, $ptrannum) {}

/**
 * @return int
 * @param  conn resource
 * @param  username string
 * @param  password string
 * @param  finalamount float
 * @param  sid int
 * @param  ptrannum int
 * @desc   Complete a PREAUTHORIZATION... Ready it for settlement 
 */
function m_preauthcompletion($conn, $username, $password, $finalamount, $sid, $ptrannum) {}

/**
 * @return int
 * @param  conn resource
 * @param  username string
 * @param  password string
 * @param  clerkid string
 * @param  stationid string
 * @param  comments string
 * @param  ptrannum int
 * @desc   Audit MCVE for a list of transactions in the outgoing queue 
 */
function m_qc($conn, $username, $password, $clerkid, $stationid, $comments, $ptrannum) {}

/**
 * @return string
 * @param  conn resource
 * @param  identifier long
 * @param  key string
 * @desc   Get a custom response parameter 
 */
function m_responseparam($conn, $identifier, $key) {}

/**
 * @return int
 * @param  conn int
 * @param  username string
 * @param  password string
 * @param  trackdata string
 * @param  account string
 * @param  expdate string
 * @param  amount float
 * @param  comments string
 * @param  clerkid string
 * @param  stationid string
 * @param  ptrannum int
 * @desc   Issue a RETURN or CREDIT to MCVE 
 */
function m_return($conn, $username, $password, $trackdata, $account, $expdate, $amount, $comments, $clerkid, $stationid, $ptrannum) {}

/**
 * @return int
 * @param  conn resource
 * @param  identifier int
 * @desc   Grab the exact return code from the transaction 
 */
function m_returncode($conn, $identifier) {}

/**
 * @return int
 * @param  conn resource
 * @param  identifier int
 * @desc   Check to see if the transaction was successful 
 */
function m_returnstatus($conn, $identifier) {}

/**
 * @return int
 * @param  conn resource
 * @param  username string
 * @param  password string
 * @param  trackdata string
 * @param  account string
 * @param  expdate string
 * @param  amount float
 * @param  street string
 * @param  zip string
 * @param  cv string
 * @param  comments string
 * @param  clerkid string
 * @param  stationid string
 * @param  ptrannum int
 * @desc   Send a SALE to MCVE 
 */
function m_sale($conn, $username, $password, $trackdata, $account, $expdate, $amount, $street, $zip, $cv, $comments, $clerkid, $stationid, $ptrannum) {}

/**
 * @return int
 * @param  conn resource
 * @param  tf int
 * @desc   
 */
function m_setblocking($conn, $tf) {}

/**
 * @return int
 * @param  conn resource
 * @param  directory string
 * @desc   Set the connection method to Drop-File 
 */
function m_setdropfile($conn, $directory) {}

/**
 * @return int
 * @param  conn resource
 * @param  host string
 * @param  port int
 * @desc   Set the connection method to IP 
 */
function m_setip($conn, $host, $port) {}

/**
 * @return int
 * @param  conn resource
 * @param  host string
 * @param  port int
 * @desc   Set the connection method to SSL 
 */
function m_setssl($conn, $host, $port) {}

/**
 * @return int
 * @param  sslkeyfile string
 * @param  sslcertfile string
 * @desc   
 */
function m_setssl_files($sslkeyfile, $sslcertfile) {}

/**
 * @return int
 * @param  conn resource
 * @param  seconds int
 * @desc   
 */
function m_settimeout($conn, $seconds) {}

/**
 * @return int
 * @param  conn resource
 * @param  username string
 * @param  password string
 * @param  batch string
 * @desc   Issue a settlement command to do a batch deposit 
 */
function m_settle($conn, $username, $password, $batch) {}

/**
 * @return string
 * @param  code string
 * @desc   Get a textual representation of the return_avs 
 */
function m_text_avs($code) {}

/**
 * @return string
 * @param  code string
 * @desc   Get a textual representation of the return_code 
 */
function m_text_code($code) {}

/**
 * @return string
 * @param  code int
 * @desc   Get a textual representation of the return_cv 
 */
function m_text_cv($code) {}

/**
 * @return string
 * @param  conn resource
 * @param  identifier int
 * @desc   Get the authorization number returned for the transaction (alpha-numeric) 
 */
function m_transactionauth($conn, $identifier) {}

/**
 * @return int
 * @param  conn resource
 * @param  identifier int
 * @desc   Get the Address Verification return status 
 */
function m_transactionavs($conn, $identifier) {}

/**
 * @return int
 * @param  conn resource
 * @param  identifier int
 * @desc   Get the batch number associated with the transaction 
 */
function m_transactionbatch($conn, $identifier) {}

/**
 * @return int
 * @param  conn resource
 * @param  identifier int
 * @desc   Get the CVC2/CVV2/CID return status 
 */
function m_transactioncv($conn, $identifier) {}

/**
 * @return int
 * @param  conn resource
 * @param  identifier int
 * @desc   
 */
function m_transactionid($conn, $identifier) {}

/**
 * @return int
 * @param  conn resource
 * @param  identifier int
 * @desc   Get the ITEM number in the associated batch for this transaction 
 */
function m_transactionitem($conn, $identifier) {}

/**
 * @return int
 * @param  conn resource
 * @desc   Check to see if outgoing buffer is clear 
 */
function m_transactionssent($conn) {}

/**
 * @return string
 * @param  conn resource
 * @param  identifier int
 * @desc   Get verbiage (text) return from MCVE or processing institution 
 */
function m_transactiontext($conn, $identifier) {}

/**
 * @return int
 * @param  conn resource
 * @desc   Number of transactions in client-queue 
 */
function m_transinqueue($conn) {}

/**
 * @return int
 * @param  conn resource
 * @desc   Start a new transaction 
 */
function m_transnew($conn) {}

/**
 * @return int
 * @param  conn resource
 * @param  identifier long
 * @param  key int
 * @vararg ...
 * @desc   Add a parameter to a transaction 
 */
function m_transparam($conn, $identifier, $key) {}

/**
 * @return int
 * @param  conn resource
 * @param  identifier long
 * @desc   Finalize and send the transaction 
 */
function m_transsend($conn, $identifier) {}

/**
 * @return int
 * @param  conn resource
 * @param  username string
 * @param  password string
 * @desc   Get a list of all Unsettled batches 
 */
function m_ub($conn, $username, $password) {}

/**
 * @return int
 * @param  microsecs long
 * @desc   Wait x microsecs 
 */
function m_uwait($microsecs) {}

/**
 * @return bool
 * @param  conn resource
 * @param  tf int
 * @desc   
 */
function m_verifyconnection($conn, $tf) {}

/**
 * @return bool
 * @param  conn resource
 * @param  tf int
 * @desc   
 */
function m_verifysslcert($conn, $tf) {}

/**
 * @return int
 * @param  conn resource
 * @param  username string
 * @param  password string
 * @param  sid int
 * @param  ptrannum int
 * @desc   VOID a transaction in the settlement queue 
 */
function m_void($conn, $username, $password, $sid, $ptrannum) {}

/**
 * @return bool
 * @param  new_setting int
 * @desc   Set the current active configuration setting of magic_quotes_runtime and return previous 
 */
function magic_quotes_runtime($new_setting) {}

/**
 * @return int
 * @param  to string
 * @param  subject string
 * @param  message string
 * @param  additional_headers string[optional]
 * @param  additional_parameters string[optional]
 * @desc   Send an email message 
 */
function mail($to, $subject, $message, $additional_headers = null, $additional_parameters = null) {}

/**
 * @return mixed
 * @param  arg1 mixed
 * @param  arg2 mixed[optional]
 * @vararg ... mixed
 * @desc   Return the highest value in an array or a series of arguments 
 */
function max($arg1, $arg2 = null) {}

/**
 * @return string
 * @param  sourcestring string
 * @param  mode int
 * @param  encoding string[optional]
 * @desc   Returns a case-folded version of sourcestring 
 */
function mb_convert_case($sourcestring, $mode, $encoding = null) {}

/**
 * @return string
 * @param  str string
 * @param  to_encoding string
 * @param  from_encoding mixed[optional]
 * @desc   Returns converted string in desired encoding 
 */
function mb_convert_encoding($str, $to_encoding, $from_encoding = null) {}

/**
 * @return string
 * @param  str string
 * @param  option string[optional]
 * @param  encoding string[optional]
 * @desc   Conversion between full-width character and half-width character (Japanese) 
 */
function mb_convert_kana($str, $option = null, $encoding = null) {}

/**
 * @return string
 * @param  to_encoding string
 * @param  from_encoding mixed
 * @vararg ... mixed
 * @desc   Converts the string resource in variables to desired encoding 
 */
function mb_convert_variables($to_encoding, $from_encoding) {}

/**
 * @return string
 * @param  string string
 * @desc   Decodes the MIME "encoded-word" in the string 
 */
function mb_decode_mimeheader($string) {}

/**
 * @return string
 * @param  string string
 * @param  convmap array
 * @param  encoding string[optional]
 * @desc   Converts HTML numeric entities to character code 
 */
function mb_decode_numericentity($string, $convmap, $encoding = null) {}

/**
 * @return string
 * @param  str string
 * @param  encoding_list mixed[optional]
 * @param  strict bool[optional]
 * @desc   Encodings of the given string is returned (as a string) 
 */
function mb_detect_encoding($str, $encoding_list = null, $strict = null) {}

/**
 * @return bool|array
 * @param  encoding_list mixed[optional]
 * @desc   Sets the current detect_order or Return the current detect_order as a array 
 */
function mb_detect_order($encoding_list = null) {}

/**
 * @return string
 * @param  str string
 * @param  charset string[optional]
 * @param  transfer_encoding string[optional]
 * @param  linefeed string[optional]
 * @desc   Converts the string to MIME "encoded-word" in the format of =?charset?(B|Q)?encoded_string?= 
 */
function mb_encode_mimeheader($str, $charset = null, $transfer_encoding = null, $linefeed = null) {}

/**
 * @return string
 * @param  string string
 * @param  convmap array
 * @param  encoding string[optional]
 * @desc   Converts specified characters to HTML numeric entities 
 */
function mb_encode_numericentity($string, $convmap, $encoding = null) {}

/**
 * @return int
 * @param  pattern string
 * @param  string string
 * @param  registers array[optional]
 * @desc   Regular expression match for multibyte string 
 */
function mb_ereg($pattern, $string, $registers = null) {}

/**
 * @return bool
 * @param  pattern string
 * @param  string string
 * @param  option string[optional]
 * @desc   Regular expression match for multibyte string 
 */
function mb_ereg_match($pattern, $string, $option = null) {}

/**
 * @return string
 * @param  pattern string
 * @param  replacement string
 * @param  string string
 * @param  option string[optional]
 * @desc   Replace regular expression for multibyte string 
 */
function mb_ereg_replace($pattern, $replacement, $string, $option = null) {}

/**
 * @return bool
 * @param  pattern string[optional]
 * @param  option string
 * @desc   Regular expression search for multibyte string 
 */
function mb_ereg_search($pattern = null, $option) {}

/**
 * @return int
 * @desc   Get search start position 
 */
function mb_ereg_search_getpos() {}

/**
 * @return array
 * @desc   Get matched substring of the last time 
 */
function mb_ereg_search_getregs() {}

/**
 * @return bool
 * @param  string string
 * @param  pattern string[optional]
 * @param  option string
 * @desc   Initialize string and regular expression for search. 
 */
function mb_ereg_search_init($string, $pattern = null, $option) {}

/**
 * @return array
 * @param  pattern string[optional]
 * @param  option string
 * @desc   Regular expression search for multibyte string 
 */
function mb_ereg_search_pos($pattern = null, $option) {}

/**
 * @return array
 * @param  pattern string[optional]
 * @param  option string
 * @desc   Regular expression search for multibyte string 
 */
function mb_ereg_search_regs($pattern = null, $option) {}

/**
 * @return bool
 * @param  position int
 * @desc   Set search start position 
 */
function mb_ereg_search_setpos($position) {}

/**
 * @return int
 * @param  pattern string
 * @param  string string
 * @param  registers array[optional]
 * @desc   Case-insensitive regular expression match for multibyte string 
 */
function mb_eregi($pattern, $string, $registers = null) {}

/**
 * @return string
 * @param  pattern string
 * @param  replacement string
 * @param  string string
 * @desc   Case insensitive replace regular expression for multibyte string 
 */
function mb_eregi_replace($pattern, $replacement, $string) {}

/**
 * @return string
 * @param  type string[optional]
 * @desc   Returns the current settings of mbstring 
 */
function mb_get_info($type = null) {}

/**
 * @return mixed
 * @param  type string[optional]
 * @desc   Returns the input encoding 
 */
function mb_http_input($type = null) {}

/**
 * @return string
 * @param  encoding string[optional]
 * @desc   Sets the current output_encoding or returns the current output_encoding as a string 
 */
function mb_http_output($encoding = null) {}

/**
 * @return string
 * @param  encoding string[optional]
 * @desc   Sets the current internal encoding or Returns the current internal encoding as a string 
 */
function mb_internal_encoding($encoding = null) {}

/**
 * @return string
 * @param  language string[optional]
 * @desc   Sets the current language or Returns the current language as a string 
 */
function mb_language($language = null) {}

/**
 * @return array
 * @desc   Returns an array of all supported encodings 
 */
function mb_list_encodings() {}

/**
 * @return string
 * @param  contents string
 * @param  status int
 * @desc   Returns string in output buffer converted to the http_output encoding 
 */
function mb_output_handler($contents, $status) {}

/**
 * @return bool
 * @param  encoded_string string
 * @param  result array[optional]
 * @desc   Parses GET/POST/COOKIE data and sets global variables 
 */
function mb_parse_str($encoded_string, $result = null) {}

/**
 * @return string
 * @param  encoding string
 * @desc   Return the preferred MIME name (charset) as a string 
 */
function mb_preferred_mime_name($encoding) {}

/**
 * @return string
 * @param  encoding string[optional]
 * @desc   Returns the current encoding for regex as a string. 
 */
function mb_regex_encoding($encoding = null) {}

/**
 * @return string
 * @param  options string[optional]
 * @desc   Set or get the default options for mbregex functions 
 */
function mb_regex_set_options($options = null) {}

/**
 * @return int
 * @param  to string
 * @param  subject string
 * @param  message string
 * @param  additional_headers string[optional]
 * @param  additional_parameters string[optional]
 * @desc   
 */
function mb_send_mail($to, $subject, $message, $additional_headers = null, $additional_parameters = null) {}

/**
 * @return array
 * @param  pattern string
 * @param  string string
 * @param  limit int[optional]
 * @desc   split multibyte string into array by regular expression 
 */
function mb_split($pattern, $string, $limit = null) {}

/**
 * @return string
 * @param  str string
 * @param  start int
 * @param  length int[optional]
 * @param  encoding string[optional]
 * @desc   Returns part of a string 
 */
function mb_strcut($str, $start, $length = null, $encoding = null) {}

/**
 * @return string
 * @param  str string
 * @param  start int
 * @param  width int
 * @param  trimmarker string[optional]
 * @param  encoding string[optional]
 * @desc   Trim the string in terminal width 
 */
function mb_strimwidth($str, $start, $width, $trimmarker = null, $encoding = null) {}

/**
 * @return int
 * @param  str string
 * @param  encoding string[optional]
 * @desc   Get character numbers of a string 
 */
function mb_strlen($str, $encoding = null) {}

/**
 * @return int
 * @param  haystack string
 * @param  needle string
 * @param  offset int[optional]
 * @param  encoding string[optional]
 * @desc   Find position of first occurrence of a string within another 
 */
function mb_strpos($haystack, $needle, $offset = null, $encoding = null) {}

/**
 * @return int
 * @param  haystack string
 * @param  needle string
 * @param  encoding string[optional]
 * @desc   Find the last occurrence of a character in a string within another 
 */
function mb_strrpos($haystack, $needle, $encoding = null) {}

/**
 * @return string
 * @param  sourcestring string
 * @param  encoding string[optional]
 * @desc   
 */
function mb_strtolower($sourcestring, $encoding = null) {}

/**
 * @return string
 * @param  sourcestring string
 * @param  encoding string[optional]
 * @desc   
 */
function mb_strtoupper($sourcestring, $encoding = null) {}

/**
 * @return int
 * @param  str string
 * @param  encoding string[optional]
 * @desc   Gets terminal width of a string 
 */
function mb_strwidth($str, $encoding = null) {}

/**
 * @return mixed
 * @param  substchar mixed[optional]
 * @desc   Sets the current substitute_character or returns the current substitute_character 
 */
function mb_substitute_character($substchar = null) {}

/**
 * @return string
 * @param  str string
 * @param  start int
 * @param  length int[optional]
 * @param  encoding string[optional]
 * @desc   Returns part of a string 
 */
function mb_substr($str, $start, $length = null, $encoding = null) {}

/**
 * @return int
 * @param  haystack string
 * @param  needle string
 * @param  encoding string[optional]
 * @desc   Count the number of substring occurrences 
 */
function mb_substr_count($haystack, $needle, $encoding = null) {}

/**
 * @return int
 * @param  pattern string
 * @param  string string
 * @param  registers array[optional]
 * @desc   Regular expression match for multibyte string 
 */
function mbereg($pattern, $string, $registers = null) {}

/**
 * @return bool
 * @param  pattern string
 * @param  string string
 * @param  option string[optional]
 * @desc   Regular expression match for multibyte string 
 */
function mbereg_match($pattern, $string, $option = null) {}

/**
 * @return string
 * @param  pattern string
 * @param  replacement string
 * @param  string string
 * @param  option string[optional]
 * @desc   Replace regular expression for multibyte string 
 */
function mbereg_replace($pattern, $replacement, $string, $option = null) {}

/**
 * @return bool
 * @param  pattern string[optional]
 * @param  option string
 * @desc   Regular expression search for multibyte string 
 */
function mbereg_search($pattern = null, $option) {}

/**
 * @return int
 * @desc   Get search start position 
 */
function mbereg_search_getpos() {}

/**
 * @return array
 * @desc   Get matched substring of the last time 
 */
function mbereg_search_getregs() {}

/**
 * @return bool
 * @param  string string
 * @param  pattern string[optional]
 * @param  option string
 * @desc   Initialize string and regular expression for search. 
 */
function mbereg_search_init($string, $pattern = null, $option) {}

/**
 * @return array
 * @param  pattern string[optional]
 * @param  option string
 * @desc   Regular expression search for multibyte string 
 */
function mbereg_search_pos($pattern = null, $option) {}

/**
 * @return array
 * @param  pattern string[optional]
 * @param  option string
 * @desc   Regular expression search for multibyte string 
 */
function mbereg_search_regs($pattern = null, $option) {}

/**
 * @return bool
 * @param  position int
 * @desc   Set search start position 
 */
function mbereg_search_setpos($position) {}

/**
 * @return int
 * @param  pattern string
 * @param  string string
 * @param  registers array[optional]
 * @desc   Case-insensitive regular expression match for multibyte string 
 */
function mberegi($pattern, $string, $registers = null) {}

/**
 * @return string
 * @param  pattern string
 * @param  replacement string
 * @param  string string
 * @desc   Case insensitive replace regular expression for multibyte string 
 */
function mberegi_replace($pattern, $replacement, $string) {}

/**
 * @return string
 * @param  encoding string[optional]
 * @desc   Returns the current encoding for regex as a string. 
 */
function mbregex_encoding($encoding = null) {}

/**
 * @return array
 * @param  pattern string
 * @param  string string
 * @param  limit int[optional]
 * @desc   split multibyte string into array by regular expression 
 */
function mbsplit($pattern, $string, $limit = null) {}

/**
 * @return string
 * @param  cipher int
 * @param  key string
 * @param  data string
 * @param  mode int
 * @param  iv string
 * @desc   CBC crypt/decrypt data using key key with cipher cipher starting with iv 
 */
function mcrypt_cbc($cipher, $key, $data, $mode, $iv) {}

/**
 * @return string
 * @param  cipher int
 * @param  key string
 * @param  data string
 * @param  mode int
 * @param  iv string
 * @desc   CFB crypt/decrypt data using key key with cipher cipher starting with iv 
 */
function mcrypt_cfb($cipher, $key, $data, $mode, $iv) {}

/**
 * @return string
 * @param  size int
 * @param  source int
 * @desc   Create an initialization vector (IV) 
 */
function mcrypt_create_iv($size, $source) {}

/**
 * @return string
 * @param  cipher string
 * @param  key string
 * @param  data string
 * @param  mode string
 * @param  iv string
 * @desc   OFB crypt/decrypt data using key key with cipher cipher starting with iv 
 */
function mcrypt_decrypt($cipher, $key, $data, $mode, $iv) {}

/**
 * @return string
 * @param  cipher int
 * @param  key string
 * @param  data string
 * @param  mode int
 * @param  iv string
 * @desc   ECB crypt/decrypt data using key key with cipher cipher starting with iv 
 */
function mcrypt_ecb($cipher, $key, $data, $mode, $iv) {}

/**
 * @return string
 * @param  td resource
 * @desc   Returns the name of the algorithm specified by the descriptor td 
 */
function mcrypt_enc_get_algorithms_name($td) {}

/**
 * @return int
 * @param  td resource
 * @desc   Returns the block size of the cipher specified by the descriptor td 
 */
function mcrypt_enc_get_block_size($td) {}

/**
 * @return int
 * @param  td resource
 * @desc   Returns the size of the IV in bytes of the algorithm specified by the descriptor td 
 */
function mcrypt_enc_get_iv_size($td) {}

/**
 * @return int
 * @param  td resource
 * @desc   Returns the maximum supported key size in bytes of the algorithm specified by the descriptor td 
 */
function mcrypt_enc_get_key_size($td) {}

/**
 * @return string
 * @param  td resource
 * @desc   Returns the name of the mode specified by the descriptor td 
 */
function mcrypt_enc_get_modes_name($td) {}

/**
 * @return array
 * @param  td resource
 * @desc   This function decrypts the crypttext 
 */
function mcrypt_enc_get_supported_key_sizes($td) {}

/**
 * @return bool
 * @param  td resource
 * @desc   Returns TRUE if the alrogithm is a block algorithms 
 */
function mcrypt_enc_is_block_algorithm($td) {}

/**
 * @return bool
 * @param  td resource
 * @desc   Returns TRUE if the mode is for use with block algorithms 
 */
function mcrypt_enc_is_block_algorithm_mode($td) {}

/**
 * @return bool
 * @param  td resource
 * @desc   Returns TRUE if the mode outputs blocks 
 */
function mcrypt_enc_is_block_mode($td) {}

/**
 * @return int
 * @param  td resource
 * @desc   This function runs the self test on the algorithm specified by the descriptor td 
 */
function mcrypt_enc_self_test($td) {}

/**
 * @return string
 * @param  cipher string
 * @param  key string
 * @param  data string
 * @param  mode string
 * @param  iv string
 * @desc   OFB crypt/decrypt data using key key with cipher cipher starting with iv 
 */
function mcrypt_encrypt($cipher, $key, $data, $mode, $iv) {}

/**
 * @return string
 * @param  td resource
 * @param  data string
 * @desc   This function encrypts the plaintext 
 */
function mcrypt_generic($td, $data) {}

/**
 * @return bool
 * @param  td resource
 * @desc   This function terminates encrypt specified by the descriptor td 
 */
function mcrypt_generic_deinit($td) {}

/**
 * @return bool
 * @param  td resource
 * @desc   This function terminates encrypt specified by the descriptor td 
 */
function mcrypt_generic_end($td) {}

/**
 * @return int
 * @param  td resource
 * @param  key string
 * @param  iv string
 * @desc   This function initializes all buffers for the specific module 
 */
function mcrypt_generic_init($td, $key, $iv) {}

/**
 * @return int
 * @param  cipher string
 * @param  module string
 * @desc   Get the key size of cipher 
 */
function mcrypt_get_block_size($cipher, $module) {}

/**
 * @return string
 * @param  cipher string
 * @desc   Get the key size of cipher 
 */
function mcrypt_get_cipher_name($cipher) {}

/**
 * @return int
 * @param  cipher string
 * @param  module string
 * @desc   Get the IV size of cipher (Usually the same as the blocksize) 
 */
function mcrypt_get_iv_size($cipher, $module) {}

/**
 * @return int
 * @param  cipher string
 * @param  module string
 * @desc   Get the key size of cipher 
 */
function mcrypt_get_key_size($cipher, $module) {}

/**
 * @return array
 * @param  lib_dir string[optional]
 * @desc   List all algorithms in "module_dir" 
 */
function mcrypt_list_algorithms($lib_dir = null) {}

/**
 * @return array
 * @param  lib_dir string[optional]
 * @desc   List all modes "module_dir" 
 */
function mcrypt_list_modes($lib_dir = null) {}

/**
 * @return bool
 * @param  td resource
 * @desc   Free the descriptor td 
 */
function mcrypt_module_close($td) {}

/**
 * @return int
 * @param  algorithm string
 * @param  lib_dir string[optional]
 * @desc   Returns the block size of the algorithm 
 */
function mcrypt_module_get_algo_block_size($algorithm, $lib_dir = null) {}

/**
 * @return int
 * @param  algorithm string
 * @param  lib_dir string[optional]
 * @desc   Returns the maximum supported key size of the algorithm 
 */
function mcrypt_module_get_algo_key_size($algorithm, $lib_dir = null) {}

/**
 * @return array
 * @param  algorithm string
 * @param  lib_dir string[optional]
 * @desc   This function decrypts the crypttext 
 */
function mcrypt_module_get_supported_key_sizes($algorithm, $lib_dir = null) {}

/**
 * @return bool
 * @param  algorithm string
 * @param  lib_dir string[optional]
 * @desc   Returns TRUE if the algorithm is a block algorithm 
 */
function mcrypt_module_is_block_algorithm($algorithm, $lib_dir = null) {}

/**
 * @return bool
 * @param  mode string
 * @param  lib_dir string[optional]
 * @desc   Returns TRUE if the mode is for use with block algorithms 
 */
function mcrypt_module_is_block_algorithm_mode($mode, $lib_dir = null) {}

/**
 * @return bool
 * @param  mode string
 * @param  lib_dir string[optional]
 * @desc   Returns TRUE if the mode outputs blocks of bytes 
 */
function mcrypt_module_is_block_mode($mode, $lib_dir = null) {}

/**
 * @return resource
 * @param  cipher string
 * @param  cipher_directory string
 * @param  mode string
 * @param  mode_directory string
 * @desc   Opens the module of the algorithm and the mode to be used 
 */
function mcrypt_module_open($cipher, $cipher_directory, $mode, $mode_directory) {}

/**
 * @return bool
 * @param  algorithm string
 * @param  lib_dir string[optional]
 * @desc   Does a self test of the module "module" 
 */
function mcrypt_module_self_test($algorithm, $lib_dir = null) {}

/**
 * @return string
 * @param  cipher int
 * @param  key string
 * @param  data string
 * @param  mode int
 * @param  iv string
 * @desc   OFB crypt/decrypt data using key key with cipher cipher starting with iv 
 */
function mcrypt_ofb($cipher, $key, $data, $mode, $iv) {}

/**
 * @return string
 * @param  str string
 * @param  raw_output bool[optional]
 * @desc   Calculate the md5 hash of a string 
 */
function md5($str, $raw_output = null) {}

/**
 * @return string
 * @param  filename string
 * @param  raw_output bool[optional]
 * @desc   Calculate the md5 hash of given filename 
 */
function md5_file($filename, $raw_output = null) {}

/**
 * @return string
 * @param  td resource
 * @param  data string
 * @desc   This function decrypts the plaintext 
 */
function mdecrypt_generic($td, $data) {}

/**
 * @return int
 * @desc   Returns the allocated by PHP memory 
 */
function memory_get_usage() {}

/**
 * @return string
 * @param  text string
 * @param  phones int
 * @desc   Break english phrases down into their phonemes 
 */
function metaphone($text, $phones) {}

/**
 * @return bool
 * @param  object object
 * @param  method string
 * @desc   Checks if the class method exists 
 */
function method_exists($object, $method) {}

/**
 * @return string
 * @param  hash int
 * @param  data string
 * @param  key string[optional]
 * @desc   Hash data with hash 
 */
function mhash($hash, $data, $key = null) {}

/**
 * @return int
 * @desc   Gets the number of available hashes 
 */
function mhash_count() {}

/**
 * @return int
 * @param  hash int
 * @desc   Gets the block size of hash 
 */
function mhash_get_block_size($hash) {}

/**
 * @return string
 * @param  hash int
 * @desc   Gets the name of hash 
 */
function mhash_get_hash_name($hash) {}

/**
 * @return string
 * @param  hash int
 * @param  input_password string
 * @param  salt string
 * @param  bytes int
 * @desc   Generates a key using hash functions 
 */
function mhash_keygen_s2k($hash, $input_password, $salt, $bytes) {}

/**
 * @return mixed
 * @param  get_as_float bool[optional]
 * @desc   Returns either a string or a float containing the current time in seconds and microseconds 
 */
function microtime($get_as_float = null) {}

/**
 * @return string
 * @param  filename|resource_stream string
 * @desc   Return content-type for file 
 */
function mime_content_type($filename) {}

/**
 * @return mixed
 * @param  arg1 mixed
 * @param  arg2 mixed[optional]
 * @vararg ... mixed
 * @desc   Return the lowest value in an array or a series of arguments 
 */
function min($arg1, $arg2 = null) {}

/**
 * @return int
 * @param  str string
 * @desc   Returns the action flag for keyPress(char) 
 */
function ming_keypress($str) {}

/**
 * @return void
 * @param  threshold int
 * @desc   Set cubic threshold (?) 
 */
function ming_setcubicthreshold ($threshold) {}

/**
 * @return void
 * @param  scale int
 * @desc   Set scale (?) 
 */
function ming_setscale($scale) {}

/**
 * @return void
 * @param  use int
 * @desc   Use constant pool (?) 
 */
function ming_useconstants($use) {}

/**
 * @return void
 * @param  version int
 * @desc   Use SWF version (?) 
 */
function ming_useswfversion($version) {}

/**
 * @return bool
 * @param  pathname string
 * @param  mode int[optional]
 * @param  recursive bool[optional]
 * @param  context resource[optional]
 * @desc   Create a directory 
 */
function mkdir($pathname, $mode = null, $recursive = null, $context = null) {}

/**
 * @return int
 * @param  hour int
 * @param  min int
 * @param  sec int
 * @param  mon int
 * @param  day int
 * @param  year int
 * @desc   Get UNIX timestamp for a date 
 */
function mktime($hour, $min, $sec, $mon, $day, $year) {}

/**
 * @return string
 * @param  format string
 * @param  value float
 * @desc   Convert monetary value(s) to string 
 */
function money_format($format, $value) {}

/**
 * @return bool
 * @param  path string
 * @param  new_path string
 * @desc   Move a file if and only if it was created by an upload 
 */
function move_uploaded_file($path, $new_path) {}

/**
 * @return string
 * @param  fn_name string
 * @param  param1 string[optional]
 * @vararg ...
 * @param  param4 string[optional]
 * @desc   Call the plugin function named fn_name 
 */
function msession_call($fn_name, $param1 = null, $param4 = null) {}

/**
 * @return bool
 * @param  host string
 * @param  port string
 * @desc   Connect to msession sever 
 */
function msession_connect($host, $port) {}

/**
 * @return int
 * @desc   Get session count 
 */
function msession_count() {}

/**
 * @return bool
 * @param  session string
 * @desc   Create a session 
 */
function msession_create($session) {}

/**
 * @return int
 * @param  name string
 * @desc   Lock a session 
 */
function msession_ctl($name) {}

/**
 * @return bool
 * @param  name string
 * @desc   Destroy a session 
 */
function msession_destroy($name) {}

/**
 * @return void
 * @desc   Disconnect from msession server 
 */
function msession_disconnect() {}

/**
 * @return string
 * @param  cmdline string
 * @desc   executes a program on msession system  
 */
function msession_exec($cmdline) {}

/**
 * @return array
 * @param  name string
 * @param  value string
 * @desc   Find all sessions with name and value 
 */
function msession_find($name, $value) {}

/**
 * @return string
 * @param  session string
 * @param  name string
 * @param  default_value string
 * @desc   Get value from session 
 */
function msession_get($session, $name, $default_value) {}

/**
 * @return array
 * @param  session string
 * @desc   Get array of msession variables  
 */
function msession_get_array($session) {}

/**
 * @return string
 * @param  session string
 * @desc   Get data session unstructured data. (PHP sessions use this)  
 */
function msession_get_data($session) {}

/**
 * @return string
 * @param  session string
 * @param  name string
 * @desc   Increment value in session 
 */
function msession_inc($session, $name) {}

/**
 * @return array
 * @desc   List all sessions  
 */
function msession_list() {}

/**
 * @return array
 * @param  name string
 * @desc   return associative array of value:session for all sessions with a variable named 'name' 
 */
function msession_listvar($name) {}

/**
 * @return int
 * @param  name string
 * @desc   Lock a session 
 */
function msession_lock($name) {}

/**
 * @return bool
 * @desc   returns non-zero if msession is alive
 */
function msession_ping() {}

/**
 * @return string
 * @param  session string
 * @param  val string
 * @param  param string[optional]
 * @desc   Call the personality plugin escape function 
 */
function msession_plugin($session, $val, $param = null) {}

/**
 * @return string
 * @param  num_chars int
 * @desc   Get random string 
 */
function msession_randstr($num_chars) {}

/**
 * @return bool
 * @param  session string
 * @param  name string
 * @param  value string
 * @desc   Set value in session 
 */
function msession_set($session, $name, $value) {}

/**
 * @return bool
 * @param  session string
 * @param  tuples array
 * @desc   Set msession variables from an array
 */
function msession_set_array($session, $tuples) {}

/**
 * @return bool
 * @param  session string
 * @param  value string
 * @desc   Set data session unstructured data. (PHP sessions use this)  
 */
function msession_set_data($session, $value) {}

/**
 * @return int
 * @param  session string
 * @param  param int[optional]
 * @desc   Set/get session timeout 
 */
function msession_timeout($session, $param = null) {}

/**
 * @return string
 * @param  num_chars int
 * @desc   Get uniq id 
 */
function msession_uniq($num_chars) {}

/**
 * @return int
 * @param  session string
 * @param  key int
 * @desc   Unlock a session 
 */
function msession_unlock($session, $key) {}

/**
 * @return resource
 * @param  key int
 * @param  perms int[optional]
 * @desc   Attach to a message queue 
 */
function msg_get_queue($key, $perms = null) {}

/**
 * @return mixed
 * @param  queue resource
 * @param  desiredmsgtype int
 * @param  &msgtype int
 * @param  maxsize int
 * @param  message mixed
 * @param  unserialize bool[optional]
 * @param  flags int[optional]
 * @param  errorcode int[optional]
 * @desc   Send a message of type msgtype (must be > 0) to a message queue 
 */
function msg_receive($queue, $desiredmsgtype, &$msgtype, $maxsize, $message, $unserialize = true, $flags = null, $errorcode = null) {}

/**
 * @return bool
 * @param  queue resource
 * @desc   Destroy the queue 
 */
function msg_remove_queue($queue) {}

/**
 * @return bool
 * @param  queue resource
 * @param  msgtype int
 * @param  message mixed
 * @param  serialize bool[optional]
 * @param  blocking bool[optional]
 * @param  errorcode int[optional]
 * @desc   Send a message of type msgtype (must be > 0) to a message queue 
 */
function msg_send($queue, $msgtype, $message, $serialize = true, $blocking = true, $errorcode = null) {}

/**
 * @return bool
 * @param  queue resource
 * @param  data array
 * @desc   Set information for a message queue 
 */
function msg_set_queue($queue, $data) {}

/**
 * @return array
 * @param  queue resource
 * @desc   Returns information about a message queue 
 */
function msg_stat_queue($queue) {}

/**
 * @return resource
 * @param  database_name string
 * @param  query string
 * @param  link_identifier resource[optional]
 * @desc   Send an SQL query to mSQL 
 */
function msql($database_name, $query, $link_identifier = null) {}

/**
 * @return int
 * @param  query resource
 * @desc   Return number of affected rows 
 */
function msql_affected_rows($query) {}

/**
 * @return bool
 * @param  link_identifier resource[optional]
 * @desc   Close an mSQL connection 
 */
function msql_close($link_identifier = null) {}

/**
 * @return int
 * @param  hostname string[optional]
 * @param  username string[optional]
 * @param  password string[optional]
 * @desc   Open a connection to an mSQL Server 
 */
function msql_connect($hostname = null, $username = null, $password = null) {}

/**
 * @return bool
 * @param  database_name string
 * @param  link_identifier resource[optional]
 * @desc   Create an mSQL database 
 */
function msql_create_db($database_name, $link_identifier = null) {}

/**
 * @return bool
 * @param  database_name string
 * @param  link_identifier resource[optional]
 * @desc   Create an mSQL database 
 */
function msql_createdb($database_name, $link_identifier = null) {}

/**
 * @return bool
 * @param  query resource
 * @param  row_number int
 * @desc   Move internal result pointer 
 */
function msql_data_seek($query, $row_number) {}

/**
 * @return resource
 * @param  database_name string
 * @param  query string
 * @param  link_identifier resource[optional]
 * @desc   Send an SQL query to mSQL 
 */
function msql_db_query($database_name, $query, $link_identifier = null) {}

/**
 * @return string
 * @param  query int
 * @param  row int
 * @param  field mixed[optional]
 * @desc   Get result data 
 */
function msql_dbname($query, $row, $field = null) {}

/**
 * @return bool
 * @param  database_name string
 * @param  link_identifier resource[optional]
 * @desc   Drop (delete) an mSQL database 
 */
function msql_drop_db($database_name, $link_identifier = null) {}

/**
 * @return bool
 * @param  database_name string
 * @param  link_identifier resource[optional]
 * @desc   Drop (delete) an mSQL database 
 */
function msql_dropdb($database_name, $link_identifier = null) {}

/**
 * @return string
 * @desc   Returns the text of the error message from previous mSQL operation 
 */
function msql_error() {}

/**
 * @return array
 * @param  query resource
 * @param  result_type int[optional]
 * @desc   Fetch a result row as an associative array 
 */
function msql_fetch_array($query, $result_type = null) {}

/**
 * @return object
 * @param  query resource
 * @param  field_offset int[optional]
 * @desc   Get column information from a result and return as an object 
 */
function msql_fetch_field($query, $field_offset = null) {}

/**
 * @return object
 * @param  query resource
 * @param  result_type resource[optional]
 * @desc   Fetch a result row as an object 
 */
function msql_fetch_object($query, $result_type = null) {}

/**
 * @return array
 * @param  query resource
 * @desc   Get a result row as an enumerated array 
 */
function msql_fetch_row($query) {}

/**
 * @return string
 * @param  query resource
 * @param  field_offset int
 * @desc   Get the flags associated with the specified field in a result 
 */
function msql_field_flags($query, $field_offset) {}

/**
 * @return int
 * @param  query int
 * @param  field_offet int
 * @desc   Returns the length of the specified field 
 */
function msql_field_len($query, $field_offet) {}

/**
 * @return string
 * @param  query resource
 * @param  field_index int
 * @desc   Get the name of the specified field in a result 
 */
function msql_field_name($query, $field_index) {}

/**
 * @return bool
 * @param  query resource
 * @param  field_offset int
 * @desc   Set result pointer to a specific field offset 
 */
function msql_field_seek($query, $field_offset) {}

/**
 * @return string
 * @param  query resource
 * @param  field_offset int
 * @desc   Get name of the table the specified field is in 
 */
function msql_field_table($query, $field_offset) {}

/**
 * @return string
 * @param  query resource
 * @param  field_offset int
 * @desc   Get the type of the specified field in a result 
 */
function msql_field_type($query, $field_offset) {}

/**
 * @return string
 * @param  query resource
 * @param  field_offset int
 * @desc   Get the flags associated with the specified field in a result 
 */
function msql_fieldflags($query, $field_offset) {}

/**
 * @return int
 * @param  query int
 * @param  field_offet int
 * @desc   Returns the length of the specified field 
 */
function msql_fieldlen($query, $field_offet) {}

/**
 * @return string
 * @param  query resource
 * @param  field_index int
 * @desc   Get the name of the specified field in a result 
 */
function msql_fieldname($query, $field_index) {}

/**
 * @return string
 * @param  query resource
 * @param  field_offset int
 * @desc   Get name of the table the specified field is in 
 */
function msql_fieldtable($query, $field_offset) {}

/**
 * @return string
 * @param  query resource
 * @param  field_offset int
 * @desc   Get the type of the specified field in a result 
 */
function msql_fieldtype($query, $field_offset) {}

/**
 * @return bool
 * @param  query resource
 * @desc   Free result memory 
 */
function msql_free_result($query) {}

/**
 * @return bool
 * @param  query resource
 * @desc   Free result memory 
 */
function msql_freeresult($query) {}

/**
 * @return resource
 * @param  link_identifier resource[optional]
 * @desc   List databases available on an mSQL server 
 */
function msql_list_dbs($link_identifier = null) {}

/**
 * @return resource
 * @param  database_name string
 * @param  table_name string
 * @param  link_identifier resource[optional]
 * @desc   List mSQL result fields 
 */
function msql_list_fields($database_name, $table_name, $link_identifier = null) {}

/**
 * @return resource
 * @param  database_name string
 * @param  link_identifier resource[optional]
 * @desc   List tables in an mSQL database 
 */
function msql_list_tables($database_name, $link_identifier = null) {}

/**
 * @return resource
 * @param  link_identifier resource[optional]
 * @desc   List databases available on an mSQL server 
 */
function msql_listdbs($link_identifier = null) {}

/**
 * @return resource
 * @param  database_name string
 * @param  table_name string
 * @param  link_identifier resource[optional]
 * @desc   List mSQL result fields 
 */
function msql_listfields($database_name, $table_name, $link_identifier = null) {}

/**
 * @return resource
 * @param  database_name string
 * @param  link_identifier resource[optional]
 * @desc   List tables in an mSQL database 
 */
function msql_listtables($database_name, $link_identifier = null) {}

/**
 * @return int
 * @param  query resource
 * @desc   Get number of fields in a result 
 */
function msql_num_fields($query) {}

/**
 * @return int
 * @param  query resource
 * @desc   Get number of rows in a result 
 */
function msql_num_rows($query) {}

/**
 * @return int
 * @param  query resource
 * @desc   Get number of fields in a result 
 */
function msql_numfields($query) {}

/**
 * @return int
 * @param  query resource
 * @desc   Get number of rows in a result 
 */
function msql_numrows($query) {}

/**
 * @return int
 * @param  hostname string[optional]
 * @param  username string[optional]
 * @param  password string[optional]
 * @desc   Open a persistent connection to an mSQL Server 
 */
function msql_pconnect($hostname = null, $username = null, $password = null) {}

/**
 * @return resource
 * @param  query string
 * @param  link_identifier resource[optional]
 * @desc   Send an SQL query to mSQL 
 */
function msql_query($query, $link_identifier = null) {}

/**
 * @return string
 * @param  string string
 * @desc   Make regular expression for case insensitive match 
 */
function msql_regcase($string) {}

/**
 * @return string
 * @param  query int
 * @param  row int
 * @param  field mixed[optional]
 * @desc   Get result data 
 */
function msql_result($query, $row, $field = null) {}

/**
 * @return bool
 * @param  database_name string
 * @param  link_identifier resource[optional]
 * @desc   Select an mSQL database 
 */
function msql_select_db($database_name, $link_identifier = null) {}

/**
 * @return bool
 * @param  database_name string
 * @param  link_identifier resource[optional]
 * @desc   Select an mSQL database 
 */
function msql_selectdb($database_name, $link_identifier = null) {}

/**
 * @return string
 * @param  query int
 * @param  row int
 * @param  field mixed[optional]
 * @desc   Get result data 
 */
function msql_tablename($query, $row, $field = null) {}

/**
 * @return int
 * @param  link_id int[optional]
 * @desc   Get number of affected rows in last query 
 */
function mssql_affected_rows($link_id = null) {}

/**
 * @return bool
 * @param  stmt resource
 * @param  param_name string
 * @param  var mixed
 * @param  type int
 * @param  is_output int[optional]
 * @param  is_null int[optional]
 * @param  maxlen int[optional]
 * @desc   Adds a parameter to a stored procedure or a remote stored procedure  
 */
function mssql_bind($stmt, $param_name, $var, $type, $is_output = null, $is_null = null, $maxlen = null) {}

/**
 * @return bool
 * @param  link_id int[optional]
 * @desc   Close Sybase connection 
 */
function mssql_close($link_id = null) {}

/**
 * @return int
 * @param  host string[optional]
 * @param  user string[optional]
 * @param  password string[optional]
 * @param  charset string[optional]
 * @param  appname string[optional]
 * @desc   Open Sybase server connection 
 */
function mssql_connect($host = null, $user = null, $password = null, $charset = null, $appname = null) {}

/**
 * @return bool
 * @param  result int
 * @param  offset int
 * @desc   Move internal row pointer 
 */
function mssql_data_seek($result, $offset) {}

/**
 * @return void
 * @param  retry_count int
 * @desc   Sets deadlock retry count 
 */
function mssql_deadlock_retry_count($retry_count) {}

/**
 * @return mixed
 * @param  stmt resource
 * @param  skip_results bool[optional]
 * @desc   Executes a stored procedure on a MS-SQL server database 
 */
function mssql_execute($stmt, $skip_results = false) {}

/**
 * @return array
 * @param  result int
 * @desc   Fetch row as array 
 */
function mssql_fetch_array($result) {}

/**
 * @return array
 * @param  result int
 * @desc   Fetch row as array without numberic indices 
 */
function mssql_fetch_assoc($result) {}

/**
 * @return int
 * @param  result_index resource
 * @desc   Returns the next batch of records 
 */
function mssql_fetch_batch($result_index) {}

/**
 * @return object
 * @param  result int
 * @param  offset int[optional]
 * @desc   Get field information 
 */
function mssql_fetch_field($result, $offset = null) {}

/**
 * @return object
 * @param  result int
 * @param  object mixed[optional]
 * @desc   Fetch row as object 
 */
function mssql_fetch_object($result, $object = null) {}

/**
 * @return array
 * @param  result int
 * @desc   Get row as enumerated array 
 */
function mssql_fetch_row($result) {}

/**
 * @return int
 * @param  result_id resource
 * @param  offset int[optional]
 * @desc   Get the length of a MS-SQL field 
 */
function mssql_field_length($result_id, $offset = null) {}

/**
 * @return string
 * @param  result_id resource
 * @param  offset int[optional]
 * @desc   Returns the name of the field given by offset in the result set given by result_id 
 */
function mssql_field_name($result_id, $offset = null) {}

/**
 * @return bool
 * @param  result int
 * @param  offset int
 * @desc   Set field offset 
 */
function mssql_field_seek($result, $offset) {}

/**
 * @return string
 * @param  result_id resource
 * @param  offset int[optional]
 * @desc   Returns the type of a field 
 */
function mssql_field_type($result_id, $offset = null) {}

/**
 * @return bool
 * @param  result int
 * @desc   Free result memory 
 */
function mssql_free_result($result) {}

/**
 * @return bool
 * @param  result_index resource
 * @desc   Free a MS-SQL statement index 
 */
function mssql_free_statement($result_index) {}

/**
 * @return string
 * @desc   Returns the last message from server (over min_message_severity) 
 */
function mssql_get_last_message() {}

/**
 * @return string
 * @param  binary string
 * @param  short_format int[optional]
 * @desc   Converts a 16 byte binary GUID to a string  
 */
function mssql_guid_string($binary, $short_format = null) {}

/**
 * @return int
 * @param  sp_name string
 * @param  conn_id resource[optional]
 * @desc   Initializes a stored procedure or a remote stored procedure  
 */
function mssql_init($sp_name, $conn_id = null) {}

/**
 * @return void
 * @param  severity int
 * @desc   Sets minimum client severity 
 */
function mssql_min_client_severity($severity) {}

/**
 * @return void
 * @param  severity int
 * @desc   Sets the minimum error severity 
 */
function mssql_min_error_severity($severity) {}

/**
 * @return void
 * @param  severity int
 * @desc   Sets the minimum message severity 
 */
function mssql_min_message_severity($severity) {}

/**
 * @return void
 * @param  severity int
 * @desc   Sets minimum server severity 
 */
function mssql_min_server_severity($severity) {}

/**
 * @return bool
 * @param  result_id resource
 * @desc   Move the internal result pointer to the next result 
 */
function mssql_next_result($result_id) {}

/**
 * @return int
 * @param  result int
 * @desc   Get number of fields in result 
 */
function mssql_num_fields($result) {}

/**
 * @return int
 * @param  result int
 * @desc   Get number of rows in result 
 */
function mssql_num_rows($result) {}

/**
 * @return int
 * @param  host string[optional]
 * @param  user string[optional]
 * @param  password string[optional]
 * @param  charset string[optional]
 * @param  appname string[optional]
 * @desc   Open persistent Sybase connection 
 */
function mssql_pconnect($host = null, $user = null, $password = null, $charset = null, $appname = null) {}

/**
 * @return int
 * @param  query string
 * @param  link_id int[optional]
 * @desc   Send Sybase query 
 */
function mssql_query($query, $link_id = null) {}

/**
 * @return string
 * @param  result int
 * @param  row int
 * @param  field mixed
 * @desc   Get result data 
 */
function mssql_result($result, $row, $field) {}

/**
 * @return int
 * @param  conn_id resource
 * @desc   Returns the number of records affected by the query 
 */
function mssql_rows_affected($conn_id) {}

/**
 * @return bool
 * @param  database string
 * @param  link_id int[optional]
 * @desc   Select Sybase database 
 */
function mssql_select_db($database, $link_id = null) {}

/**
 * @return bool
 * @param  error_func mixed
 * @param  connection resource[optional]
 * @desc   
 */
function mssql_set_message_handler($error_func, $connection = null) {}

/**
 * @return int
 * @param  query string
 * @param  link_id int[optional]
 * @desc   Send Sybase query 
 */
function mssql_unbuffered_query($query, $link_id = null) {}

/**
 * @return int
 * @desc   Returns the maximum value a random number from Mersenne Twister can have 
 */
function mt_getrandmax() {}

/**
 * @return int
 * @param  min int[optional]
 * @param  max int
 * @desc   Returns a random number from Mersenne Twister 
 */
function mt_rand($min = null, $max) {}

/**
 * @return void
 * @param  seed int[optional]
 * @desc   Seeds Mersenne Twister random number generator 
 */
function mt_srand($seed = null) {}

/**
 * @return int
 * @param  link_identifier int[optional]
 * @desc   Gets number of affected rows in previous MySQL operation 
 */
function mysql_affected_rows($link_identifier = null) {}

/**
 * @return string
 * @param  link_identifier int[optional]
 * @desc   Returns the default character set for the current connection 
 */
function mysql_client_encoding($link_identifier = null) {}

/**
 * @return bool
 * @param  link_identifier int[optional]
 * @desc   Close a MySQL connection 
 */
function mysql_close($link_identifier = null) {}

/**
 * @return resource
 * @param  hostname string[optional]
 * @param  username string[optional]
 * @param  password string[optional]
 * @param  new bool[optional]
 * @param  flags int[optional]
 * @desc   Opens a connection to a MySQL Server 
 */
function mysql_connect($hostname = null, $username = null, $password = null, $new = null, $flags = null) {}

/**
 * @return bool
 * @param  database_name string
 * @param  link_identifier int[optional]
 * @desc   Create a MySQL database 
 */
function mysql_create_db($database_name, $link_identifier = null) {}

/**
 * @return bool
 * @param  database_name string
 * @param  link_identifier int[optional]
 * @desc   Create a MySQL database 
 */
function mysql_createdb($database_name, $link_identifier = null) {}

/**
 * @return bool
 * @param  result resource
 * @param  row_number int
 * @desc   Move internal result pointer 
 */
function mysql_data_seek($result, $row_number) {}

/**
 * @return mixed
 * @param  result resource
 * @param  row int
 * @param  field mixed[optional]
 * @desc   Gets result data 
 */
function mysql_db_name($result, $row, $field = null) {}

/**
 * @return resource
 * @param  database_name string
 * @param  query string
 * @param  link_identifier int[optional]
 * @desc   Sends an SQL query to MySQL 
 */
function mysql_db_query($database_name, $query, $link_identifier = null) {}

/**
 * @return mixed
 * @param  result resource
 * @param  row int
 * @param  field mixed[optional]
 * @desc   Gets result data 
 */
function mysql_dbname($result, $row, $field = null) {}

/**
 * @return bool
 * @param  database_name string
 * @param  link_identifier int[optional]
 * @desc   Drops (delete) a MySQL database 
 */
function mysql_drop_db($database_name, $link_identifier = null) {}

/**
 * @return bool
 * @param  database_name string
 * @param  link_identifier int[optional]
 * @desc   Drops (delete) a MySQL database 
 */
function mysql_dropdb($database_name, $link_identifier = null) {}

/**
 * @return int
 * @param  link_identifier int[optional]
 * @desc   Returns the number of the error message from previous MySQL operation 
 */
function mysql_errno($link_identifier = null) {}

/**
 * @return string
 * @param  link_identifier int[optional]
 * @desc   Returns the text of the error message from previous MySQL operation 
 */
function mysql_error($link_identifier = null) {}

/**
 * @return string
 * @param  to_be_escaped string
 * @desc   Escape string for mysql query 
 */
function mysql_escape_string($to_be_escaped) {}

/**
 * @return array
 * @param  result resource
 * @param  result_type int[optional]
 * @desc   Fetch a result row as an array (associative, numeric or both) 
 */
function mysql_fetch_array($result, $result_type = null) {}

/**
 * @return array
 * @param  result resource
 * @desc   Fetch a result row as an associative array 
 */
function mysql_fetch_assoc($result) {}

/**
 * @return object
 * @param  result resource
 * @param  field_offset int[optional]
 * @desc   Gets column information from a result and return as an object 
 */
function mysql_fetch_field($result, $field_offset = null) {}

/**
 * @return array
 * @param  result resource
 * @desc   Gets max data size of each column in a result 
 */
function mysql_fetch_lengths($result) {}

/**
 * @return object
 * @param  result resource
 * @param  class_name string[optional]
 * @param  ctor_params NULL|array[optional]
 * @desc   Fetch a result row as an object 
 */
function mysql_fetch_object($result, $class_name = null, $ctor_params = null) {}

/**
 * @return array
 * @param  result resource
 * @desc   Gets a result row as an enumerated array 
 */
function mysql_fetch_row($result) {}

/**
 * @return string
 * @param  result resource
 * @param  field_offset int
 * @desc   Gets the flags associated with the specified field in a result 
 */
function mysql_field_flags($result, $field_offset) {}

/**
 * @return int
 * @param  result resource
 * @param  field_offset int
 * @desc   Returns the length of the specified field 
 */
function mysql_field_len($result, $field_offset) {}

/**
 * @return string
 * @param  result resource
 * @param  field_index int
 * @desc   Gets the name of the specified field in a result 
 */
function mysql_field_name($result, $field_index) {}

/**
 * @return bool
 * @param  result resource
 * @param  field_offset int
 * @desc   Sets result pointer to a specific field offset 
 */
function mysql_field_seek($result, $field_offset) {}

/**
 * @return string
 * @param  result resource
 * @param  field_offset int
 * @desc   Gets name of the table the specified field is in 
 */
function mysql_field_table($result, $field_offset) {}

/**
 * @return string
 * @param  result resource
 * @param  field_offset int
 * @desc   Gets the type of the specified field in a result 
 */
function mysql_field_type($result, $field_offset) {}

/**
 * @return string
 * @param  result resource
 * @param  field_offset int
 * @desc   Gets the flags associated with the specified field in a result 
 */
function mysql_fieldflags($result, $field_offset) {}

/**
 * @return int
 * @param  result resource
 * @param  field_offset int
 * @desc   Returns the length of the specified field 
 */
function mysql_fieldlen($result, $field_offset) {}

/**
 * @return string
 * @param  result resource
 * @param  field_index int
 * @desc   Gets the name of the specified field in a result 
 */
function mysql_fieldname($result, $field_index) {}

/**
 * @return string
 * @param  result resource
 * @param  field_offset int
 * @desc   Gets name of the table the specified field is in 
 */
function mysql_fieldtable($result, $field_offset) {}

/**
 * @return string
 * @param  result resource
 * @param  field_offset int
 * @desc   Gets the type of the specified field in a result 
 */
function mysql_fieldtype($result, $field_offset) {}

/**
 * @return bool
 * @param  result resource
 * @desc   Free result memory 
 */
function mysql_free_result($result) {}

/**
 * @return bool
 * @param  result resource
 * @desc   Free result memory 
 */
function mysql_freeresult($result) {}

/**
 * @return string
 * @desc   Returns a string that represents the client library version 
 */
function mysql_get_client_info() {}

/**
 * @return string
 * @param  link_identifier int[optional]
 * @desc   Returns a string describing the type of connection in use, including the server host name 
 */
function mysql_get_host_info($link_identifier = null) {}

/**
 * @return int
 * @param  link_identifier int[optional]
 * @desc   Returns the protocol version used by current connection 
 */
function mysql_get_proto_info($link_identifier = null) {}

/**
 * @return string
 * @param  link_identifier int[optional]
 * @desc   Returns a string that represents the server version number 
 */
function mysql_get_server_info($link_identifier = null) {}

/**
 * @return string
 * @param  link_identifier int[optional]
 * @desc   Returns a string containing information about the most recent query 
 */
function mysql_info($link_identifier = null) {}

/**
 * @return int
 * @param  link_identifier int[optional]
 * @desc   Gets the ID generated from the previous INSERT operation 
 */
function mysql_insert_id($link_identifier = null) {}

/**
 * @return resource
 * @param  link_identifier int[optional]
 * @desc   List databases available on a MySQL server 
 */
function mysql_list_dbs($link_identifier = null) {}

/**
 * @return resource
 * @param  database_name string
 * @param  table_name string
 * @param  link_identifier int[optional]
 * @desc   List MySQL result fields 
 */
function mysql_list_fields($database_name, $table_name, $link_identifier = null) {}

/**
 * @return resource
 * @param  link_identifier int[optional]
 * @desc   Returns a result set describing the current server threads 
 */
function mysql_list_processes($link_identifier = null) {}

/**
 * @return resource
 * @param  database_name string
 * @param  link_identifier int[optional]
 * @desc   List tables in a MySQL database 
 */
function mysql_list_tables($database_name, $link_identifier = null) {}

/**
 * @return resource
 * @param  link_identifier int[optional]
 * @desc   List databases available on a MySQL server 
 */
function mysql_listdbs($link_identifier = null) {}

/**
 * @return resource
 * @param  database_name string
 * @param  table_name string
 * @param  link_identifier int[optional]
 * @desc   List MySQL result fields 
 */
function mysql_listfields($database_name, $table_name, $link_identifier = null) {}

/**
 * @return resource
 * @param  database_name string
 * @param  link_identifier int[optional]
 * @desc   List tables in a MySQL database 
 */
function mysql_listtables($database_name, $link_identifier = null) {}

/**
 * @return int
 * @param  result resource
 * @desc   Gets number of fields in a result 
 */
function mysql_num_fields($result) {}

/**
 * @return int
 * @param  result resource
 * @desc   Gets number of rows in a result 
 */
function mysql_num_rows($result) {}

/**
 * @return int
 * @param  result resource
 * @desc   Gets number of fields in a result 
 */
function mysql_numfields($result) {}

/**
 * @return int
 * @param  result resource
 * @desc   Gets number of rows in a result 
 */
function mysql_numrows($result) {}

/**
 * @return resource
 * @param  hostname string[optional]
 * @param  username string[optional]
 * @param  password string[optional]
 * @param  flags int[optional]
 * @desc   Opens a persistent connection to a MySQL Server 
 */
function mysql_pconnect($hostname = null, $username = null, $password = null, $flags = null) {}

/**
 * @return bool
 * @param  link_identifier int[optional]
 * @desc   Ping a server connection. If no connection then reconnect. 
 */
function mysql_ping($link_identifier = null) {}

/**
 * @return resource
 * @param  query string
 * @param  link_identifier int[optional]
 * @desc   Sends an SQL query to MySQL 
 */
function mysql_query($query, $link_identifier = null) {}

/**
 * @return string
 * @param  to_be_escaped string
 * @param  link_identifier int[optional]
 * @desc   Escape special characters in a string for use in a SQL statement, taking into account the current charset of the connection 
 */
function mysql_real_escape_string($to_be_escaped, $link_identifier = null) {}

/**
 * @return mixed
 * @param  result resource
 * @param  row int
 * @param  field mixed[optional]
 * @desc   Gets result data 
 */
function mysql_result($result, $row, $field = null) {}

/**
 * @return bool
 * @param  database_name string
 * @param  link_identifier int[optional]
 * @desc   Selects a MySQL database 
 */
function mysql_select_db($database_name, $link_identifier = null) {}

/**
 * @return bool
 * @param  database_name string
 * @param  link_identifier int[optional]
 * @desc   Selects a MySQL database 
 */
function mysql_selectdb($database_name, $link_identifier = null) {}

/**
 * @return string
 * @param  link_identifier int[optional]
 * @desc   Returns a string containing status information 
 */
function mysql_stat($link_identifier = null) {}

/**
 * @return mixed
 * @param  result resource
 * @param  row int
 * @param  field mixed[optional]
 * @desc   Gets result data 
 */
function mysql_table_name($result, $row, $field = null) {}

/**
 * @return mixed
 * @param  result resource
 * @param  row int
 * @param  field mixed[optional]
 * @desc   Gets result data 
 */
function mysql_tablename($result, $row, $field = null) {}

/**
 * @return int
 * @param  link_identifier int[optional]
 * @desc   Returns the thread id of current connection 
 */
function mysql_thread_id($link_identifier = null) {}

/**
 * @return resource
 * @param  query string
 * @param  link_identifier int[optional]
 * @desc   Sends an SQL query to MySQL, without fetching and buffering the result rows 
 */
function mysql_unbuffered_query($query, $link_identifier = null) {}

/**
 * @return mixed
 * @param  link object
 * @desc   Get number of affected rows in previous MySQL operation 
 */
function mysqli_affected_rows($link) {}

/**
 * @return bool
 * @param  link object
 * @param  mode bool
 * @desc   Turn auto commit on or of 
 */
function mysqli_autocommit($link, $mode) {}

/**
 * @return bool
 * @param  link object
 * @param  user string
 * @param  password string
 * @param  database string
 * @desc   Change logged-in user of the active connection 
 */
function mysqli_change_user($link, $user, $password, $database) {}

/**
 * @return string
 * @param  link object
 * @desc   Returns the name of the character set used for this connection 
 */
function mysqli_character_set_name($link) {}

/**
 * @return bool
 * @param  link object
 * @desc   Close connection 
 */
function mysqli_close($link) {}

/**
 * @return bool
 * @param  link object
 * @desc   Commit outstanding actions and close transaction 
 */
function mysqli_commit($link) {}

/**
 * @return object
 * @param  hostname string[optional]
 * @param  username string[optional]
 * @param  passwd string[optional]
 * @param  dbname string[optional]
 * @param  port int[optional]
 * @param  socket string[optional]
 * @desc   Open a connection to a mysql server 
 */
function mysqli_connect($hostname = null, $username = null, $passwd = null, $dbname = null, $port = null, $socket = null) {}

/**
 * @return int
 * @desc   Returns the numerical value of the error message from last connect command 
 */
function mysqli_connect_errno() {}

/**
 * @return string
 * @desc   Returns the text of the error message from previous MySQL operation 
 */
function mysqli_connect_error() {}

/**
 * @return bool
 * @param  result object
 * @param  offset int
 * @desc   Move internal result pointer 
 */
function mysqli_data_seek($result, $offset) {}

/**
 * @return void
 * @param  debug string
 * @desc   
 */
function mysqli_debug($debug) {}

/**
 * @return void
 * @param  link object
 * @desc   
 */
function mysqli_disable_reads_from_master($link) {}

/**
 * @return void
 * @param  link object
 * @desc   
 */
function mysqli_disable_rpl_parse($link) {}

/**
 * @return bool
 * @param  link object
 * @desc   
 */
function mysqli_dump_debug_info($link) {}

/**
 * @return object
 * @desc   Open a connection to a embedded mysql server 
 */
function mysqli_embedded_connect() {}

/**
 * @return void
 * @param  link object
 * @desc   
 */
function mysqli_enable_reads_from_master($link) {}

/**
 * @return void
 * @param  link object
 * @desc   
 */
function mysqli_enable_rpl_parse($link) {}

/**
 * @return int
 * @param  link object
 * @desc   Returns the numerical value of the error message from previous MySQL operation 
 */
function mysqli_errno($link) {}

/**
 * @return string
 * @param  link object
 * @desc   Returns the text of the error message from previous MySQL operation 
 */
function mysqli_error($link) {}

/**
 * @return bool
 * @param  stmt object
 * @desc   Execute a prepared statement 
 */
function mysqli_execute($stmt) {}

/**
 * @return mixed
 * @param  stmt object
 * @desc   Fetch results from a prepared statement into the bound variables 
 */
function mysqli_fetch($stmt) {}

/**
 * @return mixed
 * @param  result object
 * @param  resulttype int[optional]
 * @desc   Fetch a result row as an associative array, a numeric array, or both 
 */
function mysqli_fetch_array ($result, $resulttype = null) {}

/**
 * @return mixed
 * @param  result object
 * @desc   Fetch a result row as an associative array 
 */
function mysqli_fetch_assoc ($result) {}

/**
 * @return mixed
 * @param  result object
 * @desc   Get column information from a result and return as an object 
 */
function mysqli_fetch_field ($result) {}

/**
 * @return mixed
 * @param  result object
 * @param  offset int
 * @desc   Fetch meta-data for a single field 
 */
function mysqli_fetch_field_direct ($result, $offset) {}

/**
 * @return mixed
 * @param  result object
 * @desc   Return array of objects containing field meta-data 
 */
function mysqli_fetch_fields ($result) {}

/**
 * @return mixed
 * @param  result object
 * @desc   Get the length of each output in a result 
 */
function mysqli_fetch_lengths ($result) {}

/**
 * @return mixed
 * @param  result object
 * @param  class_name string[optional]
 * @param  ctor_params NULL|array[optional]
 * @desc   Fetch a result row as an object 
 */
function mysqli_fetch_object ($result, $class_name = null, $ctor_params = null) {}

/**
 * @return array
 * @param  result object
 * @desc   Get a result row as an enumerated array 
 */
function mysqli_fetch_row ($result) {}

/**
 * @return int
 * @param  link object
 * @desc   
 */
function mysqli_field_count($link) {}

/**
 * @return int
 * @param  result object
 * @param  fieldnr int
 * @desc   
 */
function mysqli_field_seek($result, $fieldnr) {}

/**
 * @return int
 * @param  result object
 * @desc   Get current field offset of result pointer 
 */
function mysqli_field_tell($result) {}

/**
 * @return void
 * @param  result object
 * @desc   Free query result memory for the given result handle 
 */
function mysqli_free_result($result) {}

/**
 * @return string
 * @desc   Get MySQL client info 
 */
function mysqli_get_client_info() {}

/**
 * @return int
 * @desc   Get MySQL client info 
 */
function mysqli_get_client_version() {}

/**
 * @return string
 * @param  link object
 * @desc   Get MySQL host info 
 */
function mysqli_get_host_info ($link) {}

/**
 * @return int
 * @param  link object
 * @desc   Get MySQL protocol information 
 */
function mysqli_get_proto_info($link) {}

/**
 * @return string
 * @param  link object
 * @desc   Get MySQL server info 
 */
function mysqli_get_server_info($link) {}

/**
 * @return int
 * @param  link object
 * @desc   Return the MySQL version for the server referenced by the given link 
 */
function mysqli_get_server_version($link) {}

/**
 * @return string
 * @param  link object
 * @desc   Get information about the most recent query 
 */
function mysqli_info($link) {}

/**
 * @return resource
 * @desc   Initialize mysqli and return a resource for use with mysql_real_connect 
 */
function mysqli_init() {}

/**
 * @return mixed
 * @param  link object
 * @desc   Get the ID generated from the previous INSERT operation 
 */
function mysqli_insert_id($link) {}

/**
 * @return bool
 * @param  link object
 * @param  processid int
 * @desc   Kill a mysql process on the server 
 */
function mysqli_kill($link, $processid) {}

/**
 * @return bool
 * @param  link object
 * @param  query string
 * @desc   Enforce execution of a query on the master in a master/slave setup 
 */
function mysqli_master_query($link, $query) {}

/**
 * @return bool
 * @param  link object
 * @desc   check if there any more query results from a multi query 
 */
function mysqli_more_results($link) {}

/**
 * @return bool
 * @param  link object
 * @param  query string
 * @desc   Binary-safe version of mysql_query() 
 */
function mysqli_multi_query($link, $query) {}

/**
 * @return bool
 * @param  link object
 * @desc   read next result from multi_query 
 */
function mysqli_next_result($link) {}

/**
 * @return int
 * @param  result object
 * @desc   Get number of fields in result 
 */
function mysqli_num_fields($result) {}

/**
 * @return mixed
 * @param  result object
 * @desc   Get number of rows in result 
 */
function mysqli_num_rows($result) {}

/**
 * @return bool
 * @param  link object
 * @param  flags int
 * @param  values mixed
 * @desc   Set options 
 */
function mysqli_options($link, $flags, $values) {}

/**
 * @return bool
 * @param  link object
 * @desc   Ping a server connection or reconnect if there is no connection 
 */
function mysqli_ping($link) {}

/**
 * @return mixed
 * @param  link object
 * @param  query string
 * @desc   Prepare a SQL statement for execution 
 */
function mysqli_prepare($link, $query) {}

/**
 * @return mixed
 * @param  link object
 * @param  query string
 * @param  resultmode int[optional]
 * @desc   
 */
function mysqli_query($link, $query, $resultmode = null) {}

/**
 * @return bool
 * @param  link object
 * @param  hostname string[optional]
 * @param  username string[optional]
 * @param  passwd string[optional]
 * @param  dbname string[optional]
 * @param  port int[optional]
 * @param  socket string[optional]
 * @param  flags int[optional]
 * @desc   Open a connection to a mysql server 
 */
function mysqli_real_connect($link, $hostname = null, $username = null, $passwd = null, $dbname = null, $port = null, $socket = null, $flags = null) {}

/**
 * @return string
 * @param  link object
 * @param  escapestr string
 * @desc   Escapes special characters in a string for use in a SQL statement, taking into account the current charset of the connection 
 */
function mysqli_real_escape_string($link, $escapestr) {}

/**
 * @return bool
 * @param  link object
 * @param  query string
 * @desc   Binary-safe version of mysql_query() 
 */
function mysqli_real_query($link, $query) {}

/**
 * @return bool
 * @param  link object
 * @desc   Undo actions from current transaction 
 */
function mysqli_rollback($link) {}

/**
 * @return int
 * @param  link object
 * @desc   
 */
function mysqli_rpl_parse_enabled($link) {}

/**
 * @return bool
 * @param  link object
 * @desc   
 */
function mysqli_rpl_probe($link) {}

/**
 * @return int
 * @param  query string
 * @desc   
 */
function mysqli_rpl_query_type($query) {}

/**
 * @return string
 * @param  link object
 * @param  dbname string
 * @desc   Select a MySQL database 
 */
function mysqli_select_db($link, $dbname) {}

/**
 * @return bool
 * @param  stmt object
 * @param  param_nr int
 * @param  data string
 * @desc   
 */
function mysqli_send_long_data($stmt, $param_nr, $data) {}

/**
 * @return bool
 * @param  link object
 * @param  query string
 * @desc   
 */
function mysqli_send_query($link, $query) {}

/**
 * @return void
 * @desc   
 */
function mysqli_server_end() {}

/**
 * @return bool
 * @desc   initialize embedded server 
 */
function mysqli_server_init() {}

/**
 * @return unknown
 * @param  link object
 * @desc   unsets user defined handler for load local infile command 
 */
function mysqli_set_local_infile_default($link) {}

/**
 * @return bool
 * @desc   
 */
function mysqli_set_local_infile_handler() {}

/**
 * @return bool
 * @param  link object
 * @param  flags int
 * @param  values mixed
 * @desc   Set options 
 */
function mysqli_set_opt($link, $flags, $values) {}

/**
 * @return bool
 * @param  link object
 * @param  query string
 * @desc   Enforce execution of a query on a slave in a master/slave setup 
 */
function mysqli_slave_query($link, $query) {}

/**
 * @return string
 * @param  link object
 * @desc   Returns the SQLSTATE error from previous MySQL operation 
 */
function mysqli_sqlstate($link) {}

/**
 * @return bool
 * @param  link object
 * @param  key string
 * @param  cert string
 * @param  ca string
 * @param  capath string
 * @param  cipher string
 * @desc   
 */
function mysqli_ssl_set($link, $key, $cert, $ca, $capath, $cipher) {}

/**
 * @return mixed
 * @param  link object
 * @desc   Get current system status 
 */
function mysqli_stat($link) {}

/**
 * @return mixed
 * @param  stmt object
 * @desc   Return the number of rows affected in the last query for the given link 
 */
function mysqli_stmt_affected_rows($stmt) {}

/**
 * @return int
 * @param  stmt object
 * @param  attr long
 * @desc   
 */
function mysqli_stmt_attr_get($stmt, $attr) {}

/**
 * @return int
 * @param  stmt object
 * @param  attr long
 * @param  mode bool
 * @desc   
 */
function mysqli_stmt_attr_set($stmt, $attr, $mode) {}

/**
 * @return bool
 * @param  stmt object
 * @param  types string
 * @param  variable mixed
 * @param  mixed[optional]
 * @vararg ...
 * @desc   Bind variables to a prepared statement as parameters 
 */
function mysqli_stmt_bind_param($stmt, $types, $variable, $mixed = null) {}

/**
 * @return bool
 * @param  stmt object
 * @param  var mixed
 * @param  mixed[optional]
 * @vararg ...
 * @desc   Bind variables to a prepared statement for result storage 
 */
function mysqli_stmt_bind_result($stmt, $var, $mixed = null) {}

/**
 * @return bool
 * @param  stmt object
 * @desc   Close statement 
 */
function mysqli_stmt_close($stmt) {}

/**
 * @return void
 * @param  stmt object
 * @param  offset int
 * @desc   Move internal result pointer 
 */
function mysqli_stmt_data_seek($stmt, $offset) {}

/**
 * @return int
 * @param  stmt object
 * @desc   
 */
function mysqli_stmt_errno($stmt) {}

/**
 * @return string
 * @param  stmt object
 * @desc   
 */
function mysqli_stmt_error($stmt) {}

/**
 * @return bool
 * @param  stmt object
 * @desc   Execute a prepared statement 
 */
function mysqli_stmt_execute($stmt) {}

/**
 * @return mixed
 * @param  stmt object
 * @desc   Fetch results from a prepared statement into the bound variables 
 */
function mysqli_stmt_fetch($stmt) {}

/**
 * @return int
 * @param  stmt object
 * @desc   Return the number of result columns for the given statement 
 */
function mysqli_stmt_field_count($stmt) {}

/**
 * @return void
 * @param  stmt object
 * @desc   Free stored result memory for the given statement handle 
 */
function mysqli_stmt_free_result($stmt) {}

/**
 * @return mixed
 * @param  link object
 * @desc   
 */
function mysqli_stmt_init($link) {}

/**
 * @return mixed
 * @param  stmt object
 * @desc   Get the ID generated from the previous INSERT operation 
 */
function mysqli_stmt_insert_id($stmt) {}

/**
 * @return mixed
 * @param  stmt object
 * @desc   Return the number of rows in statements result set 
 */
function mysqli_stmt_num_rows($stmt) {}

/**
 * @return int
 * @param  stmt object
 * @desc   Return the number of parameter for the given statement 
 */
function mysqli_stmt_param_count($stmt) {}

/**
 * @return bool
 * @param  stmt object
 * @param  query string
 * @desc   
 */
function mysqli_stmt_prepare($stmt, $query) {}

/**
 * @return bool
 * @param  stmt object
 * @desc   reset a prepared statement 
 */
function mysqli_stmt_reset($stmt) {}

/**
 * @return mixed
 * @param  stmt object
 * @desc   return result set from statement 
 */
function mysqli_stmt_result_metadata($stmt) {}

/**
 * @return string
 * @param  stmt object
 * @desc   
 */
function mysqli_stmt_sqlstate($stmt) {}

/**
 * @return bool
 * @param  stmt
 * @desc   
 */
function mysqli_stmt_store_result($stmt) {}

/**
 * @return object
 * @param  link object
 * @desc   Buffer result set on client 
 */
function mysqli_store_result($link) {}

/**
 * @return int
 * @param  link object
 * @desc   Return the current thread ID 
 */
function mysqli_thread_id($link) {}

/**
 * @return bool
 * @desc   Return whether thread safety is given or not 
 */
function mysqli_thread_safe() {}

/**
 * @return mixed
 * @param  link object
 * @desc   Directly retrieve query results - do not buffer results on client side 
 */
function mysqli_use_result($link) {}

/**
 * @return int
 * @param  link object
 * @desc   Return number of warnings from the last query for the given link 
 */
function mysqli_warning_count ($link) {}

/**
 * @return void
 * @param  array_arg array
 * @desc   Sort an array using case-insensitive natural sort 
 */
function natcasesort($array_arg) {}

/**
 * @return void
 * @param  array_arg array
 * @desc   Sort an array using natural sort 
 */
function natsort($array_arg) {}

/**
 * @return int
 * @param  ch int
 * @desc   Adds character at current position and advance cursor 
 */
function ncurses_addch($ch) {}

/**
 * @return int
 * @param  s string
 * @param  n int
 * @desc   Adds attributed string with specified length at current position 
 */
function ncurses_addchnstr($s, $n) {}

/**
 * @return int
 * @param  s string
 * @desc   Adds attributed string at current position 
 */
function ncurses_addchstr($s) {}

/**
 * @return int
 * @param  s string
 * @param  n int
 * @desc   Adds string with specified length at current position 
 */
function ncurses_addnstr($s, $n) {}

/**
 * @return int
 * @param  text string
 * @desc   Outputs text at current position 
 */
function ncurses_addstr($text) {}

/**
 * @return int
 * @param  fg int
 * @param  bg int
 * @desc   Defines default colors for color 0 
 */
function ncurses_assume_default_colors($fg, $bg) {}

/**
 * @return int
 * @param  attributes int
 * @desc   Turns off the given attributes 
 */
function ncurses_attroff($attributes) {}

/**
 * @return int
 * @param  attributes int
 * @desc   Turns on the given attributes 
 */
function ncurses_attron($attributes) {}

/**
 * @return int
 * @param  attributes int
 * @desc   Sets given attributes 
 */
function ncurses_attrset($attributes) {}

/**
 * @return int
 * @desc   Returns baudrate of terminal 
 */
function ncurses_baudrate() {}

/**
 * @return int
 * @desc   Let the terminal beep 
 */
function ncurses_beep() {}

/**
 * @return int
 * @param  attrchar int
 * @desc   Sets background property for terminal screen 
 */
function ncurses_bkgd($attrchar) {}

/**
 * @return void
 * @param  attrchar int
 * @desc   Controls screen background 
 */
function ncurses_bkgdset($attrchar) {}

/**
 * @return int
 * @param  left int
 * @param  right int
 * @param  top int
 * @param  bottom int
 * @param  tl_corner int
 * @param  tr_corner int
 * @param  bl_corner int
 * @param  br_corner int
 * @desc   Draws a border around the screen using attributed characters 
 */
function ncurses_border($left, $right, $top, $bottom, $tl_corner, $tr_corner, $bl_corner, $br_corner) {}

/**
 * @return int
 * @param  panel resource
 * @desc   Moves a visible panel to the bottom of the stack 
 */
function ncurses_bottom_panel($panel) {}

/**
 * @return bool
 * @desc   Checks if we can change terminals colors 
 */
function ncurses_can_change_color() {}

/**
 * @return bool
 * @desc   Switches of input buffering 
 */
function ncurses_cbreak() {}

/**
 * @return bool
 * @desc   Clears screen 
 */
function ncurses_clear() {}

/**
 * @return bool
 * @desc   Clears screen from current position to bottom 
 */
function ncurses_clrtobot() {}

/**
 * @return bool
 * @desc   Clears screen from current position to end of line 
 */
function ncurses_clrtoeol() {}

/**
 * @return int
 * @param  color int
 * @param  &r int
 * @param  &g int
 * @param  &b int
 * @desc   Gets the RGB value for color 
 */
function ncurses_color_content($color, &$r, &$g, &$b) {}

/**
 * @return int
 * @param  pair int
 * @desc   Sets fore- and background color 
 */
function ncurses_color_set($pair) {}

/**
 * @return int
 * @param  visibility int
 * @desc   Sets cursor state 
 */
function ncurses_curs_set($visibility) {}

/**
 * @return int
 * @desc   Saves terminals (program) mode 
 */
function ncurses_def_prog_mode() {}

/**
 * @return int
 * @desc   Saves terminal (shell) mode
 */
function ncurses_def_shell_mode() {}

/**
 * @return int
 * @param  definition string
 * @param  keycode int
 * @desc   Defines a keycode 
 */
function ncurses_define_key($definition, $keycode) {}

/**
 * @return bool
 * @param  panel resource
 * @desc   Remove panel from the stack and delete it (but not the associated window) 
 */
function ncurses_del_panel($panel) {}

/**
 * @return int
 * @param  milliseconds int
 * @desc   Delays output on terminal using padding characters 
 */
function ncurses_delay_output($milliseconds) {}

/**
 * @return int
 * @desc   Deletes character at current position, move rest of line left 
 */
function ncurses_delch() {}

/**
 * @return int
 * @desc   Deletes line at current position, move rest of screen up 
 */
function ncurses_deleteln() {}

/**
 * @return int
 * @param  window resource
 * @desc   Deletes a ncurses window 
 */
function ncurses_delwin($window) {}

/**
 * @return int
 * @desc   Writes all prepared refreshes to terminal 
 */
function ncurses_doupdate() {}

/**
 * @return int
 * @desc   Activates keyboard input echo 
 */
function ncurses_echo() {}

/**
 * @return int
 * @param  character int
 * @desc   Single character output including refresh 
 */
function ncurses_echochar($character) {}

/**
 * @return int
 * @desc   Stops using ncurses, clean up the screen 
 */
function ncurses_end() {}

/**
 * @return int
 * @desc   Erases terminal screen 
 */
function ncurses_erase() {}

/**
 * @return string
 * @desc   Returns current erase character 
 */
function ncurses_erasechar() {}

/**
 * @return void
 * @desc   
 */
function ncurses_filter() {}

/**
 * @return int
 * @desc   Flashes terminal screen (visual bell) 
 */
function ncurses_flash() {}

/**
 * @return int
 * @desc   Flushes keyboard input buffer 
 */
function ncurses_flushinp() {}

/**
 * @return int
 * @desc   Reads a character from keyboard 
 */
function ncurses_getch() {}

/**
 * @return void
 * @param  window resource
 * @param  &y int
 * @param  &x int
 * @desc   Returns the size of a window 
 */
function ncurses_getmaxyx($window, &$y, &$x) {}

/**
 * @return bool
 * @param  &mevent array
 * @desc   Reads mouse event from queue. The content of mevent is cleared before new data is added. 
 */
function ncurses_getmouse(&$mevent) {}

/**
 * @return void
 * @param  window resource
 * @param  &y int
 * @param  &x int
 * @desc   Returns the current cursor position for a window 
 */
function ncurses_getyx($window, &$y, &$x) {}

/**
 * @return int
 * @param  tenth int
 * @desc   Puts terminal into halfdelay mode 
 */
function ncurses_halfdelay($tenth) {}

/**
 * @return bool
 * @desc   Checks if terminal has colors 
 */
function ncurses_has_colors() {}

/**
 * @return int
 * @desc   Checks for insert- and delete-capabilities 
 */
function ncurses_has_ic() {}

/**
 * @return int
 * @desc   Checks for line insert- and delete-capabilities 
 */
function ncurses_has_il() {}

/**
 * @return int
 * @param  keycode int
 * @desc   Checks for presence of a function key on terminal keyboard 
 */
function ncurses_has_key($keycode) {}

/**
 * @return int
 * @param  panel resource
 * @desc   Remove panel from the stack, making it invisible 
 */
function ncurses_hide_panel($panel) {}

/**
 * @return int
 * @param  charattr int
 * @param  n int
 * @desc   Draws a horizontal line at current position using an attributed character and max. n characters long 
 */
function ncurses_hline($charattr, $n) {}

/**
 * @return string
 * @desc   Gets character and attribute at current position 
 */
function ncurses_inch() {}

/**
 * @return int
 * @desc   Initializes ncurses 
 */
function ncurses_init() {}

/**
 * @return int
 * @param  color int
 * @param  r int
 * @param  g int
 * @param  b int
 * @desc   Sets new RGB value for color 
 */
function ncurses_init_color($color, $r, $g, $b) {}

/**
 * @return int
 * @param  pair int
 * @param  fg int
 * @param  bg int
 * @desc   Allocates a color pair 
 */
function ncurses_init_pair($pair, $fg, $bg) {}

/**
 * @return int
 * @param  character int
 * @desc   Inserts character moving rest of line including character at current position 
 */
function ncurses_insch($character) {}

/**
 * @return int
 * @param  count int
 * @desc   Inserts lines before current line scrolling down (negative numbers delete and scroll up) 
 */
function ncurses_insdelln($count) {}

/**
 * @return int
 * @desc   Inserts a line, move rest of screen down 
 */
function ncurses_insertln() {}

/**
 * @return int
 * @param  text string
 * @desc   Inserts string at current position, moving rest of line right 
 */
function ncurses_insstr($text) {}

/**
 * @return int
 * @param  &buffer string
 * @desc   Reads string from terminal screen 
 */
function ncurses_instr(&$buffer) {}

/**
 * @return int
 * @desc   Ncurses is in endwin mode, normal screen output may be performed 
 */
function ncurses_isendwin() {}

/**
 * @return int
 * @param  keycode int
 * @param  enable int
 * @desc   Enables or disable a keycode 
 */
function ncurses_keyok($keycode, $enable) {}

/**
 * @return int
 * @param  window resource
 * @param  bf bool
 * @desc   Turns keypad on or off 
 */
function ncurses_keypad($window, $bf) {}

/**
 * @return string
 * @desc   Returns current line kill character 
 */
function ncurses_killchar() {}

/**
 * @return string
 * @desc   Returns terminal description 
 */
function ncurses_longname() {}

/**
 * @return int
 * @param  window resource
 * @param  _8bit bool
 * @desc   Enables/Disable 8-bit meta key information 
 */
function ncurses_meta($window, $_8bit) {}

/**
 * @return bool
 * @param  &y int
 * @param  &x int
 * @param  toscreen bool
 * @desc   Transforms coordinates 
 */
function ncurses_mouse_trafo(&$y, &$x, $toscreen) {}

/**
 * @return int
 * @param  milliseconds int
 * @desc   Sets timeout for mouse button clicks 
 */
function ncurses_mouseinterval($milliseconds) {}

/**
 * @return int
 * @param  newmask int
 * @param  &oldmask int
 * @desc   Returns and sets mouse options 
 */
function ncurses_mousemask($newmask, &$oldmask) {}

/**
 * @return int
 * @param  y int
 * @param  x int
 * @desc   Moves output position 
 */
function ncurses_move($y, $x) {}

/**
 * @return int
 * @param  panel resource
 * @param  startx int
 * @param  starty int
 * @desc   Moves a panel so that it's upper-left corner is at [startx, starty] 
 */
function ncurses_move_panel($panel, $startx, $starty) {}

/**
 * @return int
 * @param  y int
 * @param  x int
 * @param  c int
 * @desc   Moves current position and add character 
 */
function ncurses_mvaddch($y, $x, $c) {}

/**
 * @return int
 * @param  y int
 * @param  x int
 * @param  s string
 * @param  n int
 * @desc   Moves position and add attrributed string with specified length 
 */
function ncurses_mvaddchnstr($y, $x, $s, $n) {}

/**
 * @return int
 * @param  y int
 * @param  x int
 * @param  s string
 * @desc   Moves position and add attributed string 
 */
function ncurses_mvaddchstr($y, $x, $s) {}

/**
 * @return int
 * @param  y int
 * @param  x int
 * @param  s string
 * @param  n int
 * @desc   Moves position and add string with specified length 
 */
function ncurses_mvaddnstr($y, $x, $s, $n) {}

/**
 * @return int
 * @param  y int
 * @param  x int
 * @param  s string
 * @desc   Moves position and add string 
 */
function ncurses_mvaddstr($y, $x, $s) {}

/**
 * @return int
 * @param  old_y int
 * @param  old_x int
 * @param  new_y int
 * @param  new_x int
 * @desc   Moves cursor immediately 
 */
function ncurses_mvcur($old_y, $old_x, $new_y, $new_x) {}

/**
 * @return int
 * @param  y int
 * @param  x int
 * @desc   Moves position and delete character, shift rest of line left 
 */
function ncurses_mvdelch($y, $x) {}

/**
 * @return int
 * @param  y int
 * @param  x int
 * @desc   Moves position and get character at new position 
 */
function ncurses_mvgetch($y, $x) {}

/**
 * @return int
 * @param  y int
 * @param  x int
 * @param  attrchar int
 * @param  n int
 * @desc   Sets new position and draw a horizontal line using an attributed character and max. n characters long 
 */
function ncurses_mvhline($y, $x, $attrchar, $n) {}

/**
 * @return int
 * @param  y int
 * @param  x int
 * @desc   Moves position and get attributed character at new position 
 */
function ncurses_mvinch($y, $x) {}

/**
 * @return int
 * @param  y int
 * @param  x int
 * @param  attrchar int
 * @param  n int
 * @desc   Sets new position and draw a vertical line using an attributed character and max. n characters long 
 */
function ncurses_mvvline($y, $x, $attrchar, $n) {}

/**
 * @return int
 * @param  window resource
 * @param  y int
 * @param  x int
 * @param  text string
 * @desc   Adds string at new position in window 
 */
function ncurses_mvwaddstr($window, $y, $x, $text) {}

/**
 * @return int
 * @param  milliseconds int
 * @desc   Sleep 
 */
function ncurses_napms($milliseconds) {}

/**
 * @return resource
 * @param  window resource
 * @desc   Create a new panel and associate it with window 
 */
function ncurses_new_panel($window) {}

/**
 * @return resource
 * @param  rows int
 * @param  cols int
 * @desc   Creates a new pad (window) 
 */
function ncurses_newpad($rows, $cols) {}

/**
 * @return int
 * @param  rows int
 * @param  cols int
 * @param  y int
 * @param  x int
 * @desc   Creates a new window 
 */
function ncurses_newwin($rows, $cols, $y, $x) {}

/**
 * @return int
 * @desc   Translates newline and carriage return / line feed 
 */
function ncurses_nl() {}

/**
 * @return int
 * @desc   Switches terminal to cooked mode 
 */
function ncurses_nocbreak() {}

/**
 * @return int
 * @desc   Switches off keyboard input echo 
 */
function ncurses_noecho() {}

/**
 * @return int
 * @desc   Do not ranslate newline and carriage return / line feed 
 */
function ncurses_nonl() {}

/**
 * @return int
 * @desc   Do not flush on signal characters
 */
function ncurses_noqiflush() {}

/**
 * @return bool
 * @desc   Switches terminal out of raw mode 
 */
function ncurses_noraw() {}

/**
 * @return int
 * @param  pair int
 * @param  &f int
 * @param  &b int
 * @desc   Gets the RGB value for color 
 */
function ncurses_pair_content($pair, &$f, &$b) {}

/**
 * @return resource
 * @param  panel resource
 * @desc   Returns the panel above panel. If panel is null, returns the bottom panel in the stack 
 */
function ncurses_panel_above($panel) {}

/**
 * @return resource
 * @param  panel resource
 * @desc   Returns the panel below panel. If panel is null, returns the top panel in the stack 
 */
function ncurses_panel_below($panel) {}

/**
 * @return resource
 * @param  panel resource
 * @desc   Returns the window associated with panel 
 */
function ncurses_panel_window($panel) {}

/**
 * @return int
 * @param  pad resource
 * @param  pminrow int
 * @param  pmincol int
 * @param  sminrow int
 * @param  smincol int
 * @param  smaxrow int
 * @param  smaxcol int
 * @desc   Copys a region from a pad into the virtual screen 
 */
function ncurses_pnoutrefresh($pad, $pminrow, $pmincol, $sminrow, $smincol, $smaxrow, $smaxcol) {}

/**
 * @return int
 * @param  pad resource
 * @param  pminrow int
 * @param  pmincol int
 * @param  sminrow int
 * @param  smincol int
 * @param  smaxrow int
 * @param  smaxcol int
 * @desc   Copys a region from a pad into the virtual screen 
 */
function ncurses_prefresh($pad, $pminrow, $pmincol, $sminrow, $smincol, $smaxrow, $smaxcol) {}

/**
 * @return int
 * @param  text string
 * @desc   ??? 
 */
function ncurses_putp($text) {}

/**
 * @return void
 * @desc   Flushes on signal characters 
 */
function ncurses_qiflush() {}

/**
 * @return int
 * @desc   Switches terminal into raw mode 
 */
function ncurses_raw() {}

/**
 * @return int
 * @param  ch int
 * @desc   Refresh screen 
 */
function ncurses_refresh($ch) {}

/**
 * @return int
 * @param  panel resource
 * @param  window resource
 * @desc   Replaces the window associated with panel 
 */
function ncurses_replace_panel($panel, $window) {}

/**
 * @return int
 * @desc   Resets the prog mode saved by def_prog_mode 
 */
function ncurses_reset_prog_mode() {}

/**
 * @return int
 * @desc   Resets the shell mode saved by def_shell_mode 
 */
function ncurses_reset_shell_mode() {}

/**
 * @return int
 * @desc   Restores saved terminal state 
 */
function ncurses_resetty() {}

/**
 * @return int
 * @desc   Saves terminal state 
 */
function ncurses_savetty() {}

/**
 * @return int
 * @param  filename string
 * @desc   Dumps screen content to file 
 */
function ncurses_scr_dump($filename) {}

/**
 * @return int
 * @param  filename string
 * @desc   Initializes screen from file dump 
 */
function ncurses_scr_init($filename) {}

/**
 * @return int
 * @param  filename string
 * @desc   Restores screen from file dump 
 */
function ncurses_scr_restore($filename) {}

/**
 * @return int
 * @param  filename string
 * @desc   Inherits screen from file dump 
 */
function ncurses_scr_set($filename) {}

/**
 * @return int
 * @param  count int
 * @desc   Scrolls window content up or down without changing current position 
 */
function ncurses_scrl($count) {}

/**
 * @return int
 * @param  panel resource
 * @desc   Places an invisible panel on top of the stack, making it visible 
 */
function ncurses_show_panel($panel) {}

/**
 * @return int
 * @desc   Returns current soft label keys attribute 
 */
function ncurses_slk_attr() {}

/**
 * @return int
 * @param  intarg int
 * @desc   ??? 
 */
function ncurses_slk_attroff($intarg) {}

/**
 * @return int
 * @param  intarg int
 * @desc   ??? 
 */
function ncurses_slk_attron($intarg) {}

/**
 * @return int
 * @param  intarg int
 * @desc   ??? 
 */
function ncurses_slk_attrset($intarg) {}

/**
 * @return int
 * @desc   Clears soft label keys from screen 
 */
function ncurses_slk_clear() {}

/**
 * @return int
 * @param  intarg int
 * @desc   Sets color for soft label keys
 */
function ncurses_slk_color($intarg) {}

/**
 * @return int
 * @param  intarg int
 * @desc   Inits soft label keys 
 */
function ncurses_slk_init($intarg) {}

/**
 * @return int
 * @desc   Copies soft label keys to virtual screen 
 */
function ncurses_slk_noutrefresh() {}

/**
 * @return int
 * @desc   Copies soft label keys to screen 
 */
function ncurses_slk_refresh() {}

/**
 * @return int
 * @desc   Restores soft label keys 
 */
function ncurses_slk_restore() {}

/**
 * @return bool
 * @param  labelnr int
 * @param  label string
 * @param  format int
 * @desc   Sets function key labels 
 */
function ncurses_slk_set($labelnr, $label, $format) {}

/**
 * @return int
 * @desc   Forces output when ncurses_slk_noutrefresh is performed 
 */
function ncurses_slk_touch() {}

/**
 * @return int
 * @desc   Stops using 'standout' attribute 
 */
function ncurses_standend() {}

/**
 * @return int
 * @desc   Starts using 'standout' attribute 
 */
function ncurses_standout() {}

/**
 * @return int
 * @desc   Starts using colors 
 */
function ncurses_start_color() {}

/**
 * @return int
 * @desc   Returns a logical OR of all attribute flags supported by terminal 
 */
function ncurses_termattrs() {}

/**
 * @return string
 * @desc   Returns terminal name 
 */
function ncurses_termname() {}

/**
 * @return void
 * @param  millisec int
 * @desc   Sets timeout for special key sequences 
 */
function ncurses_timeout($millisec) {}

/**
 * @return int
 * @param  panel resource
 * @desc   Moves a visible panel to the top of the stack 
 */
function ncurses_top_panel($panel) {}

/**
 * @return int
 * @param  fd int
 * @desc   Specifys different filedescriptor for typeahead checking 
 */
function ncurses_typeahead($fd) {}

/**
 * @return int
 * @param  keycode int
 * @desc   Puts a character back into the input stream 
 */
function ncurses_ungetch($keycode) {}

/**
 * @return int
 * @param  mevent array
 * @desc   Pushes mouse event to queue 
 */
function ncurses_ungetmouse($mevent) {}

/**
 * @return void
 * @desc   Refreshes the virtual screen to reflect the relations between panels in the stack. 
 */
function ncurses_update_panels() {}

/**
 * @return int
 * @desc   Assigns terminal default colors to color id -1 
 */
function ncurses_use_default_colors() {}

/**
 * @return void
 * @param  flag int
 * @desc   Controls use of environment information about terminal size 
 */
function ncurses_use_env($flag) {}

/**
 * @return int
 * @param  flag bool
 * @desc   Controls use of extended names in terminfo descriptions 
 */
function ncurses_use_extended_names($flag) {}

/**
 * @return int
 * @param  intarg int
 * @desc   ??? 
 */
function ncurses_vidattr($intarg) {}

/**
 * @return int
 * @param  charattr int
 * @param  n int
 * @desc   Draws a vertical line at current position using an attributed character and max. n characters long 
 */
function ncurses_vline($charattr, $n) {}

/**
 * @return int
 * @param  window resource
 * @param  ch int
 * @desc   Adds character at current position in a window and advance cursor 
 */
function ncurses_waddch($window, $ch) {}

/**
 * @return int
 * @param  window resource
 * @param  str string
 * @param  n int[optional]
 * @desc   Outputs text at current postion in window 
 */
function ncurses_waddstr($window, $str, $n = null) {}

/**
 * @return int
 * @param  window resource
 * @param  attrs int
 * @desc   Turns off attributes for a window 
 */
function ncurses_wattroff($window, $attrs) {}

/**
 * @return int
 * @param  window resource
 * @param  attrs int
 * @desc   Turns on attributes for a window 
 */
function ncurses_wattron($window, $attrs) {}

/**
 * @return int
 * @param  window resource
 * @param  attrs int
 * @desc   Set the attributes for a window 
 */
function ncurses_wattrset($window, $attrs) {}

/**
 * @return int
 * @param  window resource
 * @param  left int
 * @param  right int
 * @param  top int
 * @param  bottom int
 * @param  tl_corner int
 * @param  tr_corner int
 * @param  bl_corner int
 * @param  br_corner int
 * @desc   Draws a border around the window using attributed characters 
 */
function ncurses_wborder($window, $left, $right, $top, $bottom, $tl_corner, $tr_corner, $bl_corner, $br_corner) {}

/**
 * @return int
 * @param  window resource
 * @desc   Clears window 
 */
function ncurses_wclear($window) {}

/**
 * @return int
 * @param  window resource
 * @param  color_pair int
 * @desc   Sets windows color pairings 
 */
function ncurses_wcolor_set($window, $color_pair) {}

/**
 * @return int
 * @param  window resource
 * @desc   Erase window contents 
 */
function ncurses_werase($window) {}

/**
 * @return int
 * @param  window resource
 * @desc   Reads a character from keyboard (window) 
 */
function ncurses_wgetch($window) {}

/**
 * @return int
 * @param  window resource
 * @param  charattr int
 * @param  n int
 * @desc   Draws a horizontal line in a window at current position using an attributed character and max. n characters long 
 */
function ncurses_whline($window, $charattr, $n) {}

/**
 * @return bool
 * @param  window resource
 * @param  &y int
 * @param  &x int
 * @param  toscreen bool
 * @desc   Transforms window/stdscr coordinates 
 */
function ncurses_wmouse_trafo($window, &$y, &$x, $toscreen) {}

/**
 * @return int
 * @param  window resource
 * @param  y int
 * @param  x int
 * @desc   Moves windows output position 
 */
function ncurses_wmove($window, $y, $x) {}

/**
 * @return int
 * @param  window resource
 * @desc   Copies window to virtual screen 
 */
function ncurses_wnoutrefresh($window) {}

/**
 * @return int
 * @param  window resource
 * @desc   Refreshes window on terminal screen 
 */
function ncurses_wrefresh($window) {}

/**
 * @return int
 * @param  window resource
 * @desc   End standout mode for a window 
 */
function ncurses_wstandend($window) {}

/**
 * @return int
 * @param  window resource
 * @desc   Enter standout mode for a window 
 */
function ncurses_wstandout($window) {}

/**
 * @return int
 * @param  window resource
 * @param  charattr int
 * @param  n int
 * @desc   Draws a vertical line in a window at current position using an attributed character and max. n characters long 
 */
function ncurses_wvline($window, $charattr, $n) {}

/**
 * @return mixed
 * @param  array_arg array
 * @desc   Move array argument's internal pointer to the next element and return it 
 */
function next($array_arg) {}

/**
 * @return string
 * @param  MSGID1 string
 * @param  MSGID2 string
 * @param  N int
 * @desc   Plural version of gettext() 
 */
function ngettext($MSGID1, $MSGID2, $N) {}

/**
 * @return string
 * @param  str string
 * @desc   Converts newlines to HTML line breaks 
 */
function nl2br($str) {}

/**
 * @return string
 * @param  item int
 * @desc   Query language and locale information 
 */
function nl_langinfo($item) {}

/**
 * @return array
 * @desc   Get all headers from the request 
 */
function nsapi_request_headers() {}

/**
 * @return array
 * @desc   Get all headers from the response 
 */
function nsapi_response_headers() {}

/**
 * @return bool
 * @param  uri string
 * @desc   Perform an NSAPI sub-request 
 */
function nsapi_virtual($uri) {}

/**
 * @return string
 * @param  number float
 * @param  num_decimal_places int[optional]
 * @param  dec_seperator string[optional]
 * @param  thousands_seperator string
 * @desc   Formats a number with grouped thousands 
 */
function number_format($number, $num_decimal_places = null, $dec_seperator = null, $thousands_seperator) {}

/**
 * @return bool
 * @desc   Clean (delete) the current output buffer 
 */
function ob_clean() {}

/**
 * @return bool
 * @desc   Clean the output buffer, and delete current output buffer 
 */
function ob_end_clean() {}

/**
 * @return bool
 * @desc   Flush (send) the output buffer, and delete current output buffer 
 */
function ob_end_flush() {}

/**
 * @return bool
 * @desc   Flush (send) contents of the output buffer. The last buffer content is sent to next buffer 
 */
function ob_flush() {}

/**
 * @return bool
 * @desc   Get current buffer contents and delete current output buffer 
 */
function ob_get_clean() {}

/**
 * @return string
 * @desc   Return the contents of the output buffer 
 */
function ob_get_contents() {}

/**
 * @return bool
 * @desc   Get current buffer contents, flush (send) the output buffer, and delete current output buffer 
 */
function ob_get_flush() {}

/**
 * @return int
 * @desc   Return the length of the output buffer 
 */
function ob_get_length() {}

/**
 * @return int
 * @desc   Return the nesting level of the output buffer 
 */
function ob_get_level() {}

/**
 * @return false|array
 * @param  full_status bool[optional]
 * @desc   Return the status of the active or all output buffers 
 */
function ob_get_status($full_status = null) {}

/**
 * @return string
 * @param  str string
 * @param  mode int
 * @desc   Encode str based on accept-encoding setting - designed to be called from ob_start() 
 */
function ob_gzhandler($str, $mode) {}

/**
 * @return string
 * @param  contents string
 * @param  status int
 * @desc   Returns str in output buffer converted to the iconv.output_encoding character set 
 */
function ob_iconv_handler($contents, $status) {}

/**
 * @return void
 * @param  flag int[optional]
 * @desc   Turn implicit flush on/off and is equivalent to calling flush() after every output call 
 */
function ob_implicit_flush($flag = null) {}

/**
 * @return false|array
 * @desc   
 */
function ob_list_handlers() {}

/**
 * @return bool
 * @param  user_function string|array[optional]
 * @param  chunk_size int[optional]
 * @param  erase bool[optional]
 * @desc   Turn on Output Buffering (specifying an optional output handler). 
 */
function ob_start($user_function = null, $chunk_size = null, $erase = null) {}

/**
 * @return bool
 * @param  stmt resource
 * @param  name string
 * @param  &var mixed
 * @param  maxlength int[optional]
 * @param  type int[optional]
 * @desc   Bind a PHP variable to an Oracle placeholder by name 
 */
function oci_bind_by_name($stmt, $name, &$var, $maxlength = null, $type = null) {}

/**
 * @return bool
 * @param  stmt resource
 * @desc   Cancel reading from a cursor 
 */
function oci_cancel($stmt) {}

/**
 * @return bool
 * @param  conn resource
 * @desc   Disconnect from database 
 */
function oci_close($conn) {}








/**
 * @return bool
 * @param  conn resource
 * @desc   Commit the current context 
 */
function oci_commit($conn) {}

/**
 * @return resource
 * @param  user string
 * @param  pass string
 * @param  db string[optional]
 * @desc   Connect to an Oracle database and log on. Returns a new session. 
 */
function oci_connect($user, $pass, $db = null) {}

/**
 * @return bool
 * @param  stmt resource
 * @param  name string
 * @param  &var mixed
 * @param  type int[optional]
 * @desc   Define a PHP variable to an Oracle column by name 
 */
function oci_define_by_name($stmt, $name, &$var, $type = null) {}

/**
 * @return array
 * @param  stmt|conn|global resource[optional]
 * @desc   Return the last error of stmt|conn|global. If no error happened returns false. 
 */
function oci_error($stmt = null) {}

/**
 * @return bool
 * @param  stmt resource
 * @param  mode int[optional]
 * @desc   Execute a parsed statement 
 */
function oci_execute($stmt, $mode = null) {}

/**
 * @return bool
 * @param  stmt resource
 * @desc   Prepare a new row of data for reading 
 */
function oci_fetch($stmt) {}

/**
 * @return int
 * @param  stmt resource
 * @param  &output array
 * @param  skip int
 * @param  maxrows int
 * @param  flags int
 * @desc   Fetch all rows of result data into an array 
 */
function oci_fetch_all($stmt, &$output, $skip, $maxrows, $flags) {}

/**
 * @return array
 * @param  stmt resource
 * @param  mode int[optional]
 * @desc   Fetch a result row as an array 
 */
function oci_fetch_array($stmt, $mode = null) {}

/**
 * @return array
 * @param  stmt resource
 * @desc   Fetch a result row as an associative array 
 */
function oci_fetch_assoc($stmt) {}

/**
 * @return object
 * @param  stmt resource
 * @desc   Fetch a result row as an object 
 */
function oci_fetch_object($stmt) {}

/**
 * @return array
 * @param  stmt resource
 * @desc   Fetch a result row as an enumerated array 
 */
function oci_fetch_row($stmt) {}

/**
 * @return bool
 * @param  stmt resource
 * @param  col int
 * @desc   Tell whether a column is NULL 
 */
function oci_field_is_null($stmt, $col) {}

/**
 * @return string
 * @param  stmt resource
 * @param  col int
 * @desc   Tell the name of a column 
 */
function oci_field_name($stmt, $col) {}

/**
 * @return int
 * @param  stmt resource
 * @param  col int
 * @desc   Tell the precision of a column 
 */
function oci_field_precision($stmt, $col) {}

/**
 * @return int
 * @param  stmt resource
 * @param  col int
 * @desc   Tell the scale of a column 
 */
function oci_field_scale($stmt, $col) {}

/**
 * @return int
 * @param  stmt resource
 * @param  col int
 * @desc   Tell the maximum data size of a column 
 */
function oci_field_size($stmt, $col) {}

/**
 * @return mixed
 * @param  stmt resource
 * @param  col int
 * @desc   Tell the data type of a column 
 */
function oci_field_type($stmt, $col) {}

/**
 * @return int
 * @param  stmt resource
 * @param  col int
 * @desc   Tell the raw oracle data type of a column 
 */
function oci_field_type_raw($stmt, $col) {}


/**
 * @return bool
 * @param  stmt resource
 * @desc   Free all resources associated with a statement 
 */
function oci_free_cursor($stmt) {}


/**
 * @return bool
 * @param  stmt resource
 * @desc   Free all resources associated with a statement 
 */
function oci_free_statement($stmt) {}

/**
 * @return void
 * @param  onoff int
 * @desc   Toggle internal debugging output for the OCI extension 
 */
function oci_internal_debug($onoff) {}



/**
 * @return bool
 * @param  lob_to object
 * @param  lob_from object
 * @param  length int[optional]
 * @desc   Copies data from a LOB to another LOB 
 */
function oci_lob_copy($lob_to, $lob_from, $length = null) {}






/**
 * @return bool
 * @param  lob1 object
 * @param  lob2 object
 * @desc   Tests to see if two LOB/FILE locators are equal 
 */
function oci_lob_is_equal($lob1, $lob2) {}











/**
 * @return object
 * @param  connection resource
 * @param  tdo string
 * @param  schema string[optional]
 * @desc   Initialize a new collection 
 */
function oci_new_collection($connection, $tdo, $schema = null) {}

/**
 * @return resource
 * @param  user string
 * @param  pass string
 * @param  db string[optional]
 * @desc   Connect to an Oracle database and log on. Returns a new session. 
 */
function oci_new_connect($user, $pass, $db = null) {}

/**
 * @return resource
 * @param  conn resource
 * @desc   Return a new cursor (Statement-Handle) - use this to bind ref-cursors! 
 */
function oci_new_cursor($conn) {}

/**
 * @return object
 * @param  connection resource
 * @param  type int[optional]
 * @desc   Initialize a new empty descriptor LOB/FILE (LOB is default) 
 */
function oci_new_descriptor($connection, $type = null) {}

/**
 * @return int
 * @param  stmt resource
 * @desc   Return the number of result columns in a statement 
 */
function oci_num_fields($stmt) {}

/**
 * @return int
 * @param  stmt resource
 * @desc   Return the row count of an OCI statement 
 */
function oci_num_rows($stmt) {}

/**
 * @return resource
 * @param  conn resource
 * @param  query string
 * @desc   Parse a query and return a statement 
 */
function oci_parse($conn, $query) {}

/**
 * @return bool
 * @param  conn resource
 * @param  username string
 * @param  old_password string
 * @param  new_password string
 * @desc   Changes the password of an account 
 */
function oci_password_change($conn, $username, $old_password, $new_password) {}

/**
 * @return resource
 * @param  user string
 * @param  pass string
 * @param  db string[optional]
 * @desc   Connect to an Oracle database using a persistent connection and log on. Returns a new session. 
 */
function oci_pconnect($user, $pass, $db = null) {}

/**
 * @return string
 * @param  stmt resource
 * @param  column mixed
 * @desc   Return a single column of result data 
 */
function oci_result($stmt, $column) {}

/**
 * @return bool
 * @param  conn resource
 * @desc   Rollback the current context 
 */
function oci_rollback($conn) {}

/**
 * @return string
 * @param  conn resource
 * @desc   Return a string containing server version information 
 */
function oci_server_version($conn) {}

/**
 * @return bool
 * @param  stmt resource
 * @param  prefetch_rows int
 * @desc   Sets the number of rows to be prefetched on execute to prefetch_rows for stmt 
 */
function oci_set_prefetch($stmt, $prefetch_rows) {}

/**
 * @return string
 * @param  stmt resource
 * @desc   Return the query type of an OCI statement 
 */
function oci_statement_type($stmt) {}

/**
 * @return bool
 * @param  stmt resource
 * @param  name string
 * @param  &var mixed
 * @param  maxlength int[optional]
 * @param  type int[optional]
 * @desc   Bind a PHP variable to an Oracle placeholder by name 
 */
function ocibindbyname($stmt, $name, &$var, $maxlength = null, $type = null) {}

/**
 * @return bool
 * @param  stmt resource
 * @desc   Cancel reading from a cursor 
 */
function ocicancel($stmt) {}

/**
 * @return bool
 * @param  value string
 * @desc   Append an object to the collection 
 */
function ocicollappend($value) {}

/**
 * @return bool
 * @param  index int
 * @param  val string
 * @desc   Assign element val to collection at index ndx 
 */
function ocicollassignelem($index, $val) {}

/**
 * @return string
 * @param  ndx int
 * @desc   Retrieve the value at collection index ndx 
 */
function ocicollgetelem($ndx) {}

/**
 * @return int
 * @desc   Return the max value of a collection. For a varray this is the maximum length of the array 
 */
function ocicollmax() {}

/**
 * @return int
 * @desc   Return the size of a collection 
 */
function ocicollsize() {}

/**
 * @return bool
 * @param  num int
 * @desc   Trim num elements from the end of a collection 
 */
function ocicolltrim($num) {}

/**
 * @return bool
 * @param  stmt resource
 * @param  col int
 * @desc   Tell whether a column is NULL 
 */
function ocicolumnisnull($stmt, $col) {}

/**
 * @return string
 * @param  stmt resource
 * @param  col int
 * @desc   Tell the name of a column 
 */
function ocicolumnname($stmt, $col) {}

/**
 * @return int
 * @param  stmt resource
 * @param  col int
 * @desc   Tell the precision of a column 
 */
function ocicolumnprecision($stmt, $col) {}

/**
 * @return int
 * @param  stmt resource
 * @param  col int
 * @desc   Tell the scale of a column 
 */
function ocicolumnscale($stmt, $col) {}

/**
 * @return int
 * @param  stmt resource
 * @param  col int
 * @desc   Tell the maximum data size of a column 
 */
function ocicolumnsize($stmt, $col) {}

/**
 * @return mixed
 * @param  stmt resource
 * @param  col int
 * @desc   Tell the data type of a column 
 */
function ocicolumntype($stmt, $col) {}

/**
 * @return int
 * @param  stmt resource
 * @param  col int
 * @desc   Tell the raw oracle data type of a column 
 */
function ocicolumntyperaw($stmt, $col) {}

/**
 * @return bool
 * @param  conn resource
 * @desc   Commit the current context 
 */
function ocicommit($conn) {}

/**
 * @return bool
 * @param  stmt resource
 * @param  name string
 * @param  &var mixed
 * @param  type int[optional]
 * @desc   Define a PHP variable to an Oracle column by name 
 */
function ocidefinebyname($stmt, $name, &$var, $type = null) {}

/**
 * @return array
 * @param  stmt|conn|global resource[optional]
 * @desc   Return the last error of stmt|conn|global. If no error happened returns false. 
 */
function ocierror($stmt = null) {}

/**
 * @return bool
 * @param  stmt resource
 * @param  mode int[optional]
 * @desc   Execute a parsed statement 
 */
function ociexecute($stmt, $mode = null) {}

/**
 * @return bool
 * @param  stmt resource
 * @desc   Prepare a new row of data for reading 
 */
function ocifetch($stmt) {}

/**
 * @return int
 * @param  stmt resource
 * @param  &output array
 * @param  mode int[optional]
 * @desc   Fetch a row of result data into an array 
 */
function ocifetchinto($stmt, &$output, $mode = null) {}

/**
 * @return int
 * @param  stmt resource
 * @param  &output array
 * @param  skip int
 * @param  maxrows int
 * @param  flags int
 * @desc   Fetch all rows of result data into an array 
 */
function ocifetchstatement($stmt, &$output, $skip, $maxrows, $flags) {}

/**
 * @return bool
 * @desc   Deletes collection object
 */
function ocifreecollection() {}

/**
 * @return bool
 * @param  stmt resource
 * @desc   Free all resources associated with a statement 
 */
function ocifreecursor($stmt) {}

/**
 * @return bool
 * @desc   Deletes large object description 
 */
function ocifreedesc() {}

/**
 * @return bool
 * @param  stmt resource
 * @desc   Free all resources associated with a statement 
 */
function ocifreestatement($stmt) {}


/**
 * @return void
 * @param  onoff int
 * @desc   Toggle internal debugging output for the OCI extension 
 */
function ociinternaldebug($onoff) {}

/**
 * @return string
 * @desc   Loads a large object 
 */
function ociloadlob() {}

/**
 * @return bool
 * @param  conn resource
 * @desc   Disconnect from database 
 */
function ocilogoff($conn) {}

/**
 * @return resource
 * @param  user string
 * @param  pass string
 * @param  db string[optional]
 * @desc   Connect to an Oracle database and log on. Returns a new session. 
 */
function ocilogon($user, $pass, $db = null) {}

/**
 * @return object
 * @param  connection resource
 * @param  tdo string
 * @param  schema string[optional]
 * @desc   Initialize a new collection 
 */
function ocinewcollection($connection, $tdo, $schema = null) {}

/**
 * @return resource
 * @param  conn resource
 * @desc   Return a new cursor (Statement-Handle) - use this to bind ref-cursors! 
 */
function ocinewcursor($conn) {}

/**
 * @return object
 * @param  connection resource
 * @param  type int[optional]
 * @desc   Initialize a new empty descriptor LOB/FILE (LOB is default) 
 */
function ocinewdescriptor($connection, $type = null) {}

/**
 * @return resource
 * @param  user string
 * @param  pass string
 * @param  db string[optional]
 * @desc   Connect to an Oracle database and log on. Returns a new session. 
 */
function ocinlogon($user, $pass, $db = null) {}

/**
 * @return int
 * @param  stmt resource
 * @desc   Return the number of result columns in a statement 
 */
function ocinumcols($stmt) {}

/**
 * @return resource
 * @param  conn resource
 * @param  query string
 * @desc   Parse a query and return a statement 
 */
function ociparse($conn, $query) {}

/**
 * @return bool
 * @param  conn resource
 * @param  username string
 * @param  old_password string
 * @param  new_password string
 * @desc   Changes the password of an account 
 */
function ocipasswordchange($conn, $username, $old_password, $new_password) {}

/**
 * @return resource
 * @param  user string
 * @param  pass string
 * @param  db string[optional]
 * @desc   Connect to an Oracle database using a persistent connection and log on. Returns a new session. 
 */
function ociplogon($user, $pass, $db = null) {}

/**
 * @return string
 * @param  stmt resource
 * @param  column mixed
 * @desc   Return a single column of result data 
 */
function ociresult($stmt, $column) {}

/**
 * @return bool
 * @param  conn resource
 * @desc   Rollback the current context 
 */
function ocirollback($conn) {}

/**
 * @return int
 * @param  stmt resource
 * @desc   Return the row count of an OCI statement 
 */
function ocirowcount($stmt) {}

/**
 * @return bool
 * @param  data string
 * @param  offset int[optional]
 * @desc   Saves a large object 
 */
function ocisavelob($data, $offset = null) {}

/**
 * @return bool
 * @param  filename string
 * @desc   Saves a large object to file 
 */
function ocisavelobfile($filename) {}

/**
 * @return string
 * @param  conn resource
 * @desc   Return a string containing server version information 
 */
function ociserverversion($conn) {}


/**
 * @return bool
 * @param  stmt resource
 * @param  prefetch_rows int
 * @desc   Sets the number of rows to be prefetched on execute to prefetch_rows for stmt 
 */
function ocisetprefetch($stmt, $prefetch_rows) {}

/**
 * @return string
 * @param  stmt resource
 * @desc   Return the query type of an OCI statement 
 */
function ocistatementtype($stmt) {}

/**
 * @return bool
 * @param  filename string[optional]
 * @param  start int[optional]
 * @param  length int[optional]
 * @desc   Writes a large object into a file 
 */
function ociwritelobtofile($filename = null, $start = null, $length = null) {}

/**
 * @return int
 * @param  octal_number string
 * @desc   Returns the decimal equivalent of an octal string 
 */
function octdec($octal_number) {}

/**
 * @return mixed
 * @param  connection_id resource
 * @param  OnOff int[optional]
 * @desc   Toggle autocommit mode or get status 
 */
function odbc_autocommit($connection_id, $OnOff = null) {}

/**
 * @return bool
 * @param  result_id int
 * @param  mode int
 * @desc   Handle binary column data 
 */
function odbc_binmode($result_id, $mode) {}

/**
 * @return void
 * @param  connection_id resource
 * @desc   Close an ODBC connection 
 */
function odbc_close($connection_id) {}

/**
 * @return void
 * @desc   Close all ODBC connections 
 */
function odbc_close_all() {}

/**
 * @return resource
 * @param  connection_id resource
 * @param  catalog string
 * @param  schema string
 * @param  table string
 * @param  column string
 * @desc   Returns a result identifier that can be used to fetch a list of columns and associated privileges for the specified table 
 */
function odbc_columnprivileges($connection_id, $catalog, $schema, $table, $column) {}

/**
 * @return resource
 * @param  connection_id resource
 * @param  qualifier string
 * @param  owner string
 * @param  table_name string
 * @param  column_name string
 * @desc   Returns a result identifier that can be used to fetch a list of column names in specified tables 
 */
function odbc_columns($connection_id, $qualifier, $owner, $table_name, $column_name) {}

/**
 * @return bool
 * @param  connection_id resource
 * @desc   Commit an ODBC transaction 
 */
function odbc_commit($connection_id) {}

/**
 * @return resource
 * @param  DSN string
 * @param  user string
 * @param  password string
 * @param  cursor_option int[optional]
 * @desc   Connect to a datasource 
 */
function odbc_connect($DSN, $user, $password, $cursor_option = null) {}

/**
 * @return string
 * @param  result_id resource
 * @desc   Get cursor name 
 */
function odbc_cursor($result_id) {}

/**
 * @return array
 * @param  connection_id resource
 * @param  fetch_type int
 * @desc   Return information about the currently connected data source 
 */
function odbc_data_source($connection_id, $fetch_type) {}

/**
 * @return resource
 * @param  connection_id resource
 * @param  query string
 * @param  flags int[optional]
 * @desc   Prepare and execute an SQL statement 
 */
function odbc_do($connection_id, $query, $flags = null) {}

/**
 * @return string
 * @param  connection_id resource[optional]
 * @desc   Get the last error code 
 */
function odbc_error($connection_id = null) {}

/**
 * @return string
 * @param  connection_id resource[optional]
 * @desc   Get the last error message 
 */
function odbc_errormsg($connection_id = null) {}

/**
 * @return resource
 * @param  connection_id resource
 * @param  query string
 * @param  flags int[optional]
 * @desc   Prepare and execute an SQL statement 
 */
function odbc_exec($connection_id, $query, $flags = null) {}

/**
 * @return bool
 * @param  result_id resource
 * @param  parameters_array array[optional]
 * @desc   Execute a prepared statement 
 */
function odbc_execute($result_id, $parameters_array = null) {}

/**
 * @return array
 * @param  result int
 * @param  rownumber int[optional]
 * @desc   Fetch a result row as an associative array 
 */
function odbc_fetch_array($result, $rownumber = null) {}

/**
 * @return int
 * @param  result_id resource
 * @param  result_array array
 * @param  rownumber int[optional]
 * @desc   Fetch one result row into an array 
 */
function odbc_fetch_into($result_id, $result_array, $rownumber = null) {}

/**
 * @return object
 * @param  result int
 * @param  rownumber int[optional]
 * @desc   Fetch a result row as an object 
 */
function odbc_fetch_object($result, $rownumber = null) {}

/**
 * @return bool
 * @param  result_id resource
 * @param  row_number int[optional]
 * @desc   Fetch a row 
 */
function odbc_fetch_row($result_id, $row_number = null) {}

/**
 * @return int
 * @param  result_id resource
 * @param  field_number int
 * @desc   Get the length (precision) of a column 
 */
function odbc_field_len($result_id, $field_number) {}

/**
 * @return string
 * @param  result_id resource
 * @param  field_number int
 * @desc   Get a column name 
 */
function odbc_field_name($result_id, $field_number) {}

/**
 * @return int
 * @param  result_id resource
 * @param  field_name string
 * @desc   Return column number 
 */
function odbc_field_num($result_id, $field_name) {}

/**
 * @return int
 * @param  result_id resource
 * @param  field_number int
 * @desc   Get the length (precision) of a column 
 */
function odbc_field_precision($result_id, $field_number) {}

/**
 * @return int
 * @param  result_id resource
 * @param  field_number int
 * @desc   Get the scale of a column 
 */
function odbc_field_scale($result_id, $field_number) {}

/**
 * @return string
 * @param  result_id resource
 * @param  field_number int
 * @desc   Get the datatype of a column 
 */
function odbc_field_type($result_id, $field_number) {}

/**
 * @return resource
 * @param  connection_id resource
 * @param  pk_qualifier string
 * @param  pk_owner string
 * @param  pk_table string
 * @param  fk_qualifier string
 * @param  fk_owner string
 * @param  fk_table string
 * @desc   Returns a result identifier to either a list of foreign keys in the specified table or a list of foreign keys in other tables that refer to the primary key in the specified table 
 */
function odbc_foreignkeys($connection_id, $pk_qualifier, $pk_owner, $pk_table, $fk_qualifier, $fk_owner, $fk_table) {}

/**
 * @return bool
 * @param  result_id resource
 * @desc   Free resources associated with a result 
 */
function odbc_free_result($result_id) {}

/**
 * @return resource
 * @param  connection_id resource
 * @param  data_type int[optional]
 * @desc   Returns a result identifier containing information about data types supported by the data source 
 */
function odbc_gettypeinfo($connection_id, $data_type = null) {}

/**
 * @return bool
 * @param  result_id int
 * @param  length int
 * @desc   Handle LONG columns 
 */
function odbc_longreadlen($result_id, $length) {}

/**
 * @return bool
 * @param  result_id resource
 * @desc   Checks if multiple results are avaiable 
 */
function odbc_next_result($result_id) {}

/**
 * @return int
 * @param  result_id resource
 * @desc   Get number of columns in a result 
 */
function odbc_num_fields($result_id) {}

/**
 * @return int
 * @param  result_id resource
 * @desc   Get number of rows in a result 
 */
function odbc_num_rows($result_id) {}

/**
 * @return resource
 * @param  DSN string
 * @param  user string
 * @param  password string
 * @param  cursor_option int[optional]
 * @desc   Establish a persistent connection to a datasource 
 */
function odbc_pconnect($DSN, $user, $password, $cursor_option = null) {}

/**
 * @return resource
 * @param  connection_id resource
 * @param  query string
 * @desc   Prepares a statement for execution 
 */
function odbc_prepare($connection_id, $query) {}

/**
 * @return resource
 * @param  connection_id resource
 * @param  qualifier string
 * @param  owner string
 * @param  table string
 * @desc   Returns a result identifier listing the column names that comprise the primary key for a table 
 */
function odbc_primarykeys($connection_id, $qualifier, $owner, $table) {}

/**
 * @return resource
 * @param  connection_id resource
 * @param  qualifier string[optional]
 * @param  owner string
 * @param  proc string
 * @param  column string
 * @desc   Returns a result identifier containing the list of input and output parameters, as well as the columns that make up the result set for the specified procedures 
 */
function odbc_procedurecolumns($connection_id, $qualifier = null, $owner, $proc, $column) {}

/**
 * @return resource
 * @param  connection_id resource
 * @param  qualifier string[optional]
 * @param  owner string
 * @param  name string
 * @desc   Returns a result identifier containg the list of procedure names in a datasource 
 */
function odbc_procedures($connection_id, $qualifier = null, $owner, $name) {}

/**
 * @return mixed
 * @param  result_id resource
 * @param  field mixed
 * @desc   Get result data 
 */
function odbc_result($result_id, $field) {}

/**
 * @return int
 * @param  result_id resource
 * @param  format string[optional]
 * @desc   Print result as HTML table 
 */
function odbc_result_all($result_id, $format = null) {}

/**
 * @return bool
 * @param  connection_id resource
 * @desc   Rollback a transaction 
 */
function odbc_rollback($connection_id) {}

/**
 * @return bool
 * @param  conn_id|result_id resource
 * @param  which int
 * @param  option int
 * @param  value int
 * @desc   Sets connection or statement options 
 */
function odbc_setoption($conn_id, $which, $option, $value) {}

/**
 * @return resource
 * @param  connection_id resource
 * @param  type int
 * @param  qualifier string
 * @param  owner string
 * @param  table string
 * @param  scope int
 * @param  nullable int
 * @desc   Returns a result identifier containing either the optimal set of columns that uniquely identifies a row in the table or columns that are automatically updated when any value in the row is updated by a transaction 
 */
function odbc_specialcolumns($connection_id, $type, $qualifier, $owner, $table, $scope, $nullable) {}

/**
 * @return resource
 * @param  connection_id resource
 * @param  qualifier string
 * @param  owner string
 * @param  name string
 * @param  unique int
 * @param  accuracy int
 * @desc   Returns a result identifier that contains statistics about a single table and the indexes associated with the table 
 */
function odbc_statistics($connection_id, $qualifier, $owner, $name, $unique, $accuracy) {}

/**
 * @return resource
 * @param  connection_id resource
 * @param  qualifier string
 * @param  owner string
 * @param  name string
 * @desc   Returns a result identifier containing a list of tables and the privileges associated with each table 
 */
function odbc_tableprivileges($connection_id, $qualifier, $owner, $name) {}

/**
 * @return resource
 * @param  connection_id resource
 * @param  qualifier string[optional]
 * @param  owner string
 * @param  name string
 * @param  table_types string
 * @desc   Call the SQLTables function 
 */
function odbc_tables($connection_id, $qualifier = null, $owner, $name, $table_types) {}

/**
 * @return mixed
 * @param  path string
 * @param  context resource
 * @desc   Open a directory and return a dir_handle 
 */
function opendir($path, $context) {}

/**
 * @return bool
 * @param  ident string
 * @param  option int
 * @param  facility int
 * @desc   Open connection to system logger 
 */
function openlog($ident, $option, $facility) {}

/**
 * @return bool
 * @param  csr resource
 * @param  &out string
 * @param  notext bool[optional]
 * @desc   Exports a CSR to file or a var 
 */
function openssl_csr_export($csr, &$out, $notext = true) {}

/**
 * @return bool
 * @param  csr resource
 * @param  outfilename string
 * @param  notext bool[optional]
 * @desc   Exports a CSR to file 
 */
function openssl_csr_export_to_file($csr, $outfilename, $notext = true) {}

/**
 * @return bool
 * @param  dn array
 * @param  &privkey resource
 * @param  configargs array[optional]
 * @param  extraattribs array
 * @desc   Generates a privkey and CSR 
 */
function openssl_csr_new($dn, &$privkey, $configargs = null, $extraattribs) {}

/**
 * @return resource
 * @param  csr mixed
 * @param  x509 mixed
 * @param  priv_key mixed
 * @param  days long
 * @param  config_args array[optional]
 * @param  serial long[optional]
 * @desc   Signs a cert with another CERT 
 */
function openssl_csr_sign($csr, $x509, $priv_key, $days, $config_args = null, $serial = null) {}

/**
 * @return mixed
 * @desc   Returns a description of the last error, and alters the index of the error messages. Returns false when the are no more messages 
 */
function openssl_error_string() {}

/**
 * @return void
 * @param  key int
 * @desc   Frees a key 
 */
function openssl_free_key($key) {}

/**
 * @return int
 * @param  key string
 * @param  passphrase string[optional]
 * @desc   Gets private keys 
 */
function openssl_get_privatekey($key, $passphrase = null) {}

/**
 * @return int
 * @param  cert mixed
 * @desc   Gets public key from X.509 certificate 
 */
function openssl_get_publickey($cert) {}

/**
 * @return bool
 * @param  data string
 * @param  opendata &string
 * @param  ekey string
 * @param  privkey mixed
 * @desc   Opens data 
 */
function openssl_open($data, $opendata, $ekey, $privkey) {}

/**
 * @return bool
 * @param  infilename string
 * @param  outfilename string
 * @param  recipcert mixed
 * @param  recipkey mixed[optional]
 * @desc   Decrypts the S/MIME message in the file name infilename and output the results to the file name outfilename.  recipcert is a CERT for one of the recipients. recipkey specifies the private key matching recipcert, if recipcert does not include the key 
 */
function openssl_pkcs7_decrypt($infilename, $outfilename, $recipcert, $recipkey = null) {}

/**
 * @return bool
 * @param  infile string
 * @param  outfile string
 * @param  recipcerts mixed
 * @param  headers array
 * @param  flags long[optional]
 * @param  cipher long[optional]
 * @desc   Encrypts the message in the file named infile with the certificates in recipcerts and output the result to the file named outfile 
 */
function openssl_pkcs7_encrypt($infile, $outfile, $recipcerts, $headers, $flags = null, $cipher = null) {}

/**
 * @return bool
 * @param  infile string
 * @param  outfile string
 * @param  signcert mixed
 * @param  signkey mixed
 * @param  headers array
 * @param  flags long[optional]
 * @param  extracertsfilename string[optional]
 * @desc   Signs the MIME message in the file named infile with signcert/signkey and output the result to file name outfile. headers lists plain text headers to exclude from the signed portion of the message, and should include to, from and subject as a minimum 
 */
function openssl_pkcs7_sign($infile, $outfile, $signcert, $signkey, $headers, $flags = null, $extracertsfilename = null) {}

/**
 * @return bool
 * @param  filename string
 * @param  flags long
 * @param  signerscerts string[optional]
 * @param  cainfo array[optional]
 * @param  extracerts string[optional]
 * @desc   Verifys that the data block is intact, the signer is who they say they are, and returns the CERTs of the signers 
 */
function openssl_pkcs7_verify($filename, $flags, $signerscerts = null, $cainfo = null, $extracerts = null) {}

/**
 * @return bool
 * @param  key mixed
 * @param  out &mixed
 * @param  passphrase string[optional]
 * @param  config_args array[optional]
 * @desc   Gets an exportable representation of a key into a string or file 
 */
function openssl_pkey_export($key, $out, $passphrase = null, $config_args = null) {}

/**
 * @return bool
 * @param  key mixed
 * @param  outfilename string
 * @param  passphrase string[optional]
 * @param  config_args array
 * @desc   Gets an exportable representation of a key into a file 
 */
function openssl_pkey_export_to_file($key, $outfilename, $passphrase = null, $config_args) {}

/**
 * @return void
 * @param  key int
 * @desc   Frees a key 
 */
function openssl_pkey_free($key) {}

/**
 * @return int
 * @param  key string
 * @param  passphrase string[optional]
 * @desc   Gets private keys 
 */
function openssl_pkey_get_private($key, $passphrase = null) {}

/**
 * @return int
 * @param  cert mixed
 * @desc   Gets public key from X.509 certificate 
 */
function openssl_pkey_get_public($cert) {}

/**
 * @return resource
 * @param  configargs array[optional]
 * @desc   Generates a new private key 
 */
function openssl_pkey_new($configargs = null) {}

/**
 * @return bool
 * @param  data string
 * @param  decrypted string
 * @param  key mixed
 * @param  padding int[optional]
 * @desc   Decrypts data with private key 
 */
function openssl_private_decrypt($data, $decrypted, $key, $padding = null) {}

/**
 * @return bool
 * @param  data string
 * @param  crypted string
 * @param  key mixed
 * @param  padding int[optional]
 * @desc   Encrypts data with private key 
 */
function openssl_private_encrypt($data, $crypted, $key, $padding = null) {}

/**
 * @return bool
 * @param  data string
 * @param  crypted string
 * @param  key resource
 * @param  padding int[optional]
 * @desc   Decrypts data with public key 
 */
function openssl_public_decrypt($data, $crypted, $key, $padding = null) {}

/**
 * @return bool
 * @param  data string
 * @param  crypted string
 * @param  key mixed
 * @param  padding int[optional]
 * @desc   Encrypts data with public key 
 */
function openssl_public_encrypt($data, $crypted, $key, $padding = null) {}

/**
 * @return int
 * @param  data string
 * @param  sealdata &string
 * @param  ekeys &array
 * @param  pubkeys array
 * @desc   Seals data 
 */
function openssl_seal($data, $sealdata, $ekeys, $pubkeys) {}

/**
 * @return bool
 * @param  data string
 * @param  signature &string
 * @param  key mixed
 * @desc   Signs data 
 */
function openssl_sign($data, $signature, $key) {}

/**
 * @return int
 * @param  data string
 * @param  signature string
 * @param  key mixed
 * @desc   Verifys data 
 */
function openssl_verify($data, $signature, $key) {}

/**
 * @return bool
 * @param  cert mixed
 * @param  key mixed
 * @desc   Checks if a private key corresponds to a CERT 
 */
function openssl_x509_check_private_key($cert, $key) {}

/**
 * @return int
 * @param  x509cert mixed
 * @param  purpose int
 * @param  cainfo array
 * @param  untrustedfile string[optional]
 * @desc   Checks the CERT to see if it can be used for the purpose in purpose. cainfo holds information about trusted CAs 
 */
function openssl_x509_checkpurpose($x509cert, $purpose, $cainfo, $untrustedfile = null) {}

/**
 * @return bool
 * @param  x509 mixed
 * @param  &out string
 * @param  notext bool[optional]
 * @desc   Exports a CERT to file or a var 
 */
function openssl_x509_export($x509, &$out, $notext = true) {}

/**
 * @return bool
 * @param  x509 mixed
 * @param  outfilename string
 * @param  notext bool[optional]
 * @desc   Exports a CERT to file or a var 
 */
function openssl_x509_export_to_file($x509, $outfilename, $notext = true) {}

/**
 * @return void
 * @param  x509 resource
 * @desc   Frees X.509 certificates 
 */
function openssl_x509_free($x509) {}

/**
 * @return array
 * @param  x509 mixed
 * @param  shortnames bool[optional]
 * @desc   Returns an array of the fields/values of the CERT 
 */
function openssl_x509_parse($x509, $shortnames = true) {}

/**
 * @return resource
 * @param  cert mixed
 * @desc   Reads X.509 certificates 
 */
function openssl_x509_read($cert) {}

/**
 * @return bool
 * @param  cursor resource
 * @param  php_variable_name string
 * @param  sql_parameter_name string
 * @param  length int
 * @param  type int[optional]
 * @desc   Bind a PHP variable to an Oracle parameter 
 */
function ora_bind($cursor, $php_variable_name, $sql_parameter_name, $length, $type = null) {}

/**
 * @return bool
 * @param  cursor resource
 * @desc   Close an Oracle cursor 
 */
function ora_close($cursor) {}

/**
 * @return string
 * @param  cursor resource
 * @param  column int
 * @desc   Get the name of an Oracle result column 
 */
function ora_columnname($cursor, $column) {}

/**
 * @return int
 * @param  cursor int
 * @param  column int
 * @desc   Return the size of the column 
 */
function ora_columnsize($cursor, $column) {}

/**
 * @return string
 * @param  cursor resource
 * @param  column int
 * @desc   Get the type of an Oracle result column 
 */
function ora_columntype($cursor, $column) {}

/**
 * @return bool
 * @param  connection resource
 * @desc   Commit an Oracle transaction 
 */
function ora_commit($connection) {}

/**
 * @return bool
 * @param  connection resource
 * @desc   Disable automatic commit 
 */
function ora_commitoff($connection) {}

/**
 * @return bool
 * @param  connection resource
 * @desc   Enable automatic commit 
 */
function ora_commiton($connection) {}

/**
 * @return resource
 * @param  connection resource
 * @param  cursor resource
 * @desc   Parse and execute a statement and fetch first result row 
 */
function ora_do($connection, $cursor) {}

/**
 * @return string
 * @param  cursor_or_connection resource
 * @desc   Get an Oracle error message 
 */
function ora_error($cursor_or_connection) {}

/**
 * @return int
 * @param  cursor_or_connection resource
 * @desc   Get an Oracle error code 
 */
function ora_errorcode($cursor_or_connection) {}

/**
 * @return bool
 * @param  cursor resource
 * @desc   Execute a parsed statement 
 */
function ora_exec($cursor) {}

/**
 * @return bool
 * @param  cursor resource
 * @desc   Fetch a row of result data from a cursor 
 */
function ora_fetch($cursor) {}

/**
 * @return int
 * @param  cursor resource
 * @param  result array
 * @param  flags int[optional]
 * @desc   Fetch a row into the specified result array 
 */
function ora_fetch_into($cursor, $result, $flags = null) {}

/**
 * @return mixed
 * @param  cursor resource
 * @param  column int
 * @desc   Get data from a fetched row 
 */
function ora_getcolumn($cursor, $column) {}

/**
 * @return bool
 * @param  connection resource
 * @desc   Close an Oracle connection 
 */
function ora_logoff($connection) {}

/**
 * @return resource
 * @param  user string
 * @param  password string
 * @desc   Open an Oracle connection 
 */
function ora_logon($user, $password) {}

/**
 * @return int
 * @param  cursor resource
 * @desc   Returns the numbers of columns in a result 
 */
function ora_numcols($cursor) {}

/**
 * @return int
 * @param  cursor resource
 * @desc   Returns the number of rows in a result 
 */
function ora_numrows($cursor) {}

/**
 * @return resource
 * @param  connection resource
 * @desc   Open an Oracle cursor 
 */
function ora_open($connection) {}

/**
 * @return bool
 * @param  cursor resource
 * @param  sql_statement string
 * @param  defer int[optional]
 * @desc   Parse an Oracle SQL statement 
 */
function ora_parse($cursor, $sql_statement, $defer = null) {}

/**
 * @return resource
 * @param  user string
 * @param  password string
 * @desc   Open a persistent Oracle connection 
 */
function ora_plogon($user, $password) {}

/**
 * @return bool
 * @param  connection resource
 * @desc   Roll back an Oracle transaction 
 */
function ora_rollback($connection) {}

/**
 * @return int
 * @param  character string
 * @desc   Returns ASCII value of character 
 */
function ord($character) {}

/**
 * @return bool
 * @param  name string
 * @param  value string
 * @desc   Add URL rewriter values 
 */
function output_add_rewrite_var($name, $value) {}

/**
 * @return array
 * @param  filename string
 * @desc   Check filename against the Zend Performance Suite's content cache rules 
 */
function output_cache_check_file($filename) {}

/**
 * @return void
 * @desc   Disable content-caching of current page results (Zend Performance Suite) 
 */
function output_cache_disable() {}

/**
 * @return void
 * @desc   Disable compression of current page results (Zend Performance Suite) 
 */
function output_cache_disable_compression() {}

/**
 * @return mixed
 * @param  key string
 * @param  lifetime int
 * @desc   Start output caching (Zend Performance Suite) 
 */
function output_cache_exists($key, $lifetime) {}

/**
 * @return string
 * @param  key string
 * @param  function string
 * @param  lifetime int
 * @desc   Cache the result of a function call, or obtain previously-generated cache (Zend Performance Suite) 
 */
function output_cache_fetch($key, $function, $lifetime) {}

/**
 * @return mixed
 * @param  key string
 * @param  lifetime int
 * @desc   Fetch value from Zend Performance Suite's cache by key 
 */
function output_cache_get($key, $lifetime) {}

/**
 * @return array
 * @desc   Get content cache statistics from the Zend Performance Suite
 */
function output_cache_get_statistics() {}

/**
 * @return string
 * @param  key string
 * @param  function string
 * @param  lifetime int
 * @desc   Cache the output of a function call, or obtain previously-generated cache (Zend Performance Suite) 
 */
function output_cache_output($key, $function, $lifetime) {}

/**
 * @return bool
 * @param  key string
 * @param  data mixed
 * @desc   Store a value in the Zend Performance Suite's cache using a specified key 
 */
function output_cache_put($key, $data) {}

/**
 * @return string
 * @param  filename string
 * @desc   Remove all copies of the specified file from the Zend Performance Suite's cache 
 */
function output_cache_remove($filename) {}

/**
 * @return string
 * @param  key string
 * @desc   Remove all cached elements using the specified key from the Zend Performance Suite's cache 
 */
function output_cache_remove_key($key) {}

/**
 * @return string
 * @param  url string
 * @desc   Remove all copies of the specified URL from the Zend Performance Suite's cache 
 */
function output_cache_remove_url($url) {}

/**
 * @return void
 * @desc   Stop output caching (Zend Performance Suite) 
 */
function output_cache_stop() {}

/**
 * @return bool
 * @desc   Reset(clear) URL rewriter values 
 */
function output_reset_rewrite_vars() {}

/**
 * @return int
 * @param  connection_id int
 * @param  OnOff int
 * @desc   
 */
function ovrimos_autocommit($connection_id, $OnOff) {}

/**
 * @return void
 * @param  connection int
 * @desc   Close a connection 
 */
function ovrimos_close($connection) {}

/**
 * @return bool
 * @param  connection_id int
 * @desc   Commit an ovrimos transaction 
 */
function ovrimos_commit($connection_id) {}

/**
 * @return int
 * @param  host string
 * @param  db string
 * @param  user string
 * @param  password string
 * @desc   Connect to an Ovrimos database 
 */
function ovrimos_connect($host, $db, $user, $password) {}

/**
 * @return string
 * @param  result_id int
 * @desc   Get cursor name 
 */
function ovrimos_cursor($result_id) {}

/**
 * @return int
 * @param  connection_id int
 * @param  query string
 * @desc   Prepare and execute an SQL statement 
 */
function ovrimos_do($connection_id, $query) {}

/**
 * @return int
 * @param  connection_id int
 * @param  query string
 * @desc   Prepare and execute an SQL statement 
 */
function ovrimos_exec($connection_id, $query) {}

/**
 * @return bool
 * @param  result_id int
 * @param  parameters_array array[optional]
 * @desc   Execute a prepared statement 
 */
function ovrimos_execute($result_id, $parameters_array = null) {}

/**
 * @return bool
 * @param  result_id int
 * @param  result_array array
 * @param  how string[optional]
 * @param  rownumber int[optional]
 * @desc   
 */
function ovrimos_fetch_into($result_id, $result_array, $how = null, $rownumber = null) {}

/**
 * @return bool
 * @param  result_id int
 * @param  how int[optional]
 * @param  row_number int[optional]
 * @desc   
 */
function ovrimos_fetch_row($result_id, $how = null, $row_number = null) {}

/**
 * @return int
 * @param  result_id int
 * @param  field_number int
 * @desc   Get the length of a column 
 */
function ovrimos_field_len($result_id, $field_number) {}

/**
 * @return string
 * @param  result_id int
 * @param  field_number int
 * @desc   Get a column name 
 */
function ovrimos_field_name($result_id, $field_number) {}

/**
 * @return int
 * @param  result_id int
 * @param  field_name string
 * @desc   Return column number 
 */
function ovrimos_field_num($result_id, $field_name) {}

/**
 * @return int
 * @param  result_id int
 * @param  field_number int
 * @desc   Get the datatype of a column 
 */
function ovrimos_field_type($result_id, $field_number) {}

/**
 * @return bool
 * @param  result_id int
 * @desc   Free resources associated with a result 
 */
function ovrimos_free_result($result_id) {}

/**
 * @return bool
 * @param  result_id int
 * @param  length int
 * @desc   Handle LONG columns 
 */
function ovrimos_longreadlen($result_id, $length) {}

/**
 * @return int
 * @param  result_id int
 * @desc   Get number of columns in a result 
 */
function ovrimos_num_fields($result_id) {}

/**
 * @return int
 * @param  result_id int
 * @desc   Get number of rows in a result 
 */
function ovrimos_num_rows($result_id) {}

/**
 * @return int
 * @param  connection_id int
 * @param  query string
 * @desc   Prepares a statement for execution 
 */
function ovrimos_prepare($connection_id, $query) {}

/**
 * @return string
 * @param  result_id int
 * @param  field mixed
 * @desc   Get result data 
 */
function ovrimos_result($result_id, $field) {}

/**
 * @return int
 * @param  result_id int
 * @param  format string[optional]
 * @desc   Print result as HTML table 
 */
function ovrimos_result_all($result_id, $format = null) {}

/**
 * @return bool
 * @param  connection_id int
 * @desc   Rollback a transaction 
 */
function ovrimos_rollback($connection_id) {}

/**
 * @return int
 * @param  conn_id|result_id int
 * @param  which int
 * @param  option int
 * @param  value int
 * @desc   Sets connection or statement options 
 */
function ovrimos_setoption($conn_id, $which, $option, $value) {}

/**
 * @return string
 * @param  format string
 * @param  arg1 mixed
 * @param  arg2 mixed[optional]
 * @vararg ... mixed
 * @desc   Takes one or more arguments and packs them into a binary string according to the format argument 
 */
function pack($format, $arg1, $arg2 = null) {}

/**
 * @return array
 * @param  filename string
 * @desc   Parse configuration file 
 */
function parse_ini_file($filename) {}

/**
 * @return void
 * @param  encoded_string string
 * @param  result array[optional]
 * @desc   Parses GET/POST/COOKIE data and sets global variables 
 */
function parse_str($encoded_string, $result = null) {}

/**
 * @return array
 * @param  url string
 * @desc   Parse a URL and return its components 
 */
function parse_url($url) {}

/**
 * @return void
 * @param  command string
 * @param  &return_value int[optional]
 * @desc   Execute an external program and display raw output 
 */
function passthru($command, &$return_value) {}

/**
 * @return array
 * @param  path string
 * @desc   Returns information about a certain string 
 */
function pathinfo($path) {}

/**
 * @return int
 * @param  fp resource
 * @desc   Close a file pointer opened by popen() 
 */
function pclose($fp) {}

/**
 * @return int
 * @param  seconds int
 * @desc   Set an alarm clock for delivery of a signal
 */
function pcntl_alarm($seconds) {}

/**
 * @return bool
 * @param  path string
 * @param  args array[optional]
 * @param  envs array[optional]
 * @desc   Executes specified program in current process space as defined by exec(2) 
 */
function pcntl_exec($path, $args = null, $envs = null) {}

/**
 * @return int
 * @desc   Forks the currently running process following the same behavior as the UNIX fork() system call
 */
function pcntl_fork() {}

/**
 * @return int
 * @param  pid int[optional]
 * @param  process_identifier int[optional]
 * @desc   Get the priority of any process 
 */
function pcntl_getpriority($pid = null, $process_identifier = null) {}

/**
 * @return bool
 * @param  priority int
 * @param  pid int[optional]
 * @param  process_identifier int[optional]
 * @desc   Change the priority of any process 
 */
function pcntl_setpriority($priority, $pid = null, $process_identifier = null) {}

/**
 * @return bool
 * @param  signo int
 * @param  handle callback
 * @param  restart_syscalls bool[optional]
 * @desc   Assigns a system signal handler to a PHP function 
 */
function pcntl_signal($signo, $handle, $restart_syscalls = null) {}

/**
 * @return int
 * @param  &status int
 * @desc   Waits on or returns the status of a forked child as defined by the waitpid() system call 
 */
function pcntl_wait(&$status) {}

/**
 * @return int
 * @param  pid int
 * @param  &status int
 * @param  options int
 * @desc   Waits on or returns the status of a forked child as defined by the waitpid() system call 
 */
function pcntl_waitpid($pid, &$status, $options) {}

/**
 * @return int
 * @param  status int
 * @desc   Returns the status code of a child's exit 
 */
function pcntl_wexitstatus($status) {}

/**
 * @return bool
 * @param  status int
 * @desc   Returns true if the child status code represents a successful exit 
 */
function pcntl_wifexited($status) {}

/**
 * @return bool
 * @param  status int
 * @desc   Returns true if the child status code represents a process that was terminated due to a signal 
 */
function pcntl_wifsignaled($status) {}

/**
 * @return bool
 * @param  status int
 * @desc   Returns true if the child status code represents a stopped process (WUNTRACED must have been used with waitpid) 
 */
function pcntl_wifstopped($status) {}

/**
 * @return int
 * @param  status int
 * @desc   Returns the number of the signal that caused the process to stop who's status code is passed 
 */
function pcntl_wstopsig($status) {}

/**
 * @return int
 * @param  status int
 * @desc   Returns the number of the signal that terminated the process who's status code is passed  
 */
function pcntl_wtermsig($status) {}

/**
 * @return bool
 * @desc   Shuts down the Payflow Pro library 
 */
function pfpro_cleanup() {}

/**
 * @return bool
 * @desc   Initializes the Payflow Pro library 
 */
function pfpro_init() {}

/**
 * @return array
 * @param  parmlist array
 * @param  hostaddress string[optional]
 * @param  port int[optional]
 * @param  timeout int[optional]
 * @param  proxyAddress string[optional]
 * @param  proxyPort int[optional]
 * @param  proxyLogon string[optional]
 * @param  proxyPassword string[optional]
 * @desc   Payflow Pro transaction processing using arrays 
 */
function pfpro_process($parmlist, $hostaddress = null, $port = null, $timeout = null, $proxyAddress = null, $proxyPort = null, $proxyLogon = null, $proxyPassword = null) {}

/**
 * @return string
 * @param  parmlist string
 * @param  hostaddress string[optional]
 * @param  port int[optional]
 * @param  timeout int[optional]
 * @param  proxyAddress string[optional]
 * @param  proxyPort int[optional]
 * @param  proxyLogon string[optional]
 * @param  proxyPassword string[optional]
 * @desc   Raw Payflow Pro transaction processing 
 */
function pfpro_process_raw($parmlist, $hostaddress = null, $port = null, $timeout = null, $proxyAddress = null, $proxyPort = null, $proxyLogon = null, $proxyPassword = null) {}

/**
 * @return string
 * @desc   Returns the version of the Payflow Pro library 
 */
function pfpro_version() {}

/**
 * @return resource
 * @param  hostname string
 * @param  port int
 * @param  errno int[optional]
 * @param  errstr string[optional]
 * @param  timeout float[optional]
 * @desc   Open persistent Internet or Unix domain socket connection 
 */
function pfsockopen($hostname, $port, $errno = null, $errstr = null, $timeout = null) {}

/**
 * @return int
 * @param  result resource
 * @desc   Returns the number of affected tuples 
 */
function pg_affected_rows($result) {}

/**
 * @return bool
 * @param  connection resource
 * @desc   Cancel request 
 */
function pg_cancel_query($connection) {}

/**
 * @return string
 * @param  connection resource[optional]
 * @desc   Get the current client encoding 
 */
function pg_client_encoding($connection = null) {}

/**
 * @return string
 * @param  connection resource[optional]
 * @desc   Get the current client encoding 
 */
function pg_clientencoding($connection = null) {}

/**
 * @return bool
 * @param  connection resource[optional]
 * @desc   Close a PostgreSQL connection 
 */
function pg_close($connection = null) {}

/**
 * @return int
 * @param  result resource
 * @desc   Returns the number of affected tuples 
 */
function pg_cmdtuples($result) {}

/**
 * @return bool
 * @param  connection resource
 * @desc   Get connection is busy or not 
 */
function pg_connection_busy($connection) {}

/**
 * @return bool
 * @param  connection resource
 * @desc   Reset connection (reconnect) 
 */
function pg_connection_reset($connection) {}

/**
 * @return int
 * @param  connnection resource
 * @desc   Get connection status 
 */
function pg_connection_status($connnection) {}

/**
 * @return array
 * @param  db resource
 * @param  table string
 * @param  values array
 * @param  options int
 * @desc   Check and convert values for PostgreSQL SQL statement 
 */
function pg_convert($db, $table, $values, $options) {}

/**
 * @return bool
 * @param  connection resource
 * @param  table_name string
 * @param  rows array
 * @param  delimiter string[optional]
 * @param  null_as string[optional]
 * @desc   Copy table from array 
 */
function pg_copy_from($connection, $table_name, $rows, $delimiter = null, $null_as = null) {}

/**
 * @return array
 * @param  connection resource
 * @param  table_name string
 * @param  delimiter string[optional]
 * @param  null_as string[optional]
 * @desc   Copy table to array 
 */
function pg_copy_to($connection, $table_name, $delimiter = null, $null_as = null) {}

/**
 * @return string
 * @param  connection resource[optional]
 * @desc   Get the database name 
 */
function pg_dbname($connection = null) {}

/**
 * @return mixed
 * @param  db resource
 * @param  table string
 * @param  ids array
 * @param  options int
 * @desc   Delete records has ids (id=>value) 
 */
function pg_delete($db, $table, $ids, $options) {}

/**
 * @return bool
 * @param  connection resource[optional]
 * @desc   Sync with backend. Completes the Copy command 
 */
function pg_end_copy($connection = null) {}

/**
 * @return string
 * @param  connection resource[optional]
 * @desc   Get the error message string 
 */
function pg_errormessage($connection = null) {}

/**
 * @return string
 * @param  data string
 * @desc   Escape binary for bytea type  
 */
function pg_escape_bytea($data) {}

/**
 * @return string
 * @param  data string
 * @desc   Escape string for text/char type 
 */
function pg_escape_string($data) {}

/**
 * @return resource
 * @param  connection resource[optional]
 * @param  query string
 * @desc   Execute a query 
 */
function pg_exec($connection = null, $query) {}

/**
 * @return array
 * @param  result resource
 * @desc   Fetch all rows into array 
 */
function pg_fetch_all($result) {}

/**
 * @return array
 * @param  result resource
 * @param  row int[optional]
 * @param  result_type int[optional]
 * @desc   Fetch a row as an array 
 */
function pg_fetch_array($result, $row = null, $result_type = null) {}

/**
 * @return array
 * @param  result resource
 * @param  row int[optional]
 * @desc   Fetch a row as an assoc array 
 */
function pg_fetch_assoc($result, $row = null) {}

/**
 * @return object
 * @param  result resource
 * @param  row int[optional]
 * @param  class_name string[optional]
 * @param  ctor_params NULL|array[optional]
 * @desc   Fetch a row as an object 
 */
function pg_fetch_object($result, $row = null, $class_name = null, $ctor_params = null) {}

/**
 * @return mixed
 * @param  result resource
 * @param  row_number int[optional]
 * @param  field_name mixed
 * @desc   Returns values from a result identifier 
 */
function pg_fetch_result($result, $row_number = null, $field_name) {}

/**
 * @return array
 * @param  result resource
 * @param  row int[optional]
 * @param  result_type int[optional]
 * @desc   Get a row as an enumerated array 
 */
function pg_fetch_row($result, $row = null, $result_type = null) {}

/**
 * @return int
 * @param  result resource
 * @param  row int[optional]
 * @param  field_name_or_number mixed
 * @desc   Test if a field is NULL 
 */
function pg_field_is_null($result, $row = null, $field_name_or_number) {}

/**
 * @return string
 * @param  result resource
 * @param  field_number int
 * @desc   Returns the name of the field 
 */
function pg_field_name($result, $field_number) {}

/**
 * @return int
 * @param  result resource
 * @param  field_name string
 * @desc   Returns the field number of the named field 
 */
function pg_field_num($result, $field_name) {}

/**
 * @return int
 * @param  result resource
 * @param  row int[optional]
 * @param  field_name_or_number mixed
 * @desc   Returns the printed length 
 */
function pg_field_prtlen($result, $row = null, $field_name_or_number) {}

/**
 * @return int
 * @param  result resource
 * @param  field_number int
 * @desc   Returns the internal size of the field 
 */
function pg_field_size($result, $field_number) {}

/**
 * @return string
 * @param  result resource
 * @param  field_number int
 * @desc   Returns the type name for the given field 
 */
function pg_field_type($result, $field_number) {}

/**
 * @return int
 * @param  result resource
 * @param  row int[optional]
 * @param  field_name_or_number mixed
 * @desc   Test if a field is NULL 
 */
function pg_fieldisnull($result, $row = null, $field_name_or_number) {}

/**
 * @return string
 * @param  result resource
 * @param  field_number int
 * @desc   Returns the name of the field 
 */
function pg_fieldname($result, $field_number) {}

/**
 * @return int
 * @param  result resource
 * @param  field_name string
 * @desc   Returns the field number of the named field 
 */
function pg_fieldnum($result, $field_name) {}

/**
 * @return int
 * @param  result resource
 * @param  row int[optional]
 * @param  field_name_or_number mixed
 * @desc   Returns the printed length 
 */
function pg_fieldprtlen($result, $row = null, $field_name_or_number) {}

/**
 * @return int
 * @param  result resource
 * @param  field_number int
 * @desc   Returns the internal size of the field 
 */
function pg_fieldsize($result, $field_number) {}

/**
 * @return string
 * @param  result resource
 * @param  field_number int
 * @desc   Returns the type name for the given field 
 */
function pg_fieldtype($result, $field_number) {}

/**
 * @return bool
 * @param  result resource
 * @desc   Free result memory 
 */
function pg_free_result($result) {}

/**
 * @return bool
 * @param  result resource
 * @desc   Free result memory 
 */
function pg_freeresult($result) {}

/**
 * @return array
 * @param  connection resource[optional]
 * @param  result_type
 * @desc   Get asynchronous notification 
 */
function pg_get_notify($connection = null, $result_type) {}

/**
 * @return int
 * @param  connection resource[optional]
 * @desc   Get backend(server) pid 
 */
function pg_get_pid($connection = null) {}

/**
 * @return resource
 * @param  connection resource
 * @desc   Get asynchronous query result 
 */
function pg_get_result($connection) {}

/**
 * @return string
 * @param  result resource
 * @desc   Returns the last object identifier 
 */
function pg_getlastoid($result) {}

/**
 * @return string
 * @param  connection resource[optional]
 * @desc   Returns the host name associated with the connection 
 */
function pg_host($connection = null) {}

/**
 * @return mixed
 * @param  db resource
 * @param  table string
 * @param  values array
 * @param  options int
 * @desc   Insert values (filed=>value) to table 
 */
function pg_insert($db, $table, $values, $options) {}

/**
 * @return string
 * @param  connection resource[optional]
 * @desc   Get the error message string 
 */
function pg_last_error($connection = null) {}

/**
 * @return string
 * @param  connection resource
 * @desc   Returns the last notice set by the backend 
 */
function pg_last_notice($connection) {}

/**
 * @return string
 * @param  result resource
 * @desc   Returns the last object identifier 
 */
function pg_last_oid($result) {}

/**
 * @return bool
 * @param  large_object resource
 * @desc   Close a large object 
 */
function pg_lo_close($large_object) {}

/**
 * @return int
 * @param  connection resource[optional]
 * @desc   Create a large object 
 */
function pg_lo_create($connection = null) {}

/**
 * @return bool
 * @param  connection resource[optional]
 * @param  objoid int
 * @param  filename string
 * @desc   Export large object direct to filesystem 
 */
function pg_lo_export($connection = null, $objoid, $filename) {}

/**
 * @return int
 * @param  connection resource[optional]
 * @param  filename string
 * @desc   Import large object direct from filesystem 
 */
function pg_lo_import($connection = null, $filename) {}

/**
 * @return resource
 * @param  connection resource[optional]
 * @param  large_object_oid int
 * @param  mode string
 * @desc   Open a large object and return fd 
 */
function pg_lo_open($connection = null, $large_object_oid, $mode) {}

/**
 * @return string
 * @param  large_object resource
 * @param  len int[optional]
 * @desc   Read a large object 
 */
function pg_lo_read($large_object, $len = null) {}

/**
 * @return int
 * @param  large_object resource
 * @desc   Read a large object and send straight to browser 
 */
function pg_lo_read_all($large_object) {}

/**
 * @return bool
 * @param  large_object resource
 * @param  offset int
 * @param  whence int[optional]
 * @desc   Seeks position of large object 
 */
function pg_lo_seek($large_object, $offset, $whence = null) {}

/**
 * @return int
 * @param  large_object resource
 * @desc   Returns current position of large object 
 */
function pg_lo_tell($large_object) {}

/**
 * @return bool
 * @param  connection resource[optional]
 * @param  large_object_oid string
 * @desc   Delete a large object 
 */
function pg_lo_unlink($connection = null, $large_object_oid) {}

/**
 * @return int
 * @param  large_object resource
 * @param  buf string
 * @param  len int[optional]
 * @desc   Write a large object 
 */
function pg_lo_write($large_object, $buf, $len = null) {}

/**
 * @return bool
 * @param  large_object resource
 * @desc   Close a large object 
 */
function pg_loclose($large_object) {}

/**
 * @return int
 * @param  connection resource[optional]
 * @desc   Create a large object 
 */
function pg_locreate($connection = null) {}

/**
 * @return bool
 * @param  connection resource[optional]
 * @param  objoid int
 * @param  filename string
 * @desc   Export large object direct to filesystem 
 */
function pg_loexport($connection = null, $objoid, $filename) {}

/**
 * @return int
 * @param  connection resource[optional]
 * @param  filename string
 * @desc   Import large object direct from filesystem 
 */
function pg_loimport($connection = null, $filename) {}

/**
 * @return resource
 * @param  connection resource[optional]
 * @param  large_object_oid int
 * @param  mode string
 * @desc   Open a large object and return fd 
 */
function pg_loopen($connection = null, $large_object_oid, $mode) {}

/**
 * @return string
 * @param  large_object resource
 * @param  len int[optional]
 * @desc   Read a large object 
 */
function pg_loread($large_object, $len = null) {}

/**
 * @return int
 * @param  large_object resource
 * @desc   Read a large object and send straight to browser 
 */
function pg_loreadall($large_object) {}

/**
 * @return bool
 * @param  connection resource[optional]
 * @param  large_object_oid string
 * @desc   Delete a large object 
 */
function pg_lounlink($connection = null, $large_object_oid) {}

/**
 * @return int
 * @param  large_object resource
 * @param  buf string
 * @param  len int[optional]
 * @desc   Write a large object 
 */
function pg_lowrite($large_object, $buf, $len = null) {}

/**
 * @return array
 * @param  db resource
 * @param  table string
 * @desc   Get meta_data 
 */
function pg_meta_data($db, $table) {}

/**
 * @return int
 * @param  result resource
 * @desc   Return the number of fields in the result 
 */
function pg_num_fields($result) {}

/**
 * @return int
 * @param  result resource
 * @desc   Return the number of rows in the result 
 */
function pg_num_rows($result) {}

/**
 * @return int
 * @param  result resource
 * @desc   Return the number of fields in the result 
 */
function pg_numfields($result) {}

/**
 * @return int
 * @param  result resource
 * @desc   Return the number of rows in the result 
 */
function pg_numrows($result) {}

/**
 * @return string
 * @param  connection resource[optional]
 * @desc   Get the options associated with the connection 
 */
function pg_options($connection = null) {}

/**
 * @return string|false
 * @param  connection resource[optional]
 * @param  param_name string
 * @desc   Returns the value of a server parameter 
 */
function pg_parameter_status($connection = null, $param_name) {}

/**
 * @return resource
 * @param  connection_string_|_ string
 * @param  port string
 * @param  options string[optional]
 * @param  tty string[optional]
 * @param  database string
 * @desc   Open a persistent PostgreSQL connection 
 */
function pg_pconnect($connection_string_, $port, $options = null, $tty = null, $database) {}

/**
 * @return bool
 * @param  connection resource[optional]
 * @desc   Ping database. If connection is bad, try to reconnect. 
 */
function pg_ping($connection = null) {}

/**
 * @return int
 * @param  connection resource[optional]
 * @desc   Return the port number associated with the connection 
 */
function pg_port($connection = null) {}

/**
 * @return bool
 * @param  connection resource[optional]
 * @param  query string
 * @desc   Send null-terminated string to backend server
 */
function pg_put_line($connection = null, $query) {}

/**
 * @return resource
 * @param  connection resource[optional]
 * @param  query string
 * @desc   Execute a query 
 */
function pg_query($connection = null, $query) {}

/**
 * @return mixed
 * @param  result resource
 * @param  row_number int[optional]
 * @param  field_name mixed
 * @desc   Returns values from a result identifier 
 */
function pg_result($result, $row_number = null, $field_name) {}

/**
 * @return string
 * @param  result resource
 * @desc   Get error message associated with result 
 */
function pg_result_error($result) {}

/**
 * @return bool
 * @param  result resource
 * @param  offset int
 * @desc   Set internal row offset 
 */
function pg_result_seek($result, $offset) {}

/**
 * @return mixed
 * @param  result resource
 * @param  result_type long
 * @desc   Get status of query result 
 */
function pg_result_status($result, $result_type) {}

/**
 * @return mixed
 * @param  db resource
 * @param  table string
 * @param  ids array
 * @param  options int
 * @desc   Select records that has ids (id=>value) 
 */
function pg_select($db, $table, $ids, $options) {}

/**
 * @return bool
 * @param  connection resource
 * @param  qeury string
 * @desc   Send asynchronous query 
 */
function pg_send_query($connection, $qeury) {}

/**
 * @return int
 * @param  connection resource[optional]
 * @param  encoding string
 * @desc   Set client encoding 
 */
function pg_set_client_encoding($connection = null, $encoding) {}

/**
 * @return int
 * @param  connection resource[optional]
 * @param  encoding string
 * @desc   Set client encoding 
 */
function pg_setclientencoding($connection = null, $encoding) {}

/**
 * @return bool
 * @param  filename string
 * @param  mode string[optional]
 * @param  connection resource[optional]
 * @desc   Enable tracing a PostgreSQL connection 
 */
function pg_trace($filename, $mode = null, $connection = null) {}

/**
 * @return string
 * @param  connection resource[optional]
 * @desc   Return the tty name associated with the connection 
 */
function pg_tty($connection = null) {}

/**
 * @return string
 * @param  data string
 * @desc   Unescape binary for bytea type  
 */
function pg_unescape_bytea($data) {}

/**
 * @return bool
 * @param  connection resource[optional]
 * @desc   Disable tracing of a PostgreSQL connection 
 */
function pg_untrace($connection = null) {}

/**
 * @return mixed
 * @param  db resource
 * @param  table string
 * @param  fields array
 * @param  ids array
 * @param  options int
 * @desc   Update table using values (field=>value) and ids (id=>value) 
 */
function pg_update($db, $table, $fields, $ids, $options) {}

/**
 * @return array
 * @param  connection resource[optional]
 * @desc   Returns an array with client, protocol and server version (when available) 
 */
function pg_version($connection = null) {}

/**
 * @return bool
 * @param  file_name string
 * @param  &$error_message[optional]
 * @desc   Check the syntax of the specified file. 
 */
function php_check_syntax($file_name, &$error_message) {}

/**
 * @return string
 * @desc   Return the special ID used to request the PHP logo in phpinfo screens
 */
function php_egg_logo_guid() {}

/**
 * @return string
 * @desc   Return comma-separated string of .ini files parsed from the additional ini dir 
 */
function php_ini_scanned_files() {}

/**
 * @return string
 * @desc   Return the special ID used to request the PHP logo in phpinfo screens
 */
function php_logo_guid() {}

/**
 * @return string
 * @desc   Return the special ID used to request the PHP logo in phpinfo screens
 */
function php_real_logo_guid() {}

/**
 * @return string
 * @desc   Return the current SAPI module name 
 */
function php_sapi_name() {}

/**
 * @return void
 * @param  INTERNAL_FUNCTION_PARAMETERS
 * @param  st int
 * @desc   
 */
function php_snmpv3($INTERNAL_FUNCTION_PARAMETERS, $st) {}

/**
 * @return string
 * @param  file_name string
 * @desc   Return source with stripped comments and whitespace 
 */
function php_strip_whitespace($file_name) {}

/**
 * @return string
 * @desc   Return information about the system PHP was built on 
 */
function php_uname() {}

/**
 * @return void
 * @param  flag int[optional]
 * @desc   Prints the list of people who've contributed to the PHP project 
 */
function phpcredits($flag = null) {}

/**
 * @return void
 * @param  what int[optional]
 * @desc   Output a page of useful information about PHP and the current request 
 */
function phpinfo($what = null) {}

/**
 * @return string
 * @param  extension string[optional]
 * @desc   Return the current PHP version 
 */
function phpversion($extension = null) {}

/**
 * @return float
 * @desc   Returns an approximation of pi 
 */
function pi() {}

/**
 * @return bool
 * @param  f_org string
 * @param  f_dest string
 * @param  d_height int
 * @param  d_width int
 * @param  threshold int
 * @desc   Convert PNG image to WBMP image 
 */
function png2wbmp ($f_org, $f_dest, $d_height, $d_width, $threshold) {}

/**
 * @return resource
 * @param  command string
 * @param  mode string
 * @desc   Execute a command and open either a read or a write pipe to it 
 */
function popen($command, $mode) {}

/**
 * @return mixed
 * @param  array_arg array
 * @desc   Return the element currently pointed to by the internal array pointer 
 */
function pos($array_arg) {}

/**
 * @return string
 * @desc   Generate terminal path name (POSIX.1, 4.7.1) 
 */
function posix_ctermid() {}

/**
 * @return int
 * @desc   Retrieve the error number set by the last posix function which failed. 
 */
function posix_errno() {}

/**
 * @return int
 * @desc   Retrieve the error number set by the last posix function which failed. 
 */
function posix_get_last_error() {}

/**
 * @return string
 * @desc   Get working directory pathname (POSIX.1, 5.2.2) 
 */
function posix_getcwd() {}

/**
 * @return int
 * @desc   Get the current effective group id (POSIX.1, 4.2.1) 
 */
function posix_getegid() {}

/**
 * @return int
 * @desc   Get the current effective user id (POSIX.1, 4.2.1) 
 */
function posix_geteuid() {}

/**
 * @return int
 * @desc   Get the current group id (POSIX.1, 4.2.1) 
 */
function posix_getgid() {}

/**
 * @return array
 * @param  gid long
 * @desc   Group database access (POSIX.1, 9.2.1) 
 */
function posix_getgrgid($gid) {}

/**
 * @return array
 * @param  groupname string
 * @desc   Group database access (POSIX.1, 9.2.1) 
 */
function posix_getgrnam($groupname) {}

/**
 * @return array
 * @desc   Get supplementary group id's (POSIX.1, 4.2.3) 
 */
function posix_getgroups() {}

/**
 * @return string
 * @desc   Get user name (POSIX.1, 4.2.4) 
 */
function posix_getlogin() {}

/**
 * @return int
 * @desc   Get the process group id of the specified process (This is not a POSIX function, but a SVR4ism, so we compile conditionally) 
 */
function posix_getpgid() {}

/**
 * @return int
 * @desc   Get current process group id (POSIX.1, 4.3.1) 
 */
function posix_getpgrp() {}

/**
 * @return int
 * @desc   Get the current process id (POSIX.1, 4.1.1) 
 */
function posix_getpid() {}

/**
 * @return int
 * @desc   Get the parent process id (POSIX.1, 4.1.1) 
 */
function posix_getppid() {}

/**
 * @return array
 * @param  groupname string
 * @desc   User database access (POSIX.1, 9.2.2) 
 */
function posix_getpwnam($groupname) {}

/**
 * @return array
 * @param  uid long
 * @desc   User database access (POSIX.1, 9.2.2) 
 */
function posix_getpwuid($uid) {}

/**
 * @return array
 * @desc   Get system resource consumption limits (This is not a POSIX function, but a BSDism and a SVR4ism. We compile conditionally) 
 */
function posix_getrlimit() {}

/**
 * @return int
 * @desc   Get process group id of session leader (This is not a POSIX function, but a SVR4ism, so be compile conditionally) 
 */
function posix_getsid() {}

/**
 * @return int
 * @desc   Get the current user id (POSIX.1, 4.2.1) 
 */
function posix_getuid() {}

/**
 * @return bool
 * @param  fd int
 * @desc   Determine if filedesc is a tty (POSIX.1, 4.7.1) 
 */
function posix_isatty($fd) {}

/**
 * @return bool
 * @param  pid int
 * @param  sig int
 * @desc   Send a signal to a process (POSIX.1, 3.3.2) 
 */
function posix_kill($pid, $sig) {}

/**
 * @return bool
 * @param  pathname string
 * @param  mode int
 * @desc   Make a FIFO special file (POSIX.1, 5.4.2) 
 */
function posix_mkfifo($pathname, $mode) {}

/**
 * @return bool
 * @param  uid long
 * @desc   Set effective group id 
 */
function posix_setegid($uid) {}

/**
 * @return bool
 * @param  uid long
 * @desc   Set effective user id 
 */
function posix_seteuid($uid) {}

/**
 * @return bool
 * @param  uid int
 * @desc   Set group id (POSIX.1, 4.2.2) 
 */
function posix_setgid($uid) {}

/**
 * @return bool
 * @param  pid int
 * @param  pgid int
 * @desc   Set process group id for job control (POSIX.1, 4.3.3) 
 */
function posix_setpgid($pid, $pgid) {}

/**
 * @return int
 * @desc   Create session and set process group id (POSIX.1, 4.3.2) 
 */
function posix_setsid() {}

/**
 * @return bool
 * @param  uid long
 * @desc   Set user id (POSIX.1, 4.2.2) 
 */
function posix_setuid($uid) {}

/**
 * @return string
 * @param  errno int
 * @desc   Retrieve the system error message associated with the given errno. 
 */
function posix_strerror($errno) {}

/**
 * @return array
 * @desc   Get process times (POSIX.1, 4.5.2) 
 */
function posix_times() {}

/**
 * @return string
 * @param  fd int
 * @desc   Determine terminal device name (POSIX.1, 4.7.2) 
 */
function posix_ttyname($fd) {}

/**
 * @return array
 * @desc   Get system name (POSIX.1, 4.4.1) 
 */
function posix_uname() {}

/**
 * @return number
 * @param  base number
 * @param  exponent number
 * @desc   Returns base raised to the power of exponent. Returns integer result when possible 
 */
function pow($base, $exponent) {}

/**
 * @return array
 * @param  regex string
 * @param  input array
 * @desc   Searches array and returns entries which match regex 
 */
function preg_grep($regex, $input) {}

/**
 * @return int
 * @param  pattern string
 * @param  subject string
 * @param  subpatterns array[optional]
 * @param  flags int[optional]
 * @param  offset int[optional]
 * @desc   Perform a Perl-style regular expression match 
 */
function preg_match($pattern, $subject, $subpatterns = null, $flags = null, $offset = null) {}

/**
 * @return int
 * @param  pattern string
 * @param  subject string
 * @param  subpatterns array
 * @param  flags int[optional]
 * @param  offset int[optional]
 * @desc   Perform a Perl-style global regular expression match 
 */
function preg_match_all($pattern, $subject, $subpatterns, $flags = null, $offset = null) {}

/**
 * @return string
 * @param  str string
 * @param  delim_char string
 * @desc   Quote regular expression characters plus an optional character 
 */
function preg_quote($str, $delim_char) {}

/**
 * @return string
 * @param  regex mixed
 * @param  replace mixed
 * @param  subject mixed
 * @param  limit int[optional]
 * @desc   Perform Perl-style regular expression replacement. 
 */
function preg_replace($regex, $replace, $subject, $limit = null) {}

/**
 * @return string
 * @param  regex mixed
 * @param  callback mixed
 * @param  subject mixed
 * @param  limit int[optional]
 * @desc   Perform Perl-style regular expression replacement using replacement callback. 
 */
function preg_replace_callback($regex, $callback, $subject, $limit = null) {}

/**
 * @return array
 * @param  pattern string
 * @param  subject string
 * @param  limit int[optional]
 * @param  flags int[optional]
 * @desc   Split string into an array using a perl-style regular expression as a delimiter 
 */
function preg_split($pattern, $subject, $limit = null, $flags = null) {}

/**
 * @return mixed
 * @param  array_arg array
 * @desc   Move array argument's internal pointer to the previous element and return it 
 */
function prev($array_arg) {}

/**
 * @return mixed
 * @param  var mixed
 * @param  return bool[optional]
 * @desc   Prints out or returns information about the specified variable 
 */
function print_r($var, $return = null) {}

/**
 * @return int
 * @param  format string
 * @param  arg1 mixed[optional]
 * @vararg ... mixed
 * @desc   Output a formatted string 
 */
function printf($format, $arg1 = null) {}

/**
 * @return int
 * @param  process resource
 * @desc   close a process opened by proc_open 
 */
function proc_close($process) {}

/**
 * @return array
 * @param  process resource
 * @desc   get information about a process opened by proc_open 
 */
function proc_get_status($process) {}

/**
 * @return bool
 * @param  priority int
 * @desc   Change the priority of the current process 
 */
function proc_nice($priority) {}

/**
 * @return resource
 * @param  command string
 * @param  descriptorspec array
 * @param  &pipes array
 * @param  cwd string[optional]
 * @param  env array[optional]
 * @param  other_options array[optional]
 * @desc   Run a process with more control over it's file descriptors 
 */
function proc_open($command, $descriptorspec, &$pipes, $cwd = null, $env = null, $other_options = null) {}

/**
 * @return int
 * @param  process resource
 * @param  signal long[optional]
 * @desc   kill a process opened by proc_open 
 */
function proc_terminate($process, $signal = null) {}

/**
 * @return bool
 * @param  pspell int
 * @param  word string
 * @desc   Adds a word to a personal list 
 */
function pspell_add_to_personal($pspell, $word) {}

/**
 * @return bool
 * @param  pspell int
 * @param  word string
 * @desc   Adds a word to the current session 
 */
function pspell_add_to_session($pspell, $word) {}

/**
 * @return bool
 * @param  pspell int
 * @param  word string
 * @desc   Returns true if word is valid 
 */
function pspell_check($pspell, $word) {}

/**
 * @return bool
 * @param  pspell int
 * @desc   Clears the current session 
 */
function pspell_clear_session($pspell) {}

/**
 * @return int
 * @param  language string
 * @param  spelling string[optional]
 * @param  jargon string[optional]
 * @param  encoding string[optional]
 * @desc   Create a new config to be used later to create a manager 
 */
function pspell_config_create($language, $spelling = null, $jargon = null, $encoding = null) {}

/**
 * @return bool
 * @param  conf int
 * @param  directory string
 * @desc   location of language data files 
 */
function pspell_config_data_dir($conf, $directory) {}

/**
 * @return bool
 * @param  conf int
 * @param  directory string
 * @desc   location of the main word list 
 */
function pspell_config_dict_dir($conf, $directory) {}

/**
 * @return bool
 * @param  conf int
 * @param  ignore int
 * @desc   Ignore words <= n chars 
 */
function pspell_config_ignore($conf, $ignore) {}

/**
 * @return bool
 * @param  conf int
 * @param  mode long
 * @desc   Select mode for config (PSPELL_FAST, PSPELL_NORMAL or PSPELL_BAD_SPELLERS) 
 */
function pspell_config_mode($conf, $mode) {}

/**
 * @return bool
 * @param  conf int
 * @param  personal string
 * @desc   Use a personal dictionary for this config 
 */
function pspell_config_personal($conf, $personal) {}

/**
 * @return bool
 * @param  conf int
 * @param  repl string
 * @desc   Use a personal dictionary with replacement pairs for this config 
 */
function pspell_config_repl($conf, $repl) {}

/**
 * @return bool
 * @param  conf int
 * @param  runtogether bool
 * @desc   Consider run-together words as valid components 
 */
function pspell_config_runtogether($conf, $runtogether) {}

/**
 * @return bool
 * @param  conf int
 * @param  save bool
 * @desc   Save replacement pairs when personal list is saved for this config 
 */
function pspell_config_save_repl($conf, $save) {}

/**
 * @return int
 * @param  language string
 * @param  spelling string[optional]
 * @param  jargon string[optional]
 * @param  encoding string[optional]
 * @param  mode int[optional]
 * @desc   Load a dictionary 
 */
function pspell_new($language, $spelling = null, $jargon = null, $encoding = null, $mode = null) {}

/**
 * @return int
 * @param  config int
 * @desc   Load a dictionary based on the given config 
 */
function pspell_new_config($config) {}

/**
 * @return int
 * @param  personal string
 * @param  language string
 * @param  spelling string[optional]
 * @param  jargon string[optional]
 * @param  encoding string[optional]
 * @param  mode int[optional]
 * @desc   Load a dictionary with a personal wordlist
 */
function pspell_new_personal($personal, $language, $spelling = null, $jargon = null, $encoding = null, $mode = null) {}

/**
 * @return bool
 * @param  pspell int
 * @desc   Saves the current (personal) wordlist 
 */
function pspell_save_wordlist($pspell) {}

/**
 * @return bool
 * @param  pspell int
 * @param  misspell string
 * @param  correct string
 * @desc   Notify the dictionary of a user-selected replacement 
 */
function pspell_store_replacement($pspell, $misspell, $correct) {}

/**
 * @return array
 * @param  pspell int
 * @param  word string
 * @desc   Returns array of suggestions 
 */
function pspell_suggest($pspell, $word) {}

/**
 * @return bool
 * @param  setting string
 * @desc   Set the value of an environment variable 
 */
function putenv($setting) {}

/**
 * @return string
 * @param  str string
 * @desc   Convert a quoted-printable string to an 8 bit string 
 */
function quoted_printable_decode($str) {}

/**
 * @return string
 * @param  str string
 * @desc   Quotes meta characters 
 */
function quotemeta($str) {}

/**
 * @return float
 * @param  number float
 * @desc   Converts the radian number to the equivalent number in degrees 
 */
function rad2deg($number) {}

/**
 * @return int
 * @param  min int[optional]
 * @param  max int
 * @desc   Returns a random number 
 */
function rand($min = null, $max) {}

/**
 * @return array
 * @param  low mixed
 * @param  high mixed
 * @param  step int
 * @desc   Create an array containing the range of integers or characters from low to high (inclusive) 
 */
function range($low, $high, $step) {}

/**
 * @return string
 * @param  str string
 * @desc   Decodes URL-encodes string 
 */
function rawurldecode($str) {}

/**
 * @return string
 * @param  str string
 * @desc   URL-encodes string 
 */
function rawurlencode($str) {}

/**
 * @return array
 * @param  filename string
 * @param  sections_needed[optional]
 * @param  sub_arrays[optional]
 * @param  read_thumbnail
 * @desc   Reads header data from the JPEG/TIFF image filename and optionally reads the internal thumbnails 
 */
function read_exif_data($filename, $sections_needed = null, $sub_arrays = null, $read_thumbnail) {}

/**
 * @return string
 * @param  dir_handle resource[optional]
 * @desc   Read directory entry from dir_handle 
 */
function readdir($dir_handle = null) {}

/**
 * @return int
 * @param  filename string
 * @param  use_include_path bool[optional]
 * @param  context resource
 * @desc   Output a file or a URL 
 */
function readfile($filename, $use_include_path = null, $context) {}

/**
 * @return int
 * @param  filename string
 * @param  use_include_path int[optional]
 * @desc   Output a .gz-file 
 */
function readgzfile($filename, $use_include_path = null) {}

/**
 * @return string
 * @param  prompt string[optional]
 * @desc   Reads a line 
 */
function readline($prompt = null) {}

/**
 * @return bool
 * @param  prompt string[optional]
 * @desc   Adds a line to the history 
 */
function readline_add_history($prompt = null) {}

/**
 * @return bool
 * @desc   Clears the history 
 */
function readline_clear_history() {}

/**
 * @return bool
 * @param  funcname string
 * @desc   Readline completion function? 
 */
function readline_completion_function($funcname) {}

/**
 * @return mixed
 * @param  varname string[optional]
 * @param  newvalue string[optional]
 * @desc   Gets/sets various internal readline variables. 
 */
function readline_info($varname = null, $newvalue = null) {}

/**
 * @return array
 * @desc   Lists the history 
 */
function readline_list_history() {}

/**
 * @return bool
 * @param  filename string[optional]
 * @param  from int[optional]
 * @param  to int[optional]
 * @desc   Reads the history 
 */
function readline_read_history($filename = null, $from = null, $to = null) {}

/**
 * @return bool
 * @param  filename string[optional]
 * @desc   Writes the history 
 */
function readline_write_history($filename = null) {}

/**
 * @return string
 * @param  filename string
 * @desc   Return the target of a symbolic link 
 */
function readlink($filename) {}

/**
 * @return string
 * @param  path string
 * @desc   Return the resolved path 
 */
function realpath($path) {}

/**
 * @return string
 * @param  request string
 * @param  str string
 * @desc   Recode string str according to request string 
 */
function recode($request, $str) {}

/**
 * @return bool
 * @param  request string
 * @param  input resource
 * @param  output resource
 * @desc   Recode file input into file output according to request 
 */
function recode_file($request, $input, $output) {}

/**
 * @return string
 * @param  request string
 * @param  str string
 * @desc   Recode string str according to request string 
 */
function recode_string($request, $str) {}

/**
 * @return boolean
 * @param  prefix string
 * @param  uri string
 * @desc   
 */
function registerNamespace($prefix, $uri) {}

/**
 * @return void
 * @param  function_name string
 * @desc   Register a user-level function to be called on request termination 
 */
function register_shutdown_function($function_name) {}

/**
 * @return bool
 * @param  function_name string
 * @param  arg mixed[optional]
 * @vararg ... mixed
 * @desc   Registers a tick callback function 
 */
function register_tick_function($function_name, $arg = null) {}

/**
 * @return DOMNode
 * @param  name string
 * @desc   
 */
function removeNamedItem($name) {}

/**
 * @return DOMNode
 * @param  namespaceURI string
 * @param  localName string
 * @desc   
 */
function removeNamedItemNS($namespaceURI, $localName) {}

/**
 * @return bool
 * @param  old_name string
 * @param  new_name string
 * @param  context resource
 * @desc   Rename a file 
 */
function rename($old_name, $new_name, $context) {}

/**
 * @return mixed
 * @param  array_arg array
 * @desc   Set array argument's internal pointer to the first element and return it 
 */
function reset($array_arg) {}

/**
 * @return void
 * @desc   Restores the previously defined error handler function 
 */
function restore_error_handler() {}

/**
 * @return void
 * @desc   Restores the previously defined exception handler function 
 */
function restore_exception_handler() {}

/**
 * @return void
 * @desc   Restore the value of the include_path configuration option 
 */
function restore_include_path() {}

/**
 * @return bool
 * @param  fp resource
 * @desc   Rewind the position of a file pointer 
 */
function rewind($fp) {}

/**
 * @return void
 * @param  dir_handle resource[optional]
 * @desc   Rewind dir_handle back to the start 
 */
function rewinddir($dir_handle = null) {}

/**
 * @return bool
 * @param  dirname string
 * @param  context resource
 * @desc   Remove a directory 
 */
function rmdir($dirname, $context) {}

/**
 * @return float
 * @param  number float
 * @param  precision int[optional]
 * @desc   Returns the number rounded to specified precision 
 */
function round($number, $precision = null) {}

/**
 * @return bool
 * @param  array_arg array
 * @param  sort_flags int[optional]
 * @desc   Sort an array in reverse order 
 */
function rsort($array_arg, $sort_flags = null) {}

/**
 * @return string
 * @param  str string
 * @param  character_mask string[optional]
 * @desc   Removes trailing whitespace 
 */
function rtrim($str, $character_mask = null) {}

/**
 * @return array
 * @param  dir string
 * @param  sorting_order int[optional]
 * @param  context resource[optional]
 * @desc   List files & directories inside the specified path 
 */
function scandir($dir, $sorting_order = null, $context = null) {}

/**
 * @return bool
 * @param  id resource
 * @desc   Acquires the semaphore with the given id, blocking if necessary 
 */
function sem_acquire($id) {}

/**
 * @return resource
 * @param  key int
 * @param  max_acquire int[optional]
 * @param  perm int[optional]
 * @param  auto_release int[optional]
 * @desc   Return an id for the semaphore with the given key, and allow max_acquire (default 1) processes to acquire it simultaneously 
 */
function sem_get($key, $max_acquire = null, $perm = null, $auto_release = null) {}

/**
 * @return bool
 * @param  id resource
 * @desc   Releases the semaphore with the given id 
 */
function sem_release($id) {}

/**
 * @return bool
 * @param  id resource
 * @desc   Removes semaphore from Unix systems 
 */
function sem_remove($id) {}

/**
 * @return string
 * @param  variable mixed
 * @desc   Returns a string representation of variable (which can later be unserialized) 
 */
function serialize($variable) {}

/**
 * @return int
 * @param  new_cache_expire int[optional]
 * @desc   Return the current cache expire. If new_cache_expire is given, the current cache_expire is replaced with new_cache_expire 
 */
function session_cache_expire($new_cache_expire = null) {}

/**
 * @return string
 * @param  new_cache_limiter string[optional]
 * @desc   Return the current cache limiter. If new_cache_limited is given, the current cache_limiter is replaced with new_cache_limiter 
 */
function session_cache_limiter($new_cache_limiter = null) {}

/**
 * @return void
 * @desc   Write session data and end session 
 */
function session_commit() {}

/**
 * @return bool
 * @param  data string
 * @desc   Deserializes data and reinitializes the variables 
 */
function session_decode($data) {}

/**
 * @return bool
 * @desc   Destroy the current session and all data associated with it 
 */
function session_destroy() {}

/**
 * @return string
 * @desc   Serializes the current setup and returns the serialized representation 
 */
function session_encode() {}

/**
 * @return array
 * @desc   Return the session cookie parameters 
 */
function session_get_cookie_params() {}

/**
 * @return string
 * @param  newid string[optional]
 * @desc   Return the current session id. If newid is given, the session id is replaced with newid 
 */
function session_id($newid = null) {}

/**
 * @return bool
 * @param  varname string
 * @desc   Checks if a variable is registered in session 
 */
function session_is_registered($varname) {}

/**
 * @return string
 * @param  newname string[optional]
 * @desc   Return the current module name used for accessing session data. If newname is given, the module name is replaced with newname 
 */
function session_module_name($newname = null) {}

/**
 * @return string
 * @param  newname string[optional]
 * @desc   Return the current session name. If newname is given, the session name is replaced with newname 
 */
function session_name($newname = null) {}

/**
 * @return bool
 * @desc   Update the current session id with a newly generated one. 
 */
function session_regenerate_id() {}

/**
 * @return bool
 * @param  var_names mixed
 * @vararg ... mixed
 * @desc   Adds varname(s) to the list of variables which are freezed at the session end 
 */
function session_register($var_names) {}

/**
 * @return string
 * @param  newname string[optional]
 * @desc   Return the current save path passed to module_name. If newname is given, the save path is replaced with newname 
 */
function session_save_path($newname = null) {}

/**
 * @return void
 * @param  lifetime int
 * @param  path string[optional]
 * @param  domain string[optional]
 * @param  secure bool[optional]
 * @desc   Set session cookie parameters 
 */
function session_set_cookie_params($lifetime, $path = null, $domain = null, $secure = null) {}

/**
 * @return void
 * @param  open string
 * @param  close string
 * @param  read string
 * @param  write string
 * @param  destroy string
 * @param  gc string
 * @desc   Sets user-level functions 
 */
function session_set_save_handler($open, $close, $read, $write, $destroy, $gc) {}

/**
 * @return bool
 * @desc   Begin session - reinitializes freezed variables, registers browsers etc 
 */
function session_start() {}

/**
 * @return bool
 * @param  varname string
 * @desc   Removes varname from the list of variables which are freezed at the session end 
 */
function session_unregister($varname) {}

/**
 * @return void
 * @desc   Unset all registered variables 
 */
function session_unset() {}

/**
 * @return void
 * @desc   Write session data and end session 
 */
function session_write_close() {}

/**
 * @return DOMNode
 * @param  arg DOMNode
 * @desc   
 */
function setNamedItem($arg) {}

/**
 * @return DOMNode
 * @param  arg DOMNode
 * @desc   
 */
function setNamedItemNS($arg) {}

/**
 * @return string
 * @param  error_handler string
 * @param  error_types int[optional]
 * @desc   Sets a user-defined error handler function.  Returns the previously defined error handler, or false on error 
 */
function set_error_handler($error_handler, $error_types = null) {}

/**
 * @return string
 * @param  exception_handler callable
 * @desc   Sets a user-defined exception handler function.  Returns the previously defined exception handler, or false on error 
 */
function set_exception_handler($exception_handler) {}

/**
 * @return int
 * @param  fp resource
 * @param  buffer int
 * @desc   Set file write buffer 
 */
function set_file_buffer($fp, $buffer) {}

/**
 * @return string
 * @param  varname string
 * @param  newvalue string
 * @desc   Sets the include_path configuration option 
 */
function set_include_path($varname, $newvalue) {}

/**
 * @return bool
 * @param  new_setting int
 * @desc   Set the current active configuration setting of magic_quotes_runtime and return previous 
 */
function set_magic_quotes_runtime($new_setting) {}

/**
 * @return bool
 * @param  socket resource
 * @param  mode int
 * @desc   Set blocking/non-blocking mode on a socket 
 */
function set_socket_blocking($socket, $mode) {}

/**
 * @return bool
 * @param  seconds int
 * @desc   Sets the maximum time a script can run 
 */
function set_time_limit($seconds) {}

/**
 * @return bool
 * @param  name string
 * @param  value string[optional]
 * @param  expires int[optional]
 * @param  path string[optional]
 * @param  domain string[optional]
 * @param  secure bool[optional]
 * @desc   Send a cookie 
 */
function setcookie($name, $value = null, $expires = null, $path = null, $domain = null, $secure = null) {}

/**
 * @return string
 * @param  category mixed
 * @param  locale string
 * @vararg ... string
 * @desc   Set locale information 
 */
function setlocale($category, $locale) {}

/**
 * @return bool
 * @param  name string
 * @param  value string[optional]
 * @param  expires int[optional]
 * @param  path string[optional]
 * @param  domain string[optional]
 * @param  secure bool[optional]
 * @desc   Send a cookie with no url encoding of the value 
 */
function setrawcookie($name, $value = null, $expires = null, $path = null, $domain = null, $secure = null) {}

/**
 * @return bool
 * @param  var mixed
 * @param  type string
 * @desc   Set the type of the variable 
 */
function settype($var, $type) {}

/**
 * @return string
 * @param  str string
 * @param  raw_output bool[optional]
 * @desc   Calculate the sha1 hash of a string 
 */
function sha1($str, $raw_output = null) {}

/**
 * @return string
 * @param  filename string
 * @param  raw_output bool[optional]
 * @desc   Calculate the sha1 hash of given filename 
 */
function sha1_file($filename, $raw_output = null) {}

/**
 * @return string
 * @param  cmd string
 * @desc   Execute command via shell and return complete output as string 
 */
function shell_exec($cmd) {}

/**
 * @return int
 * @param  key int
 * @param  memsize int[optional]
 * @param  perm int[optional]
 * @desc   Creates or open a shared memory segment 
 */
function shm_attach($key, $memsize = null, $perm = null) {}

/**
 * @return bool
 * @param  shm_identifier int
 * @desc   Disconnects from shared memory segment 
 */
function shm_detach($shm_identifier) {}

/**
 * @return mixed
 * @param  id int
 * @param  variable_key int
 * @desc   Returns a variable from shared memory 
 */
function shm_get_var($id, $variable_key) {}

/**
 * @return bool
 * @param  shm_identifier int
 * @param  variable_key int
 * @param  variable mixed
 * @desc   Inserts or updates a variable in shared memory 
 */
function shm_put_var($shm_identifier, $variable_key, $variable) {}

/**
 * @return bool
 * @param  shm_identifier int
 * @desc   Removes shared memory from Unix systems 
 */
function shm_remove($shm_identifier) {}

/**
 * @return bool
 * @param  id int
 * @param  variable_key int
 * @desc   Removes variable from shared memory 
 */
function shm_remove_var($id, $variable_key) {}

/**
 * @return void
 * @param  shmid int
 * @desc   closes a shared memory segment 
 */
function shmop_close ($shmid) {}

/**
 * @return bool
 * @param  shmid int
 * @desc   mark segment for deletion 
 */
function shmop_delete ($shmid) {}

/**
 * @return int
 * @param  key int
 * @param  flags string
 * @param  mode int
 * @param  size int
 * @desc   gets and attaches a shared memory segment 
 */
function shmop_open ($key, $flags, $mode, $size) {}

/**
 * @return string
 * @param  shmid int
 * @param  start int
 * @param  count int
 * @desc   reads from a shm segment 
 */
function shmop_read ($shmid, $start, $count) {}

/**
 * @return int
 * @param  shmid int
 * @desc   returns the shm size 
 */
function shmop_size ($shmid) {}

/**
 * @return int
 * @param  shmid int
 * @param  data string
 * @param  offset int
 * @desc   writes to a shared memory segment 
 */
function shmop_write ($shmid, $data, $offset) {}

/**
 * @return bool
 * @param  file_name string
 * @param  return bool[optional]
 * @desc   Syntax highlight a source file 
 */
function show_source($file_name, $return = null) {}

/**
 * @return bool
 * @param  array_arg array
 * @desc   Randomly shuffle the contents of an array 
 */
function shuffle($array_arg) {}

/**
 * @return int
 * @param  str1 string
 * @param  str2 string
 * @param  percent float[optional]
 * @desc   Calculates the similarity between two strings 
 */
function similar_text($str1, $str2, $percent = null) {}

/**
 * @return simplemxml_element
 * @param  node domNode
 * @param  class_name string[optional]
 * @desc   Get a simplexml_element object from dom to allow for processing 
 */
function simplexml_import_dom($node, $class_name = null) {}

/**
 * @return simplemxml_element
 * @param  filename string
 * @param  class_name string[optional]
 * @desc   Load a filename and return a simplexml_element object to allow for processing 
 */
function simplexml_load_file($filename, $class_name = null) {}

/**
 * @return simplemxml_element
 * @param  data string
 * @param  class_name string[optional]
 * @desc   Load a string and return a simplexml_element object to allow for processing 
 */
function simplexml_load_string($data, $class_name = null) {}

/**
 * @return float
 * @param  number float
 * @desc   Returns the sine of the number in radians 
 */
function sin($number) {}

/**
 * @return float
 * @param  number float
 * @desc   Returns the hyperbolic sine of the number, defined as (exp(number) - exp(-number))/2 
 */
function sinh($number) {}

/**
 * @return int
 * @param  var mixed
 * @param  mode int[optional]
 * @desc   Count the number of elements in a variable (usually an array) 
 */
function sizeof($var, $mode = null) {}

/**
 * @return void
 * @param  seconds int
 * @desc   Delay for a given number of seconds 
 */
function sleep($seconds) {}

/**
 * @return string
 * @param  headerf string
 * @param  headerv string
 * @desc   Adds a header to the current message. 
 */
function smfi_addheader($headerf, $headerv) {}

/**
 * @return string
 * @param  rcpt string
 * @desc   Add a recipient to the message envelope. 
 */
function smfi_addrcpt($rcpt) {}

/**
 * @return string
 * @param  headerf string
 * @param  headerv string
 * @desc   Changes a header's value for the current message. 
 */
function smfi_chgheader($headerf, $headerv) {}

/**
 * @return string
 * @param  rcpt string
 * @desc   Removes the named recipient from the current message's envelope. 
 */
function smfi_delrcpt($rcpt) {}

/**
 * @return string
 * @param  macro string
 * @desc   Returns the value of the given macro or NULL if the macro is not defined. 
 */
function smfi_getsymval($macro) {}

/**
 * @return string
 * @param  body string
 * @desc   
 */
function smfi_replacebody($body) {}

/**
 * @return string
 * @param  flags long
 * @desc   Sets the flags describing the actions the filter may take. 
 */
function smfi_setflags($flags) {}

/**
 * @return string
 * @param  rcode string
 * @param  xcode string
 * @param  message string
 * @desc   
 */
function smfi_setreply($rcode, $xcode, $message) {}

/**
 * @return string
 * @param  timeout long
 * @desc   Sets the number of seconds libmilter will wait for an MTA connection before timing out a socket. 
 */
function smfi_settimeout($timeout) {}

/**
 * @return int
 * @param  host string
 * @param  sec_name string
 * @param  sec_level string
 * @param  auth_protocol string
 * @param  auth_passphrase string
 * @param  priv_protocol string
 * @param  priv_passphrase string
 * @param  object_id string
 * @param  timeout int[optional]
 * @param  retries int[optional]
 * @desc   Fetch the value of a SNMP object 
 */
function snmp3_get($host, $sec_name, $sec_level, $auth_protocol, $auth_passphrase, $priv_protocol, $priv_passphrase, $object_id, $timeout = null, $retries = null) {}

/**
 * @return int
 * @param  host string
 * @param  sec_name string
 * @param  sec_level string
 * @param  auth_protocol string
 * @param  auth_passphrase string
 * @param  priv_protocol string
 * @param  priv_passphrase string
 * @param  object_id string
 * @param  timeout int[optional]
 * @param  retries int[optional]
 * @desc   Fetch the value of a SNMP object 
 */
function snmp3_getnext($host, $sec_name, $sec_level, $auth_protocol, $auth_passphrase, $priv_protocol, $priv_passphrase, $object_id, $timeout = null, $retries = null) {}

/**
 * @return int
 * @param  host string
 * @param  sec_name string
 * @param  sec_level string
 * @param  auth_protocol string
 * @param  auth_passphrase string
 * @param  priv_protocol string
 * @param  priv_passphrase string
 * @param  object_id string
 * @param  timeout int[optional]
 * @param  retries int[optional]
 * @desc   Fetch the value of a SNMP object 
 */
function snmp3_real_walk($host, $sec_name, $sec_level, $auth_protocol, $auth_passphrase, $priv_protocol, $priv_passphrase, $object_id, $timeout = null, $retries = null) {}

/**
 * @return int
 * @param  host string
 * @param  sec_name string
 * @param  sec_level string
 * @param  auth_protocol string
 * @param  auth_passphrase string
 * @param  priv_protocol string
 * @param  priv_passphrase string
 * @param  object_id string
 * @param  type string
 * @param  value mixed
 * @param  timeout int[optional]
 * @param  retries int[optional]
 * @desc   Fetch the value of a SNMP object 
 */
function snmp3_set($host, $sec_name, $sec_level, $auth_protocol, $auth_passphrase, $priv_protocol, $priv_passphrase, $object_id, $type, $value, $timeout = null, $retries = null) {}

/**
 * @return int
 * @param  host string
 * @param  sec_name string
 * @param  sec_level string
 * @param  auth_protocol string
 * @param  auth_passphrase string
 * @param  priv_protocol string
 * @param  priv_passphrase string
 * @param  object_id string
 * @param  timeout int[optional]
 * @param  retries int[optional]
 * @desc   Fetch the value of a SNMP object 
 */
function snmp3_walk($host, $sec_name, $sec_level, $auth_protocol, $auth_passphrase, $priv_protocol, $priv_passphrase, $object_id, $timeout = null, $retries = null) {}

/**
 * @return bool
 * @desc   Return the current status of quick_print 
 */
function snmp_get_quick_print() {}

/**
 * @return int
 * @desc   Return the method how the SNMP values will be returned 
 */
function snmp_get_valueretrieval() {}

/**
 * @return int
 * @param  filename string
 * @desc   Reads and parses a MIB file into the active MIB tree. 
 */
function snmp_read_mib($filename) {}

/**
 * @return void
 * @param  enum_print int
 * @desc   Return all values that are enums with their enum value instead of the raw integer 
 */
function snmp_set_enum_print($enum_print) {}

/**
 * @return void
 * @param  oid_numeric_print int
 * @desc   Return all objects including their respective object id withing the specified one 
 */
function snmp_set_oid_numeric_print($oid_numeric_print) {}

/**
 * @return void
 * @param  quick_print int
 * @desc   Return all objects including their respective object id withing the specified one 
 */
function snmp_set_quick_print($quick_print) {}

/**
 * @return int
 * @param  method int
 * @desc   Specify the method how the SNMP values will be returned 
 */
function snmp_set_valueretrieval($method) {}

/**
 * @return string
 * @param  host string
 * @param  community string
 * @param  object_id string
 * @param  timeout int[optional]
 * @param  retries int[optional]
 * @desc   Fetch a SNMP object 
 */
function snmpget($host, $community, $object_id, $timeout = null, $retries = null) {}

/**
 * @return string
 * @param  host string
 * @param  community string
 * @param  object_id string
 * @param  timeout int[optional]
 * @param  retries int[optional]
 * @desc   Fetch a SNMP object 
 */
function snmpgetnext($host, $community, $object_id, $timeout = null, $retries = null) {}

/**
 * @return array
 * @param  host string
 * @param  community string
 * @param  object_id string
 * @param  timeout int[optional]
 * @param  retries int[optional]
 * @desc   Return all objects including their respective object id withing the specified one 
 */
function snmprealwalk($host, $community, $object_id, $timeout = null, $retries = null) {}

/**
 * @return int
 * @param  host string
 * @param  community string
 * @param  object_id string
 * @param  type string
 * @param  value mixed
 * @param  timeout int[optional]
 * @param  retries int[optional]
 * @desc   Set the value of a SNMP object 
 */
function snmpset($host, $community, $object_id, $type, $value, $timeout = null, $retries = null) {}

/**
 * @return array
 * @param  host string
 * @param  community string
 * @param  object_id string
 * @param  timeout int[optional]
 * @param  retries int[optional]
 * @desc   Return all objects under the specified object id 
 */
function snmpwalk($host, $community, $object_id, $timeout = null, $retries = null) {}

/**
 * @return array
 * @param  host string
 * @param  community string
 * @param  object_id string
 * @param  timeout int[optional]
 * @param  retries int[optional]
 * @desc   Return all objects including their respective object id withing the specified one 
 */
function snmpwalkoid($host, $community, $object_id, $timeout = null, $retries = null) {}

/**
 * @return resource
 * @param  socket resource
 * @desc   Accepts a connection on the listening socket fd 
 */
function socket_accept($socket) {}

/**
 * @return bool
 * @param  socket resource
 * @param  addr string
 * @param  port int[optional]
 * @desc   Binds an open socket to a listening port, port is only specified in AF_INET family. 
 */
function socket_bind($socket, $addr, $port = null) {}

/**
 * @return void
 * @param  socket resource[optional]
 * @desc   Clears the error on the socket or the last error code. 
 */
function socket_clear_error($socket = null) {}

/**
 * @return void
 * @param  socket resource
 * @desc   Closes a file descriptor 
 */
function socket_close($socket) {}

/**
 * @return bool
 * @param  socket resource
 * @param  addr string
 * @param  port int[optional]
 * @desc   Opens a connection to addr:port on the socket specified by socket 
 */
function socket_connect($socket, $addr, $port = null) {}

/**
 * @return resource
 * @param  domain int
 * @param  type int
 * @param  protocol int
 * @desc   Creates an endpoint for communication in the domain specified by domain, of type specified by type 
 */
function socket_create($domain, $type, $protocol) {}

/**
 * @return resource
 * @param  port int
 * @param  backlog int
 * @desc   Opens a socket on port to accept connections 
 */
function socket_create_listen($port, $backlog) {}

/**
 * @return bool
 * @param  domain int
 * @param  type int
 * @param  protocol int
 * @param  &fd array
 * @desc   Creates a pair of indistinguishable sockets and stores them in fds. 
 */
function socket_create_pair($domain, $type, $protocol, &$fd) {}

/**
 * @return mixed
 * @param  socket resource
 * @param  level int
 * @param  optname int
 * @desc   Gets socket options for the socket 
 */
function socket_get_option($socket, $level, $optname) {}

/**
 * @return resource
 * @param  fp resource
 * @desc   Retrieves header/meta data from streams/file pointers 
 */
function socket_get_status($fp) {}

/**
 * @return mixed
 * @param  socket resource
 * @param  level int
 * @param  optname int
 * @desc   Gets socket options for the socket 
 */
function socket_getopt($socket, $level, $optname) {}

/**
 * @return bool
 * @param  socket resource
 * @param  &addr string
 * @param  &port int
 * @desc   Queries the remote side of the given socket which may either result in host/port or in a UNIX filesystem path, dependent on its type. 
 */
function socket_getpeername($socket, &$addr, &$port) {}

/**
 * @return bool
 * @param  socket resource
 * @param  &addr string
 * @param  &port int
 * @desc   Queries the remote side of the given socket which may either result in host/port or in a UNIX filesystem path, dependent on its type. 
 */
function socket_getsockname($socket, &$addr, &$port) {}

/**
 * @return int
 * @param  socket resource[optional]
 * @desc   Returns the last socket error (either the last used or the provided socket resource) 
 */
function socket_last_error($socket = null) {}

/**
 * @return bool
 * @param  socket resource
 * @param  backlog int
 * @desc   Sets the maximum number of connections allowed to be waited for on the socket specified by fd 
 */
function socket_listen($socket, $backlog) {}

/**
 * @return string
 * @param  socket resource
 * @param  length int
 * @param  type int[optional]
 * @desc   Reads a maximum of length bytes from socket 
 */
function socket_read($socket, $length, $type = null) {}

/**
 * @return int
 * @param  socket resource
 * @param  &buf string
 * @param  len int
 * @param  flags int
 * @desc   Receives data from a connected socket 
 */
function socket_recv($socket, &$buf, $len, $flags) {}

/**
 * @return int
 * @param  socket resource
 * @param  &buf string
 * @param  len int
 * @param  flags int
 * @param  &name string
 * @param  &port int[optional]
 * @desc   Receives data from a socket, connected or not 
 */
function socket_recvfrom($socket, &$buf, $len, $flags, &$name, &$port) {}

/**
 * @return int
 * @param  &read_fds array
 * @param  &write_fds array
 * @param  except_fds &array
 * @param  tv_sec int
 * @param  tv_usec int
 * @desc   Runs the select() system call on the sets mentioned with a timeout specified by tv_sec and tv_usec 
 */
function socket_select(&$read_fds, &$write_fds, $except_fds, $tv_sec, $tv_usec) {}

/**
 * @return int
 * @param  socket resource
 * @param  buf string
 * @param  len int
 * @param  flags int
 * @desc   Sends data to a connected socket 
 */
function socket_send($socket, $buf, $len, $flags) {}

/**
 * @return int
 * @param  socket resource
 * @param  buf string
 * @param  len int
 * @param  flags int
 * @param  addr string
 * @param  port int[optional]
 * @desc   Sends a message to a socket, whether it is connected or not 
 */
function socket_sendto($socket, $buf, $len, $flags, $addr, $port = null) {}

/**
 * @return bool
 * @param  socket resource
 * @desc   Sets blocking mode on a socket resource 
 */
function socket_set_block($socket) {}

/**
 * @return bool
 * @param  socket resource
 * @param  mode int
 * @desc   Set blocking/non-blocking mode on a socket or stream 
 */
function socket_set_blocking($socket, $mode) {}

/**
 * @return bool
 * @param  socket resource
 * @desc   Sets nonblocking mode on a socket resource 
 */
function socket_set_nonblock($socket) {}

/**
 * @return bool
 * @param  socket resource
 * @param  level int
 * @param  optname int
 * @param  optval int|array
 * @desc   Sets socket options for the socket 
 */
function socket_set_option($socket, $level, $optname, $optval) {}

/**
 * @return bool
 * @param  stream resource
 * @param  seconds int
 * @param  microseconds int
 * @desc   Set timeout on stream read to seconds + microseonds 
 */
function socket_set_timeout($stream, $seconds, $microseconds) {}

/**
 * @return bool
 * @param  socket resource
 * @param  level int
 * @param  optname int
 * @param  optval int|array
 * @desc   Sets socket options for the socket 
 */
function socket_setopt($socket, $level, $optname, $optval) {}

/**
 * @return bool
 * @param  socket resource
 * @param  how int
 * @desc   Shuts down a socket for receiving, sending, or both. 
 */
function socket_shutdown($socket, $how) {}

/**
 * @return string
 * @param  errno int
 * @desc   Returns a string describing an error 
 */
function socket_strerror($errno) {}

/**
 * @return int
 * @param  socket resource
 * @param  buf string
 * @param  length int
 * @desc   Writes the buffer to the socket resource, length is optional 
 */
function socket_write($socket, $buf, $length) {}

/**
 * @return bool
 * @param  result_id resource
 * @desc   
 */
function solid_fetch_prev($result_id) {}

/**
 * @return bool
 * @param  array_arg array
 * @param  sort_flags int[optional]
 * @desc   Sort an array 
 */
function sort($array_arg, $sort_flags = null) {}

/**
 * @return string
 * @param  str string
 * @desc   Calculate the soundex key of a string 
 */
function soundex($str) {}

/**
 * @return array
 * @param  pattern string
 * @param  string string
 * @param  limit int[optional]
 * @desc   Split string into array by regular expression 
 */
function split($pattern, $string, $limit = null) {}

/**
 * @return array
 * @param  pattern string
 * @param  string string
 * @param  limit int[optional]
 * @desc   Split string into array by regular expression case-insensitive 
 */
function spliti($pattern, $string, $limit = null) {}

/**
 * @return string
 * @param  format string
 * @param  arg1 mixed[optional]
 * @vararg ... mixed
 * @desc   Return a formatted string 
 */
function sprintf($format, $arg1 = null) {}

/**
 * @return string
 * @param  string string
 * @desc   Make regular expression for case insensitive match 
 */
function sql_regcase($string) {}

/**
 * @return array
 * @param  db resource
 * @param  query string
 * @param  result_type int[optional]
 * @param  decode_binary bool[optional]
 * @desc   Executes a query against a given database and returns an array of arrays. 
 */
function sqlite_array_query($db, $query, $result_type = null, $decode_binary = null) {}

/**
 * @return void
 * @param  db resource
 * @param  ms int
 * @desc   Set busy timeout duration. If ms <= 0, all busy handlers are disabled. 
 */
function sqlite_busy_timeout($db, $ms) {}

/**
 * @return int
 * @param  db resource
 * @desc   Returns the number of rows that were changed by the most recent SQL statement. 
 */
function sqlite_changes($db) {}

/**
 * @return void
 * @param  db resource
 * @desc   Closes an open sqlite database. 
 */
function sqlite_close($db) {}

/**
 * @return mixed
 * @param  result resource
 * @param  index_or_name mixed
 * @param  decode_binary bool[optional]
 * @desc   Fetches a column from the current row of a result set. 
 */
function sqlite_column($result, $index_or_name, $decode_binary = null) {}

/**
 * @return bool
 * @param  db resource
 * @param  funcname string
 * @param  step_func mixed
 * @param  finalize_func mixed
 * @param  num_args long
 * @desc   Registers an aggregate function for queries. 
 */
function sqlite_create_aggregate($db, $funcname, $step_func, $finalize_func, $num_args) {}

/**
 * @return bool
 * @param  db resource
 * @param  funcname string
 * @param  callback mixed
 * @param  num_args long
 * @desc   Registers a "regular" function for queries. 
 */
function sqlite_create_function($db, $funcname, $callback, $num_args) {}

/**
 * @return array
 * @param  result resource
 * @param  result_type int[optional]
 * @param  decode_binary bool[optional]
 * @desc   Fetches the current row from a result set as an array. 
 */
function sqlite_current($result, $result_type = null, $decode_binary = null) {}

/**
 * @return string
 * @param  error_code int
 * @desc   Returns the textual description of an error code. 
 */
function sqlite_error_string($error_code) {}

/**
 * @return string
 * @param  item string
 * @desc   Escapes a string for use as a query parameter. 
 */
function sqlite_escape_string($item) {}

/**
 * @return boolean
 * @param  query string
 * @param  db resource
 * @desc   Executes a result-less query against a given database 
 */
function sqlite_exec($query, $db) {}

/**
 * @return object
 * @param  filename string
 * @param  mode int[optional]
 * @param  &error_message string[optional]
 * @desc   Opens a SQLite database and creates an object for it. Will create the database if it does not exist. 
 */
function sqlite_factory($filename, $mode = null, &$error_message) {}

/**
 * @return array
 * @param  result resource
 * @param  result_type int[optional]
 * @param  decode_binary bool[optional]
 * @desc   Fetches all rows from a result set as an array of arrays. 
 */
function sqlite_fetch_all($result, $result_type = null, $decode_binary = null) {}

/**
 * @return array
 * @param  result resource
 * @param  result_type int[optional]
 * @param  decode_binary bool[optional]
 * @desc   Fetches the next row from a result set as an array. 
 */
function sqlite_fetch_array($result, $result_type = null, $decode_binary = null) {}

/**
 * @return resource
 * @param  table_name string
 * @param  db resource
 * @desc   Return an array of column types from a particular table. 
 */
function sqlite_fetch_column_types($table_name, $db) {}

/**
 * @return object
 * @param  result resource
 * @param  class_name string[optional]
 * @param  ctor_params NULL|array[optional]
 * @param  decode_binary bool[optional]
 * @desc   Fetches the next row from a result set as an object. 
 */
function sqlite_fetch_object($result, $class_name = null, $ctor_params = null, $decode_binary = null) {}

/**
 * @return string
 * @param  result resource
 * @param  decode_binary bool[optional]
 * @desc   Fetches the first column of a result set as a string. 
 */
function sqlite_fetch_single($result, $decode_binary = null) {}

/**
 * @return string
 * @param  result resource
 * @param  decode_binary bool[optional]
 * @desc   Fetches the first column of a result set as a string. 
 */
function sqlite_fetch_string($result, $decode_binary = null) {}

/**
 * @return string
 * @param  result resource
 * @param  field_index int
 * @desc   Returns the name of a particular field of a result set. 
 */
function sqlite_field_name($result, $field_index) {}

/**
 * @return bool
 * @param  result resource
 * @desc   Returns whether more rows are available. 
 */
function sqlite_has_more($result) {}

/**
 * @return bool
 * @param  result resource
 * @desc   * Returns whether a previous row is available. 
 */
function sqlite_has_prev($result) {}

/**
 * @return int
 * @param  db resource
 * @desc   Returns the error code of the last error for a database. 
 */
function sqlite_last_error($db) {}

/**
 * @return int
 * @param  db resource
 * @desc   Returns the rowid of the most recently inserted row. 
 */
function sqlite_last_insert_rowid($db) {}

/**
 * @return string
 * @desc   Returns the encoding (iso8859 or UTF-8) of the linked SQLite library. 
 */
function sqlite_libencoding() {}

/**
 * @return string
 * @desc   Returns the version of the linked SQLite library. 
 */
function sqlite_libversion() {}

/**
 * @return bool
 * @param  result resource
 * @desc   Seek to the next row number of a result set. 
 */
function sqlite_next($result) {}

/**
 * @return int
 * @param  result resource
 * @desc   Returns the number of fields in a result set. 
 */
function sqlite_num_fields($result) {}

/**
 * @return int
 * @param  result resource
 * @desc   Returns the number of rows in a buffered result set. 
 */
function sqlite_num_rows($result) {}

/**
 * @return resource
 * @param  filename string
 * @param  mode int[optional]
 * @param  &error_message string[optional]
 * @desc   Opens a SQLite database. Will create the database if it does not exist. 
 */
function sqlite_open($filename, $mode = null, &$error_message) {}

/**
 * @return resource
 * @param  filename string
 * @param  mode int[optional]
 * @param  &error_message string[optional]
 * @desc   Opens a persistent handle to a SQLite database. Will create the database if it does not exist. 
 */
function sqlite_popen($filename, $mode = null, &$error_message) {}

/**
 * @return bool
 * @param  result resource
 * @desc   * Seek to the previous row number of a result set. 
 */
function sqlite_prev($result) {}

/**
 * @return resource
 * @param  query string
 * @param  db resource
 * @param  result_type int[optional]
 * @desc   Executes a query against a given database and returns a result handle. 
 */
function sqlite_query($query, $db, $result_type = null) {}

/**
 * @return bool
 * @param  result resource
 * @desc   Seek to the first row number of a buffered result set. 
 */
function sqlite_rewind($result) {}

/**
 * @return bool
 * @param  result resource
 * @param  row int
 * @desc   Seek to a particular row number of a buffered result set. 
 */
function sqlite_seek($result, $row) {}

/**
 * @return array
 * @param  db resource
 * @param  query string
 * @param  first_row_only bool[optional]
 * @param  decode_binary bool[optional]
 * @desc   Executes a query and returns either an array for one single column or the value of the first row. 
 */
function sqlite_single_query($db, $query, $first_row_only = null, $decode_binary = null) {}

/**
 * @return string
 * @param  data string
 * @desc   Decode binary encoding on a string parameter passed to an UDF. 
 */
function sqlite_udf_decode_binary($data) {}

/**
 * @return string
 * @param  data string
 * @desc   Apply binary encoding (if required) to a string to return from an UDF. 
 */
function sqlite_udf_encode_binary($data) {}

/**
 * @return resource
 * @param  query string
 * @param  db resource
 * @param  result_type int[optional]
 * @desc   Executes a query that does not prefetch and buffer all data. 
 */
function sqlite_unbuffered_query($query, $db, $result_type = null) {}

/**
 * @return bool
 * @param  result resource
 * @desc   Returns whether more rows are available. 
 */
function sqlite_valid($result) {}

/**
 * @return float
 * @param  number float
 * @desc   Returns the square root of the number 
 */
function sqrt($number) {}

/**
 * @return void
 * @param  seed int[optional]
 * @desc   Seeds random number generator 
 */
function srand($seed = null) {}

/**
 * @return mixed
 * @param  str string
 * @param  format string
 * @vararg ... string
 * @desc   Implements an ANSI C compatible sscanf 
 */
function sscanf($str, $format) {}

/**
 * @return array
 * @param  filename string
 * @desc   Give information about a file 
 */
function stat($filename) {}

/**
 * @return mixed
 * @param  search mixed
 * @param  replace mixed
 * @param  subject mixed
 * @param  &replace_count int[optional]
 * @desc   Replaces all occurrences of search in haystack with replace / case-insensitive 
 */
function str_ireplace($search, $replace, $subject, &$replace_count) {}

/**
 * @return string
 * @param  input string
 * @param  pad_length int
 * @param  pad_string string[optional]
 * @param  pad_type int[optional]
 * @desc   Returns input string padded on the left or right to specified length with pad_string 
 */
function str_pad($input, $pad_length, $pad_string = null, $pad_type = null) {}

/**
 * @return string
 * @param  input string
 * @param  mult int
 * @desc   Returns the input string repeat mult times 
 */
function str_repeat($input, $mult) {}

/**
 * @return mixed
 * @param  search mixed
 * @param  replace mixed
 * @param  subject mixed
 * @param  &replace_count int[optional]
 * @desc   Replaces all occurrences of search in haystack with replace 
 */
function str_replace($search, $replace, $subject, &$replace_count) {}

/**
 * @return string
 * @param  str string
 * @desc   Perform the rot13 transform on a string 
 */
function str_rot13($str) {}

/**
 * @return void
 * @param  str string
 * @desc   Shuffles string. One permutation of all possible is created 
 */
function str_shuffle($str) {}

/**
 * @return array
 * @param  str string
 * @param  split_length int[optional]
 * @desc   Convert a string to an array. If split_length is specified, break the string down into chunks each split_length characters long. 
 */
function str_split($str, $split_length = null) {}

/**
 * @return mixed
 * @param  str string
 * @param  format int[optional]
 * @desc   
 */
function str_word_count($str, $format = null) {}

/**
 * @return int
 * @param  str1 string
 * @param  str2 string
 * @desc   Binary safe case-insensitive string comparison 
 */
function strcasecmp($str1, $str2) {}

/**
 * @return string
 * @param  haystack string
 * @param  needle string
 * @desc   Finds first occurrence of a string within another 
 */
function strchr($haystack, $needle) {}

/**
 * @return int
 * @param  str1 string
 * @param  str2 string
 * @desc   Binary safe string comparison 
 */
function strcmp($str1, $str2) {}

/**
 * @return int
 * @param  str1 string
 * @param  str2 string
 * @desc   Compares two strings using the current locale 
 */
function strcoll($str1, $str2) {}

/**
 * @return int
 * @param  str string
 * @param  mask string
 * @param  start[optional]
 * @param  len[optional]
 * @desc   Finds length of initial segment consisting entirely of characters not found in mask. If start or/and length is provide works like strcspn(substr($s,$start,$len),$bad_chars) 
 */
function strcspn($str, $mask, $start = null, $len = null) {}

/**
 * @return void
 * @param  brigade resource
 * @param  bucket resource
 * @desc   Append bucket to brigade 
 */
function stream_bucket_append($brigade, $bucket) {}

/**
 * @return object
 * @param  brigade resource
 * @desc   Return a bucket object from the brigade for operating on 
 */
function stream_bucket_make_writeable($brigade) {}

/**
 * @return resource
 * @param  stream resource
 * @param  buffer string
 * @desc   Create a new bucket for use on the current stream 
 */
function stream_bucket_new($stream, $buffer) {}

/**
 * @return void
 * @param  brigade resource
 * @param  bucket resource
 * @desc   Prepend bucket to brigade 
 */
function stream_bucket_prepend($brigade, $bucket) {}

/**
 * @return resource
 * @param  options array[optional]
 * @desc   Create a file context and optionally set parameters 
 */
function stream_context_create($options = null) {}

/**
 * @return array
 * @param  context|resource_stream resource
 * @desc   Retrieve options for a stream/wrapper/context 
 */
function stream_context_get_options($context) {}

/**
 * @return bool
 * @param  context|resource_stream resource
 * @param  wrappername string
 * @param  optionname string
 * @param  value mixed
 * @desc   Set an option for a wrapper 
 */
function stream_context_set_option($context, $wrappername, $optionname, $value) {}

/**
 * @return bool
 * @param  context|resource_stream resource
 * @param  options array
 * @desc   Set parameters for a file context 
 */
function stream_context_set_params($context, $options) {}

/**
 * @return long
 * @param  source resource
 * @param  dest resource
 * @param  maxlen long[optional]
 * @desc   Reads up to maxlen bytes from source stream and writes them to dest stream. 
 */
function stream_copy_to_stream($source, $dest, $maxlen = null) {}

/**
 * @return bool
 * @param  stream resource
 * @param  filtername string
 * @param  read_write int
 * @param  filterparams string
 * @desc   Append a filter to a stream 
 */
function stream_filter_append($stream, $filtername, $read_write, $filterparams) {}

/**
 * @return bool
 * @param  stream resource
 * @param  filtername string
 * @param  read_write int
 * @param  filterparams string
 * @desc   Prepend a filter to a stream 
 */
function stream_filter_prepend($stream, $filtername, $read_write, $filterparams) {}

/**
 * @return bool
 * @param  filtername string
 * @param  classname string
 * @desc   Registers a custom filter handler class 
 */
function stream_filter_register($filtername, $classname) {}

/**
 * @return long
 * @param  source resource
 * @param  maxlen long[optional]
 * @desc   Reads all remaining bytes (or up to maxlen bytes) from a stream and returns them as a string. 
 */
function stream_get_contents($source, $maxlen = null) {}

/**
 * @return array
 * @desc   Returns a list of registered filters 
 */
function stream_get_filters() {}

/**
 * @return string
 * @param  stream resource
 * @param  maxlen int
 * @param  ending string
 * @desc   Read up to maxlen bytes from a stream or until the ending string is found 
 */
function stream_get_line($stream, $maxlen, $ending) {}

/**
 * @return resource
 * @param  fp resource
 * @desc   Retrieves header/meta data from streams/file pointers 
 */
function stream_get_meta_data($fp) {}

/**
 * @return array
 * @desc   Retrieves list of registered socket transports 
 */
function stream_get_transports() {}

/**
 * @return array
 * @desc   Retrieves list of registered stream wrappers 
 */
function stream_get_wrappers() {}

/**
 * @return bool
 * @param  protocol string
 * @param  classname string
 * @desc   Registers a custom URL protocol handler class 
 */
function stream_register_wrapper($protocol, $classname) {}

/**
 * @return int
 * @param  &read_streams array
 * @param  &write_streams array
 * @param  &except_streams array
 * @param  tv_sec int
 * @param  tv_usec int
 * @desc   Runs the select() system call on the sets of streams with a timeout specified by tv_sec and tv_usec 
 */
function stream_select(&$read_streams, &$write_streams, &$except_streams, $tv_sec, $tv_usec) {}

/**
 * @return bool
 * @param  socket resource
 * @param  mode int
 * @desc   Set blocking/non-blocking mode on a socket or stream 
 */
function stream_set_blocking($socket, $mode) {}

/**
 * @return bool
 * @param  stream resource
 * @param  seconds int
 * @param  microseconds int
 * @desc   Set timeout on stream read to seconds + microseonds 
 */
function stream_set_timeout($stream, $seconds, $microseconds) {}

/**
 * @return int
 * @param  fp resource
 * @param  buffer int
 * @desc   Set file write buffer 
 */
function stream_set_write_buffer($fp, $buffer) {}

/**
 * @return resource
 * @param  serverstream resource
 * @param  timeout double[optional]
 * @param  &peername string
 * @desc   Accept a client connection from a server socket 
 */
function stream_socket_accept($serverstream, $timeout = null, &$peername) {}

/**
 * @return resource
 * @param  remoteaddress string
 * @param  &errcode long[optional]
 * @param  &errstring string
 * @param  timeout double
 * @param  flags long
 * @param  context resource
 * @desc   Open a client connection to a remote address 
 */
function stream_socket_client($remoteaddress, &$errcode, &$errstring, $timeout, $flags, $context) {}

/**
 * @return string
 * @param  stream resource
 * @param  want_peer bool
 * @desc   Returns either the locally bound or remote name for a socket stream 
 */
function stream_socket_get_name($stream, $want_peer) {}

/**
 * @return string
 * @param  stream resource
 * @param  amount long
 * @param  flags long[optional]
 * @param  &remote_addr string[optional]
 * @desc   Receives data from a socket stream 
 */
function stream_socket_recvfrom($stream, $amount, $flags = null, &$remote_addr) {}

/**
 * @return long
 * @param  stream resouce
 * @param  data string
 * @param  flags long[optional]
 * @param  target_addr string[optional]
 * @desc   Send data to a socket stream.  If target_addr is specified it must be in dotted quad (or [ipv6]) format 
 */
function stream_socket_sendto($stream, $data, $flags = null, $target_addr = null) {}

/**
 * @return resource
 * @param  localaddress string
 * @param  &errcode long[optional]
 * @param  &errstring string
 * @param  flags long
 * @param  context resource
 * @desc   Create a server socket bound to localaddress 
 */
function stream_socket_server($localaddress, &$errcode, &$errstring, $flags, $context) {}

/**
 * @return bool
 * @param  protocol string
 * @param  classname string
 * @desc   Registers a custom URL protocol handler class 
 */
function stream_wrapper_register($protocol, $classname) {}

/**
 * @return string
 * @param  format string
 * @param  timestamp int[optional]
 * @desc   Format a local time/date according to locale settings 
 */
function strftime($format, $timestamp = null) {}

/**
 * @return string
 * @param  str string
 * @param  allowable_tags string[optional]
 * @desc   Strips HTML and PHP tags from a string 
 */
function strip_tags($str, $allowable_tags = null) {}

/**
 * @return string
 * @param  str string
 * @desc   Strips backslashes from a string. Uses C-style conventions 
 */
function stripcslashes($str) {}

/**
 * @return int
 * @param  haystack string
 * @param  needle string
 * @param  offset int[optional]
 * @desc   Finds position of first occurrence of a string within another, case insensitive 
 */
function stripos($haystack, $needle, $offset = null) {}

/**
 * @return string
 * @param  str string
 * @desc   Strips backslashes from a string 
 */
function stripslashes($str) {}

/**
 * @return string
 * @param  haystack string
 * @param  needle string
 * @desc   Finds first occurrence of a string within another, case insensitive 
 */
function stristr($haystack, $needle) {}

/**
 * @return int
 * @param  str string
 * @desc   Get string length 
 */
function strlen($str) {}

/**
 * @return int
 * @param  s1 string
 * @param  s2 string
 * @desc   Returns the result of case-insensitive string comparison using 'natural' algorithm 
 */
function strnatcasecmp($s1, $s2) {}

/**
 * @return int
 * @param  s1 string
 * @param  s2 string
 * @desc   Returns the result of string comparison using 'natural' algorithm 
 */
function strnatcmp($s1, $s2) {}

/**
 * @return int
 * @param  str1 string
 * @param  str2 string
 * @param  len int
 * @desc   Binary safe string comparison 
 */
function strncasecmp($str1, $str2, $len) {}

/**
 * @return int
 * @param  str1 string
 * @param  str2 string
 * @param  len int
 * @desc   Binary safe string comparison 
 */
function strncmp($str1, $str2, $len) {}

/**
 * @return array
 * @param  haystack string
 * @param  char_list string
 * @desc   Search a string for any of a set of characters 
 */
function strpbrk($haystack, $char_list) {}

/**
 * @return int
 * @param  haystack string
 * @param  needle string
 * @param  offset int[optional]
 * @desc   Finds position of first occurrence of a string within another 
 */
function strpos($haystack, $needle, $offset = null) {}

/**
 * @return string
 * @param  haystack string
 * @param  needle string
 * @desc   Finds the last occurrence of a character in a string within another 
 */
function strrchr($haystack, $needle) {}

/**
 * @return string
 * @param  str string
 * @desc   Reverse a string 
 */
function strrev($str) {}

/**
 * @return int
 * @param  haystack string
 * @param  needle string
 * @param  offset int[optional]
 * @desc   Finds position of last occurrence of a string within another string 
 */
function strripos($haystack, $needle, $offset = null) {}

/**
 * @return int
 * @param  haystack string
 * @param  needle string
 * @param  offset int[optional]
 * @desc   Finds position of last occurrence of a string within another string 
 */
function strrpos($haystack, $needle, $offset = null) {}

/**
 * @return int
 * @param  str string
 * @param  mask string
 * @param  start[optional]
 * @param  len[optional]
 * @desc   Finds length of initial segment consisting entirely of characters found in mask. If start or/and length is provided works like strspn(substr($s,$start,$len),$good_chars) 
 */
function strspn($str, $mask, $start = null, $len = null) {}

/**
 * @return string
 * @param  haystack string
 * @param  needle string
 * @desc   Finds first occurrence of a string within another 
 */
function strstr($haystack, $needle) {}

/**
 * @return string
 * @param  str string[optional]
 * @param  token string
 * @desc   Tokenize a string 
 */
function strtok($str = null, $token) {}

/**
 * @return string
 * @param  str string
 * @desc   Makes a string lowercase 
 */
function strtolower($str) {}

/**
 * @return int
 * @param  time string
 * @param  now int
 * @desc   Convert string representation of date and time to a timestamp 
 */
function strtotime($time, $now) {}

/**
 * @return string
 * @param  str string
 * @desc   Makes a string uppercase 
 */
function strtoupper($str) {}

/**
 * @return string
 * @param  str string
 * @param  from string
 * @param  to string
 * @desc   Translates characters in str using given translation tables 
 */
function strtr($str, $from, $to) {}

/**
 * @return string
 * @param  var mixed
 * @desc   Get the string value of a variable 
 */
function strval($var) {}

/**
 * @return string
 * @param  str string
 * @param  start int
 * @param  length int[optional]
 * @desc   Returns part of a string 
 */
function substr($str, $start, $length = null) {}

/**
 * @return int
 * @param  main_str string
 * @param  str string
 * @param  offset int
 * @param  length int[optional]
 * @param  case_sensitivity bool[optional]
 * @desc   Binary safe optionally case insensitive comparison of 2 strings from an offset, up to length characters 
 */
function substr_compare($main_str, $str, $offset, $length = null, $case_sensitivity = null) {}

/**
 * @return int
 * @param  haystack string
 * @param  needle string
 * @desc   Returns the number of times a substring occurs in the string 
 */
function substr_count($haystack, $needle) {}

/**
 * @return mixed
 * @param  str mixed
 * @param  repl mixed
 * @param  start mixed
 * @param  length mixed[optional]
 * @desc   Replaces part of a string with another string 
 */
function substr_replace($str, $repl, $start, $length = null) {}

/**
 * @return int
 * @param  link_id int[optional]
 * @desc   Get number of affected rows in last query 
 */
function sybase_affected_rows($link_id = null) {}

/**
 * @return bool
 * @param  link_id int[optional]
 * @desc   Close Sybase connection 
 */
function sybase_close($link_id = null) {}

/**
 * @return int
 * @param  host string[optional]
 * @param  user string[optional]
 * @param  password string[optional]
 * @param  charset string[optional]
 * @param  appname string[optional]
 * @desc   Open Sybase server connection 
 */
function sybase_connect($host = null, $user = null, $password = null, $charset = null, $appname = null) {}

/**
 * @return bool
 * @param  result int
 * @param  offset int
 * @desc   Move internal row pointer 
 */
function sybase_data_seek($result, $offset) {}

/**
 * @return void
 * @param  retry_count int
 * @desc   Sets deadlock retry count 
 */
function sybase_deadlock_retry_count($retry_count) {}

/**
 * @return array
 * @param  result int
 * @desc   Fetch row as array 
 */
function sybase_fetch_array($result) {}

/**
 * @return array
 * @param  result int
 * @desc   Fetch row as array without numberic indices 
 */
function sybase_fetch_assoc($result) {}

/**
 * @return object
 * @param  result int
 * @param  offset int[optional]
 * @desc   Get field information 
 */
function sybase_fetch_field($result, $offset = null) {}

/**
 * @return object
 * @param  result int
 * @param  object mixed[optional]
 * @desc   Fetch row as object 
 */
function sybase_fetch_object($result, $object = null) {}

/**
 * @return array
 * @param  result int
 * @desc   Get row as enumerated array 
 */
function sybase_fetch_row($result) {}

/**
 * @return bool
 * @param  result int
 * @param  offset int
 * @desc   Set field offset 
 */
function sybase_field_seek($result, $offset) {}

/**
 * @return bool
 * @param  result int
 * @desc   Free result memory 
 */
function sybase_free_result($result) {}

/**
 * @return string
 * @desc   Returns the last message from server (over min_message_severity) 
 */
function sybase_get_last_message() {}

/**
 * @return void
 * @param  severity int
 * @desc   Sets minimum client severity 
 */
function sybase_min_client_severity($severity) {}

/**
 * @return void
 * @param  severity int
 * @desc   Sets the minimum error severity 
 */
function sybase_min_error_severity($severity) {}

/**
 * @return void
 * @param  severity int
 * @desc   Sets the minimum message severity 
 */
function sybase_min_message_severity($severity) {}

/**
 * @return void
 * @param  severity int
 * @desc   Sets minimum server severity 
 */
function sybase_min_server_severity($severity) {}

/**
 * @return int
 * @param  result int
 * @desc   Get number of fields in result 
 */
function sybase_num_fields($result) {}

/**
 * @return int
 * @param  result int
 * @desc   Get number of rows in result 
 */
function sybase_num_rows($result) {}

/**
 * @return int
 * @param  host string[optional]
 * @param  user string[optional]
 * @param  password string[optional]
 * @param  charset string[optional]
 * @param  appname string[optional]
 * @desc   Open persistent Sybase connection 
 */
function sybase_pconnect($host = null, $user = null, $password = null, $charset = null, $appname = null) {}

/**
 * @return int
 * @param  query string
 * @param  link_id int[optional]
 * @desc   Send Sybase query 
 */
function sybase_query($query, $link_id = null) {}

/**
 * @return string
 * @param  result int
 * @param  row int
 * @param  field mixed
 * @desc   Get result data 
 */
function sybase_result($result, $row, $field) {}

/**
 * @return bool
 * @param  database string
 * @param  link_id int[optional]
 * @desc   Select Sybase database 
 */
function sybase_select_db($database, $link_id = null) {}

/**
 * @return bool
 * @param  error_func mixed
 * @param  connection resource[optional]
 * @desc   
 */
function sybase_set_message_handler($error_func, $connection = null) {}

/**
 * @return int
 * @param  query string
 * @param  link_id int[optional]
 * @desc   Send Sybase query 
 */
function sybase_unbuffered_query($query, $link_id = null) {}

/**
 * @return int
 * @param  target string
 * @param  link string
 * @desc   Create a symbolic link 
 */
function symlink($target, $link) {}

/**
 * @return bool
 * @param  priority int
 * @param  message string
 * @desc   Generate a system log message 
 */
function syslog($priority, $message) {}

/**
 * @return int
 * @param  command string
 * @param  &return_value int[optional]
 * @desc   Execute an external program and display output 
 */
function system($command, &$return_value) {}

/**
 * @return float
 * @param  number float
 * @desc   Returns the tangent of the number in radians 
 */
function tan($number) {}

/**
 * @return float
 * @param  number float
 * @desc   Returns the hyperbolic tangent of the number, defined as sinh(number)/cosh(number) 
 */
function tanh($number) {}

/**
 * @return string
 * @param  dir string
 * @param  prefix string
 * @desc   Create a unique filename in a directory 
 */
function tempnam($dir, $prefix) {}

/**
 * @return string
 * @param  domain string
 * @desc   Set the textdomain to "domain". Returns the current domain 
 */
function textdomain($domain) {}

/**
 * @return int
 * @desc   Returns the Number of Tidy accessibility warnings encountered for specified document. 
 */
function tidy_access_count() {}

/**
 * @return boolean
 * @desc   Execute configured cleanup and repair operations on parsed markup 
 */
function tidy_clean_repair() {}

/**
 * @return int
 * @desc   Returns the Number of Tidy configuration errors encountered for specified document. 
 */
function tidy_config_count() {}

/**
 * @return boolean
 * @desc   Run configured diagnostics on parsed and repaired markup. 
 */
function tidy_diagnose() {}

/**
 * @return int
 * @desc   Returns the Number of Tidy errors encountered for specified document. 
 */
function tidy_error_count() {}

/**
 * @return TidyNode
 * @param  tidy resource
 * @desc   Returns a TidyNode Object starting from the <BODY> tag of the tidy parse tree 
 */
function tidy_get_body($tidy) {}

/**
 * @return array
 * @desc   Get current Tidy configuarion 
 */
function tidy_get_config() {}

/**
 * @return string
 * @param  detailed boolean[optional]
 * @desc   Return warnings and errors which occured parsing the specified document
 */
function tidy_get_error_buffer($detailed = null) {}

/**
 * @return TidyNode
 * @desc   Returns a TidyNode Object starting from the <HEAD> tag of the tidy parse tree 
 */
function tidy_get_head() {}

/**
 * @return TidyNode
 * @desc   Returns a TidyNode Object starting from the <HTML> tag of the tidy parse tree 
 */
function tidy_get_html() {}

/**
 * @return int
 * @desc   Get the Detected HTML version for the specified document. 
 */
function tidy_get_html_ver() {}

/**
 * @return string
 * @desc   Return a string representing the parsed tidy markup 
 */
function tidy_get_output() {}

/**
 * @return string
 * @desc   Get release date (version) for Tidy library 
 */
function tidy_get_release() {}

/**
 * @return TidyNode
 * @desc   Returns a TidyNode Object representing the root of the tidy parse tree 
 */
function tidy_get_root() {}

/**
 * @return int
 * @desc   Get status of specfied document. 
 */
function tidy_get_status() {}

/**
 * @return mixed
 * @param  option string
 * @desc   Returns the value of the specified configuration option for the tidy document. 
 */
function tidy_getopt($option) {}

/**
 * @return boolean
 * @desc   Indicates if the document is a generic (non HTML/XHTML) XML document. 
 */
function tidy_is_xhtml() {}

/**
 * @return boolean
 * @param  file string
 * @param  config_options mixed[optional]
 * @param  encoding string[optional]
 * @param  use_include_path bool[optional]
 * @desc   Parse markup in file or URI 
 */
function tidy_parse_file($file, $config_options = null, $encoding = null, $use_include_path = null) {}

/**
 * @return bool
 * @param  input string
 * @param  config_options mixed[optional]
 * @param  encoding string[optional]
 * @desc   Parse a document stored in a string 
 */
function tidy_parse_string($input, $config_options = null, $encoding = null) {}

/**
 * @return boolean
 * @param  filename string
 * @param  config_file mixed[optional]
 * @param  encoding string[optional]
 * @param  use_include_path bool[optional]
 * @desc   Repair a file using an optionally provided configuration file 
 */
function tidy_repair_file($filename, $config_file = null, $encoding = null, $use_include_path = null) {}

/**
 * @return boolean
 * @param  data string
 * @param  config_file mixed[optional]
 * @param  encoding string[optional]
 * @desc   Repair a string using an optionally provided configuration file 
 */
function tidy_repair_string($data, $config_file = null, $encoding = null) {}

/**
 * @return int
 * @desc   Returns the Number of Tidy warnings encountered for specified document. 
 */
function tidy_warning_count() {}

/**
 * @return int
 * @desc   Return current UNIX timestamp 
 */
function time() {}

/**
 * @return mixed
 * @param  seconds long
 * @param  nanoseconds long
 * @desc   Delay for a number of seconds and nano seconds 
 */
function time_nanosleep($seconds, $nanoseconds) {}

/**
 * @return resource
 * @desc   Create a temporary file that will be deleted automatically after use 
 */
function tmpfile() {}

/**
 * @return array
 * @param  source string
 * @desc   
 */
function token_get_all($source) {}

/**
 * @return string
 * @param  type int
 * @desc   
 */
function token_name($type) {}

/**
 * @return bool
 * @param  filename string
 * @param  time int[optional]
 * @param  atime int[optional]
 * @desc   Set modification time of file 
 */
function touch($filename, $time = null, $atime = null) {}

/**
 * @return void
 * @param  messsage string
 * @param  error_type int[optional]
 * @desc   Generates a user-level error/warning/notice message 
 */
function trigger_error($messsage, $error_type = null) {}

/**
 * @return string
 * @param  str string
 * @param  character_mask string[optional]
 * @desc   Strips whitespace from the beginning and end of a string 
 */
function trim($str, $character_mask = null) {}

/**
 * @return bool
 * @param  array_arg array
 * @param  cmp_function string
 * @desc   Sort an array with a user-defined comparison function and maintain index association 
 */
function uasort($array_arg, $cmp_function) {}

/**
 * @return string
 * @param  str string
 * @desc   Makes a string's first character uppercase 
 */
function ucfirst($str) {}

/**
 * @return string
 * @param  str string
 * @desc   Uppercase the first character of every word in a string 
 */
function ucwords($str) {}

/**
 * @return int
 * @param  agent int
 * @param  var int
 * @param  val string
 * @desc   Add mnoGoSearch search restrictions 
 */
function udm_add_search_limit($agent, $var, $val) {}

/**
 * @return int
 * @param  dbaddr string
 * @param  dbmode string[optional]
 * @desc   Allocate mnoGoSearch session 
 */
function udm_alloc_agent($dbaddr, $dbmode = null) {}

/**
 * @return int
 * @param  dbaddr array
 * @desc   Allocate mnoGoSearch session 
 */
function udm_alloc_agent_array($dbaddr) {}

/**
 * @return int
 * @desc   Get mnoGoSearch API version 
 */
function udm_api_version() {}

/**
 * @return array
 * @param  agent int
 * @param  category string
 * @desc   Get mnoGoSearch categories list with the same root 
 */
function udm_cat_list($agent, $category) {}

/**
 * @return array
 * @param  agent int
 * @param  category string
 * @desc   Get mnoGoSearch categories path from the root to the given catgory 
 */
function udm_cat_path($agent, $category) {}

/**
 * @return int
 * @param  agent int
 * @param  charset string
 * @desc   Check if the given charset is known to mnogosearch 
 */
function udm_check_charset($agent, $charset) {}

/**
 * @return int
 * @param  agent int
 * @desc   Clear all mnoGoSearch search restrictions 
 */
function udm_clear_search_limits($agent) {}

/**
 * @return int
 * @param  agent int
 * @param  str string
 * @desc   Return CRC32 checksum of gived string 
 */
function udm_crc32($agent, $str) {}

/**
 * @return int
 * @param  agent int
 * @desc   Get mnoGoSearch error number 
 */
function udm_errno($agent) {}

/**
 * @return string
 * @param  agent int
 * @desc   Get mnoGoSearch error message 
 */
function udm_error($agent) {}

/**
 * @return int
 * @param  agent int
 * @param  query string
 * @desc   Perform search 
 */
function udm_find($agent, $query) {}

/**
 * @return int
 * @param  agent int
 * @desc   Free mnoGoSearch session 
 */
function udm_free_agent($agent) {}

/**
 * @return int
 * @param  agent int
 * @desc   Free memory allocated for ispell data 
 */
function udm_free_ispell_data($agent) {}

/**
 * @return int
 * @param  res int
 * @desc   mnoGoSearch free result 
 */
function udm_free_res($res) {}

/**
 * @return string
 * @param  agent int
 * @param  field string
 * @desc   Fetch mnoGoSearch environment parameters 
 */
function udm_get_agent_param_ex($agent, $field) {}

/**
 * @return int
 * @param  agent int
 * @desc   Get total number of documents in database 
 */
function udm_get_doc_count($agent) {}

/**
 * @return string
 * @param  res int
 * @param  row int
 * @param  field int
 * @desc   Fetch mnoGoSearch result field 
 */
function udm_get_res_field($res, $row, $field) {}

/**
 * @return string
 * @param  res int
 * @param  row int
 * @param  field string
 * @desc   Fetch mnoGoSearch result field 
 */
function udm_get_res_field_ex($res, $row, $field) {}

/**
 * @return string
 * @param  res int
 * @param  param int
 * @desc   Get mnoGoSearch result parameters 
 */
function udm_get_res_param($res, $param) {}

/**
 * @return int
 * @param  agent int
 * @param  str string
 * @desc   Return Hash32 checksum of gived string 
 */
function udm_hash32($agent, $str) {}

/**
 * @return int
 * @param  agent int
 * @param  var int
 * @param  val1 string
 * @param  charset string[optional]
 * @param  val2 string
 * @param  flag int
 * @desc   Load ispell data 
 */
function udm_load_ispell_data($agent, $var, $val1, $charset = null, $val2, $flag) {}

/**
 * @return int
 * @param  agent int
 * @param  res int
 * @param  row int
 * @desc   Perform search 
 */
function udm_make_excerpt($agent, $res, $row) {}

/**
 * @return int
 * @param  agent int
 * @param  str string
 * @desc   Parses query string, initialises variables and search limits taken from it 
 */
function udm_parse_query_string($agent, $str) {}

/**
 * @return int
 * @param  agent int
 * @param  var int
 * @param  val string
 * @desc   Set mnoGoSearch agent session parameters 
 */
function udm_set_agent_param($agent, $var, $val) {}

/**
 * @return int
 * @param  agent int
 * @param  var string
 * @param  val string
 * @desc   Set mnoGoSearch agent session parameters extended 
 */
function udm_set_agent_param_ex($agent, $var, $val) {}

/**
 * @return int
 * @param  agent int
 * @desc   Get CachedCopy of document and return TRUE if cached copy found 
 */
function udm_store_doc_cgi($agent) {}

/**
 * @return bool
 * @param  array_arg array
 * @param  cmp_function string
 * @desc   Sort an array by keys using a user-defined comparison function 
 */
function uksort($array_arg, $cmp_function) {}

/**
 * @return int
 * @param  mask int[optional]
 * @desc   Return or change the umask 
 */
function umask($mask = null) {}

/**
 * @return string
 * @param  prefix string[optional]
 * @param  more_entropy bool
 * @desc   Generates a unique ID 
 */
function uniqid($prefix = null, $more_entropy) {}

/**
 * @return int
 * @param  timestamp int[optional]
 * @desc   Convert UNIX timestamp to Julian Day 
 */
function unixtojd($timestamp = null) {}

/**
 * @return bool
 * @param  filename string
 * @param  context context
 * @desc   Delete a file 
 */
function unlink($filename, $context) {}

/**
 * @return array
 * @param  format string
 * @param  input string
 * @desc   Unpack binary string into named array elements according to format argument 
 */
function unpack($format, $input) {}

/**
 * @return void
 * @param  function_name string
 * @desc   Unregisters a tick callback function 
 */
function unregister_tick_function($function_name) {}

/**
 * @return mixed
 * @param  variable_representation string
 * @desc   Takes a string representation of variable and recreates it 
 */
function unserialize($variable_representation) {}

/**
 * @return string
 * @param  str string
 * @desc   Decodes URL-encoded string 
 */
function urldecode($str) {}

/**
 * @return string
 * @param  str string
 * @desc   URL-encodes string 
 */
function urlencode($str) {}

/**
 * @return void
 * @param  messsage string
 * @param  error_type int[optional]
 * @desc   Generates a user-level error/warning/notice message 
 */
function user_error($messsage, $error_type = null) {}

/**
 * @return void
 * @param  micro_seconds int
 * @desc   Delay for a given number of micro seconds 
 */
function usleep($micro_seconds) {}

/**
 * @return bool
 * @param  array_arg array
 * @param  cmp_function string
 * @desc   Sort an array by values using a user-defined comparison function 
 */
function usort($array_arg, $cmp_function) {}

/**
 * @return string
 * @param  data string
 * @desc   Converts a UTF-8 encoded string to ISO-8859-1 
 */
function utf8_decode($data) {}

/**
 * @return string
 * @param  data string
 * @desc   Encodes an ISO-8859-1 string to UTF-8 
 */
function utf8_encode($data) {}

/**
 * @return string
 * @param  data string
 * @desc   decode a uuencoded string 
 */
function uudecode($data) {}

/**
 * @return string
 * @param  data string
 * @desc   uuencode a string 
 */
function uuencode($data) {}

/**
 * @return void
 * @param  var mixed
 * @desc   Dumps a string representation of variable to output 
 */
function var_dump($var) {}

/**
 * @return mixed
 * @param  var mixed
 * @param  return bool[optional]
 * @desc   Outputs or returns a string representation of a variable 
 */
function var_export($var, $return = null) {}

/**
 * @return mixed
 * @param  left mixed
 * @desc   Returns the absolute value of a variant 
 */
function variant_abs($left) {}

/**
 * @return mixed
 * @param  left mixed
 * @param  right mixed
 * @desc   "Adds" two variant values together and returns the result 
 */
function variant_add($left, $right) {}

/**
 * @return mixed
 * @param  left mixed
 * @param  right mixed
 * @desc   performs a bitwise AND operation between two variants and returns the result 
 */
function variant_and($left, $right) {}

/**
 * @return object
 * @param  variant object
 * @param  type int
 * @desc   Convert a variant into a new variant object of another type 
 */
function variant_cast($variant, $type) {}

/**
 * @return mixed
 * @param  left mixed
 * @param  right mixed
 * @desc   concatenates two variant values together and returns the result 
 */
function variant_cat($left, $right) {}

/**
 * @return int
 * @param  left mixed
 * @param  right mixed
 * @param  lcid int[optional]
 * @param  flags int[optional]
 * @desc   Compares two variants 
 */
function variant_cmp($left, $right, $lcid = null, $flags = null) {}

/**
 * @return object
 * @param  timestamp int
 * @desc   Returns a variant date representation of a unix timestamp 
 */
function variant_date_from_timestamp($timestamp) {}

/**
 * @return int
 * @param  variant object
 * @desc   Converts a variant date/time value to unix timestamp 
 */
function variant_date_to_timestamp($variant) {}

/**
 * @return mixed
 * @param  left mixed
 * @param  right mixed
 * @desc   Returns the result from dividing two variants 
 */
function variant_div($left, $right) {}

/**
 * @return mixed
 * @param  left mixed
 * @param  right mixed
 * @desc   Performs a bitwise equivalence on two variants 
 */
function variant_eqv($left, $right) {}

/**
 * @return mixed
 * @param  left mixed
 * @desc   Returns the integer part ? of a variant 
 */
function variant_fix($left) {}

/**
 * @return int
 * @param  variant object
 * @desc   Returns the VT_XXX type code for a variant 
 */
function variant_get_type($variant) {}

/**
 * @return mixed
 * @param  left mixed
 * @param  right mixed
 * @desc   Converts variants to integers and then returns the result from dividing them 
 */
function variant_idiv($left, $right) {}

/**
 * @return mixed
 * @param  left mixed
 * @param  right mixed
 * @desc   Performs a bitwise implication on two variants 
 */
function variant_imp($left, $right) {}

/**
 * @return mixed
 * @param  left mixed
 * @desc   Returns the integer portion of a variant 
 */
function variant_int($left) {}

/**
 * @return mixed
 * @param  left mixed
 * @param  right mixed
 * @desc   Divides two variants and returns only the remainder 
 */
function variant_mod($left, $right) {}

/**
 * @return mixed
 * @param  left mixed
 * @param  right mixed
 * @desc   multiplies the values of the two variants and returns the result 
 */
function variant_mul($left, $right) {}

/**
 * @return mixed
 * @param  left mixed
 * @desc   Performs logical negation on a variant 
 */
function variant_neg($left) {}

/**
 * @return mixed
 * @param  left mixed
 * @desc   Performs bitwise not negation on a variant 
 */
function variant_not($left) {}

/**
 * @return mixed
 * @param  left mixed
 * @param  right mixed
 * @desc   Performs a logical disjunction on two variants 
 */
function variant_or($left, $right) {}

/**
 * @return mixed
 * @param  left mixed
 * @param  right mixed
 * @desc   Returns the result of performing the power function with two variants 
 */
function variant_pow($left, $right) {}

/**
 * @return mixed
 * @param  left mixed
 * @param  decimals int
 * @desc   Rounds a variant to the specified number of decimal places 
 */
function variant_round($left, $decimals) {}

/**
 * @return void
 * @param  variant object
 * @param  value mixed
 * @desc   Assigns a new value for a variant object 
 */
function variant_set($variant, $value) {}

/**
 * @return void
 * @param  variant object
 * @param  type int
 * @desc   Convert a variant into another type.  Variant is modified "in-place" 
 */
function variant_set_type($variant, $type) {}

/**
 * @return mixed
 * @param  left mixed
 * @param  right mixed
 * @desc   subtracts the value of the right variant from the left variant value and returns the result 
 */
function variant_sub($left, $right) {}

/**
 * @return mixed
 * @param  left mixed
 * @param  right mixed
 * @desc   Performs a logical exclusion on two variants 
 */
function variant_xor($left, $right) {}

/**
 * @return bool
 * @param  index int
 * @desc   
 */
function velocis_autocommit($index) {}

/**
 * @return bool
 * @param  id int
 * @desc   
 */
function velocis_close($id) {}

/**
 * @return bool
 * @param  index int
 * @desc   
 */
function velocis_commit($index) {}

/**
 * @return int
 * @param  server string
 * @param  user string
 * @param  pass string
 * @desc   
 */
function velocis_connect($server, $user, $pass) {}

/**
 * @return int
 * @param  index int
 * @param  exec_str string
 * @desc   
 */
function velocis_exec($index, $exec_str) {}

/**
 * @return bool
 * @param  index int
 * @desc   
 */
function velocis_fetch($index) {}

/**
 * @return string
 * @param  index int
 * @param  col int
 * @desc   
 */
function velocis_fieldname($index, $col) {}

/**
 * @return int
 * @param  index int
 * @desc   
 */
function velocis_fieldnum($index) {}

/**
 * @return bool
 * @param  index int
 * @desc   
 */
function velocis_freeresult($index) {}

/**
 * @return bool
 * @param  index int
 * @desc   
 */
function velocis_off_autocommit($index) {}

/**
 * @return mixed
 * @param  index int
 * @param  col int
 * @desc   
 */
function velocis_result($index, $col) {}

/**
 * @return bool
 * @param  index int
 * @desc   
 */
function velocis_rollback($index) {}

/**
 * @return int
 * @param  ver1 string
 * @param  ver2 string
 * @param  oper string[optional]
 * @desc   Compares two "PHP-standardized" version number strings 
 */
function version_compare($ver1, $ver2, $oper = null) {}

/**
 * @return int
 * @param  stream resource
 * @param  format string
 * @param  args array
 * @desc   Output a formatted string into a stream 
 */
function vfprintf($stream, $format, $args) {}

/**
 * @return bool
 * @param  uri string
 * @desc   Perform an NSAPI sub-request 
 */
function virtual($uri) {}

/**
 * @return int
 * @param  format string
 * @param  args array
 * @desc   Output a formatted string 
 */
function vprintf($format, $args) {}

/**
 * @return string
 * @param  format string
 * @param  args array
 * @desc   Return a formatted string 
 */
function vsprintf($format, $args) {}

/**
 * @return int
 * @param  packet_id int
 * @param  var_names mixed
 * @vararg ... mixed
 * @desc   Serializes given variables and adds them to packet given by packet_id 
 */
function wddx_add_vars($packet_id, $var_names) {}

/**
 * @return mixed
 * @param  packet mixed
 * @desc   Deserializes given packet and returns a PHP value 
 */
function wddx_deserialize($packet) {}

/**
 * @return string
 * @param  packet_id int
 * @desc   Ends specified WDDX packet and returns the string containing the packet 
 */
function wddx_packet_end($packet_id) {}

/**
 * @return int
 * @param  comment string[optional]
 * @desc   Starts a WDDX packet with optional comment and returns the packet id 
 */
function wddx_packet_start($comment = null) {}

/**
 * @return string
 * @param  var mixed
 * @param  comment string[optional]
 * @desc   Creates a new packet and serializes the given value 
 */
function wddx_serialize_value($var, $comment = null) {}

/**
 * @return string
 * @param  var_name mixed
 * @vararg ... mixed
 * @desc   Creates a new packet and serializes given variables into a struct 
 */
function wddx_serialize_vars($var_name) {}

/**
 * @return string
 * @param  str string
 * @param  width int[optional]
 * @param  break string[optional]
 * @param  cut boolean[optional]
 * @desc   Wraps buffer to selected number of characters using string break char 
 */
function wordwrap($str, $width = null, $break = null, $cut = null) {}

/**
 * @return string
 * @param  code int
 * @desc   Get XML parser error string 
 */
function xml_error_string($code) {}

/**
 * @return int
 * @param  parser resource
 * @desc   Get current byte index for an XML parser 
 */
function xml_get_current_byte_index($parser) {}

/**
 * @return int
 * @param  parser resource
 * @desc   Get current column number for an XML parser 
 */
function xml_get_current_column_number($parser) {}

/**
 * @return int
 * @param  parser resource
 * @desc   Get current line number for an XML parser 
 */
function xml_get_current_line_number($parser) {}

/**
 * @return int
 * @param  parser resource
 * @desc   Get XML parser error code 
 */
function xml_get_error_code($parser) {}

/**
 * @return int
 * @param  parser resource
 * @param  data string
 * @param  isFinal int[optional]
 * @desc   Start parsing an XML document 
 */
function xml_parse($parser, $data, $isFinal = null) {}

/**
 * @return int
 * @param  parser resource
 * @param  data string
 * @param  &struct array
 * @param  &index array
 * @desc   Parsing a XML document 
 */
function xml_parse_into_struct($parser, $data, &$struct, &$index) {}

/**
 * @return resource
 * @param  encoding string[optional]
 * @desc   Create an XML parser 
 */
function xml_parser_create($encoding = null) {}

/**
 * @return resource
 * @param  encoding string[optional]
 * @param  sep string[optional]
 * @desc   Create an XML parser 
 */
function xml_parser_create_ns($encoding = null, $sep = null) {}

/**
 * @return int
 * @param  parser resource
 * @desc   Free an XML parser 
 */
function xml_parser_free($parser) {}

/**
 * @return int
 * @param  parser resource
 * @param  option int
 * @desc   Get options from an XML parser 
 */
function xml_parser_get_option($parser, $option) {}

/**
 * @return int
 * @param  parser resource
 * @param  option int
 * @param  value mixed
 * @desc   Set options in an XML parser 
 */
function xml_parser_set_option($parser, $option, $value) {}

/**
 * @return int
 * @param  parser resource
 * @param  hdl string
 * @desc   Set up character data handler 
 */
function xml_set_character_data_handler($parser, $hdl) {}

/**
 * @return int
 * @param  parser resource
 * @param  hdl string
 * @desc   Set up default handler 
 */
function xml_set_default_handler($parser, $hdl) {}

/**
 * @return int
 * @param  parser resource
 * @param  shdl string
 * @param  ehdl string
 * @desc   Set up start and end element handlers 
 */
function xml_set_element_handler($parser, $shdl, $ehdl) {}

/**
 * @return int
 * @param  parser resource
 * @param  hdl string
 * @desc   Set up character data handler 
 */
function xml_set_end_namespace_decl_handler($parser, $hdl) {}

/**
 * @return int
 * @param  parser resource
 * @param  hdl string
 * @desc   Set up external entity reference handler 
 */
function xml_set_external_entity_ref_handler($parser, $hdl) {}

/**
 * @return int
 * @param  parser resource
 * @param  hdl string
 * @desc   Set up notation declaration handler 
 */
function xml_set_notation_decl_handler($parser, $hdl) {}

/**
 * @return int
 * @param  parser resource
 * @param  &obj object
 * @desc   Set up object which should be used for callbacks 
 */
function xml_set_object($parser, &$obj) {}

/**
 * @return int
 * @param  parser resource
 * @param  hdl string
 * @desc   Set up processing instruction (PI) handler 
 */
function xml_set_processing_instruction_handler($parser, $hdl) {}

/**
 * @return int
 * @param  parser resource
 * @param  hdl string
 * @desc   Set up character data handler 
 */
function xml_set_start_namespace_decl_handler($parser, $hdl) {}

/**
 * @return int
 * @param  parser resource
 * @param  hdl string
 * @desc   Set up unparsed entity declaration handler 
 */
function xml_set_unparsed_entity_decl_handler($parser, $hdl) {}

/**
 * @return array
 * @param  xml string
 * @param  encoding string[optional]
 * @desc   Decodes XML into native PHP types 
 */
function xmlrpc_decode($xml, $encoding = null) {}

/**
 * @return array
 * @param  xml string
 * @param  method string&
 * @param  encoding string[optional]
 * @desc   Decodes XML into native PHP types 
 */
function xmlrpc_decode_request($xml, $method, $encoding = null) {}

/**
 * @return string
 * @param  value mixed
 * @desc   Generates XML for a PHP value 
 */
function xmlrpc_encode($value) {}

/**
 * @return string
 * @param  method string
 * @param  params mixed
 * @desc   Generates XML for a method request 
 */
function xmlrpc_encode_request($method, $params) {}

/**
 * @return string
 * @param  value mixed
 * @desc   Gets xmlrpc type for a PHP value. Especially useful for base64 and datetime strings 
 */
function xmlrpc_get_type($value) {}

/**
 * @return bool
 * @param  array
 * @desc   Determines if an array value represents an XMLRPC fault. 
 */
function xmlrpc_is_fault($array) {}

/**
 * @return array
 * @param  xml string
 * @desc   Decodes XML into a list of method descriptions 
 */
function xmlrpc_parse_method_descriptions($xml) {}

/**
 * @return int
 * @param  server resource
 * @param  desc array
 * @desc   Adds introspection documentation  
 */
function xmlrpc_server_add_introspection_data($server, $desc) {}

/**
 * @return mixed
 * @param  server resource
 * @param  xml string
 * @param  user_data mixed
 * @param  output_options array[optional]
 * @desc   Parses XML requests and call methods 
 */
function xmlrpc_server_call_method($server, $xml, $user_data, $output_options = null) {}

/**
 * @return resource
 * @desc   Creates an xmlrpc server 
 */
function xmlrpc_server_create() {}

/**
 * @return int
 * @param  server resource
 * @desc   Destroys server resources 
 */
function xmlrpc_server_destroy($server) {}

/**
 * @return bool
 * @param  server resource
 * @param  function string
 * @desc   Register a PHP function to generate documentation 
 */
function xmlrpc_server_register_introspection_callback($server, $function) {}

/**
 * @return bool
 * @param  server resource
 * @param  method_name string
 * @param  function string
 * @desc   Register a PHP function to handle method matching method_name 
 */
function xmlrpc_server_register_method($server, $method_name, $function) {}

/**
 * @return bool
 * @param  value string
 * @param  type string
 * @desc   Sets xmlrpc type, base64 or datetime, for a PHP string value 
 */
function xmlrpc_set_type($value, $type) {}

/**
 * @return xsl_
 * @param  namespace string
 * @param  name string
 * @desc   
 */
function xsl_xsltprocessor_get_parameter($namespace, $name) {}

/**
 * @return unknown
 * @desc   
 */
function xsl_xsltprocessor_has_exslt_support() {}

/**
 * @return xsl_xsltdocucument
 * @param  index node
 * @desc   
 */
function xsl_xsltprocessor_import_stylesheet($index) {}

/**
 * @return unknown
 * @desc   
 */
function xsl_xsltprocessor_register_php_functions() {}

/**
 * @return xsl_
 * @param  namespace string
 * @param  name string
 * @desc   
 */
function xsl_xsltprocessor_remove_parameter($namespace, $name) {}

/**
 * @return xsl_
 * @param  namespace string
 * @param  name string
 * @param  value string
 * @desc   
 */
function xsl_xsltprocessor_set_parameter($namespace, $name, $value) {}

/**
 * @return xsl_document
 * @param  doc node
 * @param  clone boolean[optional]
 * @desc   
 */
function xsl_xsltprocessor_transform_to_doc($doc, $clone = null) {}

/**
 * @return xsl_
 * @param  doc node
 * @param  uri string
 * @param  clone boolean[optional]
 * @desc   
 */
function xsl_xsltprocessor_transform_to_uri($doc, $uri, $clone = null) {}

/**
 * @return xsl_string
 * @param  doc node
 * @param  clone boolean[optional]
 * @desc   
 */
function xsl_xsltprocessor_transform_to_xml($doc, $clone = null) {}

/**
 * @return bool
 * @param  domain string
 * @param  map string
 * @param  callback string
 * @desc   Traverse the map and call a function on each entry 
 */
function yp_all($domain, $map, $callback) {}

/**
 * @return array
 * @param  domain string
 * @param  map string
 * @desc   Return an array containing the entire map 
 */
function yp_cat($domain, $map) {}

/**
 * @return string
 * @param  errorcode int
 * @desc   Returns the corresponding error string for the given error code 
 */
function yp_err_string($errorcode) {}

/**
 * @return int
 * @desc   Returns the error code from the last call or 0 if no error occured 
 */
function yp_errno() {}

/**
 * @return array
 * @param  domain string
 * @param  map string
 * @desc   Returns the first key as array with $var[$key] and the the line as the value 
 */
function yp_first($domain, $map) {}

/**
 * @return string
 * @desc   Returns the domain or false 
 */
function yp_get_default_domain() {}

/**
 * @return string
 * @param  domain string
 * @param  map string
 * @desc   Returns the machine name of the master 
 */
function yp_master($domain, $map) {}

/**
 * @return string
 * @param  domain string
 * @param  map string
 * @param  key string
 * @desc   Returns the matched line or false 
 */
function yp_match($domain, $map, $key) {}

/**
 * @return array
 * @param  domain string
 * @param  map string
 * @param  key string
 * @desc   Returns an array with $var[$key] and the the line as the value 
 */
function yp_next($domain, $map, $key) {}

/**
 * @return int
 * @param  domain string
 * @param  map string
 * @desc   Returns the order number or false 
 */
function yp_order($domain, $map) {}

/**
 * @return string
 * @desc   Returns the name of the current file being executed. 
 */
function zend_loader_current_file() {}

/**
 * @return boolean
 * @desc   Returns true if the Zend Optimizer is configured to load Zend-encoded files. 
 */
function zend_loader_enabled() {}

/**
 * @return boolean
 * @desc   Returns true if the current file is a Zend-encoded file. 
 */
function zend_loader_file_encoded() {}

/**
 * @return array
 * @desc   Returns license if the current file has a valid license, false otherwise 
 */
function zend_loader_file_licensed() {}

/**
 * @return boolean
 * @param  license_file string
 * @desc   Dynamically load a license for a Zend-encoded application 
 */
function zend_loader_install_license($license_file) {}

/**
 * @return string
 * @desc   Return the special ID used to request the Zend logo in phpinfo screens
 */
function zend_logo_guid() {}

/**
 * @return string
 * @desc   Get the version of the Zend Engine 
 */
function zend_version() {}

/**
 * @return string
 * @desc   Returns the coding type used for output compression 
 */
function zlib_get_coding_type() {}


class stdClass {
};

/**
 * @return resource
 * @param  connection_string string
 * @param  connect_type int
 * @desc   Open a PostgreSQL connection 
 */
function pg_connect($connection_string, $connect_type) {}

/**
 * @return resource
 * @param  host string
 * @param  port string
 * @param  options string[optional]
 * @param  tty string[optional]
 * @param  database string
 * @desc   Open a PostgreSQL connection 
 */
function pg_connect($host, $port, $options = null, $tty = null, $database) {}

class COMPersistHelper {
    /**
     * @return string
     * @desc   Determines the filename into which an object will be saved, or false if none is set, via IPersistFile::GetCurFile 
     */
    function GetCurFile() {}

    /**
     * @return bool
     * @param  filename string
     * @param  remember bool[optional]
     * @desc   Persist object data to file, via IPersistFile::Save 
     */
    function SaveToFile($filename, $remember = null) {}

    /**
     * @return bool
     * @param  filename string
     * @param  flags int[optional]
     * @desc   Load object data from file, via IPersistFile::Load 
     */
    function LoadFromFile($filename, $flags = null) {}

    /**
     * @return int
     * @desc   Gets maximum stream size required to store the object data, via IPersistStream::GetSizeMax (or IPersistStreamInit::GetSizeMax) 
     */
    function GetMaxStreamSize() {}

    /**
     * @return int
     * @desc   Initializes the object to a default state, via IPersistStreamInit::InitNew 
     */
    function InitNew() {}

    /**
     * @return mixed
     * @param  stream resource
     * @desc   Initializes an object from the stream where it was previously saved, via IPersistStream::Load or OleLoadFromStream 
     */
    function LoadFromStream($stream) {}

    /**
     * @return int
     * @param  stream resource
     * @desc   Saves the object to a stream, via IPersistStream::Save 
     */
    function SaveToStream($stream) {}

    /**
     * @return COMPersistHelper
     * @param  com_object object[optional]
     * @desc   Creates a persistence helper object, usually associated with a com_object 
     */
    function __construct($com_object = null) {}

};

class DOMAttr {
    /**
     * @return DOMAttr
     * @param  name string
     * @param  value string[optional]
     * @desc   
     */
    function __construct($name, $value = null) {}

    /**
     * @return boolean
     * @desc   
     */
    function isId() {}

};

class DOMCdataSection {
    /**
     * @return DOMCdataSection
     * @param  value string
     * @desc   
     */
    function __construct($value) {}

};

class DOMComment {
    /**
     * @return DOMComment
     * @param  value string[optional]
     * @desc   
     */
    function __construct($value = null) {}

};

class DOMDocument {
    /**
     * @return DOMDocument
     * @param  version string[optional]
     * @param  encoding string[optional]
     * @desc   
     */
    function __construct($version = null, $encoding = null) {}

    /**
     * @return DOMElement
     * @param  tagName string
     * @param  value string[optional]
     * @desc   
     */
    function createElement($tagName, $value = null) {}

    /**
     * @return DOMDocumentFragment
     * @desc   
     */
    function createDocumentFragment() {}

    /**
     * @return DOMText
     * @param  data string
     * @desc   
     */
    function createTextNode($data) {}

    /**
     * @return DOMComment
     * @param  data string
     * @desc   
     */
    function createComment($data) {}

    /**
     * @return DOMCdataSection
     * @param  data string
     * @desc   
     */
    function createCDATASection($data) {}

    /**
     * @return DOMProcessingInstruction
     * @param  target string
     * @param  data string
     * @desc   
     */
    function createProcessingInstruction($target, $data) {}

    /**
     * @return DOMAttr
     * @param  name string
     * @desc   
     */
    function createAttribute($name) {}

    /**
     * @return DOMEntityReference
     * @param  name string
     * @desc   
     */
    function createEntityReference($name) {}

    /**
     * @return DOMNodeList
     * @param  tagname string
     * @desc   
     */
    function getElementsByTagName($tagname) {}

    /**
     * @return DOMNode
     * @param  importedNode DOMNode
     * @param  deep boolean
     * @desc   
     */
    function importNode($importedNode, $deep) {}

    /**
     * @return DOMElement
     * @param  namespaceURI string
     * @param  qualifiedName string
     * @param  value string[optional]
     * @desc   
     */
    function createElementNS($namespaceURI, $qualifiedName, $value = null) {}

    /**
     * @return DOMAttr
     * @param  namespaceURI string
     * @param  qualifiedName string
     * @desc   
     */
    function createAttributeNS($namespaceURI, $qualifiedName) {}

    /**
     * @return DOMNodeList
     * @param  namespaceURI string
     * @param  localName string
     * @desc   
     */
    function getElementsByTagNameNS($namespaceURI, $localName) {}

    /**
     * @return DOMElement
     * @param  elementId string
     * @desc   
     */
    function getElementById($elementId) {}

    /**
     * @return DOMNode
     * @param  source DOMNode
     * @desc   
     */
    function adoptNode($source) {}

    /**
     * @return void
     * @desc   
     */
    function normalizeDocument() {}

    /**
     * @return DOMNode
     * @param  n node
     * @param  namespaceURI string
     * @param  qualifiedName string
     * @desc   
     */
    function renameNode($n, $namespaceURI, $qualifiedName) {}

    /**
     * @return long
     * @param  file string
     * @desc   
     */
    function save($file) {}

    /**
     * @return string
     * @param  n node[optional]
     * @desc   
     */
    function saveXML($n = null) {}

    /**
     * @return boolean
     * @desc   
     */
    function validate() {}

    /**
     * @return int
     * @desc   Substitutues xincludes in a DomDocument 
     */
    function xinclude() {}

    /**
     * @return string
     * @desc   
     */
    function saveHTML() {}

    /**
     * @return long
     * @param  file string
     * @desc   
     */
    function saveHTMLFile($file) {}

    /**
     * @return boolean
     * @param  filename string
     * @desc   
     */
    function schemaValidate($filename) {}

    /**
     * @return boolean
     * @param  filename string
     * @desc   
     */
    function relaxNGValidate($filename) {}

    /**
     * @return boolean
     * @param  source string
     * @desc   
     */
    function relaxNGValidateSource($source) {}

};

class DOMDocumentFragment {
    /**
     * @return DOMDocumentFragment
     * @desc   
     */
    function __construct() {}

};

class DOMElement {
    /**
     * @return DOMElement
     * @param  name string
     * @param  value string[optional]
     * @param  uri string[optional]
     * @desc   
     */
    function __construct($name, $value = null, $uri = null) {}

    /**
     * @return string
     * @param  name string
     * @desc   
     */
    function getAttribute($name) {}

    /**
     * @return void
     * @param  name string
     * @param  value string
     * @desc   
     */
    function setAttribute($name, $value) {}

    /**
     * @return void
     * @param  name string
     * @desc   
     */
    function removeAttribute($name) {}

    /**
     * @return DOMAttr
     * @param  name string
     * @desc   
     */
    function getAttributeNode($name) {}

    /**
     * @return DOMAttr
     * @param  newAttr DOMAttr
     * @desc   
     */
    function setAttributeNode($newAttr) {}

    /**
     * @return DOMAttr
     * @param  oldAttr DOMAttr
     * @desc   
     */
    function removeAttributeNode($oldAttr) {}

    /**
     * @return DOMNodeList
     * @param  name string
     * @desc   
     */
    function getElementsByTagName($name) {}

    /**
     * @return string
     * @param  namespaceURI string
     * @param  localName string
     * @desc   
     */
    function getAttributeNS($namespaceURI, $localName) {}

    /**
     * @return void
     * @param  namespaceURI string
     * @param  qualifiedName string
     * @param  value string
     * @desc   
     */
    function setAttributeNS($namespaceURI, $qualifiedName, $value) {}

    /**
     * @return void
     * @param  namespaceURI string
     * @param  localName string
     * @desc   
     */
    function removeAttributeNS($namespaceURI, $localName) {}

    /**
     * @return DOMAttr
     * @param  namespaceURI string
     * @param  localName string
     * @desc   
     */
    function getAttributeNodeNS($namespaceURI, $localName) {}

    /**
     * @return DOMAttr
     * @param  newAttr DOMAttr
     * @desc   
     */
    function setAttributeNodeNS($newAttr) {}

    /**
     * @return DOMNodeList
     * @param  namespaceURI string
     * @param  localName string
     * @desc   
     */
    function getElementsByTagNameNS($namespaceURI, $localName) {}

    /**
     * @return boolean
     * @param  name string
     * @desc   
     */
    function hasAttribute($name) {}

    /**
     * @return boolean
     * @param  namespaceURI string
     * @param  localName string
     * @desc   
     */
    function hasAttributeNS($namespaceURI, $localName) {}

    /**
     * @return void
     * @param  name string
     * @param  isId boolean
     * @desc   
     */
    function setIdAttribute($name, $isId) {}

    /**
     * @return void
     * @param  namespaceURI string
     * @param  localName string
     * @param  isId boolean
     * @desc   
     */
    function setIdAttributeNS($namespaceURI, $localName, $isId) {}

    /**
     * @return void
     * @param  idAttr attr
     * @param  isId boolean
     * @desc   
     */
    function setIdAttributeNode($idAttr, $isId) {}

};

class DOMEntityReference {
    /**
     * @return DOMEntityReference
     * @param  name string
     * @desc   
     */
    function __construct($name) {}

};

class DOMProcessingInstruction {
    /**
     * @return DOMProcessingInstruction
     * @param  name string
     * @param  value string[optional]
     * @desc   
     */
    function __construct($name, $value = null) {}

};

class DOMText {
    /**
     * @return DOMText
     * @param  value string[optional]
     * @desc   
     */
    function __construct($value = null) {}

    /**
     * @return DOMText
     * @param  offset int
     * @desc   
     */
    function splitText($offset) {}

    /**
     * @return boolean
     * @desc   
     */
    function isWhitespaceInElementContent() {}

    /**
     * @return DOMText
     * @param  content string
     * @desc   
     */
    function replaceWholeText($content) {}

};

class DOMXPath {
    /**
     * @return DOMXPath
     * @param  doc DOMDocument
     * @desc   
     */
    function __construct($doc) {}

};

class swfaction {
    /**
     * @return swfaction
     * @param  string
     * @desc   Returns a new SWFAction object, compiling the given script 
     */
    function __construct($string) {}

};

class swfbitmap {
    /**
     * @return swfbitmap
     * @param  file mixed
     * @param  maskfile mixed[optional]
     * @desc   Returns a new SWFBitmap object from jpg (with optional mask) or dbl file 
     */
    function __construct($file, $maskfile = null) {}

    /**
     * @return float
     * @desc   Returns the width of this bitmap 
     */
    function getWidth() {}

    /**
     * @return float
     * @desc   Returns the height of this bitmap 
     */
    function getHeight() {}

};

class swfbutton {
    /**
     * @return swfbutton
     * @desc   Returns a new SWFButton object 
     */
    function __construct() {}

    /**
     * @return void
     * @param  SWFCharacter object
     * @desc   Sets the character for this button's hit test state 
     */
    function setHit($SWFCharacter) {}

    /**
     * @return void
     * @param  SWFCharacter object
     * @desc   Sets the character for this button's over state 
     */
    function setOver($SWFCharacter) {}

    /**
     * @return void
     * @param  SWFCharacter object
     * @desc   Sets the character for this button's up state 
     */
    function setUp($SWFCharacter) {}

    /**
     * @return void
     * @param  SWFCharacter object
     * @desc   Sets the character for this button's down state 
     */
    function setDown($SWFCharacter) {}

    /**
     * @return void
     * @param  SWFCharacter object
     * @param  flags int
     * @desc   Sets the character to display for the condition described in flags 
     */
    function addShape($SWFCharacter, $flags) {}

    /**
     * @return void
     * @param  flag int
     * @desc   enable track as menu button behaviour 
     */
    function setMenu($flag) {}

    /**
     * @return void
     * @param  SWFAction object
     * @desc   Sets the action to perform when button is pressed 
     */
    function setAction($SWFAction) {}

    /**
     * @return SWFSoundInstance
     * @param  sound SWFSound
     * @param  flags int
     * @desc   
     */
    function addASound($sound, $flags) {}

    /**
     * @return void
     * @param  SWFAction object
     * @param  flags int
     * @desc   Sets the action to perform when conditions described in flags is met 
     */
    function addAction($SWFAction, $flags) {}

};

class swfdisplayitem {
    /**
     * @return void
     * @param  x int
     * @param  y int
     * @desc   Moves this SWFDisplayItem to movie coordinates (x, y) 
     */
    function moveTo($x, $y) {}

    /**
     * @return void
     * @param  dx float
     * @param  dy float
     * @desc   Displaces this SWFDisplayItem by (dx, dy) in movie coordinates 
     */
    function move($dx, $dy) {}

    /**
     * @return void
     * @param  xScale float
     * @param  yScale float[optional]
     * @desc   Scales this SWFDisplayItem by xScale in the x direction, yScale in the y, or both to xScale if only one arg 
     */
    function scaleTo($xScale, $yScale = null) {}

    /**
     * @return void
     * @param  xScale float
     * @param  yScale float
     * @desc   Multiplies this SWFDisplayItem's current x scale by xScale, its y scale by yScale 
     */
    function scale($xScale, $yScale) {}

    /**
     * @return void
     * @param  degrees float
     * @desc   Rotates this SWFDisplayItem the given (clockwise) degrees from its original orientation 
     */
    function rotateTo($degrees) {}

    /**
     * @return void
     * @param  degrees float
     * @desc   Rotates this SWFDisplayItem the given (clockwise) degrees from its current orientation 
     */
    function rotate($degrees) {}

    /**
     * @return void
     * @param  xSkew float
     * @desc   Sets this SWFDisplayItem's x skew value to xSkew 
     */
    function skewXTo($xSkew) {}

    /**
     * @return void
     * @param  xSkew float
     * @desc   Adds xSkew to this SWFDisplayItem's x skew value 
     */
    function skewX($xSkew) {}

    /**
     * @return void
     * @param  ySkew float
     * @desc   Sets this SWFDisplayItem's y skew value to ySkew 
     */
    function skewYTo($ySkew) {}

    /**
     * @return void
     * @param  ySkew float
     * @desc   Adds ySkew to this SWFDisplayItem's y skew value 
     */
    function skewY($ySkew) {}

    /**
     * @return void
     * @param  a float
     * @param  b float
     * @param  c float
     * @param  d float
     * @param  x float
     * @param  y float
     * @desc   Sets the item's transform matrix 
     */
    function setMatrix($a, $b, $c, $d, $x, $y) {}

    /**
     * @return void
     * @param  depth int
     * @desc   Sets this SWFDisplayItem's z-depth to depth.  Items with higher depth values are drawn on top of those with lower values 
     */
    function setDepth($depth) {}

    /**
     * @return void
     * @param  ratio float
     * @desc   Sets this SWFDisplayItem's ratio to ratio.  Obviously only does anything if displayitem was created from an SWFMorph 
     */
    function setRatio($ratio) {}

    /**
     * @return void
     * @param  r int
     * @param  g int
     * @param  b int
     * @param  a int[optional]
     * @desc   Sets the add color part of this SWFDisplayItem's CXform to (r, g, b [, a]), a defaults to 0 
     */
    function addColor($r, $g, $b, $a = null) {}

    /**
     * @return void
     * @param  r float
     * @param  g float
     * @param  b float
     * @param  a float[optional]
     * @desc   Sets the multiply color part of this SWFDisplayItem's CXform to (r, g, b [, a]), a defaults to 1.0 
     */
    function multColor($r, $g, $b, $a = null) {}

    /**
     * @return void
     * @param  name string
     * @desc   Sets this SWFDisplayItem's name to name 
     */
    function setName($name) {}

    /**
     * @return void
     * @param  SWFAction object
     * @param  flags int
     * @desc   Adds this SWFAction to the given SWFSprite instance 
     */
    function addAction($SWFAction, $flags) {}

    /**
     * @return void
     * @param  level int
     * @desc   defines a MASK layer at level 
     */
    function setMaskLevel($level) {}

    /**
     * @return void
     * @desc   another way of defining a MASK layer 
     */
    function endMask() {}

};

class swffill {
    /**
     * @return swffill
     * @desc   Returns a new SWFFill object 
     */
    function __construct() {}

    /**
     * @return void
     * @param  x float
     * @param  y float
     * @desc   Moves this SWFFill to shape coordinates (x,y) 
     */
    function moveTo($x, $y) {}

    /**
     * @return void
     * @param  xScale float
     * @param  yScale float[optional]
     * @desc   Scales this SWFFill by xScale in the x direction, yScale in the y, or both to xScale if only one arg 
     */
    function scaleTo($xScale, $yScale = null) {}

    /**
     * @return void
     * @param  degrees float
     * @desc   Rotates this SWFFill the given (clockwise) degrees from its original orientation 
     */
    function rotateTo($degrees) {}

    /**
     * @return void
     * @param  xSkew float
     * @desc   Sets this SWFFill's x skew value to xSkew 
     */
    function skewXTo($xSkew) {}

    /**
     * @return void
     * @param  ySkew float
     * @desc   Sets this SWFFill's y skew value to ySkew 
     */
    function skewYTo($ySkew) {}

};

class swffontcha {
    /**
     * @return void
     * @param  string
     * @desc   adds characters to a font for exporting font 
     */
    function raddChars($string) {}

};

class swffontchar {
    /**
     * @return void
     * @param  string
     * @desc   adds characters to a font for exporting font 
     */
    function addChars($string) {}

};

class swffont {
    /**
     * @return swffont
     * @param  filename string
     * @desc   Returns a new SWFFont object from given file 
     */
    function __construct($filename) {}

    /**
     * @return float
     * @param  str string
     * @desc   Calculates the width of the given string in this font at full height 
     */
    function getWidth($str) {}

    /**
     * @return int
     * @param  string
     * @desc   Calculates the width of the given string in this font at full height 
     */
    function getUTF8Width($string) {}

    /**
     * @return int
     * @param  string
     * @desc   Calculates the width of the given string in this font at full height 
     */
    function getWideWidth($string) {}

    /**
     * @return float
     * @desc   Returns the ascent of the font, or 0 if not available 
     */
    function getAscent() {}

    /**
     * @return float
     * @desc   Returns the descent of the font, or 0 if not available 
     */
    function getDescent() {}

    /**
     * @return float
     * @desc   Returns the leading of the font, or 0 if not available 
     */
    function getLeading() {}

    /**
     * @return void
     * @param  string
     * @desc   adds characters to a font required within textfields 
     */
    function addChars($string) {}

    /**
     * @return string
     * @param  code
     * @desc   Returns the glyph shape of a char as a text string 
     */
    function getShape($code) {}

};

class swfgradient {
    /**
     * @return swfgradient
     * @desc   Returns a new SWFGradient object 
     */
    function __construct() {}

    /**
     * @return void
     * @param  ratio float
     * @param  r int
     * @param  g int
     * @param  b int
     * @param  a int[optional]
     * @desc   Adds given entry to the gradient 
     */
    function addEntry($ratio, $r, $g, $b, $a = null) {}

};

class swfmorph {
    /**
     * @return swfmorph
     * @desc   Returns a new SWFMorph object 
     */
    function __construct() {}

    /**
     * @return object
     * @desc   Return's this SWFMorph's start shape object 
     */
    function getShape1() {}

    /**
     * @return object
     * @desc   Return's this SWFMorph's start shape object 
     */
    function getShape2() {}

};

class swfsound {
    /**
     * @return swfsound
     * @param  filename string
     * @param  flags int
     * @desc   Returns a new SWFSound object from given file 
     */
    function __construct($filename, $flags) {}

};

class swfmovie {
    /**
     * @return swfmovie
     * @param  version int
     * @desc   Creates swfmovie object according to the passed version 
     */
    function __construct($version) {}

    /**
     * @return void
     * @desc   
     */
    function nextframe() {}

    /**
     * @return void
     * @param  SWFBlock object
     * @desc   
     */
    function labelframe($SWFBlock) {}

    /**
     * @return object
     * @param  SWFBlock object
     * @desc   
     */
    function add($SWFBlock) {}

    /**
     * @return int
     * @param  compression int[optional]
     * @desc   
     */
    function output($compression = null) {}

    /**
     * @return int
     * @param  x stream
     * @param  compression int[optional]
     * @desc   
     */
    function saveToFile($x, $compression = null) {}

    /**
     * @return int
     * @param  where mixed
     * @param  compression int[optional]
     * @desc   Saves the movie. 'where' can be stream and the movie will be saved there otherwise it is treated as string and written in file with that name 
     */
    function save($where, $compression = null) {}

    /**
     * @return void
     * @param  r int
     * @param  g int
     * @param  b int
     * @desc   Sets background color (r,g,b) 
     */
    function setBackground($r, $g, $b) {}

    /**
     * @return void
     * @param  rate float
     * @desc   Sets movie rate 
     */
    function setRate($rate) {}

    /**
     * @return void
     * @param  x float
     * @param  y float
     * @desc   Sets movie dimension 
     */
    function setDimension($x, $y) {}

    /**
     * @return void
     * @param  frames int
     * @desc   Sets number of frames 
     */
    function setFrames($frames) {}

    /**
     * @return void
     * @param  file mixed
     * @desc   Sets sound stream of the SWF movie. The parameter can be stream or string. 
     */
    function streamMP3($file) {}

};

class swfshape {
    /**
     * @return swfshape
     * @desc   Returns a new SWFShape object 
     */
    function __construct() {}

    /**
     * @return void
     * @param  width int
     * @param  r int
     * @param  g int
     * @param  b int
     * @param  a int[optional]
     * @desc   Sets the current line style for this SWFShape 
     */
    function setline($width, $r, $g, $b, $a = null) {}

    /**
     * @return object
     * @param  arg1 mixed
     * @param  arg2 int
     * @param  b int[optional]
     * @param  a int[optional]
     * @desc   Returns a fill object, for use with swfshape_setleftfill and swfshape_setrightfill. If 1 or 2 parameter(s) is (are) passed first should be object (from gradient class) and the second int (flags). Gradient fill is performed. If 3 or 4 parameters are passed : r, g, b [, a]. Solid fill is performed. 
     */
    function addfill($arg1, $arg2, $b = null, $a = null) {}

    /**
     * @return void
     * @param  arg1 int
     * @param  g int[optional]
     * @param  b int
     * @param  a int[optional]
     * @desc   Sets the right side fill style to fill in case only one parameter is passed. When 3 or 4 parameters are passed they are treated as : int r, int g, int b, int a . Solid fill is performed in this case before setting right side fill type. 
     */
    function setleftfill($arg1, $g = null, $b, $a = null) {}

    /**
     * @return void
     * @param  x float
     * @param  y float
     * @desc   Moves the pen to shape coordinates (x, y) 
     */
    function movepento($x, $y) {}

    /**
     * @return void
     * @param  x float
     * @param  y float
     * @desc   Moves the pen from its current location by vector (x, y) 
     */
    function movepen($x, $y) {}

    /**
     * @return void
     * @param  x float
     * @param  y float
     * @desc   Draws a line from the current pen position to shape coordinates (x, y) in the current line style 
     */
    function drawlineto($x, $y) {}

    /**
     * @return void
     * @param  dx float
     * @param  dy float
     * @desc   Draws a line from the current pen position (x, y) to the point (x+dx, y+dy) in the current line style 
     */
    function drawline($dx, $dy) {}

    /**
     * @return void
     * @param  ax float
     * @param  ay float
     * @param  bx float
     * @param  by float
     * @param  dx float[optional]
     * @param  dy float
     * @desc   Draws a curve from the current pen position (x,y) to the point (bx, by) in the current line style, using point (ax, ay) as a control point. Or draws a cubic bezier to point (dx, dy) with control points (ax, ay) and (bx, by) 
     */
    function drawcurveto($ax, $ay, $bx, $by, $dx = null, $dy) {}

    /**
     * @return void
     * @param  adx float
     * @param  ady float
     * @param  bdx float
     * @param  bdy float
     * @param  cdx float[optional]
     * @param  cdy float
     * @desc   Draws a curve from the current pen position (x, y) to the point (x+bdx, y+bdy) in the current line style, using point (x+adx, y+ady) as a control point or draws a cubic bezier to point (x+cdx, x+cdy) with control points (x+adx, y+ady) and (x+bdx, y+bdy) 
     */
    function drawcurve($adx, $ady, $bdx, $bdy, $cdx = null, $cdy) {}

    /**
     * @return void
     * @param  font SWFFont
     * @param  character string
     * @param  size int[optional]
     * @desc   Draws the first character in the given string into the shape using the glyph definition from the given font 
     */
    function drawglyph($font, $character, $size = null) {}

    /**
     * @return void
     * @param  r float
     * @desc   Draws a circle of radius r centered at the current location, in a counter-clockwise fashion 
     */
    function drawcircle($r) {}

    /**
     * @return void
     * @param  r float
     * @param  startAngle float
     * @param  endAngle float
     * @desc   Draws an arc of radius r centered at the current location, from angle startAngle to angle endAngle measured counterclockwise from 12 o'clock 
     */
    function drawarc($r, $startAngle, $endAngle) {}

    /**
     * @return void
     * @param  bx float
     * @param  by float
     * @param  cx float
     * @param  cy float
     * @param  dx float
     * @param  dy float
     * @desc   Draws a cubic bezier curve using the current position and the three given points as control points 
     */
    function drawcubic($bx, $by, $cx, $cy, $dx, $dy) {}

};

class swfsprite {
    /**
     * @return swfsprite
     * @desc   Returns a new SWFSprite object 
     */
    function __construct() {}

    /**
     * @return object
     * @param  SWFCharacter object
     * @desc   Adds the character to the sprite, returns a displayitem object 
     */
    function add($SWFCharacter) {}

    /**
     * @return void
     * @param  SWFDisplayItem object
     * @desc   Remove the named character from the sprite's display list 
     */
    function remove($SWFDisplayItem) {}

    /**
     * @return void
     * @desc   Moves the sprite to the next frame 
     */
    function nextFrame() {}

    /**
     * @return void
     * @param  label string
     * @desc   Labels frame 
     */
    function labelFrame($label) {}

    /**
     * @return void
     * @param  frames int
     * @desc   Sets the number of frames in this SWFSprite 
     */
    function setFrames($frames) {}

};

class swftext {
    /**
     * @return swftext
     * @desc   Returns new SWFText object 
     */
    function __construct() {}

    /**
     * @return void
     * @param  font object
     * @desc   Sets this SWFText object's current font to given font 
     */
    function setFont($font) {}

    /**
     * @return void
     * @param  height float
     * @desc   Sets this SWFText object's current height to given height 
     */
    function setHeight($height) {}

    /**
     * @return void
     * @param  spacing float
     * @desc   Sets this SWFText object's current letterspacing to given spacing 
     */
    function setSpacing($spacing) {}

    /**
     * @return void
     * @param  r int
     * @param  g int
     * @param  b int
     * @param  a int[optional]
     * @desc   Sets this SWFText object's current color to the given color 
     */
    function setColor($r, $g, $b, $a = null) {}

    /**
     * @return void
     * @param  x float
     * @param  y float
     * @desc   Moves this SWFText object's current pen position to (x, y) in text coordinates 
     */
    function moveTo($x, $y) {}

    /**
     * @return void
     * @param  text string
     * @desc   Writes the given text into this SWFText object at the current pen position, using the current font, height, spacing, and color 
     */
    function addString($text) {}

    /**
     * @return void
     * @param  text string
     * @desc   
     */
    function addUTF8String($text) {}

    /**
     * @return void
     * @param  text string
     * @desc   
     */
    function addWideString($text) {}

    /**
     * @return float
     * @param  str string
     * @desc   Calculates the width of the given string in this text objects current font and size 
     */
    function getWidth($str) {}

    /**
     * @return double
     * @param  string
     * @desc   calculates the width of the given string in this text objects current font and size 
     */
    function getUTF8Width($string) {}

    /**
     * @return double
     * @param  string
     * @desc   calculates the width of the given string in this text objects current font and size 
     */
    function getWideWidth($string) {}

    /**
     * @return float
     * @desc   Returns the ascent of the current font at its current size, or 0 if not available 
     */
    function getAscent() {}

    /**
     * @return float
     * @desc   Returns the descent of the current font at its current size, or 0 if not available 
     */
    function getDescent() {}

    /**
     * @return float
     * @desc   Returns the leading of the current font at its current size, or 0 if not available 
     */
    function getLeading() {}

};

class swftextfield {
    /**
     * @return swftextfield
     * @param  flags int[optional]
     * @desc   Returns a new SWFTextField object 
     */
    function __construct($flags = null) {}

    /**
     * @return void
     * @param  font object
     * @desc   Sets the font for this textfield 
     */
    function setFont($font) {}

    /**
     * @return void
     * @param  width float
     * @param  height float
     * @desc   Sets the width and height of this textfield 
     */
    function setBounds($width, $height) {}

    /**
     * @return void
     * @param  alignment int
     * @desc   Sets the alignment of this textfield 
     */
    function align($alignment) {}

    /**
     * @return void
     * @param  height float
     * @desc   Sets the font height of this textfield 
     */
    function setHeight($height) {}

    /**
     * @return void
     * @param  margin float
     * @desc   Sets the left margin of this textfield 
     */
    function setLeftMargin($margin) {}

    /**
     * @return void
     * @param  margin float
     * @desc   Sets the right margin of this textfield 
     */
    function setRightMargin($margin) {}

    /**
     * @return void
     * @param  left float
     * @param  right float
     * @desc   Sets both margins of this textfield 
     */
    function setMargins($left, $right) {}

    /**
     * @return void
     * @param  indentation float
     * @desc   Sets the indentation of the first line of this textfield 
     */
    function setIndentation($indentation) {}

    /**
     * @return void
     * @param  space float
     * @desc   Sets the line spacing of this textfield 
     */
    function setLineSpacing($space) {}

    /**
     * @return void
     * @param  r int
     * @param  g int
     * @param  b int
     * @param  a int[optional]
     * @desc   Sets the color of this textfield 
     */
    function setColor($r, $g, $b, $a = null) {}

    /**
     * @return void
     * @param  var_name string
     * @desc   Sets the variable name of this textfield 
     */
    function setName($var_name) {}

    /**
     * @return void
     * @param  str string
     * @desc   Adds the given string to this textfield 
     */
    function addString($str) {}

    /**
     * @return void
     * @param  padding float
     * @desc   Sets the padding of this textfield 
     */
    function setPadding($padding) {}

    /**
     * @return void
     * @param  string
     * @desc   adds characters to a font that will be available within a textfield 
     */
    function addChars($string) {}

};

class SimpleXMLElement {
    /**
     * @return string
     * @param  filename string[optional]
     * @desc   Return a well-formed XML string based on SimpleXML element 
     */
    function asXML($filename = null) {}

    /**
     * @return object
     * @desc   Finds children of given node 
     */
    function children() {}

    /**
     * @return array
     * @param  ns string[optional]
     * @desc   Identifies an element's attributes 
     */
    function attributes($ns = null) {}

    /**
     * @return SimpleXMLElement
     * @desc   SimpleXMLElement constructor 
     */
    function __construct() {}

};

class SoapParam {
    /**
     * @return object
     * @param  data mixed
     * @param  name string
     * @desc   SoapParam constructor 
     */
    function SoapParam ($data, $name) {}

};

class SoapHeader {
    /**
     * @return object
     * @param  namespace string
     * @param  name string
     * @param  data mixed[optional]
     * @param  mustUnderstand bool[optional]
     * @param  actor mixed[optional]
     * @desc   SoapHeader constructor 
     */
    function SoapHeader ($namespace, $name, $data = null, $mustUnderstand = null, $actor = null) {}

};

class SoapFault {
    /**
     * @return object
     * @param  faultcode string
     * @param  faultstring string
     * @param  faultactor string[optional]
     * @param  detail mixed[optional]
     * @param  faultname string[optional]
     * @param  headerfault mixed[optional]
     * @desc   SoapFault constructor 
     */
    function SoapFault ($faultcode, $faultstring, $faultactor = null, $detail = null, $faultname = null, $headerfault = null) {}

};

class SoapVar {
    /**
     * @return object
     * @param  data mixed
     * @param  encoding int
     * @param  type_name string[optional]
     * @param  type_namespace string[optional]
     * @param  node_name string[optional]
     * @param  node_namespace string[optional]
     * @desc   SoapVar constructor 
     */
    function SoapVar ($data, $encoding, $type_name = null, $type_namespace = null, $node_name = null, $node_namespace = null) {}

};

class SoapServer {
    /**
     * @return object
     * @param  wsdl mixed
     * @param  options array[optional]
     * @desc   Sets persistence mode of SoapServer 
     */
    function SoapServer ($wsdl, $options = null) {}

    /**
     * @return void
     * @param  class_name string
     * @param  args mixed[optional]
     * @desc   Sets class which will handle SOAP requests 
     */
    function setClass($class_name, $args = null) {}

    /**
     * @return array
     * @desc   Returns list of defined functions 
     */
    function getFunctions() {}

    /**
     * @return void
     * @param  functions mixed
     * @desc   Adds one or several functions those will handle SOAP requests 
     */
    function addFunction($functions) {}

    /**
     * @return void
     * @param  soap_request string[optional]
     * @desc   Handles a SOAP request 
     */
    function handle ($soap_request = null) {}

};

class SoapClient {
    /**
     * @return object
     * @param  wsdl mixed
     * @param  options array[optional]
     * @desc   SoapClient constructor 
     */
    function SoapClient ($wsdl, $options = null) {}

    /**
     * @return mixed
     * @param  function_name string
     * @param  arguments array[optional]
     * @param  options array[optional]
     * @param  input_headers array[optional]
     * @param  output_headers array[optional]
     * @desc   Calls a SOAP function 
     */
    function __call ($function_name, $arguments = null, $options = null, $input_headers = null, $output_headers = null) {}

    /**
     * @return array
     * @desc   Returns list of SOAP functions 
     */
    function __getFunctions () {}

    /**
     * @return array
     * @desc   Returns list of SOAP types 
     */
    function __getTypes () {}

    /**
     * @return string
     * @desc   Returns last SOAP request 
     */
    function __getLastRequest () {}

    /**
     * @return object
     * @desc   Returns last SOAP response 
     */
    function __getLastResponse () {}

    /**
     * @return string
     * @desc   Returns last SOAP request headers 
     */
    function __getLastRequestHeaders() {}

    /**
     * @return string
     * @desc   Returns last SOAP response headers 
     */
    function __getLastResponseHeaders() {}

    /**
     * @return string
     * @desc   SoapClient::__doRequest() 
     */
    function __doRequest() {}

};

class ArrayObject {
    /**
     * @return bool
     * @param  $index mixed
     * @desc   
     */
    function offsetExists($index) {}

    /**
     * @return bool
     * @param  $index mixed
     * @desc   
     */
    function offsetGet($index) {}

    /**
     * @return void
     * @param  $index mixed
     * @param  $newval mixed
     * @desc   
     */
    function offsetSet($index, $newval) {}

    /**
     * @return void
     * @param  $newval mixed
     * @desc   
     */
    function append($newval) {}

    /**
     * @return void
     * @param  $index mixed
     * @desc   
     */
    function offsetUnset($index) {}

    /**
     * @return ArrayObject
     * @param  ar array|object[optional]
     * @desc   
     */
    function __construct($ar = array()) {}

    /**
     * @return ArrayIterator
     * @desc   Create a new iterator from a ArrayObject instance 
     */
    function getIterator() {}

    /**
     * @return int
     * @desc   
     */
    function count() {}

};

class ArrayIterator {
    /**
     * @return void
     * @desc   Rewind array back to the start 
     */
    function rewind() {}

    /**
     * @return void
     * @param  $position int
     * @desc   Seek to position. 
     */
    function seek($position) {}

    /**
     * @return mixed|NULL
     * @desc   Return current array entry 
     */
    function current() {}

    /**
     * @return mixed|NULL
     * @desc   Return current array key 
     */
    function key() {}

    /**
     * @return void
     * @desc   Move to next entry 
     */
    function next() {}

    /**
     * @return bool
     * @desc   Check whether array contains more entries 
     */
    function valid() {}

};

class DirectoryIterator {
    /**
     * @return DirectoryIterator
     * @param  path string
     * @desc   Cronstructs a new dir iterator from a path. 
     */
    function __construct($path) {}

    /**
     * @return void
     * @desc   Rewind dir back to the start 
     */
    function rewind() {}

    /**
     * @return string
     * @desc   Return current dir entry 
     */
    function key() {}

    /**
     * @return DirectoryIterator
     * @desc   Return this (needed for Iterator interface) 
     */
    function current() {}

    /**
     * @return void
     * @desc   Move to next entry 
     */
    function next() {}

    /**
     * @return string
     * @desc   Check whether dir contains more entries 
     */
    function valid() {}

    /**
     * @return string
     * @desc   Return directory path 
     */
    function getPath() {}

    /**
     * @return string
     * @desc   Return filename of current dir entry 
     */
    function getFilename() {}

    /**
     * @return string
     * @desc   Return path and filename of current dir entry 
     */
    function getPathname() {}

    /**
     * @return bool
     * @desc   Returns true if current entry is '.' or  '..' 
     */
    function isDot() {}

    /**
     * @return int
     * @desc   Get file permissions 
     */
    function filePerms() {}

    /**
     * @return int
     * @desc   Get file inode 
     */
    function fileInode() {}

    /**
     * @return int
     * @desc   Get file size 
     */
    function fileSize() {}

    /**
     * @return int
     * @desc   Get file owner 
     */
    function fileOwner() {}

    /**
     * @return int
     * @desc   Get file group 
     */
    function fileGroup() {}

    /**
     * @return int
     * @desc   Get last access time of file 
     */
    function fileATime() {}

    /**
     * @return int
     * @desc   Get last modification time of file 
     */
    function fileMTime() {}

    /**
     * @return int
     * @desc   Get inode modification time of file 
     */
    function fileCTime() {}

    /**
     * @return string
     * @desc   Get file type 
     */
    function fileType() {}

    /**
     * @return bool
     * @desc   Returns true if file can be written 
     */
    function isWritable() {}

    /**
     * @return bool
     * @desc   Returns true if file can be read 
     */
    function isReadable() {}

    /**
     * @return bool
     * @desc   Returns true if file is executable 
     */
    function isExecutable() {}

    /**
     * @return bool
     * @desc   Returns true if file is a regular file 
     */
    function isFile() {}

    /**
     * @return bool
     * @desc   Returns true if file is directory 
     */
    function isDir() {}

    /**
     * @return bool
     * @desc   Returns true if file is symbolic link 
     */
    function isLink() {}

    /**
     * @return RecursiveDirectoryIterator
     * @desc   Returns an iterator fo rthe current entry if it is a directory 
     */
    function getChildren() {}

};

class RecursiveDirectoryIterator {
    /**
     * @return string
     * @desc   Return path and filename of current dir entry 
     */
    function key() {}

    /**
     * @return void
     * @desc   Rewind dir back to the start 
     */
    function rewind() {}

    /**
     * @return void
     * @desc   Move to next entry 
     */
    function next() {}

    /**
     * @return bool
     * @param  $allow_links bool[optional]
     * @desc   Returns whether current entry is a directory and not '.' or '..' 
     */
    function hasChildren($allow_links = false) {}

};

class RecursiveIteratorIterator {
    /**
     * @return RecursiveIteratorIterator
     * @param  $it RecursiveIterator
     * @desc   Creates a RecursiveIteratorIterator from a RecursiveIterator. 
     */
    function __construct($it) {}

    /**
     * @return void
     * @desc   Rewind the iterator to the first element of the top level inner iterator. 
     */
    function rewind() {}

    /**
     * @return bolean
     * @desc   Check whether the current position is valid 
     */
    function valid() {}

    /**
     * @return mixed
     * @desc   Access the current key 
     */
    function key() {}

    /**
     * @return mixed
     * @desc   Access the current element value 
     */
    function current() {}

    /**
     * @return void
     * @desc   Move forward to the next element 
     */
    function next() {}

    /**
     * @return int
     * @desc   Get the current depth of the recursive iteration 
     */
    function getDepth() {}

    /**
     * @return RecursiveIterator
     * @desc   The current active sub iterator 
     */
    function getSubIterator() {}

};

class FilterIterator {
    /**
     * @return FilterIterator
     * @param  $it Iterator
     * @desc   Create an Iterator from another iterator 
     */
    function __construct($it) {}

    /**
     * @return Iterator
     * @desc   
     */
    function getInnerIterator() {}

    /**
     * @return boolean
     * @desc   
     */
    function valid() {}

    /**
     * @return mixed
     * @desc   
     */
    function key() {}

    /**
     * @return mixed
     * @desc   
     */
    function current() {}

    /**
     * @return void
     * @desc   Rewind the iterator 
     */
    function rewind() {}

    /**
     * @return void
     * @desc   Move the iterator forward 
     */
    function next() {}

};

class ParentIterator {
    /**
     * @return void
     * @desc   
     */
    function rewind() {}

    /**
     * @return void
     * @desc   Move the iterator forward 
     */
    function next() {}

    /**
     * @return ParentIterator
     * @param  $it RecursiveIterator
     * @desc   Create a ParentIterator from a RecursiveIterator 
     */
    function __construct($it) {}

    /**
     * @return boolean
     * @desc   Check whether the inner iterator's current element has children 
     */
    function hasChildren() {}

    /**
     * @return ParentIterator
     * @desc   Return the inner iterator's children contained in a ParentIterator 
     */
    function getChildren() {}

};

class LimitIterator {
    /**
     * @return LimitIterator
     * @param  $it Iterator
     * @param  $offset int[optional]
     * @param  $count int
     * @desc   Construct a LimitIterator from an Iterator with a given starting offset and optionally a maximum count 
     */
    function __construct($it, $offset = null, $count) {}

    /**
     * @return void
     * @desc   Rewind the iterator to the specified starting offset 
     */
    function rewind() {}

    /**
     * @return boolean
     * @desc   Check whether the current element is valid 
     */
    function valid() {}

    /**
     * @return void
     * @desc   Move the iterator forward 
     */
    function next() {}

    /**
     * @return void
     * @param  $position int
     * @desc   Seek to the given position 
     */
    function seek($position) {}

    /**
     * @return int
     * @desc   Return the current position 
     */
    function getPosition() {}

};

class CachingIterator {
    /**
     * @return CachingIterator
     * @param  $it Iterator
     * @desc   Construct a CachingIterator from an Iterator 
     */
    function __construct($it) {}

    /**
     * @return void
     * @desc   Rewind the iterator 
     */
    function rewind() {}

    /**
     * @return boolean
     * @desc   Check whether the current element is valid 
     */
    function valid() {}

    /**
     * @return void
     * @desc   Move the iterator forward 
     */
    function next() {}

    /**
     * @return boolean
     * @desc   Cehck whether the inner iterator has a valid next element 
     */
    function hasNext() {}

    /**
     * @return string
     * @desc   Retrun the string representation of the current element 
     */
    function __toString() {}

};

class CachingRecursiveIterator {
    /**
     * @return CachingRecursiveIterator
     * @param  $it RecursiveIterator
     * @desc   Create an iterator from a RecursiveIterator 
     */
    function __construct($it) {}

    /**
     * @return bolean
     * @desc   Cehck whether the current element of the inner iterator has children 
     */
    function hasChildren() {}

    /**
     * @return CachingRecursiveIterator
     * @desc   Return the inenr iteraor's children as a CachingRecursiveIterator 
     */
    function getChildren() {}

};

class tidyNode {
    /**
     * @return unknown
     * @desc   Constructor. 
     */
    function tidyNode() {}

    /**
     * @return boolean
     * @desc   Returns true if this node has children 
     */
    function hasChildren() {}

    /**
     * @return boolean
     * @desc   Returns true if this node has siblings 
     */
    function hasSiblings() {}

    /**
     * @return boolean
     * @desc   Returns true if this node represents a comment 
     */
    function isComment() {}

    /**
     * @return boolean
     * @desc   Returns true if this node is part of a HTML document 
     */
    function isHtml() {}

    /**
     * @return boolean
     * @desc   Returns true if this node is part of a XHTML document 
     */
    function isXhtml() {}

    /**
     * @return boolean
     * @desc   Returns true if this node is part of a XML document 
     */
    function isXml() {}

    /**
     * @return boolean
     * @desc   Returns true if this node represents text (no markup) 
     */
    function isText() {}

    /**
     * @return boolean
     * @desc   Returns true if this node is JSTE 
     */
    function isJste() {}

    /**
     * @return boolean
     * @desc   Returns true if this node is ASP 
     */
    function isAsp() {}

    /**
     * @return boolean
     * @desc   Returns true if this node is PHP 
     */
    function isPhp() {}

};

class ApacheRequest {
    /**
     * @return string
     * @param  new_filename string[optional]
     * @desc   
     */
    function filename($new_filename = null) {}

    /**
     * @return string
     * @param  new_uri string[optional]
     * @desc   
     */
    function uri($new_uri = null) {}

    /**
     * @return string
     * @param  new_unparsed_uri string[optional]
     * @desc   
     */
    function unparsed_uri($new_unparsed_uri = null) {}

    /**
     * @return string
     * @param  new_path_info string[optional]
     * @desc   
     */
    function path_info($new_path_info = null) {}

    /**
     * @return string
     * @param  new_args string[optional]
     * @desc   
     */
    function args($new_args = null) {}

    /**
     * @return string
     * @desc   
     */
    function boundary() {}

    /**
     * @return string
     * @param  new_type string[optional]
     * @desc   
     */
    function content_type($new_type = null) {}

    /**
     * @return string
     * @param  new_encoding string[optional]
     * @desc   
     */
    function content_encoding($new_encoding = null) {}

    /**
     * @return string
     * @param  new_handler string[optional]
     * @desc   
     */
    function handler($new_handler = null) {}

    /**
     * @return string
     * @desc   
     */
    function the_request() {}

    /**
     * @return string
     * @desc   
     */
    function protocol() {}

    /**
     * @return string
     * @desc   
     */
    function hostname() {}

    /**
     * @return string
     * @param  new_status_line string[optional]
     * @desc   
     */
    function status_line($new_status_line = null) {}

    /**
     * @return string
     * @desc   
     */
    function method() {}

    /**
     * @return int
     * @desc   
     */
    function proto_num() {}

    /**
     * @return int
     * @desc   
     */
    function assbackwards() {}

    /**
     * @return int
     * @param  new_proxyreq int[optional]
     * @desc   
     */
    function proxyreq($new_proxyreq = null) {}

    /**
     * @return int
     * @desc   
     */
    function chunked() {}

    /**
     * @return int
     * @desc   
     */
    function header_only() {}

    /**
     * @return int
     * @desc   
     */
    function request_time() {}

    /**
     * @return int
     * @param  new_status int[optional]
     * @desc   
     */
    function status($new_status = null) {}

    /**
     * @return int
     * @param  method_number int[optional]
     * @desc   
     */
    function method_number($method_number = null) {}

    /**
     * @return int
     * @param  allowed int[optional]
     * @desc   
     */
    function allowed($allowed = null) {}

    /**
     * @return int
     * @desc   
     */
    function bytes_sent() {}

    /**
     * @return int
     * @desc   
     */
    function mtime() {}

    /**
     * @return int
     * @param  new_content_length int[optional]
     * @desc   
     */
    function content_length($new_content_length = null) {}

    /**
     * @return int
     * @desc   
     */
    function remaining() {}

    /**
     * @return int
     * @desc   
     */
    function no_cache() {}

    /**
     * @return int
     * @desc   
     */
    function no_local_copy() {}

    /**
     * @return int
     * @desc   
     */
    function read_body() {}

    /**
     * @return array
     * @desc   
     */
    function headers_in() {}

    /**
     * @return array
     * @param  name|array_list} {string[optional]
     * @param  value string[optional]
     * @param  replace bool[optional]
     * @desc   
     */
    function headers_out($name = null, $value = null, $replace = false) {}

    /**
     * @return array
     * @param  name|array_list} {string[optional]
     * @param  value string[optional]
     * @param  replace bool[optional]
     * @desc   
     */
    function err_headers_out($name = null, $value = null, $replace = false) {}

    /**
     * @return string
     * @desc   
     */
    function auth_name() {}

    /**
     * @return string
     * @desc   
     */
    function auth_type() {}

    /**
     * @return unknown
     * @desc   
     */
    function basic_auth_pw() {}

    /**
     * @return long
     * @desc   
     */
    function discard_request_body() {}

    /**
     * @return bool
     * @desc   
     */
    function is_initial_req() {}

    /**
     * @return long
     * @desc   
     */
    function meets_conditions() {}

    /**
     * @return int
     * @param  type int[optional]
     * @desc   
     */
    function remote_host($type = null) {}

    /**
     * @return long
     * @desc   
     */
    function satisfies() {}

    /**
     * @return int
     * @desc   
     */
    function server_port() {}

    /**
     * @return void
     * @desc   
     */
    function set_etag() {}

    /**
     * @return void
     * @desc   
     */
    function set_last_modified() {}

    /**
     * @return bool
     * @desc   
     */
    function some_auth_required() {}

    /**
     * @return long
     * @param  dependency_mtime int[optional]
     * @desc   
     */
    function update_mtime($dependency_mtime = null) {}

    /**
     * @return boolean
     * @param  message string
     * @param  facility long[optional]
     * @desc   
     */
    function log_error($message, $facility = null) {}

    /**
     * @return object
     * @param  uri string
     * @desc   
     */
    function lookup_uri($uri) {}

    /**
     * @return object
     * @param  file string
     * @desc   
     */
    function lookup_file($file) {}

    /**
     * @return object
     * @param  method string
     * @param  uri string
     * @desc   
     */
    function method_uri($method, $uri) {}

    /**
     * @return long
     * @desc   
     */
    function run() {}

};

class Reflection {
    /**
     * @return mixed
     * @param  r Reflector
     * @param  return bool[optional]
     * @desc   Exports a reflection object. Returns the output if TRUE is specified for return, printing it otherwise. 
     */
    function export($r, $return = null) {}

    /**
     * @return array
     * @param  modifiers int
     * @desc   Returns an array of modifier names 
     */
    function getModifierNames($modifiers) {}

};

class ReflectionFunction {
    /**
     * @return mixed
     * @param  name string
     * @param  return bool[optional]
     * @throws ReflectionException
     * @desc   Exports a reflection object. Returns the output if TRUE is specified for return, printing it otherwise. 
     */
    function export($name, $return = null) {}

    /**
     * @return ReflectionFunction
     * @param  name string
     * @desc   Constructor. Throws an Exception in case the given function does not exist 
     */
    function __construct($name) {}

    /**
     * @return string
     * @desc   Returns a string representation 
     */
    function __toString() {}

    /**
     * @return string
     * @desc   Returns this function's name 
     */
    function getName() {}

    /**
     * @return bool
     * @desc   Returns whether this is an internal function 
     */
    function isInternal() {}

    /**
     * @return bool
     * @desc   Returns whether this is an user-defined function 
     */
    function isUserDefined() {}

    /**
     * @return string
     * @desc   Returns the filename of the file this function was declared in 
     */
    function getFileName() {}

    /**
     * @return int
     * @desc   Returns the line this function's declaration starts at 
     */
    function getStartLine() {}

    /**
     * @return int
     * @desc   Returns the line this function's declaration ends at 
     */
    function getEndLine() {}

    /**
     * @return string
     * @desc   Returns the doc comment for this function 
     */
    function getDocComment() {}

    /**
     * @return array
     * @desc   Returns an associative array containing this function's static variables and their values 
     */
    function getStaticVariables() {}

    /**
     * @return mixed
     * @param  args mixed*
     * @desc   Invokes the function 
     */
    function invoke($args) {}

    /**
     * @return bool
     * @desc   Gets whether this function returns a reference 
     */
    function returnsReference() {}

    /**
     * @return ReflectionParameter[]
     * @desc   Returns an array of parameter objects for this function 
     */
    function getParameters() {}

};

class ReflectionParameter {
    /**
     * @return mixed
     * @param  function mixed
     * @param  parameter mixed
     * @param  return bool[optional]
     * @throws ReflectionException
     * @desc   Exports a reflection object. Returns the output if TRUE is specified for return, printing it otherwise. 
     */
    function export($function, $parameter, $return = null) {}

    /**
     * @return ReflectionParameter
     * @param  function mixed
     * @param  parameter mixed
     * @desc   Constructor. Throws an Exception in case the given method does not exist 
     */
    function __construct($function, $parameter) {}

    /**
     * @return string
     * @desc   Returns a string representation 
     */
    function __toString() {}

    /**
     * @return string
     * @desc   Returns this parameters's name 
     */
    function getName() {}

    /**
     * @return ReflectionClass
     * @desc   Returns this parameters's class hint or NULL if there is none 
     */
    function getClass() {}

    /**
     * @return bool
     * @desc   Returns whether NULL is allowed as this parameters's value 
     */
    function allowsNull() {}

    /**
     * @return bool
     * @desc   Returns whether this parameters is passed to by reference 
     */
    function isPassedByReference() {}

};

class ReflectionMethod {
    /**
     * @return mixed
     * @param  class mixed
     * @param  name string
     * @param  return bool[optional]
     * @throws ReflectionException
     * @desc   Exports a reflection object. Returns the output if TRUE is specified for return, printing it otherwise. 
     */
    function export($class, $name, $return = null) {}

    /**
     * @return ReflectionMethod
     * @param  class mixed
     * @param  name string
     * @desc   Constructor. Throws an Exception in case the given method does not exist 
     */
    function __construct($class, $name) {}

    /**
     * @return string
     * @desc   Returns a string representation 
     */
    function __toString() {}

    /**
     * @return mixed
     * @param  object mixed
     * @param  args mixed*
     * @desc   Invokes the function. Pass a  
     */
    function invoke($object, $args) {}

    /**
     * @return bool
     * @desc   Returns whether this method is final 
     */
    function isFinal() {}

    /**
     * @return bool
     * @desc   Returns whether this method is abstract 
     */
    function isAbstract() {}

    /**
     * @return bool
     * @desc   Returns whether this method is public 
     */
    function isPublic() {}

    /**
     * @return bool
     * @desc   Returns whether this method is private 
     */
    function isPrivate() {}

    /**
     * @return bool
     * @desc   Returns whether this method is protected 
     */
    function isProtected() {}

    /**
     * @return bool
     * @desc   Returns whether this method is static 
     */
    function isStatic() {}

    /**
     * @return bool
     * @desc   Returns whether this method is the constructor 
     */
    function isConstructor() {}

    /**
     * @return bool
     * @desc   Returns whether this method is static 
     */
    function isDestructor() {}

    /**
     * @return int
     * @desc   Returns a bitfield of the access modifiers for this method 
     */
    function getModifiers() {}

    /**
     * @return ReflectionClass
     * @desc   Get the declaring class 
     */
    function getDeclaringClass() {}

};

class ReflectionClass {
    /**
     * @return mixed
     * @param  argument mixed
     * @param  return bool[optional]
     * @throws ReflectionException
     * @desc   Exports a reflection object. Returns the output if TRUE is specified for return, printing it otherwise. 
     */
    function export($argument, $return = null) {}

    /**
     * @return ReflectionClass
     * @param  argument mixed
     * @throws ReflectionException
     * @desc   Constructor. Takes a string or an instance as an argument 
     */
    function __construct($argument) {}

    /**
     * @return array
     * @desc   Returns an associative array containing all static property values of the class 
     */
    function getStaticProperties() {}

    /**
     * @return array
     * @desc   Returns an associative array containing copies of all default property values of the class 
     */
    function getDefaultProperties() {}

    /**
     * @return string
     * @desc   Returns a string representation 
     */
    function __toString() {}

    /**
     * @return string
     * @desc   Returns the class' name 
     */
    function getName() {}

    /**
     * @return bool
     * @desc   Returns whether this class is an internal class 
     */
    function isInternal() {}

    /**
     * @return bool
     * @desc   Returns whether this class is user-defined 
     */
    function isUserDefined() {}

    /**
     * @return string
     * @desc   Returns the filename of the file this class was declared in 
     */
    function getFileName() {}

    /**
     * @return int
     * @desc   Returns the line this class' declaration starts at 
     */
    function getStartLine() {}

    /**
     * @return int
     * @desc   Returns the line this class' declaration ends at 
     */
    function getEndLine() {}

    /**
     * @return string
     * @desc   Returns the doc comment for this class 
     */
    function getDocComment() {}

    /**
     * @return ReflectionMethod
     * @desc   Returns the class' constructor if there is one, NULL otherwise 
     */
    function getConstructor() {}

    /**
     * @return ReflectionMethod
     * @param  name string
     * @throws ReflectionException
     * @desc   Returns the class' method specified by it's name 
     */
    function getMethod($name) {}

    /**
     * @return ReflectionMethod[]
     * @desc   Returns an array of this class' methods 
     */
    function getMethods() {}

    /**
     * @return ReflectionProperty
     * @param  name string
     * @throws ReflectionException
     * @desc   Returns the class' property specified by it's name 
     */
    function getProperty($name) {}

    /**
     * @return ReflectionProperty[]
     * @desc   Returns an array of this class' properties 
     */
    function getProperties() {}

    /**
     * @return array
     * @desc   Returns an associative array containing this class' constants and their values 
     */
    function getConstants() {}

    /**
     * @return mixed
     * @param  name string
     * @desc   Returns the class' constant specified by its name 
     */
    function getConstant($name) {}

    /**
     * @return bool
     * @desc   Returns whether this class is instantiable 
     */
    function isInstantiable() {}

    /**
     * @return bool
     * @desc   Returns whether this is an interface or a class 
     */
    function isInterface() {}

    /**
     * @return bool
     * @desc   Returns whether this class is final 
     */
    function isFinal() {}

    /**
     * @return bool
     * @desc   Returns whether this class is abstract 
     */
    function isAbstract() {}

    /**
     * @return int
     * @desc   Returns a bitfield of the access modifiers for this class 
     */
    function getModifiers() {}

    /**
     * @return bool
     * @param  object stdclass
     * @desc   Returns whether the given object is an instance of this class 
     */
    function isInstance($object) {}

    /**
     * @return stdclass
     * @param  args mixed*
     * @vararg ...
     * @desc   Returns an instance of this class 
     */
    function newInstance($args) {}

    /**
     * @return ReflectionClass[]
     * @desc   Returns an array of interfaces this class implements 
     */
    function getInterfaces() {}

    /**
     * @return ReflectionClass
     * @desc   Returns the class' parent class, or, if none exists, FALSE 
     */
    function getParentClass() {}

    /**
     * @return bool
     * @param  class string|reflection_class
     * @desc   Returns whether this class is a subclass of another class 
     */
    function isSubclassOf($class) {}

    /**
     * @return bool
     * @param  interface_name string|reflection_class
     * @desc   Returns whether this class is a subclass of another class 
     */
    function implementsInterface($interface_name) {}

    /**
     * @return bool
     * @desc   Returns whether this class is iterateable (can be used inside foreach) 
     */
    function isIterateable() {}

    /**
     * @return ReflectionExtension|NULL
     * @desc   Returns NULL or the extension the class belongs to 
     */
    function getExtension() {}

    /**
     * @return string|false
     * @desc   Returns false or the name of the extension the class belongs to 
     */
    function getExtensionName() {}

};

class ReflectionObject {
    /**
     * @return mixed
     * @param  argument mixed
     * @param  return bool[optional]
     * @throws ReflectionException
     * @desc   Exports a reflection object. Returns the output if TRUE is specified for return, printing it otherwise. 
     */
    function export($argument, $return = null) {}

    /**
     * @return ReflectionObject
     * @param  argument mixed
     * @throws ReflectionException
     * @desc   Constructor. Takes an instance as an argument 
     */
    function __construct($argument) {}

};

class ReflectionProperty {
    /**
     * @return mixed
     * @param  class mixed
     * @param  name string
     * @param  return bool[optional]
     * @throws ReflectionException
     * @desc   Exports a reflection object. Returns the output if TRUE is specified for return, printing it otherwise. 
     */
    function export($class, $name, $return = null) {}

    /**
     * @return ReflectionProperty
     * @param  class mixed
     * @param  name string
     * @desc   Constructor. Throws an Exception in case the given property does not exist 
     */
    function __construct($class, $name) {}

    /**
     * @return string
     * @desc   Returns a string representation 
     */
    function __toString() {}

    /**
     * @return string
     * @desc   Returns the class' name 
     */
    function getName() {}

    /**
     * @return bool
     * @desc   Returns whether this property is public 
     */
    function isPublic() {}

    /**
     * @return bool
     * @desc   Returns whether this property is private 
     */
    function isPrivate() {}

    /**
     * @return bool
     * @desc   Returns whether this property is protected 
     */
    function isProtected() {}

    /**
     * @return bool
     * @desc   Returns whether this property is static 
     */
    function isStatic() {}

    /**
     * @return bool
     * @desc   Returns whether this property is default (declared at compilation time). 
     */
    function isDefault() {}

    /**
     * @return int
     * @desc   Returns a bitfield of the access modifiers for this property 
     */
    function getModifiers() {}

    /**
     * @return mixed
     * @param  object stdclass
     * @desc   Returns this property's value 
     */
    function getValue($object) {}

    /**
     * @return void
     * @param  object stdclass
     * @param  value mixed
     * @desc   Sets this property's value 
     */
    function setValue($object, $value) {}

    /**
     * @return ReflectionClass
     * @desc   Get the declaring class 
     */
    function getDeclaringClass() {}

};

class ReflectionExtension {
    /**
     * @return mixed
     * @param  name string
     * @param  return bool[optional]
     * @throws ReflectionException
     * @desc   Exports a reflection object. Returns the output if TRUE is specified for return, printing it otherwise. 
     */
    function export($name, $return = null) {}

    /**
     * @return ReflectionExtension
     * @param  name string
     * @desc   Constructor. Throws an Exception in case the given extension does not exist 
     */
    function __construct($name) {}

    /**
     * @return string
     * @desc   Returns a string representation 
     */
    function __toString() {}

    /**
     * @return string
     * @desc   Returns this extension's name 
     */
    function getName() {}

    /**
     * @return string
     * @desc   Returns this extension's version 
     */
    function getVersion() {}

    /**
     * @return ReflectionFunction[]
     * @desc   Returns an array of this extension's fuctions 
     */
    function getFunctions() {}

    /**
     * @return array
     * @desc   Returns an associative array containing this extension's constants and their values 
     */
    function getConstants() {}

    /**
     * @return array
     * @desc   Returns an associative array containing this extension's INI entries and their values 
     */
    function getINIEntries() {}

    /**
     * @return ReflectionClass[]
     * @desc   Returns an array containing ReflectionClass objects for all classes of this extension 
     */
    function getClasses() {}

    /**
     * @return array
     * @desc   Returns an array containing all names of all classes of this extension 
     */
    function getClassNames() {}

};

class OCI_Lob {
    /**
     * @return string
     * @desc   Loads a large object 
     */
    function load() {}

    /**
     * @return int
     * @desc   Tells LOB pointer position 
     */
    function tell() {}

    /**
     * @return bool
     * @param  length int[optional]
     * @desc   Truncates a LOB 
     */
    function truncate($length = null) {}

    /**
     * @return int
     * @param  offset int[optional]
     * @param  length int[optional]
     * @desc   Erases a specified portion of the internal LOB, starting at a specified offset 
     */
    function erase($offset = null, $length = null) {}

    /**
     * @return bool
     * @param  flag int[optional]
     * @desc   Flushes the LOB buffer 
     */
    function flush($flag = null) {}

    /**
     * @return bool
     * @param  flag boolean
     * @desc   Enables/disables buffering for a LOB 
     */
    function setbuffering($flag) {}

    /**
     * @return bool
     * @desc   Returns current state of buffering for a LOB 
     */
    function getbuffering() {}

    /**
     * @return bool
     * @desc   Rewind pointer of a LOB 
     */
    function rewind() {}

    /**
     * @return string
     * @param  length int
     * @desc   Reads particular part of a large object 
     */
    function read($length) {}

    /**
     * @return bool
     * @desc   Checks if EOF is reached 
     */
    function eof() {}

    /**
     * @return bool
     * @param  offset int
     * @param  whence int[optional]
     * @desc   Moves the pointer of a LOB 
     */
    function seek($offset, $whence = null) {}

    /**
     * @return int
     * @param  string string
     * @param  length int[optional]
     * @desc   Writes data to current position of a LOB 
     */
    function write($string, $length = null) {}

    /**
     * @return bool
     * @param  lob object
     * @desc   Appends data from a LOB to another LOB 
     */
    function append($lob) {}

    /**
     * @return int
     * @desc   Returns size of a large object 
     */
    function size() {}

    /**
     * @return bool
     * @param  filename string[optional]
     * @param  start int[optional]
     * @param  length int[optional]
     * @desc   Writes a large object into a file 
     */
    function writetofile($filename = null, $start = null, $length = null) {}

    /**
     * @return bool
     * @param  var string
     * @param  lob_type int[optional]
     * @desc   Writes temporary blob 
     */
    function writetemporary($var, $lob_type = null) {}

    /**
     * @return bool
     * @desc   Closes lob descriptor 
     */
    function close() {}

    /**
     * @return bool
     * @param  data string
     * @param  offset int[optional]
     * @desc   Saves a large object 
     */
    function save($data, $offset = null) {}

    /**
     * @return bool
     * @param  filename string
     * @desc   Saves a large object to file 
     */
    function savefile($filename) {}

    /**
     * @return bool
     * @desc   Deletes large object description 
     */
    function free() {}

};

class OCI_Collection {
    /**
     * @return bool
     * @param  value string
     * @desc   Append an object to the collection 
     */
    function append($value) {}

    /**
     * @return string
     * @param  ndx int
     * @desc   Retrieve the value at collection index ndx 
     */
    function getelem($ndx) {}

    /**
     * @return bool
     * @param  index int
     * @param  val string
     * @desc   Assign element val to collection at index ndx 
     */
    function assignelem($index, $val) {}

    /**
     * @return bool
     * @param  from object
     * @desc   Assign a collection from another existing collection 
     */
    function assign($from) {}

    /**
     * @return int
     * @desc   Return the size of a collection 
     */
    function size() {}

    /**
     * @return int
     * @desc   Return the max value of a collection. For a varray this is the maximum length of the array 
     */
    function max() {}

    /**
     * @return bool
     * @param  num int
     * @desc   Trim num elements from the end of a collection 
     */
    function trim($num) {}

    /**
     * @return bool
     * @desc   Deletes collection object
     */
    function free() {}

};

class Directory {
    /**
     * @return void
     * @param  dir_handle resource[optional]
     * @desc   Close directory connection identified by the dir_handle 
     */
    function close($dir_handle = null) {}

    /**
     * @return void
     * @param  dir_handle resource[optional]
     * @desc   Rewind dir_handle back to the start 
     */
    function rewind($dir_handle = null) {}

    /**
     * @return string
     * @param  dir_handle resource[optional]
     * @desc   Read directory entry from dir_handle 
     */
    function read($dir_handle = null) {}

};

class SQLiteDatabase {
    /**
     * @return resource
     * @param  filename string
     * @param  mode int[optional]
     * @param  &error_message string[optional]
     * @desc   Opens a SQLite database. Will create the database if it does not exist. 
     */
    function __construct($filename, $mode = null, &$error_message) {}

    /**
     * @return void
     * @param  db resource
     * @desc   Closes an open sqlite database. 
     */
    function close($db) {}

    /**
     * @return resource
     * @param  query string
     * @param  db resource
     * @param  result_type int[optional]
     * @desc   Executes a query against a given database and returns a result handle. 
     */
    function query($query, $db, $result_type = null) {}

    /**
     * @return boolean
     * @param  query string
     * @param  db resource
     * @desc   Executes a result-less query against a given database 
     */
    function queryExec($query, $db) {}

    /**
     * @return array
     * @param  db resource
     * @param  query string
     * @param  result_type int[optional]
     * @param  decode_binary bool[optional]
     * @desc   Executes a query against a given database and returns an array of arrays. 
     */
    function arrayQuery($db, $query, $result_type = null, $decode_binary = null) {}

    /**
     * @return array
     * @param  db resource
     * @param  query string
     * @param  first_row_only bool[optional]
     * @param  decode_binary bool[optional]
     * @desc   Executes a query and returns either an array for one single column or the value of the first row. 
     */
    function singleQuery($db, $query, $first_row_only = null, $decode_binary = null) {}

    /**
     * @return resource
     * @param  query string
     * @param  db resource
     * @param  result_type int[optional]
     * @desc   Executes a query that does not prefetch and buffer all data. 
     */
    function unbufferedQuery($query, $db, $result_type = null) {}

    /**
     * @return int
     * @param  db resource
     * @desc   Returns the rowid of the most recently inserted row. 
     */
    function lastInsertRowid($db) {}

    /**
     * @return int
     * @param  db resource
     * @desc   Returns the number of rows that were changed by the most recent SQL statement. 
     */
    function changes($db) {}

    /**
     * @return bool
     * @param  db resource
     * @param  funcname string
     * @param  step_func mixed
     * @param  finalize_func mixed
     * @param  num_args long
     * @desc   Registers an aggregate function for queries. 
     */
    function createAggregate($db, $funcname, $step_func, $finalize_func, $num_args) {}

    /**
     * @return bool
     * @param  db resource
     * @param  funcname string
     * @param  callback mixed
     * @param  num_args long
     * @desc   Registers a "regular" function for queries. 
     */
    function createFunction($db, $funcname, $callback, $num_args) {}

    /**
     * @return void
     * @param  db resource
     * @param  ms int
     * @desc   Set busy timeout duration. If ms <= 0, all busy handlers are disabled. 
     */
    function busyTimeout($db, $ms) {}

    /**
     * @return int
     * @param  db resource
     * @desc   Returns the error code of the last error for a database. 
     */
    function lastError($db) {}

    /**
     * @return resource
     * @param  table_name string
     * @param  db resource
     * @desc   Return an array of column types from a particular table. 
     */
    function fetchColumnTypes($table_name, $db) {}

    /**
     * @return string
     * @param  error_code int
     * @desc   Returns the textual description of an error code. 
     */
    function error_string($error_code) {}

    /**
     * @return string
     * @param  item string
     * @desc   Escapes a string for use as a query parameter. 
     */
    function escape_string($item) {}

};

class SQLiteResult {
    /**
     * @return array
     * @param  result resource
     * @param  result_type int[optional]
     * @param  decode_binary bool[optional]
     * @desc   Fetches the next row from a result set as an array. 
     */
    function fetch($result, $result_type = null, $decode_binary = null) {}

    /**
     * @return object
     * @param  result resource
     * @param  class_name string[optional]
     * @param  ctor_params NULL|array[optional]
     * @param  decode_binary bool[optional]
     * @desc   Fetches the next row from a result set as an object. 
     */
    function fetchObject($result, $class_name = null, $ctor_params = null, $decode_binary = null) {}

    /**
     * @return string
     * @param  result resource
     * @param  decode_binary bool[optional]
     * @desc   Fetches the first column of a result set as a string. 
     */
    function fetchSingle($result, $decode_binary = null) {}

    /**
     * @return array
     * @param  result resource
     * @param  result_type int[optional]
     * @param  decode_binary bool[optional]
     * @desc   Fetches all rows from a result set as an array of arrays. 
     */
    function fetchAll($result, $result_type = null, $decode_binary = null) {}

    /**
     * @return mixed
     * @param  result resource
     * @param  index_or_name mixed
     * @param  decode_binary bool[optional]
     * @desc   Fetches a column from the current row of a result set. 
     */
    function column($result, $index_or_name, $decode_binary = null) {}

    /**
     * @return int
     * @param  result resource
     * @desc   Returns the number of fields in a result set. 
     */
    function numFields($result) {}

    /**
     * @return string
     * @param  result resource
     * @param  field_index int
     * @desc   Returns the name of a particular field of a result set. 
     */
    function fieldName($result, $field_index) {}

    /**
     * @return array
     * @param  result resource
     * @param  result_type int[optional]
     * @param  decode_binary bool[optional]
     * @desc   Fetches the current row from a result set as an array. 
     */
    function current($result, $result_type = null, $decode_binary = null) {}

    /**
     * @return bool
     * @param  result resource
     * @desc   Seek to the next row number of a result set. 
     */
    function next($result) {}

    /**
     * @return bool
     * @param  result resource
     * @desc   Returns whether more rows are available. 
     */
    function valid($result) {}

    /**
     * @return bool
     * @param  result resource
     * @desc   Seek to the first row number of a buffered result set. 
     */
    function rewind($result) {}

    /**
     * @return bool
     * @param  result resource
     * @desc   * Seek to the previous row number of a result set. 
     */
    function prev($result) {}

    /**
     * @return bool
     * @param  result resource
     * @desc   * Returns whether a previous row is available. 
     */
    function hasPrev($result) {}

    /**
     * @return int
     * @param  result resource
     * @desc   Returns the number of rows in a buffered result set. 
     */
    function numRows($result) {}

    /**
     * @return bool
     * @param  result resource
     * @param  row int
     * @desc   Seek to a particular row number of a buffered result set. 
     */
    function seek($result, $row) {}

};

class SQLiteUnbuffered {
    /**
     * @return array
     * @param  result resource
     * @param  result_type int[optional]
     * @param  decode_binary bool[optional]
     * @desc   Fetches the next row from a result set as an array. 
     */
    function fetch($result, $result_type = null, $decode_binary = null) {}

    /**
     * @return object
     * @param  result resource
     * @param  class_name string[optional]
     * @param  ctor_params NULL|array[optional]
     * @param  decode_binary bool[optional]
     * @desc   Fetches the next row from a result set as an object. 
     */
    function fetchObject($result, $class_name = null, $ctor_params = null, $decode_binary = null) {}

    /**
     * @return string
     * @param  result resource
     * @param  decode_binary bool[optional]
     * @desc   Fetches the first column of a result set as a string. 
     */
    function fetchSingle($result, $decode_binary = null) {}

    /**
     * @return array
     * @param  result resource
     * @param  result_type int[optional]
     * @param  decode_binary bool[optional]
     * @desc   Fetches all rows from a result set as an array of arrays. 
     */
    function fetchAll($result, $result_type = null, $decode_binary = null) {}

    /**
     * @return mixed
     * @param  result resource
     * @param  index_or_name mixed
     * @param  decode_binary bool[optional]
     * @desc   Fetches a column from the current row of a result set. 
     */
    function column($result, $index_or_name, $decode_binary = null) {}

    /**
     * @return int
     * @param  result resource
     * @desc   Returns the number of fields in a result set. 
     */
    function numFields($result) {}

    /**
     * @return string
     * @param  result resource
     * @param  field_index int
     * @desc   Returns the name of a particular field of a result set. 
     */
    function fieldName($result, $field_index) {}

    /**
     * @return array
     * @param  result resource
     * @param  result_type int[optional]
     * @param  decode_binary bool[optional]
     * @desc   Fetches the current row from a result set as an array. 
     */
    function current($result, $result_type = null, $decode_binary = null) {}

    /**
     * @return bool
     * @param  result resource
     * @desc   Seek to the next row number of a result set. 
     */
    function next($result) {}

    /**
     * @return bool
     * @param  result resource
     * @desc   Returns whether more rows are available. 
     */
    function valid($result) {}

};

class mysqli {
    /**
     * @return bool
     * @param  link object
     * @param  mode bool
     * @desc   Turn auto commit on or of 
     */
    function autocommit($link, $mode) {}

    /**
     * @return bool
     * @param  link object
     * @param  user string
     * @param  password string
     * @param  database string
     * @desc   Change logged-in user of the active connection 
     */
    function change_user($link, $user, $password, $database) {}

    /**
     * @return string
     * @param  link object
     * @desc   Returns the name of the character set used for this connection 
     */
    function character_set_name($link) {}

    /**
     * @return string
     * @param  link object
     * @desc   Returns the name of the character set used for this connection 
     */
    function client_encoding($link) {}

    /**
     * @return bool
     * @param  link object
     * @desc   Close connection 
     */
    function close($link) {}

    /**
     * @return bool
     * @param  link object
     * @desc   Commit outstanding actions and close transaction 
     */
    function commit($link) {}

    /**
     * @return object
     * @param  hostname string[optional]
     * @param  username string[optional]
     * @param  passwd string[optional]
     * @param  dbname string[optional]
     * @param  port int[optional]
     * @param  socket string[optional]
     * @desc   Open a connection to a mysql server 
     */
    function connect($hostname = null, $username = null, $passwd = null, $dbname = null, $port = null, $socket = null) {}

    /**
     * @return void
     * @param  debug string
     * @desc   
     */
    function debug($debug) {}

    /**
     * @return void
     * @param  link object
     * @desc   
     */
    function disable_reads_from_master($link) {}

    /**
     * @return void
     * @param  link object
     * @desc   
     */
    function disable_rpl_parse($link) {}

    /**
     * @return bool
     * @param  link object
     * @desc   
     */
    function dump_debug_info($link) {}

    /**
     * @return void
     * @param  link object
     * @desc   
     */
    function enable_reads_from_master($link) {}

    /**
     * @return void
     * @param  link object
     * @desc   
     */
    function enable_rpl_parse($link) {}

    /**
     * @return string
     * @desc   Get MySQL client info 
     */
    function get_client_info() {}

    /**
     * @return string
     * @param  link object
     * @desc   Get MySQL server info 
     */
    function get_server_info($link) {}

    /**
     * @return resource
     * @desc   Initialize mysqli and return a resource for use with mysql_real_connect 
     */
    function init() {}

    /**
     * @return bool
     * @param  link object
     * @param  processid int
     * @desc   Kill a mysql process on the server 
     */
    function kill($link, $processid) {}

    /**
     * @return unknown
     * @param  link object
     * @desc   unsets user defined handler for load local infile command 
     */
    function set_local_infile_default($link) {}

    /**
     * @return bool
     * @desc   
     */
    function set_local_infile_handler() {}

    /**
     * @return bool
     * @param  link object
     * @param  query string
     * @desc   Enforce execution of a query on the master in a master/slave setup 
     */
    function master_query($link, $query) {}

    /**
     * @return bool
     * @param  link object
     * @param  query string
     * @desc   Binary-safe version of mysql_query() 
     */
    function multi_query($link, $query) {}

    /**
     * @return bool
     * @param  link object
     * @desc   check if there any more query results from a multi query 
     */
    function more_results($link) {}

    /**
     * @return object
     * @param  hostname string[optional]
     * @param  username string[optional]
     * @param  passwd string[optional]
     * @param  dbname string[optional]
     * @param  port int[optional]
     * @param  socket string[optional]
     * @desc   Open a connection to a mysql server 
     */
    function mysqli($hostname = null, $username = null, $passwd = null, $dbname = null, $port = null, $socket = null) {}

    /**
     * @return bool
     * @param  link object
     * @desc   read next result from multi_query 
     */
    function next_result($link) {}

    /**
     * @return bool
     * @param  link object
     * @param  flags int
     * @param  values mixed
     * @desc   Set options 
     */
    function options($link, $flags, $values) {}

    /**
     * @return bool
     * @param  link object
     * @desc   Ping a server connection or reconnect if there is no connection 
     */
    function ping($link) {}

    /**
     * @return mixed
     * @param  link object
     * @param  query string
     * @desc   Prepare a SQL statement for execution 
     */
    function prepare($link, $query) {}

    /**
     * @return mixed
     * @param  link object
     * @param  query string
     * @param  resultmode int[optional]
     * @desc   
     */
    function query($link, $query, $resultmode = null) {}

    /**
     * @return bool
     * @param  link object
     * @param  hostname string[optional]
     * @param  username string[optional]
     * @param  passwd string[optional]
     * @param  dbname string[optional]
     * @param  port int[optional]
     * @param  socket string[optional]
     * @param  flags int[optional]
     * @desc   Open a connection to a mysql server 
     */
    function real_connect($link, $hostname = null, $username = null, $passwd = null, $dbname = null, $port = null, $socket = null, $flags = null) {}

    /**
     * @return string
     * @param  link object
     * @param  escapestr string
     * @desc   Escapes special characters in a string for use in a SQL statement, taking into account the current charset of the connection 
     */
    function real_escape_string($link, $escapestr) {}

    /**
     * @return string
     * @param  link object
     * @param  escapestr string
     * @desc   Escapes special characters in a string for use in a SQL statement, taking into account the current charset of the connection 
     */
    function escape_string($link, $escapestr) {}

    /**
     * @return bool
     * @param  link object
     * @param  query string
     * @desc   Binary-safe version of mysql_query() 
     */
    function real_query($link, $query) {}

    /**
     * @return bool
     * @param  link object
     * @desc   Undo actions from current transaction 
     */
    function rollback($link) {}

    /**
     * @return int
     * @param  link object
     * @desc   
     */
    function rpl_parse_enabled($link) {}

    /**
     * @return bool
     * @param  link object
     * @desc   
     */
    function rpl_probe($link) {}

    /**
     * @return int
     * @param  query string
     * @desc   
     */
    function rpl_query_type($query) {}

    /**
     * @return string
     * @param  link object
     * @param  dbname string
     * @desc   Select a MySQL database 
     */
    function select_db($link, $dbname) {}

    /**
     * @return bool
     * @param  link object
     * @param  flags int
     * @param  values mixed
     * @desc   Set options 
     */
    function set_opt($link, $flags, $values) {}

    /**
     * @return bool
     * @param  link object
     * @param  query string
     * @desc   Enforce execution of a query on a slave in a master/slave setup 
     */
    function slave_query($link, $query) {}

    /**
     * @return bool
     * @param  link object
     * @param  key string
     * @param  cert string
     * @param  ca string
     * @param  capath string
     * @param  cipher string
     * @desc   
     */
    function ssl_set($link, $key, $cert, $ca, $capath, $cipher) {}

    /**
     * @return mixed
     * @param  link object
     * @desc   Get current system status 
     */
    function stat($link) {}

    /**
     * @return mixed
     * @param  link object
     * @desc   
     */
    function stmt_init($link) {}

    /**
     * @return object
     * @param  link object
     * @desc   Buffer result set on client 
     */
    function store_result($link) {}

    /**
     * @return bool
     * @desc   Return whether thread safety is given or not 
     */
    function thread_safe() {}

    /**
     * @return mixed
     * @param  link object
     * @desc   Directly retrieve query results - do not buffer results on client side 
     */
    function use_result($link) {}

};

class mysqli_result {
    /**
     * @return void
     * @param  result object
     * @desc   Free query result memory for the given result handle 
     */
    function close($result) {}

    /**
     * @return void
     * @param  result object
     * @desc   Free query result memory for the given result handle 
     */
    function free($result) {}

    /**
     * @return bool
     * @param  result object
     * @param  offset int
     * @desc   Move internal result pointer 
     */
    function data_seek($result, $offset) {}

    /**
     * @return int
     * @param  link object
     * @desc   
     */
    function field_count($link) {}

    /**
     * @return int
     * @param  result object
     * @param  fieldnr int
     * @desc   
     */
    function field_seek($result, $fieldnr) {}

    /**
     * @return void
     * @param  result object
     * @desc   Free query result memory for the given result handle 
     */
    function free_result($result) {}

};

class mysqli_stmt {
    /**
     * @return int
     * @param  stmt object
     * @param  attr long
     * @desc   
     */
    function attr_get($stmt, $attr) {}

    /**
     * @return int
     * @param  stmt object
     * @param  attr long
     * @param  mode bool
     * @desc   
     */
    function attr_set($stmt, $attr, $mode) {}

    /**
     * @return bool
     * @param  stmt object
     * @param  types string
     * @param  variable mixed
     * @param  mixed[optional]
     * @vararg ...
     * @desc   Bind variables to a prepared statement as parameters 
     */
    function bind_param($stmt, $types, $variable, $mixed = null) {}

    /**
     * @return bool
     * @param  stmt object
     * @param  var mixed
     * @param  mixed[optional]
     * @vararg ...
     * @desc   Bind variables to a prepared statement for result storage 
     */
    function bind_result($stmt, $var, $mixed = null) {}

    /**
     * @return bool
     * @param  stmt object
     * @desc   Close statement 
     */
    function close($stmt) {}

    /**
     * @return void
     * @param  stmt object
     * @param  offset int
     * @desc   Move internal result pointer 
     */
    function data_seek($stmt, $offset) {}

    /**
     * @return bool
     * @param  stmt object
     * @desc   Execute a prepared statement 
     */
    function execute($stmt) {}

    /**
     * @return mixed
     * @param  stmt object
     * @desc   Fetch results from a prepared statement into the bound variables 
     */
    function fetch($stmt) {}

    /**
     * @return mixed
     * @param  stmt object
     * @desc   return result set from statement 
     */
    function result_metadata($stmt) {}

    /**
     * @return mixed
     * @param  stmt object
     * @desc   Return the number of rows in statements result set 
     */
    function num_rows($stmt) {}

    /**
     * @return mixed
     * @param  link object
     * @param  query string
     * @desc   Prepare a SQL statement for execution 
     */
    function stmt($link, $query) {}

    /**
     * @return void
     * @param  stmt object
     * @desc   Free stored result memory for the given statement handle 
     */
    function free_result($stmt) {}

    /**
     * @return bool
     * @param  stmt object
     * @desc   reset a prepared statement 
     */
    function reset($stmt) {}

    /**
     * @return bool
     * @param  stmt object
     * @param  query string
     * @desc   
     */
    function prepare($stmt, $query) {}

    /**
     * @return bool
     * @param  stmt
     * @desc   
     */
    function store_result($stmt) {}

};

class DOMStringList {
    /**
     * @return domstring
     * @param  long_index unsigned
     * @desc   
     */
    function item($long_index) {}

};

class DOMNameList {
    /**
     * @return string
     * @param  index int
     * @desc   
     */
    function getName($index) {}

    /**
     * @return string
     * @param  index int
     * @desc   
     */
    function getNamespaceURI($index) {}

};

class DOMImplementationList {
    /**
     * @return domdomimplementation
     * @param  long_index unsigned
     * @desc   
     */
    function item($long_index) {}

};

class DOMImplementationSource {
    /**
     * @return domdomimplementation
     * @param  features string
     * @desc   
     */
    function getDomimplementation($features) {}

    /**
     * @return domimplementationlist
     * @param  features string
     * @desc   
     */
    function getDomimplementations($features) {}

};

class DOMNode {
    /**
     * @return domnode
     * @param  newChild DomNode
     * @param  refChild DomNode
     * @desc   
     */
    function insertBefore($newChild, $refChild) {}

    /**
     * @return DomNode
     * @param  newChild DomNode
     * @param  oldChild DomNode
     * @desc   
     */
    function replaceChild($newChild, $oldChild) {}

    /**
     * @return DomNode
     * @param  oldChild DomNode
     * @desc   
     */
    function removeChild($oldChild) {}

    /**
     * @return DomNode
     * @param  newChild DomNode
     * @desc   
     */
    function appendChild($newChild) {}

    /**
     * @return boolean
     * @desc   
     */
    function hasChildNodes() {}

    /**
     * @return DomNode
     * @param  deep boolean
     * @desc   
     */
    function cloneNode($deep) {}

    /**
     * @return void
     * @desc   
     */
    function normalize() {}

    /**
     * @return boolean
     * @param  feature string
     * @param  version string
     * @desc   
     */
    function isSupported($feature, $version) {}

    /**
     * @return boolean
     * @desc   
     */
    function hasAttributes() {}

    /**
     * @return short
     * @param  other DomNode
     * @desc   
     */
    function compareDocumentPosition($other) {}

    /**
     * @return boolean
     * @param  other DomNode
     * @desc   
     */
    function isSameNode($other) {}

    /**
     * @return string
     * @param  namespaceURI string
     * @desc   
     */
    function lookupPrefix($namespaceURI) {}

    /**
     * @return boolean
     * @param  namespaceURI string
     * @desc   
     */
    function isDefaultNamespace($namespaceURI) {}

    /**
     * @return string
     * @param  prefix string
     * @desc   
     */
    function lookupNamespaceUri($prefix) {}

    /**
     * @return boolean
     * @param  arg DomNode
     * @desc   
     */
    function isEqualNode($arg) {}

    /**
     * @return DomNode
     * @param  feature string
     * @param  version string
     * @desc   
     */
    function getFeature($feature, $version) {}

    /**
     * @return DomUserData
     * @param  key string
     * @param  data DomUserData
     * @param  handler userdatahandler
     * @desc   
     */
    function setUserData($key, $data, $handler) {}

    /**
     * @return DomUserData
     * @param  key string
     * @desc   
     */
    function getUserData($key) {}

};

class DOMCharacterData extends DOMNode {
    /**
     * @return string
     * @param  offset long
     * @param  count long
     * @desc   
     */
    function substringData($offset, $count) {}

    /**
     * @return void
     * @param  arg string
     * @desc   
     */
    function appendData($arg) {}

    /**
     * @return void
     * @param  offset long
     * @param  arg string
     * @desc   
     */
    function insertData($offset, $arg) {}

    /**
     * @return void
     * @param  offset long
     * @param  count long
     * @desc   
     */
    function deleteData($offset, $count) {}

    /**
     * @return void
     * @param  offset long
     * @param  count long
     * @param  arg string
     * @desc   
     */
    function replaceData($offset, $count, $arg) {}

};

class DOMUserDataHandler {
    /**
     * @return dom_void
     * @param  short_operation unsigned
     * @param  key string
     * @param  data domobject
     * @param  src node
     * @param  dst node
     * @desc   
     */
    function handle($short_operation, $key, $data, $src, $dst) {}

};

class DOMErrorHandler {
    /**
     * @return dom_boolean
     * @param  error domerror
     * @desc   
     */
    function handleError($error) {}

};

class DOMConfiguration {
    /**
     * @return dom_void
     * @param  name string
     * @param  value domuserdata
     * @desc   
     */
    function setParameter($name, $value) {}

    /**
     * @return domdomuserdata
     * @param  name string
     * @desc   
     */
    function getParameter($name) {}

    /**
     * @return boolean
     * @param  name string
     * @param  value domuserdata
     * @desc   
     */
    function canSetParameter($name, $value) {}

};

class DOMDocumentType extends DOMNode {
};

class DOMNotation extends DOMNode {
};

class DOMEntity extends DOMNode {
};

class DOMStringExtend {
    /**
     * @return int
     * @param  offset32 int
     * @desc   
     */
    function findOffset16($offset32) {}

    /**
     * @return int
     * @param  offset16 int
     * @desc   
     */
    function findOffset32($offset16) {}

};

class XSLTProcessor {
    /**
     * @return xsl_xsltdocucument
     * @param  index node
     * @desc   
     */
    function importStylesheet($index) {}

    /**
     * @return xsl_document
     * @param  doc node
     * @param  clone boolean[optional]
     * @desc   
     */
    function transformToDoc($doc, $clone = null) {}

    /**
     * @return xsl_
     * @param  doc node
     * @param  uri string
     * @param  clone boolean[optional]
     * @desc   
     */
    function transformToUri($doc, $uri, $clone = null) {}

    /**
     * @return xsl_string
     * @param  doc node
     * @param  clone boolean[optional]
     * @desc   
     */
    function transformToXml($doc, $clone = null) {}

    /**
     * @return xsl_
     * @param  namespace string
     * @param  name string
     * @param  value string
     * @desc   
     */
    function setParameter($namespace, $name, $value) {}

    /**
     * @return xsl_
     * @param  namespace string
     * @param  name string
     * @desc   
     */
    function getParameter($namespace, $name) {}

    /**
     * @return xsl_
     * @param  namespace string
     * @param  name string
     * @desc   
     */
    function removeParameter($namespace, $name) {}

    /**
     * @return unknown
     * @desc   
     */
    function hasExsltSupport() {}

    /**
     * @return unknown
     * @desc   
     */
    function registerPHPFunctions() {}

};

class tidy {
    /**
     * @return mixed
     * @param  option string
     * @desc   Returns the value of the specified configuration option for the tidy document. 
     */
    function getOpt($option) {}

    /**
     * @return boolean
     * @desc   Execute configured cleanup and repair operations on parsed markup 
     */
    function cleanRepair() {}

    /**
     * @return boolean
     * @param  data string
     * @param  config_file mixed[optional]
     * @param  encoding string[optional]
     * @desc   Repair a string using an optionally provided configuration file 
     */
    function repairString($data, $config_file = null, $encoding = null) {}

    /**
     * @return boolean
     * @param  filename string
     * @param  config_file mixed[optional]
     * @param  encoding string[optional]
     * @param  use_include_path bool[optional]
     * @desc   Repair a file using an optionally provided configuration file 
     */
    function repairFile($filename, $config_file = null, $encoding = null, $use_include_path = null) {}

    /**
     * @return boolean
     * @desc   Run configured diagnostics on parsed and repaired markup. 
     */
    function diagnose() {}

    /**
     * @return string
     * @desc   Get release date (version) for Tidy library 
     */
    function getRelease() {}

    /**
     * @return array
     * @desc   Get current Tidy configuarion 
     */
    function getConfig() {}

    /**
     * @return int
     * @desc   Get status of specfied document. 
     */
    function getStatus() {}

    /**
     * @return int
     * @desc   Get the Detected HTML version for the specified document. 
     */
    function getHtmlVer() {}

    /**
     * @return boolean
     * @desc   Indicates if the document is a generic (non HTML/XHTML) XML document. 
     */
    function isXhtml() {}

    /**
     * @return TidyNode
     * @desc   Returns a TidyNode Object representing the root of the tidy parse tree 
     */
    function root() {}

    /**
     * @return TidyNode
     * @desc   Returns a TidyNode Object starting from the <HEAD> tag of the tidy parse tree 
     */
    function head() {}

    /**
     * @return TidyNode
     * @desc   Returns a TidyNode Object starting from the <HTML> tag of the tidy parse tree 
     */
    function html() {}

    /**
     * @return TidyNode
     * @param  tidy resource
     * @desc   Returns a TidyNode Object starting from the <BODY> tag of the tidy parse tree 
     */
    function body($tidy) {}

};

define("CAL_GREGORIAN", 0);
define("CAL_JULIAN", 0);
define("CAL_JEWISH", 0);
define("CAL_FRENCH", 0);
define("CAL_NUM_CALS", 0);
define("CAL_DOW_DAYNO", 0);
define("CAL_DOW_SHORT", 0);
define("CAL_DOW_LONG", 0);
define("CAL_MONTH_GREGORIAN_SHORT", 0);
define("CAL_MONTH_GREGORIAN_LONG", 0);
define("CAL_MONTH_JULIAN_SHORT", 0);
define("CAL_MONTH_JULIAN_LONG", 0);
define("CAL_MONTH_JEWISH", 0);
define("CAL_MONTH_FRENCH", 0);
define("CAL_EASTER_DEFAULT", 0);
define("CAL_EASTER_ROMAN", 0);
define("CAL_EASTER_ALWAYS_GREGORIAN", 0);
define("CAL_EASTER_ALWAYS_JULIAN", 0);
define("CAL_JEWISH_ADD_ALAFIM_GERESH", 0);
define("CAL_JEWISH_ADD_ALAFIM", 0);
define("CAL_JEWISH_ADD_GERESHAYIM", 0);
define("CPDF_PM_NONE", 0);
define("CPDF_PM_OUTLINES", 0);
define("CPDF_PM_THUMBS", 0);
define("CPDF_PM_FULLSCREEN", 0);
define("CPDF_PL_SINGLE", 0);
define("CPDF_PL_1COLUMN", 0);
define("CPDF_PL_2LCOLUMN", 0);
define("CPDF_PL_2RCOLUMN", 0);
define("CURLOPT_DNS_USE_GLOBAL_CACHE", 0);
define("CURLOPT_DNS_CACHE_TIMEOUT", 0);
define("CURLOPT_PORT", 0);
define("CURLOPT_FILE", 0);
define("CURLOPT_READDATA", 0);
define("CURLOPT_INFILE", 0);
define("CURLOPT_INFILESIZE", 0);
define("CURLOPT_URL", 0);
define("CURLOPT_PROXY", 0);
define("CURLOPT_VERBOSE", 0);
define("CURLOPT_HEADER", 0);
define("CURLOPT_HTTPHEADER", 0);
define("CURLOPT_NOPROGRESS", 0);
define("CURLOPT_NOBODY", 0);
define("CURLOPT_FAILONERROR", 0);
define("CURLOPT_UPLOAD", 0);
define("CURLOPT_POST", 0);
define("CURLOPT_FTPLISTONLY", 0);
define("CURLOPT_FTPAPPEND", 0);
define("CURLOPT_NETRC", 0);
define("CURLOPT_FOLLOWLOCATION", 0);
define("CURLOPT_FTPASCII", 0);
define("CURLOPT_PUT", 0);
define("CURLOPT_MUTE", 0);
define("CURLOPT_USERPWD", 0);
define("CURLOPT_PROXYUSERPWD", 0);
define("CURLOPT_RANGE", 0);
define("CURLOPT_TIMEOUT", 0);
define("CURLOPT_POSTFIELDS", 0);
define("CURLOPT_REFERER", 0);
define("CURLOPT_USERAGENT", 0);
define("CURLOPT_FTPPORT", 0);
define("CURLOPT_FTP_USE_EPSV", 0);
define("CURLOPT_LOW_SPEED_LIMIT", 0);
define("CURLOPT_LOW_SPEED_TIME", 0);
define("CURLOPT_RESUME_FROM", 0);
define("CURLOPT_COOKIE", 0);
define("CURLOPT_SSLCERT", 0);
define("CURLOPT_SSLCERTPASSWD", 0);
define("CURLOPT_WRITEHEADER", 0);
define("CURLOPT_SSL_VERIFYHOST", 0);
define("CURLOPT_COOKIEFILE", 0);
define("CURLOPT_SSLVERSION", 0);
define("CURLOPT_TIMECONDITION", 0);
define("CURLOPT_TIMEVALUE", 0);
define("CURLOPT_CUSTOMREQUEST", 0);
define("CURLOPT_STDERR", 0);
define("CURLOPT_TRANSFERTEXT", 0);
define("CURLOPT_RETURNTRANSFER", 0);
define("CURLOPT_QUOTE", 0);
define("CURLOPT_POSTQUOTE", 0);
define("CURLOPT_INTERFACE", 0);
define("CURLOPT_KRB4LEVEL", 0);
define("CURLOPT_HTTPPROXYTUNNEL", 0);
define("CURLOPT_FILETIME", 0);
define("CURLOPT_WRITEFUNCTION", 0);
define("CURLOPT_READFUNCTION", 0);
define("CURLOPT_PASSWDFUNCTION", 0);
define("CURLOPT_HEADERFUNCTION", 0);
define("CURLOPT_MAXREDIRS", 0);
define("CURLOPT_MAXCONNECTS", 0);
define("CURLOPT_CLOSEPOLICY", 0);
define("CURLOPT_FRESH_CONNECT", 0);
define("CURLOPT_FORBID_REUSE", 0);
define("CURLOPT_RANDOM_FILE", 0);
define("CURLOPT_EGDSOCKET", 0);
define("CURLOPT_CONNECTTIMEOUT", 0);
define("CURLOPT_SSL_VERIFYPEER", 0);
define("CURLOPT_CAINFO", 0);
define("CURLOPT_CAPATH", 0);
define("CURLOPT_COOKIEJAR", 0);
define("CURLOPT_SSL_CIPHER_LIST", 0);
define("CURLOPT_BINARYTRANSFER", 0);
define("CURLOPT_NOSIGNAL", 0);
define("CURLOPT_PROXYTYPE", 0);
define("CURLOPT_BUFFERSIZE", 0);
define("CURLOPT_HTTPGET", 0);
define("CURLOPT_HTTP_VERSION", 0);
define("CURLOPT_SSLKEY", 0);
define("CURLOPT_SSLKEYTYPE", 0);
define("CURLOPT_SSLKEYPASSWD", 0);
define("CURLOPT_SSLENGINE", 0);
define("CURLOPT_SSLENGINE_DEFAULT", 0);
define("CURLOPT_SSLCERTTYPE", 0);
define("CURLOPT_CRLF", 0);
define("CURLOPT_ENCODING", 0);
define("CURLOPT_PROXYPORT", 0);
define("CURLOPT_UNRESTRICTED_AUTH", 0);
define("CURLOPT_FTP_USE_EPRT", 0);
define("CURLOPT_HTTP200ALIASES", 0);
define("CURL_TIMECOND_IFMODSINCE", 0);
define("CURL_TIMECOND_IFUNMODSINCE", 0);
define("CURL_TIMECOND_LASTMOD", 0);
define("CURLOPT_HTTPAUTH", 0);
define("CURLAUTH_BASIC", 0);
define("CURLAUTH_DIGEST", 0);
define("CURLAUTH_GSSNEGOTIATE", 0);
define("CURLAUTH_NTLM", 0);
define("CURLAUTH_ANY", 0);
define("CURLAUTH_ANYSAFE", 0);
define("CURLOPT_PROXYAUTH", 0);
define("CURLCLOSEPOLICY_LEAST_RECENTLY_USED", 0);
define("CURLCLOSEPOLICY_LEAST_TRAFFIC", 0);
define("CURLCLOSEPOLICY_SLOWEST", 0);
define("CURLCLOSEPOLICY_CALLBACK", 0);
define("CURLCLOSEPOLICY_OLDEST", 0);
define("CURLINFO_EFFECTIVE_URL", 0);
define("CURLINFO_HTTP_CODE", 0);
define("CURLINFO_HEADER_SIZE", 0);
define("CURLINFO_REQUEST_SIZE", 0);
define("CURLINFO_TOTAL_TIME", 0);
define("CURLINFO_NAMELOOKUP_TIME", 0);
define("CURLINFO_CONNECT_TIME", 0);
define("CURLINFO_PRETRANSFER_TIME", 0);
define("CURLINFO_SIZE_UPLOAD", 0);
define("CURLINFO_SIZE_DOWNLOAD", 0);
define("CURLINFO_SPEED_DOWNLOAD", 0);
define("CURLINFO_SPEED_UPLOAD", 0);
define("CURLINFO_FILETIME", 0);
define("CURLINFO_SSL_VERIFYRESULT", 0);
define("CURLINFO_CONTENT_LENGTH_DOWNLOAD", 0);
define("CURLINFO_CONTENT_LENGTH_UPLOAD", 0);
define("CURLINFO_STARTTRANSFER_TIME", 0);
define("CURLINFO_CONTENT_TYPE", 0);
define("CURLINFO_REDIRECT_TIME", 0);
define("CURLINFO_REDIRECT_COUNT", 0);
define("CURL_VERSION_IPV6", 0);
define("CURL_VERSION_KERBEROS4", 0);
define("CURL_VERSION_SSL", 0);
define("CURL_VERSION_LIBZ", 0);
define("CURLVERSION_NOW", 0);
define("CURLE_OK", 0);
define("CURLE_UNSUPPORTED_PROTOCOL", 0);
define("CURLE_FAILED_INIT", 0);
define("CURLE_URL_MALFORMAT", 0);
define("CURLE_URL_MALFORMAT_USER", 0);
define("CURLE_COULDNT_RESOLVE_PROXY", 0);
define("CURLE_COULDNT_RESOLVE_HOST", 0);
define("CURLE_COULDNT_CONNECT", 0);
define("CURLE_FTP_WEIRD_SERVER_REPLY", 0);
define("CURLE_FTP_ACCESS_DENIED", 0);
define("CURLE_FTP_USER_PASSWORD_INCORRECT", 0);
define("CURLE_FTP_WEIRD_PASS_REPLY", 0);
define("CURLE_FTP_WEIRD_USER_REPLY", 0);
define("CURLE_FTP_WEIRD_PASV_REPLY", 0);
define("CURLE_FTP_WEIRD_227_FORMAT", 0);
define("CURLE_FTP_CANT_GET_HOST", 0);
define("CURLE_FTP_CANT_RECONNECT", 0);
define("CURLE_FTP_COULDNT_SET_BINARY", 0);
define("CURLE_PARTIAL_FILE", 0);
define("CURLE_FTP_COULDNT_RETR_FILE", 0);
define("CURLE_FTP_WRITE_ERROR", 0);
define("CURLE_FTP_QUOTE_ERROR", 0);
define("CURLE_HTTP_NOT_FOUND", 0);
define("CURLE_WRITE_ERROR", 0);
define("CURLE_MALFORMAT_USER", 0);
define("CURLE_FTP_COULDNT_STOR_FILE", 0);
define("CURLE_READ_ERROR", 0);
define("CURLE_OUT_OF_MEMORY", 0);
define("CURLE_OPERATION_TIMEOUTED", 0);
define("CURLE_FTP_COULDNT_SET_ASCII", 0);
define("CURLE_FTP_PORT_FAILED", 0);
define("CURLE_FTP_COULDNT_USE_REST", 0);
define("CURLE_FTP_COULDNT_GET_SIZE", 0);
define("CURLE_HTTP_RANGE_ERROR", 0);
define("CURLE_HTTP_POST_ERROR", 0);
define("CURLE_SSL_CONNECT_ERROR", 0);
define("CURLE_FTP_BAD_DOWNLOAD_RESUME", 0);
define("CURLE_FILE_COULDNT_READ_FILE", 0);
define("CURLE_LDAP_CANNOT_BIND", 0);
define("CURLE_LDAP_SEARCH_FAILED", 0);
define("CURLE_LIBRARY_NOT_FOUND", 0);
define("CURLE_FUNCTION_NOT_FOUND", 0);
define("CURLE_ABORTED_BY_CALLBACK", 0);
define("CURLE_BAD_FUNCTION_ARGUMENT", 0);
define("CURLE_BAD_CALLING_ORDER", 0);
define("CURLE_HTTP_PORT_FAILED", 0);
define("CURLE_BAD_PASSWORD_ENTERED", 0);
define("CURLE_TOO_MANY_REDIRECTS", 0);
define("CURLE_UNKNOWN_TELNET_OPTION", 0);
define("CURLE_TELNET_OPTION_SYNTAX", 0);
define("CURLE_OBSOLETE", 0);
define("CURLE_SSL_PEER_CERTIFICATE", 0);
define("CURLE_GOT_NOTHING", 0);
define("CURLE_SSL_ENGINE_NOTFOUND", 0);
define("CURLE_SSL_ENGINE_SETFAILED", 0);
define("CURLE_SEND_ERROR", 0);
define("CURLE_RECV_ERROR", 0);
define("CURLE_SHARE_IN_USE", 0);
define("CURLE_SSL_CERTPROBLEM", 0);
define("CURLE_SSL_CIPHER", 0);
define("CURLE_SSL_CACERT", 0);
define("CURLE_BAD_CONTENT_ENCODING", 0);
define("CURLE_LDAP_INVALID_URL", 0);
define("CURLE_FILESIZE_EXCEEDED", 0);
define("CURLE_FTP_SSL_FAILED", 0);
define("CURLPROXY_HTTP", 0);
define("CURLPROXY_SOCKS5", 0);
define("CURL_NETRC_OPTIONAL", 0);
define("CURL_NETRC_IGNORED", 0);
define("CURL_NETRC_REQUIRED", 0);
define("CURL_HTTP_VERSION_NONE", 0);
define("CURL_HTTP_VERSION_1_0", 0);
define("CURL_HTTP_VERSION_1_1", 0);
define("CURLM_CALL_MULTI_PERFORM", 0);
define("CURLM_OK", 0);
define("CURLM_BAD_HANDLE", 0);
define("CURLM_BAD_EASY_HANDLE", 0);
define("CURLM_OUT_OF_MEMORY", 0);
define("CURLM_INTERNAL_ERROR", 0);
define("CURLMSG_DONE", 0);
define("DBX_MYSQL", 0);
define("DBX_ODBC", 0);
define("DBX_PGSQL", 0);
define("DBX_MSSQL", 0);
define("DBX_FBSQL", 0);
define("DBX_OCI8", 0);
define("DBX_SYBASECT", 0);
define("DBX_SQLITE", 0);
define("DBX_PERSISTENT", 0);
define("DBX_RESULT_INFO", 0);
define("DBX_RESULT_INDEX", 0);
define("DBX_RESULT_ASSOC", 0);
define("DBX_RESULT_UNBUFFERED", 0);
define("DBX_COLNAMES_UNCHANGED", 0);
define("DBX_COLNAMES_UPPERCASE", 0);
define("DBX_COLNAMES_LOWERCASE", 0);
define("DBX_CMP_NATIVE", 0);
define("DBX_CMP_TEXT", 0);
define("DBX_CMP_NUMBER", 0);
define("DBX_CMP_ASC", 0);
define("DBX_CMP_DESC", 0);
define("XML_ELEMENT_NODE", 0);
define("XML_ATTRIBUTE_NODE", 0);
define("XML_TEXT_NODE", 0);
define("XML_CDATA_SECTION_NODE", 0);
define("XML_ENTITY_REF_NODE", 0);
define("XML_ENTITY_NODE", 0);
define("XML_PI_NODE", 0);
define("XML_COMMENT_NODE", 0);
define("XML_DOCUMENT_NODE", 0);
define("XML_DOCUMENT_TYPE_NODE", 0);
define("XML_DOCUMENT_FRAG_NODE", 0);
define("XML_NOTATION_NODE", 0);
define("XML_HTML_DOCUMENT_NODE", 0);
define("XML_DTD_NODE", 0);
define("XML_ELEMENT_DECL_NODE", 0);
define("XML_ATTRIBUTE_DECL_NODE", 0);
define("XML_ENTITY_DECL_NODE", 0);
define("XML_NAMESPACE_DECL_NODE", 0);
define("XML_GLOBAL_NAMESPACE", 0);
define("XML_LOCAL_NAMESPACE", 0);
define("XML_ATTRIBUTE_CDATA", 0);
define("XML_ATTRIBUTE_ID", 0);
define("XML_ATTRIBUTE_IDREF", 0);
define("XML_ATTRIBUTE_IDREFS", 0);
define("XML_ATTRIBUTE_ENTITY", 0);
define("XML_ATTRIBUTE_NMTOKEN", 0);
define("XML_ATTRIBUTE_NMTOKENS", 0);
define("XML_ATTRIBUTE_ENUMERATION", 0);
define("XML_ATTRIBUTE_NOTATION", 0);
define("DOM_PHP_ERR", 0);
define("DOM_INDEX_SIZE_ERR", 0);
define("DOMSTRING_SIZE_ERR", 0);
define("DOM_HIERARCHY_REQUEST_ERR", 0);
define("DOM_WRONG_DOCUMENT_ERR", 0);
define("DOM_INVALID_CHARACTER_ERR", 0);
define("DOM_NO_DATA_ALLOWED_ERR", 0);
define("DOM_NO_MODIFICATION_ALLOWED_ERR", 0);
define("DOM_NOT_FOUND_ERR", 0);
define("DOM_NOT_SUPPORTED_ERR", 0);
define("DOM_INUSE_ATTRIBUTE_ERR", 0);
define("DOM_INVALID_STATE_ERR", 0);
define("DOM_SYNTAX_ERR", 0);
define("DOM_INVALID_MODIFICATION_ERR", 0);
define("DOM_NAMESPACE_ERR", 0);
define("DOM_INVALID_ACCESS_ERR", 0);
define("DOM_VALIDATION_ERR", 0);
define("EXIF_USE_MBSTRING", 0);
define("FAMChanged", 0);
define("FAMDeleted", 0);
define("FAMStartExecuting", 0);
define("FAMStopExecuting", 0);
define("FAMCreated", 0);
define("FAMMoved", 0);
define("FAMAcknowledge", 0);
define("FAMExists", 0);
define("FAMEndExist", 0);
define("FBSQL_ASSOC", 0);
define("FBSQL_NUM", 0);
define("FBSQL_BOTH", 0);
define("FBSQL_LOCK_DEFERRED", 0);
define("FBSQL_LOCK_OPTIMISTIC", 0);
define("FBSQL_LOCK_PESSIMISTIC", 0);
define("FBSQL_ISO_READ_UNCOMMITTED", 0);
define("FBSQL_ISO_READ_COMMITTED", 0);
define("FBSQL_ISO_REPEATABLE_READ", 0);
define("FBSQL_ISO_SERIALIZABLE", 0);
define("FBSQL_ISO_VERSIONED", 0);
define("FBSQL_UNKNOWN", 0);
define("FBSQL_STOPPED", 0);
define("FBSQL_STARTING", 0);
define("FBSQL_RUNNING", 0);
define("FBSQL_STOPPING", 0);
define("FBSQL_NOEXEC", 0);
define("FBSQL_LOB_DIRECT", 0);
define("FBSQL_LOB_HANDLE", 0);
define("FDFValue", 0);
define("FDFStatus", 0);
define("FDFFile", 0);
define("FDFID", 0);
define("FDFFf", 0);
define("FDFSetFf", 0);
define("FDFClearFf", 0);
define("FDFFlags", 0);
define("FDFSetF", 0);
define("FDFClrF", 0);
define("FDFAP", 0);
define("FDFAS", 0);
define("FDFAction", 0);
define("FDFAA", 0);
define("FDFAPRef", 0);
define("FDFIF", 0);
define("FDFEnter", 0);
define("FDFExit", 0);
define("FDFDown", 0);
define("FDFUp", 0);
define("FDFFormat", 0);
define("FDFValidate", 0);
define("FDFKeystroke", 0);
define("FDFCalculate", 0);
define("FDFNormalAP", 0);
define("FDFRolloverAP", 0);
define("FDFDownAP", 0);
define("FTP_ASCII", 0);
define("FTP_TEXT", 0);
define("FTP_BINARY", 0);
define("FTP_IMAGE", 0);
define("FTP_AUTORESUME", 0);
define("FTP_TIMEOUT_SEC", 0);
define("FTP_AUTOSEEK", 0);
define("FTP_FAILED", 0);
define("FTP_FINISHED", 0);
define("FTP_MOREDATA", 0);
define("IMG_GIF", 0);
define("IMG_JPG", 0);
define("IMG_JPEG", 0);
define("IMG_PNG", 0);
define("IMG_WBMP", 0);
define("IMG_XPM", 0);
define("IMG_COLOR_TILED", 0);
define("IMG_COLOR_STYLED", 0);
define("IMG_COLOR_BRUSHED", 0);
define("IMG_COLOR_STYLEDBRUSHED", 0);
define("IMG_COLOR_TRANSPARENT", 0);
define("IMG_ARC_ROUNDED", 0);
define("IMG_ARC_PIE", 0);
define("IMG_ARC_CHORD", 0);
define("IMG_ARC_NOFILL", 0);
define("IMG_ARC_EDGED", 0);
define("IMG_GD2_RAW", 0);
define("IMG_GD2_COMPRESSED", 0);
define("IMG_EFFECT_REPLACE", 0);
define("IMG_EFFECT_ALPHABLEND", 0);
define("IMG_EFFECT_NORMAL", 0);
define("IMG_EFFECT_OVERLAY", 0);
define("GD_BUNDLED", 0);
define("IMG_FILTER_NEGATE", 0);
define("IMG_FILTER_GRAYSCALE", 0);
define("IMG_FILTER_BRIGHTNESS", 0);
define("IMG_FILTER_CONTRAST", 0);
define("IMG_FILTER_COLORIZE", 0);
define("IMG_FILTER_EDGEDETECT", 0);
define("IMG_FILTER_GAUSSIAN_BLUR", 0);
define("IMG_FILTER_SELECTIVE_BLUR", 0);
define("IMG_FILTER_EMBOSS", 0);
define("IMG_FILTER_MEAN_REMOVAL", 0);
define("IMG_FILTER_SMOOTH", 0);
define("GD_BUNDLED", 0);
define("GMP_ROUND_ZERO", 0);
define("GMP_ROUND_PLUSINF", 0);
define("GMP_ROUND_MINUSINF", 0);
define("ICONV_IMPL", 0);
define("ICONV_IMPL", 0);
define("ICONV_IMPL", 0);
define("ICONV_VERSION", 0);
define("ICONV_MIME_DECODE_STRICT", 0);
define("ICONV_MIME_DECODE_CONTINUE_ON_ERROR", 0);
define("NIL", 0);
define("IMAP_OPENTIMEOUT", 0);
define("IMAP_READTIMEOUT", 0);
define("IMAP_WRITETIMEOUT", 0);
define("IMAP_CLOSETIMEOUT", 0);
define("OP_DEBUG", 0);
define("OP_READONLY", 0);
define("OP_ANONYMOUS", 0);
define("OP_SHORTCACHE", 0);
define("OP_SILENT", 0);
define("OP_PROTOTYPE", 0);
define("OP_HALFOPEN", 0);
define("OP_EXPUNGE", 0);
define("OP_SECURE", 0);
define("CL_EXPUNGE", 0);
define("FT_UID", 0);
define("FT_PEEK", 0);
define("FT_NOT", 0);
define("FT_INTERNAL", 0);
define("FT_PREFETCHTEXT", 0);
define("ST_UID", 0);
define("ST_SILENT", 0);
define("ST_SET", 0);
define("CP_UID", 0);
define("CP_MOVE", 0);
define("SE_UID", 0);
define("SE_FREE", 0);
define("SE_NOPREFETCH", 0);
define("SO_FREE", 0);
define("SO_NOSERVER", 0);
define("SA_MESSAGES", 0);
define("SA_RECENT", 0);
define("SA_UNSEEN", 0);
define("SA_UIDNEXT", 0);
define("SA_UIDVALIDITY", 0);
define("SA_ALL", 0);
define("LATT_NOINFERIORS", 0);
define("LATT_NOSELECT", 0);
define("LATT_MARKED", 0);
define("LATT_UNMARKED", 0);
define("LATT_REFERRAL", 0);
define("LATT_HASCHILDREN", 0);
define("LATT_HASNOCHILDREN", 0);
define("SORTDATE", 0);
define("SORTARRIVAL", 0);
define("SORTFROM", 0);
define("SORTSUBJECT", 0);
define("SORTTO", 0);
define("SORTCC", 0);
define("SORTSIZE", 0);
define("TYPETEXT", 0);
define("TYPEMULTIPART", 0);
define("TYPEMESSAGE", 0);
define("TYPEAPPLICATION", 0);
define("TYPEAUDIO", 0);
define("TYPEIMAGE", 0);
define("TYPEVIDEO", 0);
define("TYPEMODEL", 0);
define("TYPEOTHER", 0);
define("ENC7BIT", 0);
define("ENC8BIT", 0);
define("ENCBINARY", 0);
define("ENCBASE64", 0);
define("ENCQUOTEDPRINTABLE", 0);
define("ENCOTHER", 0);
define("IFX_SCROLL", 0);
define("IFX_HOLD", 0);
define("IFX_LO_RDONLY", 0);
define("IFX_LO_WRONLY", 0);
define("IFX_LO_APPEND", 0);
define("IFX_LO_RDWR", 0);
define("IFX_LO_BUFFER", 0);
define("IFX_LO_NOBUFFER", 0);
define("INGRES_ASSOC", 0);
define("INGRES_NUM", 0);
define("INGRES_BOTH", 0);
define("IBASE_BKP_IGNORE_CHECKSUMS", 0);
define("IBASE_BKP_IGNORE_LIMBO", 0);
define("IBASE_BKP_METADATA_ONLY", 0);
define("IBASE_BKP_NO_GARBAGE_COLLECT", 0);
define("IBASE_BKP_OLD_DESCRIPTIONS", 0);
define("IBASE_BKP_NON_TRANSPORTABLE", 0);
define("IBASE_BKP_CONVERT", 0);
define("IBASE_RES_DEACTIVATE_IDX", 0);
define("IBASE_RES_NO_SHADOW", 0);
define("IBASE_RES_NO_VALIDITY", 0);
define("IBASE_RES_ONE_AT_A_TIME", 0);
define("IBASE_RES_REPLACE", 0);
define("IBASE_RES_CREATE", 0);
define("IBASE_RES_USE_ALL_SPACE", 0);
define("IBASE_PRP_PAGE_BUFFERS", 0);
define("IBASE_PRP_SWEEP_INTERVAL", 0);
define("IBASE_PRP_SHUTDOWN_DB", 0);
define("IBASE_PRP_DENY_NEW_TRANSACTIONS", 0);
define("IBASE_PRP_DENY_NEW_ATTACHMENTS", 0);
define("IBASE_PRP_RESERVE_SPACE", 0);
define("IBASE_PRP_RES_USE_FULL", 0);
define("IBASE_PRP_RES", 0);
define("IBASE_PRP_WRITE_MODE", 0);
define("IBASE_PRP_WM_ASYNC", 0);
define("IBASE_PRP_WM_SYNC", 0);
define("IBASE_PRP_ACCESS_MODE", 0);
define("IBASE_PRP_AM_READONLY", 0);
define("IBASE_PRP_AM_READWRITE", 0);
define("IBASE_PRP_SET_SQL_DIALECT", 0);
define("IBASE_PRP_ACTIVATE", 0);
define("IBASE_PRP_DB_ONLINE", 0);
define("IBASE_RPR_CHECK_DB", 0);
define("IBASE_RPR_IGNORE_CHECKSUM", 0);
define("IBASE_RPR_KILL_SHADOWS", 0);
define("IBASE_RPR_MEND_DB", 0);
define("IBASE_RPR_VALIDATE_DB", 0);
define("IBASE_RPR_FULL", 0);
define("IBASE_RPR_SWEEP_DB", 0);
define("IBASE_STS_DATA_PAGES", 0);
define("IBASE_STS_DB_LOG", 0);
define("IBASE_STS_HDR_PAGES", 0);
define("IBASE_STS_IDX_PAGES", 0);
define("IBASE_STS_SYS_RELATIONS", 0);
define("IBASE_SVC_SERVER_VERSION", 0);
define("IBASE_SVC_IMPLEMENTATION", 0);
define("IBASE_SVC_GET_ENV", 0);
define("IBASE_SVC_GET_ENV_LOCK", 0);
define("IBASE_SVC_GET_ENV_MSG", 0);
define("IBASE_SVC_USER_DBPATH", 0);
define("IBASE_SVC_SVR_DB_INFO", 0);
define("IBASE_SVC_GET_USERS", 0);
define("IBASE_DEFAULT", 0);
define("IBASE_CREATE", 0);
define("IBASE_TEXT", 0);
define("IBASE_FETCH_BLOBS", 0);
define("IBASE_FETCH_ARRAYS", 0);
define("IBASE_UNIXTIME", 0);
define("IBASE_WRITE", 0);
define("IBASE_READ", 0);
define("IBASE_COMMITTED", 0);
define("IBASE_CONSISTENCY", 0);
define("IBASE_CONCURRENCY", 0);
define("IBASE_REC_VERSION", 0);
define("IBASE_REC_NO_VERSION", 0);
define("IBASE_NOWAIT", 0);
define("IBASE_WAIT", 0);
define("LDAP_DEREF_NEVER", 0);
define("LDAP_DEREF_SEARCHING", 0);
define("LDAP_DEREF_FINDING", 0);
define("LDAP_DEREF_ALWAYS", 0);
define("LDAP_OPT_DEREF", 0);
define("LDAP_OPT_SIZELIMIT", 0);
define("LDAP_OPT_TIMELIMIT", 0);
define("LDAP_OPT_PROTOCOL_VERSION", 0);
define("LDAP_OPT_ERROR_NUMBER", 0);
define("LDAP_OPT_REFERRALS", 0);
define("LDAP_OPT_RESTART", 0);
define("LDAP_OPT_HOST_NAME", 0);
define("LDAP_OPT_ERROR_STRING", 0);
define("LDAP_OPT_MATCHED_DN", 0);
define("LDAP_OPT_SERVER_CONTROLS", 0);
define("LDAP_OPT_CLIENT_CONTROLS", 0);
define("LDAP_OPT_DEBUG_LEVEL", 0);
define("GSLC_SSL_NO_AUTH", 0);
define("GSLC_SSL_ONEWAY_AUTH", 0);
define("GSLC_SSL_TWOWAY_AUTH", 0);
define("MB_OVERLOAD_MAIL", 0);
define("MB_OVERLOAD_STRING", 0);
define("MB_OVERLOAD_REGEX", 0);
define("MB_CASE_UPPER", 0);
define("MB_CASE_LOWER", 0);
define("MB_CASE_TITLE", 0);
define("MCRYPT_ENCRYPT", 0);
define("MCRYPT_DECRYPT", 0);
define("MCRYPT_DEV_RANDOM", 0);
define("MCRYPT_DEV_URANDOM", 0);
define("MCRYPT_RAND", 0);
define("MC_TRANTYPE", 0);
define("MC_USERNAME", 0);
define("MC_PASSWORD", 0);
define("MC_ACCOUNT", 0);
define("MC_TRACKDATA", 0);
define("MC_EXPDATE", 0);
define("MC_STREET", 0);
define("MC_ZIP", 0);
define("MC_CV", 0);
define("MC_COMMENTS", 0);
define("MC_CLERKID", 0);
define("MC_STATIONID", 0);
define("MC_APPRCODE", 0);
define("MC_AMOUNT", 0);
define("MC_PTRANNUM", 0);
define("MC_TTID", 0);
define("MC_USER", 0);
define("MC_PWD", 0);
define("MC_ACCT", 0);
define("MC_BDATE", 0);
define("MC_EDATE", 0);
define("MC_BATCH", 0);
define("MC_FILE", 0);
define("MC_ADMIN", 0);
define("MC_AUDITTYPE", 0);
define("MC_CUSTOM", 0);
define("MC_EXAMOUNT", 0);
define("MC_EXCHARGES", 0);
define("MC_RATE", 0);
define("MC_RENTERNAME", 0);
define("MC_RETURNCITY", 0);
define("MC_RETURNSTATE", 0);
define("MC_RETURNLOCATION", 0);
define("MC_PRIORITY", 0);
define("MC_INQUIRY", 0);
define("MC_CARDTYPES", 0);
define("MC_SUB", 0);
define("MC_MARKER", 0);
define("MC_DEVICETYPE", 0);
define("MC_ERRORCODE", 0);
define("MC_NEWBATCH", 0);
define("MC_CURR", 0);
define("MC_DESCMERCH", 0);
define("MC_DESCLOC", 0);
define("MC_ORIGTYPE", 0);
define("MC_PIN", 0);
define("MC_VOIDORIGTYPE", 0);
define("MC_TIMESTAMP", 0);
define("MC_PRIO_HIGH", 0);
define("MC_PRIO_NORMAL", 0);
define("MC_PRIO_LOW", 0);
define("MC_USER_PROC", 0);
define("MC_USER_USER", 0);
define("MC_USER_PWD", 0);
define("MC_USER_INDCODE", 0);
define("MC_USER_MERCHID", 0);
define("MC_USER_BANKID", 0);
define("MC_USER_TERMID", 0);
define("MC_USER_CLIENTNUM", 0);
define("MC_USER_STOREID", 0);
define("MC_USER_AGENTID", 0);
define("MC_USER_CHAINID", 0);
define("MC_USER_ZIPCODE", 0);
define("MC_USER_TIMEZONE", 0);
define("MC_USER_MERCHCAT", 0);
define("MC_USER_MERNAME", 0);
define("MC_USER_MERCHLOC", 0);
define("MC_USER_STATECODE", 0);
define("MC_USER_PHONE", 0);
define("MC_USER_SUB", 0);
define("MC_USER_CARDTYPES", 0);
define("MC_USER_MODE", 0);
define("MC_USER_VNUMBER", 0);
define("MC_USER_ROUTINGID", 0);
define("MC_USER_PPROPERTY", 0);
define("MC_USER_PID", 0);
define("MC_USER_PIDPWD", 0);
define("MC_USER_SMID", 0);
define("MC_USER_SMIDPWD", 0);
define("MC_USER_USDDIV", 0);
define("MC_USER_AUDDIV", 0);
define("MC_USER_DKKDIV", 0);
define("MC_USER_GBPDIV", 0);
define("MC_USER_HKDDIV", 0);
define("MC_USER_JPYDIV", 0);
define("MC_USER_NZDDIV", 0);
define("MC_USER_NOKDIV", 0);
define("MC_USER_SGDDIV", 0);
define("MC_USER_ZARDIV", 0);
define("MC_USER_SEKDIV", 0);
define("MC_USER_CHFDIV", 0);
define("MC_USER_CADDIV", 0);
define("MC_USER_DIVNUM", 0);
define("MC_CARD_VISA", 0);
define("MC_CARD_MC", 0);
define("MC_CARD_AMEX", 0);
define("MC_CARD_DISC", 0);
define("MC_CARD_JCB", 0);
define("MC_CARD_CB", 0);
define("MC_CARD_DC", 0);
define("MC_CARD_GIFT", 0);
define("MC_CARD_OTHER", 0);
define("MC_CARD_ALL", 0);
define("MC_MODE_AUTH", 0);
define("MC_MODE_SETTLE", 0);
define("MC_MODE_BOTH", 0);
define("MC_MODE_ALL", 0);
define("MC_EXCHARGES_REST", 0);
define("MC_EXCHARGES_GIFT", 0);
define("MC_EXCHARGES_MINI", 0);
define("MC_EXCHARGES_TELE", 0);
define("MC_EXCHARGES_OTHER", 0);
define("MC_EXCHARGES_LAUND", 0);
define("MC_EXCHARGES_NONE", 0);
define("MC_EXCHARGES_GAS", 0);
define("MC_EXCHARGES_MILE", 0);
define("MC_EXCHARGES_LATE", 0);
define("MC_EXCHARGES_1WAY", 0);
define("MC_EXCHARGES_VIOL", 0);
define("MC_TRAN_SALE", 0);
define("MC_TRAN_REDEMPTION", 0);
define("MC_TRAN_PREAUTH", 0);
define("MC_TRAN_VOID", 0);
define("MC_TRAN_PREAUTHCOMPLETE", 0);
define("MC_TRAN_FORCE", 0);
define("MC_TRAN_OVERRIDE", 0);
define("MC_TRAN_RETURN", 0);
define("MC_TRAN_RELOAD", 0);
define("MC_TRAN_CREDIT", 0);
define("MC_TRAN_SETTLE", 0);
define("MC_TRAN_INCREMENTAL", 0);
define("MC_TRAN_REVERSAL", 0);
define("MC_TRAN_ACTIVATE", 0);
define("MC_TRAN_BALANCEINQ", 0);
define("MC_TRAN_CASHOUT", 0);
define("MC_TRAN_TOREVERSAL", 0);
define("MC_TRAN_SETTLERFR", 0);
define("MC_TRAN_ISSUE", 0);
define("MC_TRAN_TIP", 0);
define("MC_TRAN_MERCHRETURN", 0);
define("MC_TRAN_IVRREQ", 0);
define("MC_TRAN_IVRRESP", 0);
define("MC_TRAN_ADMIN", 0);
define("MC_TRAN_PING", 0);
define("MC_TRAN_CHKPWD", 0);
define("MC_TRAN_CHNGPWD", 0);
define("MC_TRAN_LISTSTATS", 0);
define("MC_TRAN_LISTUSERS", 0);
define("MC_TRAN_GETUSERINFO", 0);
define("MC_TRAN_ADDUSER", 0);
define("MC_TRAN_EDITUSER", 0);
define("MC_TRAN_DELUSER", 0);
define("MC_TRAN_ENABLEUSER", 0);
define("MC_TRAN_DISABLEUSER", 0);
define("MC_TRAN_IMPORT", 0);
define("MC_TRAN_EXPORT", 0);
define("MC_TRAN_ERRORLOG", 0);
define("MC_TRAN_CLEARERRORLOG", 0);
define("MC_TRAN_GETSUBACCTS", 0);
define("MC_ADMIN_GUT", 0);
define("MC_ADMIN_GL", 0);
define("MC_ADMIN_GFT", 0);
define("MC_ADMIN_BT", 0);
define("MC_ADMIN_UB", 0);
define("MC_ADMIN_QC", 0);
define("MC_ADMIN_RS", 0);
define("MC_ADMIN_CTH", 0);
define("MC_ADMIN_CFH", 0);
define("MC_ADMIN_FORCESETTLE", 0);
define("MC_ADMIN_SETBATCHNUM", 0);
define("MC_ADMIN_RENUMBERBATCH", 0);
define("MC_ADMIN_FIELDEDIT", 0);
define("MC_ADMIN_CLOSEBATCH", 0);
define("M_UNUSED", 0);
define("M_NEW", 0);
define("M_PENDING", 0);
define("M_DONE", 0);
define("M_GOOD", 0);
define("M_BAD", 0);
define("M_STREET", 0);
define("M_ZIP", 0);
define("M_UNKNOWN", 0);
define("M_ERROR", 0);
define("M_FAIL", 0);
define("M_SUCCESS", 0);
define("M_AUTH", 0);
define("M_DENY", 0);
define("M_CALL", 0);
define("M_DUPL", 0);
define("M_PKUP", 0);
define("M_RETRY", 0);
define("M_SETUP", 0);
define("M_TIMEOUT", 0);
define("M_SALE", 0);
define("M_PREAUTH", 0);
define("M_FORCE", 0);
define("M_OVERRIDE", 0);
define("M_RETURN", 0);
define("M_SETTLE", 0);
define("M_PROC", 0);
define("M_USER", 0);
define("M_PWD", 0);
define("M_INDCODE", 0);
define("M_MERCHID", 0);
define("M_BANKID", 0);
define("M_TERMID", 0);
define("M_CLIENTNUM", 0);
define("M_STOREID", 0);
define("M_AGENTID", 0);
define("M_CHAINID", 0);
define("M_ZIPCODE", 0);
define("M_TIMEZONE", 0);
define("M_MERCHCAT", 0);
define("M_MERNAME", 0);
define("M_MERCHLOC", 0);
define("M_STATECODE", 0);
define("M_SERVICEPHONE", 0);
define("MCVE_UNUSED", 0);
define("MCVE_NEW", 0);
define("MCVE_PENDING", 0);
define("MCVE_DONE", 0);
define("MCVE_GOOD", 0);
define("MCVE_BAD", 0);
define("MCVE_STREET", 0);
define("MCVE_ZIP", 0);
define("MCVE_UNKNOWN", 0);
define("MCVE_ERROR", 0);
define("MCVE_FAIL", 0);
define("MCVE_SUCCESS", 0);
define("MCVE_AUTH", 0);
define("MCVE_DENY", 0);
define("MCVE_CALL", 0);
define("MCVE_DUPL", 0);
define("MCVE_PKUP", 0);
define("MCVE_RETRY", 0);
define("MCVE_SETUP", 0);
define("MCVE_TIMEOUT", 0);
define("MCVE_SALE", 0);
define("MCVE_PREAUTH", 0);
define("MCVE_FORCE", 0);
define("MCVE_OVERRIDE", 0);
define("MCVE_RETURN", 0);
define("MCVE_SETTLE", 0);
define("MCVE_PROC", 0);
define("MCVE_USER", 0);
define("MCVE_PWD", 0);
define("MCVE_INDCODE", 0);
define("MCVE_MERCHID", 0);
define("MCVE_BANKID", 0);
define("MCVE_TERMID", 0);
define("MCVE_CLIENTNUM", 0);
define("MCVE_STOREID", 0);
define("MCVE_AGENTID", 0);
define("MCVE_CHAINID", 0);
define("MCVE_ZIPCODE", 0);
define("MCVE_TIMEZONE", 0);
define("MCVE_MERCHCAT", 0);
define("MCVE_MERNAME", 0);
define("MCVE_MERCHLOC", 0);
define("MCVE_STATECODE", 0);
define("MCVE_SERVICEPHONE", 0);
define("UDM_FIELD_URLID", 0);
define("UDM_FIELD_URL", 0);
define("UDM_FIELD_CONTENT", 0);
define("UDM_FIELD_TITLE", 0);
define("UDM_FIELD_KEYWORDS", 0);
define("UDM_FIELD_DESC", 0);
define("UDM_FIELD_DESCRIPTION", 0);
define("UDM_FIELD_TEXT", 0);
define("UDM_FIELD_SIZE", 0);
define("UDM_FIELD_RATING", 0);
define("UDM_FIELD_SCORE", 0);
define("UDM_FIELD_MODIFIED", 0);
define("UDM_FIELD_ORDER", 0);
define("UDM_FIELD_CRC", 0);
define("UDM_FIELD_CATEGORY", 0);
define("UDM_FIELD_LANG", 0);
define("UDM_FIELD_CHARSET", 0);
define("UDM_FIELD_SITEID", 0);
define("UDM_FIELD_POP_RANK", 0);
define("UDM_FIELD_ORIGINID", 0);
define("UDM_PARAM_PAGE_SIZE", 0);
define("UDM_PARAM_PAGE_NUM", 0);
define("UDM_PARAM_SEARCH_MODE", 0);
define("UDM_PARAM_CACHE_MODE", 0);
define("UDM_PARAM_TRACK_MODE", 0);
define("UDM_PARAM_PHRASE_MODE", 0);
define("UDM_PARAM_CHARSET", 0);
define("UDM_PARAM_LOCAL_CHARSET", 0);
define("UDM_PARAM_BROWSER_CHARSET", 0);
define("UDM_PARAM_STOPTABLE", 0);
define("UDM_PARAM_STOP_TABLE", 0);
define("UDM_PARAM_STOPFILE", 0);
define("UDM_PARAM_STOP_FILE", 0);
define("UDM_PARAM_WEIGHT_FACTOR", 0);
define("UDM_PARAM_WORD_MATCH", 0);
define("UDM_PARAM_MAX_WORD_LEN", 0);
define("UDM_PARAM_MAX_WORDLEN", 0);
define("UDM_PARAM_MIN_WORD_LEN", 0);
define("UDM_PARAM_MIN_WORDLEN", 0);
define("UDM_PARAM_ISPELL_PREFIXES", 0);
define("UDM_PARAM_ISPELL_PREFIX", 0);
define("UDM_PARAM_PREFIXES", 0);
define("UDM_PARAM_PREFIX", 0);
define("UDM_PARAM_CROSS_WORDS", 0);
define("UDM_PARAM_CROSSWORDS", 0);
define("UDM_PARAM_VARDIR", 0);
define("UDM_PARAM_DATADIR", 0);
define("UDM_PARAM_HLBEG", 0);
define("UDM_PARAM_HLEND", 0);
define("UDM_PARAM_SYNONYM", 0);
define("UDM_PARAM_STORED", 0);
define("UDM_PARAM_GROUPBYSITE", 0);
define("UDM_PARAM_QSTRING", 0);
define("UDM_PARAM_REMOTE_ADDR", 0);
define("UDM_PARAM_QUERY", 0);
define("UDM_PARAM_SITEID", 0);
define("UDM_PARAM_DETECT_CLONES", 0);
define("UDM_PARAM_SORT_ORDER", 0);
define("UDM_PARAM_RESULTS_LIMIT", 0);
define("UDM_PARAM_EXCERPT_SIZE", 0);
define("UDM_PARAM_EXCERPT_PADDING", 0);
define("UDM_LIMIT_CAT", 0);
define("UDM_LIMIT_URL", 0);
define("UDM_LIMIT_TAG", 0);
define("UDM_LIMIT_LANG", 0);
define("UDM_LIMIT_DATE", 0);
define("UDM_LIMIT_TYPE", 0);
define("UDM_PARAM_FOUND", 0);
define("UDM_PARAM_NUM_ROWS", 0);
define("UDM_PARAM_WORDINFO", 0);
define("UDM_PARAM_WORDINFO_ALL", 0);
define("UDM_PARAM_WORD_INFO", 0);
define("UDM_PARAM_SEARCHTIME", 0);
define("UDM_PARAM_SEARCH_TIME", 0);
define("UDM_PARAM_FIRST_DOC", 0);
define("UDM_PARAM_LAST_DOC", 0);
define("UDM_MODE_ALL", 0);
define("UDM_MODE_ANY", 0);
define("UDM_MODE_BOOL", 0);
define("UDM_MODE_PHRASE", 0);
define("UDM_CACHE_ENABLED", 0);
define("UDM_CACHE_DISABLED", 0);
define("UDM_TRACK_ENABLED", 0);
define("UDM_TRACK_DISABLED", 0);
define("UDM_PHRASE_ENABLED", 0);
define("UDM_PHRASE_DISABLED", 0);
define("UDM_ENABLED", 0);
define("UDM_DISABLED", 0);
define("UDM_CROSS_WORDS_ENABLED", 0);
define("UDM_CROSSWORDS_ENABLED", 0);
define("UDM_CROSS_WORDS_DISABLED", 0);
define("UDM_CROSSWORDS_DISABLED", 0);
define("UDM_PREFIXES_ENABLED", 0);
define("UDM_PREFIX_ENABLED", 0);
define("UDM_ISPELL_PREFIXES_ENABLED", 0);
define("UDM_ISPELL_PREFIX_ENABLED", 0);
define("UDM_PREFIXES_DISABLED", 0);
define("UDM_PREFIX_DISABLED", 0);
define("UDM_ISPELL_PREFIXES_DISABLED", 0);
define("UDM_ISPELL_PREFIX_DISABLED", 0);
define("UDM_ISPELL_TYPE_AFFIX", 0);
define("UDM_ISPELL_TYPE_SPELL", 0);
define("UDM_ISPELL_TYPE_DB", 0);
define("UDM_ISPELL_TYPE_SERVER", 0);
define("UDM_MATCH_WORD", 0);
define("UDM_MATCH_BEGIN", 0);
define("UDM_MATCH_SUBSTR", 0);
define("UDM_MATCH_END", 0);
define("MSQL_ASSOC", 0);
define("MSQL_NUM", 0);
define("MSQL_BOTH", 0);
define("MSSQL_ASSOC", 0);
define("MSSQL_NUM", 0);
define("MSSQL_BOTH", 0);
define("SQLTEXT", 0);
define("SQLVARCHAR", 0);
define("SQLCHAR", 0);
define("SQLINT1", 0);
define("SQLINT2", 0);
define("SQLINT4", 0);
define("SQLBIT", 0);
define("SQLFLT4", 0);
define("SQLFLT8", 0);
define("SQLFLTN", 0);
define("MYSQL_ASSOC", 0);
define("MYSQL_NUM", 0);
define("MYSQL_BOTH", 0);
define("MYSQL_CLIENT_COMPRESS", 0);
define("MYSQL_CLIENT_SSL", 0);
define("MYSQL_CLIENT_INTERACTIVE", 0);
define("MYSQL_CLIENT_IGNORE_SPACE", 0);
define("MYSQLI_READ_DEFAULT_GROUP", 0);
define("MYSQLI_READ_DEFAULT_FILE", 0);
define("MYSQLI_OPT_CONNECT_TIMEOUT", 0);
define("MYSQLI_OPT_LOCAL_INFILE", 0);
define("MYSQLI_INIT_COMMAND", 0);
define("MYSQLI_CLIENT_SSL", 0);
define("MYSQLI_CLIENT_COMPRESS", 0);
define("MYSQLI_CLIENT_INTERACTIVE", 0);
define("MYSQLI_CLIENT_IGNORE_SPACE", 0);
define("MYSQLI_CLIENT_NO_SCHEMA", 0);
define("MYSQLI_CLIENT_FOUND_ROWS", 0);
define("MYSQLI_STORE_RESULT", 0);
define("MYSQLI_USE_RESULT", 0);
define("MYSQLI_ASSOC", 0);
define("MYSQLI_NUM", 0);
define("MYSQLI_BOTH", 0);
define("MYSQLI_STMT_ATTR_UPDATE_MAX_LENGTH", 0);
define("MYSQLI_NOT_NULL_FLAG", 0);
define("MYSQLI_PRI_KEY_FLAG", 0);
define("MYSQLI_UNIQUE_KEY_FLAG", 0);
define("MYSQLI_MULTIPLE_KEY_FLAG", 0);
define("MYSQLI_BLOB_FLAG", 0);
define("MYSQLI_UNSIGNED_FLAG", 0);
define("MYSQLI_ZEROFILL_FLAG", 0);
define("MYSQLI_AUTO_INCREMENT_FLAG", 0);
define("MYSQLI_TIMESTAMP_FLAG", 0);
define("MYSQLI_SET_FLAG", 0);
define("MYSQLI_NUM_FLAG", 0);
define("MYSQLI_PART_KEY_FLAG", 0);
define("MYSQLI_GROUP_FLAG", 0);
define("MYSQLI_TYPE_DECIMAL", 0);
define("MYSQLI_TYPE_TINY", 0);
define("MYSQLI_TYPE_SHORT", 0);
define("MYSQLI_TYPE_LONG", 0);
define("MYSQLI_TYPE_FLOAT", 0);
define("MYSQLI_TYPE_DOUBLE", 0);
define("MYSQLI_TYPE_NULL", 0);
define("MYSQLI_TYPE_TIMESTAMP", 0);
define("MYSQLI_TYPE_LONGLONG", 0);
define("MYSQLI_TYPE_INT24", 0);
define("MYSQLI_TYPE_DATE", 0);
define("MYSQLI_TYPE_TIME", 0);
define("MYSQLI_TYPE_DATETIME", 0);
define("MYSQLI_TYPE_YEAR", 0);
define("MYSQLI_TYPE_NEWDATE", 0);
define("MYSQLI_TYPE_ENUM", 0);
define("MYSQLI_TYPE_SET", 0);
define("MYSQLI_TYPE_TINY_BLOB", 0);
define("MYSQLI_TYPE_MEDIUM_BLOB", 0);
define("MYSQLI_TYPE_LONG_BLOB", 0);
define("MYSQLI_TYPE_BLOB", 0);
define("MYSQLI_TYPE_VAR_STRING", 0);
define("MYSQLI_TYPE_STRING", 0);
define("MYSQLI_TYPE_CHAR", 0);
define("MYSQLI_TYPE_INTERVAL", 0);
define("MYSQLI_TYPE_GEOMETRY", 0);
define("MYSQLI_RPL_MASTER", 0);
define("MYSQLI_RPL_SLAVE", 0);
define("MYSQLI_RPL_ADMIN", 0);
define("MYSQLI_NO_DATA", 0);
define("MYSQLI_REPORT_INDEX", 0);
define("MYSQLI_REPORT_ERROR", 0);
define("MYSQLI_REPORT_ALL", 0);
define("MYSQLI_REPORT_OFF", 0);
define("OCI_DEFAULT", 0);
define("OCI_DESCRIBE_ONLY", 0);
define("OCI_COMMIT_ON_SUCCESS", 0);
define("OCI_EXACT_FETCH", 0);
define("OCI_SEEK_SET", 0);
define("OCI_SEEK_CUR", 0);
define("OCI_SEEK_END", 0);
define("OCI_LOB_BUFFER_FREE", 0);
define("SQLT_BFILEE", 0);
define("SQLT_CFILEE", 0);
define("SQLT_CLOB", 0);
define("SQLT_BLOB", 0);
define("SQLT_RDD", 0);
define("OCI_B_NTY", 0);
define("SQLT_NTY", 0);
define("OCI_SYSDATE", 0);
define("OCI_B_BFILE", 0);
define("OCI_B_CFILEE", 0);
define("OCI_B_CLOB", 0);
define("OCI_B_BLOB", 0);
define("OCI_B_ROWID", 0);
define("OCI_B_CURSOR", 0);
define("OCI_B_BIN", 0);
define("OCI_FETCHSTATEMENT_BY_COLUMN", 0);
define("OCI_FETCHSTATEMENT_BY_ROW", 0);
define("OCI_ASSOC", 0);
define("OCI_NUM", 0);
define("OCI_BOTH", 0);
define("OCI_RETURN_NULLS", 0);
define("OCI_RETURN_LOBS", 0);
define("OCI_DTYPE_FILE", 0);
define("OCI_DTYPE_LOB", 0);
define("OCI_DTYPE_ROWID", 0);
define("OCI_D_FILE", 0);
define("OCI_D_LOB", 0);
define("OCI_D_ROWID", 0);
define("OCI_TEMP_CLOB", 0);
define("OCI_TEMP_BLOB", 0);
define("ODBC_TYPE", 0);
define("ODBC_BINMODE_PASSTHRU", 0);
define("ODBC_BINMODE_RETURN", 0);
define("ODBC_BINMODE_CONVERT", 0);
define("SQL_ODBC_CURSORS", 0);
define("SQL_CUR_USE_DRIVER", 0);
define("SQL_CUR_USE_IF_NEEDED", 0);
define("SQL_CUR_USE_ODBC", 0);
define("SQL_CONCURRENCY", 0);
define("SQL_CONCUR_READ_ONLY", 0);
define("SQL_CONCUR_LOCK", 0);
define("SQL_CONCUR_ROWVER", 0);
define("SQL_CONCUR_VALUES", 0);
define("SQL_CURSOR_TYPE", 0);
define("SQL_CURSOR_FORWARD_ONLY", 0);
define("SQL_CURSOR_KEYSET_DRIVEN", 0);
define("SQL_CURSOR_DYNAMIC", 0);
define("SQL_CURSOR_STATIC", 0);
define("SQL_KEYSET_SIZE", 0);
define("SQL_FETCH_FIRST", 0);
define("SQL_FETCH_NEXT", 0);
define("SQL_CHAR", 0);
define("SQL_VARCHAR", 0);
define("SQL_LONGVARCHAR", 0);
define("SQL_DECIMAL", 0);
define("SQL_NUMERIC", 0);
define("SQL_BIT", 0);
define("SQL_TINYINT", 0);
define("SQL_SMALLINT", 0);
define("SQL_INTEGER", 0);
define("SQL_BIGINT", 0);
define("SQL_REAL", 0);
define("SQL_FLOAT", 0);
define("SQL_DOUBLE", 0);
define("SQL_BINARY", 0);
define("SQL_VARBINARY", 0);
define("SQL_LONGVARBINARY", 0);
define("SQL_DATE", 0);
define("SQL_TIME", 0);
define("SQL_TIMESTAMP", 0);
define("SQL_TYPE_DATE", 0);
define("SQL_TYPE_TIME", 0);
define("SQL_TYPE_TIMESTAMP", 0);
define("SQL_BEST_ROWID", 0);
define("SQL_ROWVER", 0);
define("SQL_SCOPE_CURROW", 0);
define("SQL_SCOPE_TRANSACTION", 0);
define("SQL_SCOPE_SESSION", 0);
define("SQL_NO_NULLS", 0);
define("SQL_NULLABLE", 0);
define("SQL_INDEX_UNIQUE", 0);
define("SQL_INDEX_ALL", 0);
define("SQL_ENSURE", 0);
define("SQL_QUICK", 0);
define("X509_PURPOSE_SSL_CLIENT", 0);
define("X509_PURPOSE_SSL_SERVER", 0);
define("X509_PURPOSE_NS_SSL_SERVER", 0);
define("X509_PURPOSE_SMIME_SIGN", 0);
define("X509_PURPOSE_SMIME_ENCRYPT", 0);
define("X509_PURPOSE_CRL_SIGN", 0);
define("X509_PURPOSE_ANY", 0);
define("OPENSSL_ALGO_SHA1", 0);
define("OPENSSL_ALGO_MD5", 0);
define("OPENSSL_ALGO_MD4", 0);
define("OPENSSL_ALGO_MD2", 0);
define("PKCS7_DETACHED", 0);
define("PKCS7_TEXT", 0);
define("PKCS7_NOINTERN", 0);
define("PKCS7_NOVERIFY", 0);
define("PKCS7_NOCHAIN", 0);
define("PKCS7_NOCERTS", 0);
define("PKCS7_NOATTR", 0);
define("PKCS7_BINARY", 0);
define("PKCS7_NOSIGS", 0);
define("OPENSSL_PKCS1_PADDING", 0);
define("OPENSSL_SSLV23_PADDING", 0);
define("OPENSSL_NO_PADDING", 0);
define("OPENSSL_PKCS1_OAEP_PADDING", 0);
define("OPENSSL_CIPHER_RC2_40", 0);
define("OPENSSL_CIPHER_RC2_128", 0);
define("OPENSSL_CIPHER_RC2_64", 0);
define("OPENSSL_CIPHER_DES", 0);
define("OPENSSL_CIPHER_3DES", 0);
define("OPENSSL_KEYTYPE_RSA", 0);
define("OPENSSL_KEYTYPE_DSA", 0);
define("OPENSSL_KEYTYPE_DH", 0);
define("ORA_BIND_INOUT", 0);
define("ORA_BIND_IN", 0);
define("ORA_BIND_OUT", 0);
define("ORA_FETCHINTO_ASSOC", 0);
define("ORA_FETCHINTO_NULLS", 0);
define("WNOHANG", 0);
define("WUNTRACED", 0);
define("SIG_IGN", 0);
define("SIG_DFL", 0);
define("SIG_ERR", 0);
define("SIGHUP", 0);
define("SIGINT", 0);
define("SIGQUIT", 0);
define("SIGILL", 0);
define("SIGTRAP", 0);
define("SIGABRT", 0);
define("SIGIOT", 0);
define("SIGBUS", 0);
define("SIGFPE", 0);
define("SIGKILL", 0);
define("SIGUSR1", 0);
define("SIGSEGV", 0);
define("SIGUSR2", 0);
define("SIGPIPE", 0);
define("SIGALRM", 0);
define("SIGTERM", 0);
define("SIGSTKFLT", 0);
define("SIGCLD", 0);
define("SIGCHLD", 0);
define("SIGCONT", 0);
define("SIGSTOP", 0);
define("SIGTSTP", 0);
define("SIGTTIN", 0);
define("SIGTTOU", 0);
define("SIGURG", 0);
define("SIGXCPU", 0);
define("SIGXFSZ", 0);
define("SIGVTALRM", 0);
define("SIGPROF", 0);
define("SIGWINCH", 0);
define("SIGPOLL", 0);
define("SIGIO", 0);
define("SIGPWR", 0);
define("SIGSYS", 0);
define("SIGBABY", 0);
define("PRIO_PGRP", 0);
define("PRIO_USER", 0);
define("PRIO_PROCESS", 0);
define("PREG_PATTERN_ORDER", 0);
define("PREG_SET_ORDER", 0);
define("PREG_OFFSET_CAPTURE", 0);
define("PREG_SPLIT_NO_EMPTY", 0);
define("PREG_SPLIT_DELIM_CAPTURE", 0);
define("PREG_SPLIT_OFFSET_CAPTURE", 0);
define("PREG_GREP_INVERT", 0);
define("PGSQL_CONNECT_FORCE_NEW", 0);
define("PGSQL_ASSOC", 0);
define("PGSQL_NUM", 0);
define("PGSQL_BOTH", 0);
define("PGSQL_CONNECTION_BAD", 0);
define("PGSQL_CONNECTION_OK", 0);
define("PGSQL_SEEK_SET", 0);
define("PGSQL_SEEK_CUR", 0);
define("PGSQL_SEEK_END", 0);
define("PGSQL_STATUS_LONG", 0);
define("PGSQL_STATUS_STRING", 0);
define("PGSQL_EMPTY_QUERY", 0);
define("PGSQL_COMMAND_OK", 0);
define("PGSQL_TUPLES_OK", 0);
define("PGSQL_COPY_OUT", 0);
define("PGSQL_COPY_IN", 0);
define("PGSQL_BAD_RESPONSE", 0);
define("PGSQL_NONFATAL_ERROR", 0);
define("PGSQL_FATAL_ERROR", 0);
define("PGSQL_CONV_IGNORE_DEFAULT", 0);
define("PGSQL_CONV_FORCE_NULL", 0);
define("PGSQL_CONV_IGNORE_NOT_NULL", 0);
define("PGSQL_DML_NO_CONV", 0);
define("PGSQL_DML_EXEC", 0);
define("PGSQL_DML_ASYNC", 0);
define("PGSQL_DML_STRING", 0);
define("PSPELL_FAST", 0);
define("PSPELL_NORMAL", 0);
define("PSPELL_BAD_SPELLERS", 0);
define("PSPELL_RUN_TOGETHER", 0);
define("SID", 0);
define("SID", 0);
define("SNMP_VALUE_LIBRARY", 0);
define("SNMP_VALUE_PLAIN", 0);
define("SNMP_VALUE_OBJECT", 0);
define("SNMP_BIT_STR", 0);
define("SNMP_OCTET_STR", 0);
define("SNMP_OPAQUE", 0);
define("SNMP_NULL", 0);
define("SNMP_OBJECT_ID", 0);
define("SNMP_IPADDRESS", 0);
define("SNMP_COUNTER", 0);
define("SNMP_UNSIGNED", 0);
define("SNMP_TIMETICKS", 0);
define("SNMP_UINTEGER", 0);
define("SNMP_INTEGER", 0);
define("SNMP_COUNTER64", 0);
define("SOAP_1_1", 0);
define("SOAP_1_2", 0);
define("SOAP_PERSISTENCE_SESSION", 0);
define("SOAP_PERSISTENCE_REQUEST", 0);
define("SOAP_FUNCTIONS_ALL", 0);
define("SOAP_ENCODED", 0);
define("SOAP_LITERAL", 0);
define("SOAP_RPC", 0);
define("SOAP_DOCUMENT", 0);
define("SOAP_ACTOR_NEXT", 0);
define("SOAP_ACTOR_NONE", 0);
define("SOAP_ACTOR_UNLIMATERECEIVER", 0);
define("SOAP_COMPRESSION_ACCEPT", 0);
define("SOAP_COMPRESSION_GZIP", 0);
define("SOAP_COMPRESSION_DEFLATE", 0);
define("UNKNOWN_TYPE", 0);
define("XSD_STRING", 0);
define("XSD_BOOLEAN", 0);
define("XSD_DECIMAL", 0);
define("XSD_FLOAT", 0);
define("XSD_DOUBLE", 0);
define("XSD_DURATION", 0);
define("XSD_DATETIME", 0);
define("XSD_TIME", 0);
define("XSD_DATE", 0);
define("XSD_GYEARMONTH", 0);
define("XSD_GYEAR", 0);
define("XSD_GMONTHDAY", 0);
define("XSD_GDAY", 0);
define("XSD_GMONTH", 0);
define("XSD_HEXBINARY", 0);
define("XSD_BASE64BINARY", 0);
define("XSD_ANYURI", 0);
define("XSD_QNAME", 0);
define("XSD_NOTATION", 0);
define("XSD_NORMALIZEDSTRING", 0);
define("XSD_TOKEN", 0);
define("XSD_LANGUAGE", 0);
define("XSD_NMTOKEN", 0);
define("XSD_NAME", 0);
define("XSD_NCNAME", 0);
define("XSD_ID", 0);
define("XSD_IDREF", 0);
define("XSD_IDREFS", 0);
define("XSD_ENTITY", 0);
define("XSD_ENTITIES", 0);
define("XSD_INTEGER", 0);
define("XSD_NONPOSITIVEINTEGER", 0);
define("XSD_NEGATIVEINTEGER", 0);
define("XSD_LONG", 0);
define("XSD_INT", 0);
define("XSD_SHORT", 0);
define("XSD_BYTE", 0);
define("XSD_NONNEGATIVEINTEGER", 0);
define("XSD_UNSIGNEDLONG", 0);
define("XSD_UNSIGNEDINT", 0);
define("XSD_UNSIGNEDSHORT", 0);
define("XSD_UNSIGNEDBYTE", 0);
define("XSD_POSITIVEINTEGER", 0);
define("XSD_NMTOKENS", 0);
define("XSD_ANYTYPE", 0);
define("SOAP_ENC_OBJECT", 0);
define("SOAP_ENC_ARRAY", 0);
define("XSD_1999_TIMEINSTANT", 0);
define("XSD_NAMESPACE", 0);
define("XSD_1999_NAMESPACE", 0);
define("AF_UNIX", 0);
define("AF_INET", 0);
define("AF_INET6", 0);
define("SOCK_STREAM", 0);
define("SOCK_DGRAM", 0);
define("SOCK_RAW", 0);
define("SOCK_SEQPACKET", 0);
define("SOCK_RDM", 0);
define("MSG_OOB", 0);
define("MSG_WAITALL", 0);
define("MSG_PEEK", 0);
define("MSG_DONTROUTE", 0);
define("SO_DEBUG", 0);
define("SO_REUSEADDR", 0);
define("SO_KEEPALIVE", 0);
define("SO_DONTROUTE", 0);
define("SO_LINGER", 0);
define("SO_BROADCAST", 0);
define("SO_OOBINLINE", 0);
define("SO_SNDBUF", 0);
define("SO_RCVBUF", 0);
define("SO_SNDLOWAT", 0);
define("SO_RCVLOWAT", 0);
define("SO_SNDTIMEO", 0);
define("SO_RCVTIMEO", 0);
define("SO_TYPE", 0);
define("SO_ERROR", 0);
define("SOL_SOCKET", 0);
define("SOMAXCONN", 0);
define("PHP_NORMAL_READ", 0);
define("PHP_BINARY_READ", 0);
define("SOL_TCP", 0);
define("SOL_UDP", 0);
define("SOCKET_EPERM", 0);
define("SOCKET_ENOENT", 0);
define("SOCKET_EINTR", 0);
define("SOCKET_EIO", 0);
define("SOCKET_ENXIO", 0);
define("SOCKET_E2BIG", 0);
define("SOCKET_EBADF", 0);
define("SOCKET_EAGAIN", 0);
define("SOCKET_ENOMEM", 0);
define("SOCKET_EACCES", 0);
define("SOCKET_EFAULT", 0);
define("SOCKET_ENOTBLK", 0);
define("SOCKET_EBUSY", 0);
define("SOCKET_EEXIST", 0);
define("SOCKET_EXDEV", 0);
define("SOCKET_ENODEV", 0);
define("SOCKET_ENOTDIR", 0);
define("SOCKET_EISDIR", 0);
define("SOCKET_EINVAL", 0);
define("SOCKET_ENFILE", 0);
define("SOCKET_EMFILE", 0);
define("SOCKET_ENOTTY", 0);
define("SOCKET_ENOSPC", 0);
define("SOCKET_ESPIPE", 0);
define("SOCKET_EROFS", 0);
define("SOCKET_EMLINK", 0);
define("SOCKET_EPIPE", 0);
define("SOCKET_ENAMETOOLONG", 0);
define("SOCKET_ENOLCK", 0);
define("SOCKET_ENOSYS", 0);
define("SOCKET_ENOTEMPTY", 0);
define("SOCKET_ELOOP", 0);
define("SOCKET_EWOULDBLOCK", 0);
define("SOCKET_ENOMSG", 0);
define("SOCKET_EIDRM", 0);
define("SOCKET_ECHRNG", 0);
define("SOCKET_EL2NSYNC", 0);
define("SOCKET_EL3HLT", 0);
define("SOCKET_EL3RST", 0);
define("SOCKET_ELNRNG", 0);
define("SOCKET_EUNATCH", 0);
define("SOCKET_ENOCSI", 0);
define("SOCKET_EL2HLT", 0);
define("SOCKET_EBADE", 0);
define("SOCKET_EBADR", 0);
define("SOCKET_EXFULL", 0);
define("SOCKET_ENOANO", 0);
define("SOCKET_EBADRQC", 0);
define("SOCKET_EBADSLT", 0);
define("SOCKET_ENOSTR", 0);
define("SOCKET_ENODATA", 0);
define("SOCKET_ETIME", 0);
define("SOCKET_ENOSR", 0);
define("SOCKET_ENONET", 0);
define("SOCKET_EREMOTE", 0);
define("SOCKET_ENOLINK", 0);
define("SOCKET_EADV", 0);
define("SOCKET_ESRMNT", 0);
define("SOCKET_ECOMM", 0);
define("SOCKET_EPROTO", 0);
define("SOCKET_EMULTIHOP", 0);
define("SOCKET_EBADMSG", 0);
define("SOCKET_ENOTUNIQ", 0);
define("SOCKET_EBADFD", 0);
define("SOCKET_EREMCHG", 0);
define("SOCKET_ERESTART", 0);
define("SOCKET_ESTRPIPE", 0);
define("SOCKET_EUSERS", 0);
define("SOCKET_ENOTSOCK", 0);
define("SOCKET_EDESTADDRREQ", 0);
define("SOCKET_EMSGSIZE", 0);
define("SOCKET_EPROTOTYPE", 0);
define("SOCKET_ENOPROTOOPT", 0);
define("SOCKET_EPROTONOSUPPORT", 0);
define("SOCKET_ESOCKTNOSUPPORT", 0);
define("SOCKET_EOPNOTSUPP", 0);
define("SOCKET_EPFNOSUPPORT", 0);
define("SOCKET_EAFNOSUPPORT", 0);
define("SOCKET_EADDRINUSE", 0);
define("SOCKET_EADDRNOTAVAIL", 0);
define("SOCKET_ENETDOWN", 0);
define("SOCKET_ENETUNREACH", 0);
define("SOCKET_ENETRESET", 0);
define("SOCKET_ECONNABORTED", 0);
define("SOCKET_ECONNRESET", 0);
define("SOCKET_ENOBUFS", 0);
define("SOCKET_EISCONN", 0);
define("SOCKET_ENOTCONN", 0);
define("SOCKET_ESHUTDOWN", 0);
define("SOCKET_ETOOMANYREFS", 0);
define("SOCKET_ETIMEDOUT", 0);
define("SOCKET_ECONNREFUSED", 0);
define("SOCKET_EHOSTDOWN", 0);
define("SOCKET_EHOSTUNREACH", 0);
define("SOCKET_EALREADY", 0);
define("SOCKET_EINPROGRESS", 0);
define("SOCKET_EISNAM", 0);
define("SOCKET_EREMOTEIO", 0);
define("SOCKET_EDQUOT", 0);
define("SOCKET_ENOMEDIUM", 0);
define("SOCKET_EMEDIUMTYPE", 0);
define("SOCKET_EINTR", 0);
define("SOCKET_EBADF", 0);
define("SOCKET_EACCES", 0);
define("SOCKET_EFAULT", 0);
define("SOCKET_EINVAL", 0);
define("SOCKET_EMFILE", 0);
define("SOCKET_EWOULDBLOCK", 0);
define("SOCKET_EINPROGRESS", 0);
define("SOCKET_EALREADY", 0);
define("SOCKET_ENOTSOCK", 0);
define("SOCKET_EDESTADDRREQ", 0);
define("SOCKET_EMSGSIZE", 0);
define("SOCKET_EPROTOTYPE", 0);
define("SOCKET_ENOPROTOOPT", 0);
define("SOCKET_EPROTONOSUPPORT", 0);
define("SOCKET_ESOCKTNOSUPPORT", 0);
define("SOCKET_EOPNOTSUPP", 0);
define("SOCKET_EPFNOSUPPORT", 0);
define("SOCKET_EAFNOSUPPORT", 0);
define("SOCKET_EADDRINUSE", 0);
define("SOCKET_EADDRNOTAVAIL", 0);
define("SOCKET_ENETDOWN", 0);
define("SOCKET_ENETUNREACH", 0);
define("SOCKET_ENETRESET", 0);
define("SOCKET_ECONNABORTED", 0);
define("SOCKET_ECONNRESET", 0);
define("SOCKET_ENOBUFS", 0);
define("SOCKET_EISCONN", 0);
define("SOCKET_ENOTCONN", 0);
define("SOCKET_ESHUTDOWN", 0);
define("SOCKET_ETOOMANYREFS", 0);
define("SOCKET_ETIMEDOUT", 0);
define("SOCKET_ECONNREFUSED", 0);
define("SOCKET_ELOOP", 0);
define("SOCKET_ENAMETOOLONG", 0);
define("SOCKET_EHOSTDOWN", 0);
define("SOCKET_EHOSTUNREACH", 0);
define("SOCKET_ENOTEMPTY", 0);
define("SOCKET_EPROCLIM", 0);
define("SOCKET_EUSERS", 0);
define("SOCKET_EDQUOT", 0);
define("SOCKET_ESTALE", 0);
define("SOCKET_EREMOTE", 0);
define("SOCKET_EDISCON", 0);
define("SOCKET_SYSNOTREADY", 0);
define("SOCKET_VERNOTSUPPORTED", 0);
define("SOCKET_NOTINITIALISED", 0);
define("SOCKET_HOST_NOT_FOUND", 0);
define("SOCKET_TRY_AGAIN", 0);
define("SOCKET_NO_RECOVERY", 0);
define("SOCKET_NO_DATA", 0);
define("SOCKET_NO_ADDRESS", 0);
define("RIT_LEAVES_ONLY", 0);
define("RIT_SELF_FIRST", 0);
define("RIT_CHILD_FIRST", 0);
define("CIT_CALL_TOSTRING", 0);
define("CIT_CATCH_GET_CHILD", 0);
define("SQLITE_BOTH", 0);
define("SQLITE_NUM", 0);
define("SQLITE_ASSOC", 0);
define("SQLITE_OK", 0);
define("SQLITE_ERROR", 0);
define("SQLITE_INTERNAL", 0);
define("SQLITE_PERM", 0);
define("SQLITE_ABORT", 0);
define("SQLITE_BUSY", 0);
define("SQLITE_LOCKED", 0);
define("SQLITE_NOMEM", 0);
define("SQLITE_READONLY", 0);
define("SQLITE_INTERRUPT", 0);
define("SQLITE_IOERR", 0);
define("SQLITE_CORRUPT", 0);
define("SQLITE_NOTFOUND", 0);
define("SQLITE_FULL", 0);
define("SQLITE_CANTOPEN", 0);
define("SQLITE_PROTOCOL", 0);
define("SQLITE_EMPTY", 0);
define("SQLITE_SCHEMA", 0);
define("SQLITE_TOOBIG", 0);
define("SQLITE_CONSTRAINT", 0);
define("SQLITE_MISMATCH", 0);
define("SQLITE_MISUSE", 0);
define("SQLITE_NOLFS", 0);
define("SQLITE_AUTH", 0);
define("SQLITE_FORMAT", 0);
define("SQLITE_ROW", 0);
define("SQLITE_DONE", 0);
define("EXTR_OVERWRITE", 0);
define("EXTR_SKIP", 0);
define("EXTR_PREFIX_SAME", 0);
define("EXTR_PREFIX_ALL", 0);
define("EXTR_PREFIX_INVALID", 0);
define("EXTR_PREFIX_IF_EXISTS", 0);
define("EXTR_IF_EXISTS", 0);
define("EXTR_REFS", 0);
define("SORT_ASC", 0);
define("SORT_DESC", 0);
define("SORT_REGULAR", 0);
define("SORT_NUMERIC", 0);
define("SORT_STRING", 0);
define("CASE_LOWER", 0);
define("CASE_UPPER", 0);
define("COUNT_NORMAL", 0);
define("COUNT_RECURSIVE", 0);
define("ASSERT_ACTIVE", 0);
define("ASSERT_CALLBACK", 0);
define("ASSERT_BAIL", 0);
define("ASSERT_WARNING", 0);
define("ASSERT_QUIET_EVAL", 0);
define("CONNECTION_ABORTED", 0);
define("CONNECTION_NORMAL", 0);
define("CONNECTION_TIMEOUT", 0);
define("INI_USER", 0);
define("INI_PERDIR", 0);
define("INI_SYSTEM", 0);
define("INI_ALL", 0);
define("SUNFUNCS_RET_TIMESTAMP", 0);
define("SUNFUNCS_RET_STRING", 0);
define("SUNFUNCS_RET_DOUBLE", 0);
define("M_E", 0);
define("M_LOG2E", 0);
define("M_LOG10E", 0);
define("M_LN2", 0);
define("M_LN10", 0);
define("M_PI", 0);
define("M_PI_2", 0);
define("M_PI_4", 0);
define("M_1_PI", 0);
define("M_2_PI", 0);
define("M_2_SQRTPI", 0);
define("M_SQRT2", 0);
define("M_SQRT1_2", 0);
define("INF", 0);
define("NAN", 0);
define("CRYPT_SALT_LENGTH", 0);
define("CRYPT_STD_DES", 0);
define("CRYPT_EXT_DES", 0);
define("CRYPT_MD5", 0);
define("CRYPT_BLOWFISH", 0);
define("DIRECTORY_SEPARATOR", 0);
define("PATH_SEPARATOR", 0);
define("GLOB_BRACE", 0);
define("GLOB_MARK", 0);
define("GLOB_NOSORT", 0);
define("GLOB_NOCHECK", 0);
define("GLOB_NOESCAPE", 0);
define("GLOB_ONLYDIR", 0);
define("DNS_A", 0);
define("DNS_NS", 0);
define("DNS_CNAME", 0);
define("DNS_SOA", 0);
define("DNS_PTR", 0);
define("DNS_HINFO", 0);
define("DNS_MX", 0);
define("DNS_TXT", 0);
define("DNS_SRV", 0);
define("DNS_NAPTR", 0);
define("DNS_AAAA", 0);
define("DNS_ANY", 0);
define("DNS_ALL", 0);
define("SEEK_SET", 0);
define("SEEK_CUR", 0);
define("SEEK_END", 0);
define("LOCK_SH", 0);
define("LOCK_EX", 0);
define("LOCK_UN", 0);
define("LOCK_NB", 0);
define("STREAM_NOTIFY_CONNECT", 0);
define("STREAM_NOTIFY_AUTH_REQUIRED", 0);
define("STREAM_NOTIFY_AUTH_RESULT", 0);
define("STREAM_NOTIFY_MIME_TYPE_IS", 0);
define("STREAM_NOTIFY_FILE_SIZE_IS", 0);
define("STREAM_NOTIFY_REDIRECTED", 0);
define("STREAM_NOTIFY_PROGRESS", 0);
define("STREAM_NOTIFY_FAILURE", 0);
define("STREAM_NOTIFY_COMPLETED", 0);
define("STREAM_NOTIFY_RESOLVE", 0);
define("STREAM_NOTIFY_SEVERITY_INFO", 0);
define("STREAM_NOTIFY_SEVERITY_WARN", 0);
define("STREAM_NOTIFY_SEVERITY_ERR", 0);
define("STREAM_FILTER_READ", 0);
define("STREAM_FILTER_WRITE", 0);
define("STREAM_FILTER_ALL", 0);
define("STREAM_CLIENT_PERSISTENT", 0);
define("STREAM_CLIENT_ASYNC_CONNECT", 0);
define("STREAM_CLIENT_CONNECT", 0);
define("STREAM_PEEK", 0);
define("STREAM_OOB", 0);
define("STREAM_SERVER_BIND", 0);
define("STREAM_SERVER_LISTEN", 0);
define("FILE_USE_INCLUDE_PATH", 0);
define("FILE_IGNORE_NEW_LINES", 0);
define("FILE_SKIP_EMPTY_LINES", 0);
define("FILE_APPEND", 0);
define("FILE_NO_DEFAULT_CONTEXT", 0);
define("FNM_NOESCAPE", 0);
define("FNM_PATHNAME", 0);
define("FNM_PERIOD", 0);
define("FNM_CASEFOLD", 0);
define("HTML_SPECIALCHARS", 0);
define("HTML_ENTITIES", 0);
define("ENT_COMPAT", 0);
define("ENT_QUOTES", 0);
define("ENT_NOQUOTES", 0);
define("IMAGETYPE_GIF", 0);
define("IMAGETYPE_JPEG", 0);
define("IMAGETYPE_PNG", 0);
define("IMAGETYPE_SWF", 0);
define("IMAGETYPE_PSD", 0);
define("IMAGETYPE_BMP", 0);
define("IMAGETYPE_TIFF_II", 0);
define("IMAGETYPE_TIFF_MM", 0);
define("IMAGETYPE_JPC", 0);
define("IMAGETYPE_JP2", 0);
define("IMAGETYPE_JPX", 0);
define("IMAGETYPE_JB2", 0);
define("IMAGETYPE_SWC", 0);
define("IMAGETYPE_IFF", 0);
define("IMAGETYPE_WBMP", 0);
define("IMAGETYPE_JPEG2000", 0);
define("IMAGETYPE_XBM", 0);
define("INFO_GENERAL", 0);
define("INFO_CREDITS", 0);
define("INFO_CONFIGURATION", 0);
define("INFO_MODULES", 0);
define("INFO_ENVIRONMENT", 0);
define("INFO_VARIABLES", 0);
define("INFO_LICENSE", 0);
define("INFO_ALL", 0);
define("CREDITS_GROUP", 0);
define("CREDITS_GENERAL", 0);
define("CREDITS_SAPI", 0);
define("CREDITS_MODULES", 0);
define("CREDITS_DOCS", 0);
define("CREDITS_FULLPAGE", 0);
define("CREDITS_QA", 0);
define("CREDITS_ALL", 0);
define("STR_PAD_LEFT", 0);
define("STR_PAD_RIGHT", 0);
define("STR_PAD_BOTH", 0);
define("PATHINFO_DIRNAME", 0);
define("PATHINFO_BASENAME", 0);
define("PATHINFO_EXTENSION", 0);
define("CHAR_MAX", 0);
define("LC_CTYPE", 0);
define("LC_NUMERIC", 0);
define("LC_TIME", 0);
define("LC_COLLATE", 0);
define("LC_MONETARY", 0);
define("LC_ALL", 0);
define("LC_MESSAGES", 0);
define("ABDAY_1", 0);
define("ABDAY_2", 0);
define("ABDAY_3", 0);
define("ABDAY_4", 0);
define("ABDAY_5", 0);
define("ABDAY_6", 0);
define("ABDAY_7", 0);
define("DAY_1", 0);
define("DAY_2", 0);
define("DAY_3", 0);
define("DAY_4", 0);
define("DAY_5", 0);
define("DAY_6", 0);
define("DAY_7", 0);
define("ABMON_1", 0);
define("ABMON_2", 0);
define("ABMON_3", 0);
define("ABMON_4", 0);
define("ABMON_5", 0);
define("ABMON_6", 0);
define("ABMON_7", 0);
define("ABMON_8", 0);
define("ABMON_9", 0);
define("ABMON_10", 0);
define("ABMON_11", 0);
define("ABMON_12", 0);
define("MON_1", 0);
define("MON_2", 0);
define("MON_3", 0);
define("MON_4", 0);
define("MON_5", 0);
define("MON_6", 0);
define("MON_7", 0);
define("MON_8", 0);
define("MON_9", 0);
define("MON_10", 0);
define("MON_11", 0);
define("MON_12", 0);
define("AM_STR", 0);
define("PM_STR", 0);
define("D_T_FMT", 0);
define("D_FMT", 0);
define("T_FMT", 0);
define("T_FMT_AMPM", 0);
define("ERA", 0);
define("ERA_YEAR", 0);
define("ERA_D_T_FMT", 0);
define("ERA_D_FMT", 0);
define("ERA_T_FMT", 0);
define("ALT_DIGITS", 0);
define("INT_CURR_SYMBOL", 0);
define("CURRENCY_SYMBOL", 0);
define("CRNCYSTR", 0);
define("MON_DECIMAL_POINT", 0);
define("MON_THOUSANDS_SEP", 0);
define("MON_GROUPING", 0);
define("POSITIVE_SIGN", 0);
define("NEGATIVE_SIGN", 0);
define("INT_FRAC_DIGITS", 0);
define("FRAC_DIGITS", 0);
define("P_CS_PRECEDES", 0);
define("P_SEP_BY_SPACE", 0);
define("N_CS_PRECEDES", 0);
define("N_SEP_BY_SPACE", 0);
define("P_SIGN_POSN", 0);
define("N_SIGN_POSN", 0);
define("DECIMAL_POINT", 0);
define("RADIXCHAR", 0);
define("THOUSANDS_SEP", 0);
define("THOUSEP", 0);
define("GROUPING", 0);
define("YESEXPR", 0);
define("NOEXPR", 0);
define("YESSTR", 0);
define("NOSTR", 0);
define("CODESET", 0);
define("LOG_EMERG", 0);
define("LOG_ALERT", 0);
define("LOG_CRIT", 0);
define("LOG_ERR", 0);
define("LOG_WARNING", 0);
define("LOG_NOTICE", 0);
define("LOG_INFO", 0);
define("LOG_DEBUG", 0);
define("LOG_KERN", 0);
define("LOG_USER", 0);
define("LOG_MAIL", 0);
define("LOG_DAEMON", 0);
define("LOG_AUTH", 0);
define("LOG_SYSLOG", 0);
define("LOG_LPR", 0);
define("LOG_NEWS", 0);
define("LOG_UUCP", 0);
define("LOG_CRON", 0);
define("LOG_AUTHPRIV", 0);
define("LOG_LOCAL0", 0);
define("LOG_LOCAL1", 0);
define("LOG_LOCAL2", 0);
define("LOG_LOCAL3", 0);
define("LOG_LOCAL4", 0);
define("LOG_LOCAL5", 0);
define("LOG_LOCAL6", 0);
define("LOG_LOCAL7", 0);
define("LOG_PID", 0);
define("LOG_CONS", 0);
define("LOG_ODELAY", 0);
define("LOG_NDELAY", 0);
define("LOG_NOWAIT", 0);
define("LOG_PERROR", 0);
define("PSFS_PASS_ON", 0);
define("PSFS_FEED_ME", 0);
define("PSFS_ERR_FATAL", 0);
define("PSFS_FLAG_NORMAL", 0);
define("PSFS_FLAG_FLUSH_INC", 0);
define("PSFS_FLAG_FLUSH_CLOSE", 0);
define("MSG_IPC_NOWAIT", 0);
define("MSG_NOERROR", 0);
define("MSG_EXCEPT", 0);
define("T_INCLUDE", 0);
define("T_INCLUDE_ONCE", 0);
define("T_EVAL", 0);
define("T_REQUIRE", 0);
define("T_REQUIRE_ONCE", 0);
define("T_LOGICAL_OR", 0);
define("T_LOGICAL_XOR", 0);
define("T_LOGICAL_AND", 0);
define("T_PRINT", 0);
define("T_PLUS_EQUAL", 0);
define("T_MINUS_EQUAL", 0);
define("T_MUL_EQUAL", 0);
define("T_DIV_EQUAL", 0);
define("T_CONCAT_EQUAL", 0);
define("T_MOD_EQUAL", 0);
define("T_AND_EQUAL", 0);
define("T_OR_EQUAL", 0);
define("T_XOR_EQUAL", 0);
define("T_SL_EQUAL", 0);
define("T_SR_EQUAL", 0);
define("T_BOOLEAN_OR", 0);
define("T_BOOLEAN_AND", 0);
define("T_IS_EQUAL", 0);
define("T_IS_NOT_EQUAL", 0);
define("T_IS_IDENTICAL", 0);
define("T_IS_NOT_IDENTICAL", 0);
define("T_IS_SMALLER_OR_EQUAL", 0);
define("T_IS_GREATER_OR_EQUAL", 0);
define("T_SL", 0);
define("T_SR", 0);
define("T_INC", 0);
define("T_DEC", 0);
define("T_INT_CAST", 0);
define("T_DOUBLE_CAST", 0);
define("T_STRING_CAST", 0);
define("T_ARRAY_CAST", 0);
define("T_OBJECT_CAST", 0);
define("T_BOOL_CAST", 0);
define("T_UNSET_CAST", 0);
define("T_NEW", 0);
define("T_EXIT", 0);
define("T_IF", 0);
define("T_ELSEIF", 0);
define("T_ELSE", 0);
define("T_ENDIF", 0);
define("T_LNUMBER", 0);
define("T_DNUMBER", 0);
define("T_STRING", 0);
define("T_STRING_VARNAME", 0);
define("T_VARIABLE", 0);
define("T_NUM_STRING", 0);
define("T_INLINE_HTML", 0);
define("T_CHARACTER", 0);
define("T_BAD_CHARACTER", 0);
define("T_ENCAPSED_AND_WHITESPACE", 0);
define("T_CONSTANT_ENCAPSED_STRING", 0);
define("T_ECHO", 0);
define("T_DO", 0);
define("T_WHILE", 0);
define("T_ENDWHILE", 0);
define("T_FOR", 0);
define("T_ENDFOR", 0);
define("T_FOREACH", 0);
define("T_ENDFOREACH", 0);
define("T_DECLARE", 0);
define("T_ENDDECLARE", 0);
define("T_AS", 0);
define("T_SWITCH", 0);
define("T_ENDSWITCH", 0);
define("T_CASE", 0);
define("T_DEFAULT", 0);
define("T_BREAK", 0);
define("T_CONTINUE", 0);
define("T_FUNCTION", 0);
define("T_CONST", 0);
define("T_RETURN", 0);
define("T_USE", 0);
define("T_GLOBAL", 0);
define("T_STATIC", 0);
define("T_VAR", 0);
define("T_UNSET", 0);
define("T_ISSET", 0);
define("T_EMPTY", 0);
define("T_CLASS", 0);
define("T_EXTENDS", 0);
define("T_INTERFACE", 0);
define("T_IMPLEMENTS", 0);
define("T_OBJECT_OPERATOR", 0);
define("T_DOUBLE_ARROW", 0);
define("T_LIST", 0);
define("T_ARRAY", 0);
define("T_CLASS_C", 0);
define("T_FUNC_C", 0);
define("T_METHOD_C", 0);
define("T_LINE", 0);
define("T_FILE", 0);
define("T_COMMENT", 0);
define("T_DOC_COMMENT", 0);
define("T_OPEN_TAG", 0);
define("T_OPEN_TAG_WITH_ECHO", 0);
define("T_CLOSE_TAG", 0);
define("T_WHITESPACE", 0);
define("T_START_HEREDOC", 0);
define("T_END_HEREDOC", 0);
define("T_DOLLAR_OPEN_CURLY_BRACES", 0);
define("T_CURLY_OPEN", 0);
define("T_PAAMAYIM_NEKUDOTAYIM", 0);
define("T_DOUBLE_COLON", 0);
define("T_ABSTRACT", 0);
define("T_CATCH", 0);
define("T_FINAL", 0);
define("T_INSTANCEOF", 0);
define("T_PRIVATE", 0);
define("T_PROTECTED", 0);
define("T_PUBLIC", 0);
define("T_THROW", 0);
define("T_TRY", 0);
define("T_CLONE", 0);
define("W32API_ARGPTR", 0);
define("W32API_BORLAND", 0);
define("W32API_CDECL", 0);
define("W32API_REAL4", 0);
define("W32API_REAL8", 0);
define("XML_ERROR_NONE", 0);
define("XML_ERROR_NO_MEMORY", 0);
define("XML_ERROR_SYNTAX", 0);
define("XML_ERROR_NO_ELEMENTS", 0);
define("XML_ERROR_INVALID_TOKEN", 0);
define("XML_ERROR_UNCLOSED_TOKEN", 0);
define("XML_ERROR_PARTIAL_CHAR", 0);
define("XML_ERROR_TAG_MISMATCH", 0);
define("XML_ERROR_DUPLICATE_ATTRIBUTE", 0);
define("XML_ERROR_JUNK_AFTER_DOC_ELEMENT", 0);
define("XML_ERROR_PARAM_ENTITY_REF", 0);
define("XML_ERROR_UNDEFINED_ENTITY", 0);
define("XML_ERROR_RECURSIVE_ENTITY_REF", 0);
define("XML_ERROR_ASYNC_ENTITY", 0);
define("XML_ERROR_BAD_CHAR_REF", 0);
define("XML_ERROR_BINARY_ENTITY_REF", 0);
define("XML_ERROR_ATTRIBUTE_EXTERNAL_ENTITY_REF", 0);
define("XML_ERROR_MISPLACED_XML_PI", 0);
define("XML_ERROR_UNKNOWN_ENCODING", 0);
define("XML_ERROR_INCORRECT_ENCODING", 0);
define("XML_ERROR_UNCLOSED_CDATA_SECTION", 0);
define("XML_ERROR_EXTERNAL_ENTITY_HANDLING", 0);
define("XML_OPTION_CASE_FOLDING", 0);
define("XML_OPTION_TARGET_ENCODING", 0);
define("XML_OPTION_SKIP_TAGSTART", 0);
define("XML_OPTION_SKIP_WHITE", 0);
define("XML_SAX_IMPL", 0);
define("XML_SAX_IMPL", 0);
define("XSL_CLONE_AUTO", 0);
define("XSL_CLONE_NEVER", 0);
define("XSL_CLONE_ALWAYS", 0);
define("YPERR_BADARGS", 0);
define("YPERR_BADDB", 0);
define("YPERR_BUSY", 0);
define("YPERR_DOMAIN", 0);
define("YPERR_KEY", 0);
define("YPERR_MAP", 0);
define("YPERR_NODOM", 0);
define("YPERR_NOMORE", 0);
define("YPERR_PMAP", 0);
define("YPERR_RESRC", 0);
define("YPERR_RPC", 0);
define("YPERR_YPBIND", 0);
define("YPERR_YPERR", 0);
define("YPERR_YPSERV", 0);
define("YPERR_VERS", 0);
define("FORCE_GZIP", 0);
define("FORCE_DEFLATE", 0);
define("STREAM_USE_PATH", 0);
define("STREAM_IGNORE_URL", 0);
define("STREAM_ENFORCE_SAFE_MODE", 0);
define("STREAM_REPORT_ERRORS", 0);
define("STREAM_MUST_SEEK", 0);
define("STREAM_URL_STAT_LINK", 0);
define("STREAM_URL_STAT_QUIET", 0);
define("STREAM_MKDIR_RECURSIVE", 0);
define("PHP_VERSION", 0);
define("PHP_OS", 0);
define("PHP_SAPI", 0);
define("DEFAULT_INCLUDE_PATH", 0);
define("PEAR_INSTALL_DIR", 0);
define("PEAR_EXTENSION_DIR", 0);
define("PHP_EXTENSION_DIR", 0);
define("PHP_PREFIX", 0);
define("PHP_BINDIR", 0);
define("PHP_LIBDIR", 0);
define("PHP_DATADIR", 0);
define("PHP_SYSCONFDIR", 0);
define("PHP_LOCALSTATEDIR", 0);
define("PHP_CONFIG_FILE_PATH", 0);
define("PHP_CONFIG_FILE_SCAN_DIR", 0);
define("PHP_SHLIB_SUFFIX", 0);
define("PHP_EOL", 0);
define("PHP_OUTPUT_HANDLER_START", 0);
define("PHP_OUTPUT_HANDLER_CONT", 0);
define("PHP_OUTPUT_HANDLER_END", 0);
define("UPLOAD_ERR_OK", 0);
define("UPLOAD_ERR_INI_SIZE", 0);
define("UPLOAD_ERR_FORM_SIZE", 0);
define("UPLOAD_ERR_PARTIAL", 0);
define("UPLOAD_ERR_NO_FILE", 0);
define("OK", 0);
define("DECLINED", 0);
define("FORBIDDEN", 0);
define("AUTH_REQUIRED", 0);
define("DONE", 0);
define("SERVER_ERROR", 0);
define("REDIRECT", 0);
define("BAD_REQUEST", 0);
define("NOT_FOUND", 0);
define("HTTP_CONTINUE", 0);
define("HTTP_SWITCHING_PROTOCOLS", 0);
define("HTTP_PROCESSING", 0);
define("HTTP_OK", 0);
define("HTTP_CREATED", 0);
define("HTTP_ACCEPTED", 0);
define("HTTP_NON_AUTHORITATIVE", 0);
define("HTTP_NO_CONTENT", 0);
define("HTTP_RESET_CONTENT", 0);
define("HTTP_PARTIAL_CONTENT", 0);
define("HTTP_MULTI_STATUS", 0);
define("HTTP_MULTIPLE_CHOICES", 0);
define("HTTP_MOVED_PERMANENTLY", 0);
define("HTTP_MOVED_TEMPORARILY", 0);
define("HTTP_SEE_OTHER", 0);
define("HTTP_NOT_MODIFIED", 0);
define("HTTP_USE_PROXY", 0);
define("HTTP_TEMPORARY_REDIRECT", 0);
define("HTTP_BAD_REQUEST", 0);
define("HTTP_UNAUTHORIZED", 0);
define("HTTP_PAYMENT_REQUIRED", 0);
define("HTTP_FORBIDDEN", 0);
define("HTTP_NOT_FOUND", 0);
define("HTTP_METHOD_NOT_ALLOWED", 0);
define("HTTP_NOT_ACCEPTABLE", 0);
define("HTTP_PROXY_AUTHENTICATION_REQUIRED", 0);
define("HTTP_REQUEST_TIME_OUT", 0);
define("HTTP_CONFLICT", 0);
define("HTTP_GONE", 0);
define("HTTP_PRECONDITION_FAILED", 0);
define("HTTP_REQUEST_ENTITY_TOO_LARGE", 0);
define("HTTP_REQUEST_URI_TOO_LARGE", 0);
define("HTTP_UNSUPPORTED_MEDIA_TYPE", 0);
define("HTTP_RANGE_NOT_SATISFIABLE", 0);
define("HTTP_EXPECTATION_FAILED", 0);
define("HTTP_UNPROCESSABLE_ENTITY", 0);
define("HTTP_LOCKED", 0);
define("HTTP_FAILED_DEPENDENCY", 0);
define("HTTP_INTERNAL_SERVER_ERROR", 0);
define("HTTP_NOT_IMPLEMENTED", 0);
define("HTTP_BAD_GATEWAY", 0);
define("HTTP_SERVICE_UNAVAILABLE", 0);
define("HTTP_GATEWAY_TIME_OUT", 0);
define("HTTP_VERSION_NOT_SUPPORTED", 0);
define("HTTP_VARIANT_ALSO_VARIES", 0);
define("HTTP_INSUFFICIENT_STORAGE", 0);
define("HTTP_NOT_EXTENDED", 0);
define("APLOG_EMERG", 0);
define("APLOG_ALERT", 0);
define("APLOG_CRIT", 0);
define("APLOG_ERR", 0);
define("APLOG_WARNING", 0);
define("APLOG_NOTICE", 0);
define("APLOG_INFO", 0);
define("APLOG_DEBUG", 0);
define("M_GET", 0);
define("M_PUT", 0);
define("M_POST", 0);
define("M_DELETE", 0);
define("M_CONNECT", 0);
define("M_OPTIONS", 0);
define("M_TRACE", 0);
define("M_PATCH", 0);
define("M_PROPFIND", 0);
define("M_PROPPATCH", 0);
define("M_MKCOL", 0);
define("M_COPY", 0);
define("M_MOVE", 0);
define("M_LOCK", 0);
define("M_UNLOCK", 0);
define("M_INVALID", 0);
define("REQUEST_NO_BODY", 0);
define("REQUEST_CHUNKED_ERROR", 0);
define("REQUEST_CHUNKED_DECHUNK", 0);
define("REQUEST_CHUNKED_PASS", 0);
define("REMOTE_HOST", 0);
define("REMOTE_NAME", 0);
define("REMOTE_NOLOOKUP", 0);
define("REMOTE_DOUBLE_REV", 0);
define("SMFIS_CONTINUE", 0);
define("SMFIS_REJECT", 0);
define("SMFIS_DISCARD", 0);
define("SMFIS_ACCEPT", 0);
define("SMFIS_TEMPFAIL", 0);
define("SMFIF_ADDHDRS", 0);
define("SMFIF_CHGHDRS", 0);
define("SMFIF_CHGBODY", 0);
define("SMFIF_ADDRCPT", 0);
define("SMFIF_DELRCPT", 0);
define("E_ERROR", 0);
define("E_WARNING", 0);
define("E_PARSE", 0);
define("E_NOTICE", 0);
define("E_STRICT", 0);
define("E_CORE_ERROR", 0);
define("E_CORE_WARNING", 0);
define("E_COMPILE_ERROR", 0);
define("E_COMPILE_WARNING", 0);
define("E_USER_ERROR", 0);
define("E_USER_WARNING", 0);
define("E_USER_NOTICE", 0);
define("E_ALL", 0);
define("P_STATIC", 0);
define("P_PUBLIC", 0);
define("P_PROTECTED", 0);
define("P_PRIVATE", 0);
define("M_STATIC", 0);
define("M_PUBLIC", 0);
define("M_PROTECTED", 0);
define("M_PRIVATE", 0);
define("M_ABSTRACT", 0);
define("M_FINAL", 0);
define("C_IMPLICIT_ABSTRACT", 0);
define("C_EXPLICIT_ABSTRACT", 0);
define("C_FINAL", 0);
define("OPT_PASS_1", 0);
define("OPT_PASS_2", 0);
define("OPT_PASS_3", 0);
define("OPT_PASS_4", 0);
define("OPT_PASS_5", 0);
define("OPT_PASS_6", 0);
define("OPT_PASS_7", 0);
define("OPT_PASS_8", 0);
define("OPT_PASS_9", 0);
define("OPT_PASS_10", 0);
define("OPT_ALL", 0);
define("OPT_PASS_1", 0);
define("OPT_PASS_2", 0);
define("OPT_PASS_3", 0);
define("OPT_PASS_4", 0);
define("OPT_PASS_5", 0);
define("OPT_PASS_6", 0);
define("OPT_PASS_7", 0);
define("OPT_PASS_8", 0);
define("OPT_PASS_9", 0);
define("OPT_PASS_10", 0);
define("OPT_ALL", 0);
define("SOAP_1_1", 0);
define("SOAP_1_2", 0);
define("SOAP_PERSISTENCE_SESSION", 0);
define("SOAP_PERSISTENCE_REQUEST", 0);
define("SOAP_FUNCTIONS_ALL", 0);
define("SOAP_ENCODED", 0);
define("SOAP_LITERAL", 0);
define("SOAP_RPC", 0);
define("SOAP_DOCUMENT", 0);
define("SOAP_ACTOR_NEXT", 0);
define("SOAP_ACTOR_NONE", 0);
define("SOAP_ACTOR_UNLIMATERECEIVER", 0);
define("SOAP_COMPRESSION_ACCEPT", 0);
define("SOAP_COMPRESSION_GZIP", 0);
define("SOAP_COMPRESSION_DEFLATE", 0);
define("UNKNOWN_TYPE", 0);
define("XSD_STRING", 0);
define("XSD_BOOLEAN", 0);
define("XSD_DECIMAL", 0);
define("XSD_FLOAT", 0);
define("XSD_DOUBLE", 0);
define("XSD_DURATION", 0);
define("XSD_DATETIME", 0);
define("XSD_TIME", 0);
define("XSD_DATE", 0);
define("XSD_GYEARMONTH", 0);
define("XSD_GYEAR", 0);
define("XSD_GMONTHDAY", 0);
define("XSD_GDAY", 0);
define("XSD_GMONTH", 0);
define("XSD_HEXBINARY", 0);
define("XSD_BASE64BINARY", 0);
define("XSD_ANYURI", 0);
define("XSD_QNAME", 0);
define("XSD_NOTATION", 0);
define("XSD_NORMALIZEDSTRING", 0);
define("XSD_TOKEN", 0);
define("XSD_LANGUAGE", 0);
define("XSD_NMTOKEN", 0);
define("XSD_NAME", 0);
define("XSD_NCNAME", 0);
define("XSD_ID", 0);
define("XSD_IDREF", 0);
define("XSD_IDREFS", 0);
define("XSD_ENTITY", 0);
define("XSD_ENTITIES", 0);
define("XSD_INTEGER", 0);
define("XSD_NONPOSITIVEINTEGER", 0);
define("XSD_NEGATIVEINTEGER", 0);
define("XSD_LONG", 0);
define("XSD_INT", 0);
define("XSD_SHORT", 0);
define("XSD_BYTE", 0);
define("XSD_NONNEGATIVEINTEGER", 0);
define("XSD_UNSIGNEDLONG", 0);
define("XSD_UNSIGNEDINT", 0);
define("XSD_UNSIGNEDSHORT", 0);
define("XSD_UNSIGNEDBYTE", 0);
define("XSD_POSITIVEINTEGER", 0);
define("XSD_NMTOKENS", 0);
define("XSD_ANYTYPE", 0);
define("SOAP_ENC_OBJECT", 0);
define("SOAP_ENC_ARRAY", 0);
define("XSD_1999_TIMEINSTANT", 0);
define("XSD_NAMESPACE", 0);
define("XSD_1999_NAMESPACE", 0);

?>
