<?php
/**
 * Example Application
 *
 * @package Example-application
 */
require_once "../configuration/config.php";
require_once "../configuration/dbconfig.php";

session_start();
if (isset ($_SESSION['User'])){
    header("Location: index.php");
}

if(!isset($_POST['first_name'])) {
    $smarty->display('signup.tpl');
    exit();
}

$sql = "INSERT INTO user
          (Email, Password, First_Name, Last_Name)
      VALUES
          (:e, :p, :f, :l)";

$stmt = $pdo->prepare($sql);
$stmt->bindParam(':e', $_POST['email']);
$stmt->bindParam(':p', $_POST['password']);
$stmt->bindParam(':f', $_POST['first_name']);
$stmt->bindParam(':l', $_POST['last_name']);
$stmt->execute();
header("Location: index.php");




