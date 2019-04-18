<?php

require_once "../configuration/config.php";
require_once "../configuration/dbconfig.php";

session_start();
include "search_page.php";

if (isset($_SESSION['User'])) {
    $query = "SELECT First_Name, Last_Name FROM user
          WHERE User_ID = :id";

    $statement = $pdo->prepare($query);
    $statement->bindParam(':id', $_SESSION['User']);
    $statement->execute();

    $result = $statement->fetch(PDO::FETCH_ASSOC);
    $fname = $result["First_Name"];
    $lname = $result['Last_Name'];

    $smarty->assign('first_name', $fname);
    $smarty->assign('last_name', $lname);
}


$title = $_GET['link'];

$game_query =
    "SELECT g.Name, i.Name AS 'Image', Description, Age, Player_Count, m.Name AS 'Manufacturer' FROM
        game g LEFT JOIN manufacturer m ON g.Manufacturer_ID = m.Manufacturer_ID LEFT JOIN game_image i 
        ON g.Image_ID = i.G_Image_ID WHERE g.Name = :n";
$statement2 = $pdo->prepare($game_query);
$statement2->bindParam(':n', $title);
$statement2->execute();
while ($row = $statement2->fetch(PDO::FETCH_ASSOC)) {
    $game = array('Name' => $row['Name'], 'Image' => $row['Image'], 'Description' => $row['Description'],
        'Age' => $row['Age'], 'Player_Count' => $row['Player_Count'], 'Manufacturer' => $row['Manufacturer']);
}

$smarty->assign('game', $game);

//Expansion Code- below

$exp_query = "SELECT Expansion_ID, e.Name AS 'Name' , g.Name AS 'G_Name', i.Name AS 'Image' FROM
                  expansion e LEFT JOIN game g ON e.Game_ID = g.Game_ID LEFT JOIN game_image i ON g.Image_ID = i.G_Image_ID WHERE g.Name = :e";
$exp_statement = $pdo->prepare($exp_query);
$exp_statement ->bindParam(':e', $title);
$exp_statement ->execute();

$old_exp = -1;
$exp_list= array();
$exp_results = false;

while($xrow = $exp_statement->fetch(PDO::FETCH_ASSOC)){
    $exp_results = true;
    if ($old_exp != $xrow['Game_ID']) {
        if($old_exp != -1){
            $exp_list[$old_exp] = $expansion;
        }
        $expansion = array (
            "Expansion_ID" => $xrow['Expansion_ID'],
            "Name" => $xrow['Name'],
            "G_Name" => $xrow['G_Name'],
            "Image" => $xrow['Image']
        );

        $old_exp = $xrow['Expansion_ID'];

    }
}
$exp_list[$old_exp] = $expansion;

$smarty->assign('exp_results', $exp_results);
$smarty->assign('exp_list', $exp_list);



$smarty->display('game.tpl');
