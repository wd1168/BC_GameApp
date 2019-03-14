<?php


if( $_GET['link']=='gofish' ){
    $game_name = "gofish";
} 
else if( $_GET['link']=='solitaire' ){
    $game_name = "solitaire";
}
else if( $_GET['link']=='war' ){
    $game_name = "war";
}
else if( $_GET['link']=='battleship' ){
    $game_name = "battleship";
}
else if( $_GET['link']=='othello' ){
    $game_name = "othello";
}
else{
    $game_name = "monopoly";
}


require_once "../configuration/config.php";
require_once "../configuration/dbconfig.php";

$query = "SELECT Rule, `Name`, `Type`, Age, Player_Count, Category, Subcategory FROM game_rule
INNER JOIN game ON game_rule.Game_ID=game.Game_ID where game.Name = '$game_name';";

$statement = $pdo->prepare($query);

$statement ->execute();

try 
    {
        $rules = array();
        $info = array();
        $category = array();

        while ($row = $statement->fetch(PDO::FETCH_ASSOC)) {
               array_push($rules, $row['Rule']);
               array_push($category, $row['Category']);
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
 
$smarty->display('game_rules.tpl');