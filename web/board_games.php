<?php

require_once "../configuration/config.php";
require_once "../configuration/dbconfig.php";

$query = "SELECT First_Name, Last_Name, Email FROM user
          WHERE User_ID = 2";

$statement = $pdo->prepare($query);

//$statement->bindParam('First_Name', $first_name);
//$statement->bindParam('Last_Name', $last_name);
//$statement->bindParam('Email', $email);
$statement ->execute();

echo "hello out there";
//echo ($first_name);
//echo($last_name);
//echo($first_name);

$smarty -> assign('Last_Name', $last_name);
$smarty -> assign('Email', $email);

$result = $statement->fetch(PDO::FETCH_ASSOC);
$name = $result["First_Name"];
$name2 = $result['Last_Name'];
$email = $result['Email'];

$smarty -> assign('name', $name);
$smarty -> assign('name2', $name2);
$smarty -> assign('email', $email);

$smarty->display('board_games.tpl');

