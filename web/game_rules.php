<?php


require_once "../configuration/config.php";
require_once "../configuration/dbconfig.php";

session_start();
include "search_page.php";

if (isset($_SESSION['User'])){
    $query = "SELECT First_Name, Last_Name FROM user
          WHERE User_ID = :id";

    $statement = $pdo->prepare($query);
    $statement->bindParam(':id', $_SESSION['User']);
    $statement ->execute();

    $result = $statement->fetch(PDO::FETCH_ASSOC);
    $fname = $result["First_Name"];
    $lname = $result['Last_Name'];

    $smarty -> assign('first_name', $fname);
    $smarty -> assign('last_name', $lname);
}

$game_name = $_GET['link'];

// Query for game image
$image_query = "Select i.Name AS 'Image_Name' FROM game g left join game_image i ON g.Image_ID = i.G_Image_ID WHERE g.Name = :g";
$image_stmt = $pdo->prepare($image_query);
$image_stmt->bindParam(':g', $game_name);
$image_stmt->execute();

$image_result = $image_stmt->fetch(PDO::FETCH_ASSOC);
$image_name = $image_result['Image_Name'];

$smarty ->  assign('image_name', $image_name);


$rule_query = "SELECT Rule, `Name`, `Type`, Age, Player_Count, Category, Subcategory FROM game_rule
INNER JOIN game ON game_rule.Game_ID=game.Game_ID where game.Name = :game_name;";

$statement2 = $pdo->prepare($rule_query);
$statement2->bindParam(':game_name', $game_name);
$statement2 ->execute();

try
    {
        $rules = array();
        $info = array();
        $category = array();
        $subcategory = array();

        while ($row = $statement2->fetch(PDO::FETCH_ASSOC)) {
               array_push($rules, $row['Rule']);
               array_push($category, $row['Category']);
               array_push($subcategory, $row["Subcategory"]);
               array_push($info,  $row["Name"], $row["Type"], $row["Age"],$row["Player_Count"]);
        }

    }
    catch(PDOException $e)
        {
        echo "Error: " . $e->getMessage();
        }
    $pdo = null;

    $smarty -> assign('rules', $rules);
    $smarty -> assign('info', $info);
    $smarty -> assign('category', $category);
    $smarty -> assign('subcategory', $subcategory);

$smarty->display('game_rules.tpl');
