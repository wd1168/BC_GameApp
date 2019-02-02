<?php
/**
 * Created by PhpStorm.
 * User: bb135
 * Date: 2/20/2018
 * Time: 12:29 AM
 */

# Set database constants
define ('DB_USER', 'root');
define ('DB_PASSWORD', 'root');
define ('DB_NAME', 'login');
define ('DB_HOST', 'localhost');

# Connect to the database
$db_name = DB_NAME;
$username = DB_USER;
$password = DB_PASSWORD;
$host = DB_HOST;
try {
    $pdo = new PDO("mysql:dbname=" . $db_name . ";host=" . $host, $username, $password);
} catch(PDOException $e) {
    echo 'ERROR: ' . $e -> getMessage();
}

# Define Paths
$tmp = explode(DIRECTORY_SEPARATOR, __DIR__);
unset($tmp[count($tmp) - 1]);
define('BASE_PATH', implode(DIRECTORY_SEPARATOR, $tmp) . DIRECTORY_SEPARATOR);
define('PUBLIC_PATH', BASE_PATH . 'public_html' . DIRECTORY_SEPARATOR);
define('WEB_PATH', PUBLIC_PATH);
define('PRIVATE_PATH', BASE_PATH . 'private_html' . DIRECTORY_SEPARATOR);
define('CLASS_PATH', PUBLIC_PATH . "class" . DIRECTORY_SEPARATOR);

# Define SMARTY Paths
define('SMARTY_PATH', PUBLIC_PATH . 'smarty-3.1.30' . DIRECTORY_SEPARATOR);
define('SMARTY_TEMPLATES', PUBLIC_PATH . 'templates' . DIRECTORY_SEPARATOR);
define('SMARTY', SMARTY_PATH . 'libs' . DIRECTORY_SEPARATOR . 'Smarty.class.php');

# Begin the session
session_start();

# Smarty setup
require_once SMARTY;
$smarty = new Smarty;
$smarty -> setTemplateDir(SMARTY_TEMPLATES);
$smarty -> setCompileDir(SMARTY_PATH . 'templates_c');
$smarty -> setCacheDir(SMARTY_PATH . 'cache');
$smarty -> setConfigDir(SMARTY_PATH . 'configs');

/* DEBUG (Taken from SymPRM by Dr.Weaver) *
echo "BASE_PATH = " . BASE_PATH . "<br>";
echo "PUBLIC_PATH = " . PUBLIC_PATH . "<br>";
echo "PRIVATE_PATH = " . PRIVATE_PATH . "<br>";
echo "URL = " . URL . "<br>";
echo "CLASS_PATH = " . CLASS_PATH . "<br>";
echo "SMARTY_PATH = " . SMARTY_PATH . "<br>";
echo "SMARTY_TEMPLATES = " . SMARTY_TEMPLATES . "<br>";
echo "SMARTY = " . SMARTY . "<br>";

if($local){
    echo "This machine is a development machine<br>";
} else {
    echo "This machine is considered the production machine<br />";
}
exit();
//   */

