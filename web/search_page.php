<?php

$search_query = "SELECT `Name` FROM game;";
$search_statement = $pdo->prepare($search_query);
$search_statement ->execute();

$search_q = "SELECT Rule FROM game_rule;";
$search_stmt = $pdo->prepare($search_q);
$search_stmt ->execute();
try 
    {
        $search_results = array();
        while ($row = $search_statement->fetch(PDO::FETCH_ASSOC)) {
            array_push($search_results, $row['Name']);
        }

        $r_results = array();
        while ($row = $search_stmt->fetch(PDO::FETCH_ASSOC)) {
            array_push($r_results, $row['Rule']);
        }
        
    }
    catch(PDOException $e)
        {
        echo "Error: " . $e->getMessage();
        }

$smarty -> assign('search_results', $search_results);
$smarty -> assign('r_results', $r_results);
