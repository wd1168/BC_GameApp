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

$game_name = $_GET['link'];

$rule_query = "SELECT g.Name AS 'G_Name', Age, Player_Count, e.Name AS 'E_Name', Rule, Category, Subcategory
    FROM expansion e INNER JOIN expansion_rule r ON e.Expansion_ID = r.Expansion_ID INNER JOIN
        game g ON e.Game_ID = g.Game_ID WHERE e.Name = :game_name";

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
        array_push($subcategory, $row['Subcategory']);
        array_push($info, $row["E_Name"], $row["G_Name"], $row["Age"], $row['Player_Count']);

    }

}
catch(PDOException $e)
{
    echo "Error: " . $e->getMessage();
}
$pdo = null;

$smarty -> assign('info', $info);
$smarty -> assign('rules', $rules);
$smarty -> assign('category', $category);
$smarty -> assign('subcategory', $subcategory);

$smarty->display('expansion_rules.tpl');
