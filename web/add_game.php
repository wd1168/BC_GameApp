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
if(!isset($_POST['name'])) {
    $smarty->display('add_game.tpl');
    exit();
}


$msg = $name = $description = $age = $count = $type = $deck = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $name = clean_input($_POST["name"]);
  $description = clean_input($_POST["description"]);
  $age = clean_input($_POST["age"]);
  $count = clean_input($_POST["count"]);
  $type = clean_input($_POST["type"]);
  $deck = clean_input($_POST["deck"]);
     
        $err = 0;
        if ($name == "" || $description == "" || $age == "" || $count == "" || $type == "" || $deck == ""){
            $msg = "Please make sure you provide all required information";
            $err = 1;
        }
        else if ($age < 4){
            $msg = "Please make sure age rating is above 4";
            $err = 1;
        }
        else if ($count < 1){
            $msg = "Please make sure player count is one of more";
            $err = 1;
        }
     
        $smarty->assign('msg', $msg);
        $smarty->assign('name', $name);
        $smarty->assign('description', $description);
        $smarty->assign('age', $age);
        $smarty->assign('count', $count);
        $smarty->assign('type', $type);
        $smarty->assign('deck', $deck);
    if ($err){
        $smarty->display('add_game.tpl');
        exit();
    }
} 
 
  
  $sql = "SELECT *FROM game 
              WHERE `name` = '$name';";
  
  
     $query = $pdo->query($sql);
     $rows = $query->fetchAll();
     $rowCount = count($rows);
    
        
    if ($rowCount == 1) {
         $message = "Game already exists \n 
                      Please add a different game";
         $smarty->assign('msg', $message);
         $smarty->display('add_game.tpl');
         exit();
    }else {
          $sql = "INSERT INTO game
                            (`Name`, `Description`, Age, Player_Count, `Type`, Deck)
                  VALUES
                            (:name, :description, :age, :count, :type, :deck)";
    }
    
    function clean_input($data) {
      $data = trim($data);
      $data = htmlspecialchars($data);
      return $data;
    }

$stmt = $pdo->prepare($sql);
$stmt->bindParam(':name', $name);
$stmt->bindParam(':description', $description);
$stmt->bindParam(':age', $age);
$stmt->bindParam(':count', $count);
$stmt->bindParam(':type', $type);
$stmt->bindParam(':deck', $deck);
$stmt->execute();


header("Location: index.php");
