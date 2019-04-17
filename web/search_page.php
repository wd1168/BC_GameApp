<?php
require_once "../configuration/config.php";
require_once "../configuration/dbconfig.php";

include 'search.php';
 
$smarty->display('search_page.tpl');
