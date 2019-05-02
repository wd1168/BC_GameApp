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

$g_query =
    "SELECT g.Game_ID, g.Name, i.Image AS 'Image'
        FROM game g LEFT JOIN game_image i ON g.Image_ID = i.G_Image_ID WHERE g.Type = 'card'";
$g_statement = $pdo->prepare($g_query);
$g_statement ->execute();

$old_game = -1;
$game_list= array();
$results = false;

while($row = $g_statement->fetch(PDO::FETCH_ASSOC)){
    $results = true;

    if ($old_game != $row['Game_ID']) {
        if($old_game != -1){
            $game_list[$old_game] = $game;
        }
        $game = array (
            "Game_ID" => $row['Game_ID'],
            "Name" => $row['Name'],
            "Image" => 'data:image/jpeg;base64,' . base64_encode($row['Image'])
        );

        $old_game = $row['Game_ID'];

    }
}



$game_list[$old_game] = $game;

$smarty->assign("results", $results);
$smarty->assign("game_list", $game_list);

$smarty->display('card_games.tpl');
