<?php

 //require_once "dbconfig.php";
 
 require '../libs/Smarty.class.php';
 $smarty = new Smarty();

$smarty->setTemplateDir("../web/templates");
$smarty->setCompileDir("../web/templates_c");
$smarty->setCacheDir("../web/cache");
$smarty->setConfigDir("../web/configs");
?>