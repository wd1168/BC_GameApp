<?php
require_once "../configuration/config.php";
require_once "../configuration/dbconfig.php";

$query = "SELECT `Name` FROM game;";

$statement = $pdo->prepare($query);

$statement ->execute();

try 
    {
        $games = array();

        while ($row = $statement->fetch(PDO::FETCH_ASSOC)) {
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