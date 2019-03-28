<?php
/**
 * Example Application
 *
 * @package Example-application
 */
require_once "../configuration/config.php";
require_once "../configuration/dbconfig.php";

session_start();
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
    "SELECT g.Name, Description, Age, Player_Count, m.Name AS 'Manufacturer' FROM
        game g LEFT JOIN manufacturer m ON g.Manufacturer_ID = m.Manufacturer_ID WHERE g.Name = :n";
$statement2 = $pdo->prepare($game_query);
$statement2->bindParam(':n', $title);
$statement2->execute();
while ($row = $statement2->fetch(PDO::FETCH_ASSOC)) {
    $game = array('Name' => $row['Name'], 'Description' => $row['Description'],
        'Age' => $row['Age'], 'Player_Count' => $row['Player_Count'], 'Manufacturer' => $row['Manufacturer']);
}

$smarty->assign('game', $game);

$smarty->display('game.tpl');
