<?php
require_once "../configuration/config.php";
require_once "../configuration/dbconfig.php";

session_start();
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


$search_query = "SELECT `Name` FROM game;";

$statement2 = $pdo->prepare($search_query);

$statement2 ->execute();

try 
    {
        $games = array();

        while ($row = $statement2->fetch(PDO::FETCH_ASSOC)) {
            array_push($games, $row['Name']);
        }
        
    }
    catch(PDOException $e)
        {
        echo "Error: " . $e->getMessage();
        }
    $pdo = null;
    $smarty -> assign('games', $games);
 
$smarty->display('search_page.tpl');