<?php

$search_query = "SELECT `Name` FROM game;";
$search_statement = $pdo->prepare($search_query);
$search_statement ->execute();
try 
    {
        $search_results = array();
        while ($row = $search_statement->fetch(PDO::FETCH_ASSOC)) {
            array_push($search_results, $row['Name']);
        }
        
    }
    catch(PDOException $e)
        {
        echo "Error: " . $e->getMessage();
        }

$smarty -> assign('search_results', $search_results);
