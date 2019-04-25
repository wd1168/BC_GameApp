<?php
$game_id = $game['Game_ID'];
// Load Questions
$load_questions = "SELECT Question_ID, Question, Game_ID, CONCAT(u.First_Name, \" \", u.Last_Name) AS 'User_Name' FROM
 question q LEFT JOIN user u ON q.User_ID = u.User_ID WHERE q.Game_ID = :gid";
$qload_stmt = $pdo->prepare($load_questions);
$qload_stmt->bindParam(':gid', $game_id);
$qload_stmt->execute();

$old_question = -1;
$question_list= array();
$question_results = false;
while($row = $qload_stmt->fetch(PDO::FETCH_ASSOC)){
    $question_results = true;
    if ($old_question != $row['Question_ID']) {
        if($old_question != -1){
            $question_list[$old_question] = $question_array;
        }
        $question_array = array (
            "Question_ID" => $row['Question_ID'],
            "Question" => $row['Question'],
            "Game_ID" => $row['Game_ID'],
            "User_Name" => $row['User_Name']
        );

        $old_question = $row['Question_ID'];

    }
}


$question_list[$old_question] = $question_array;

$load_replies = "SELECT Answer_ID, Question_ID, Answer, a.User_ID, CONCAT(u.First_Name, \" \", u.Last_Name) AS 'Full_Name' FROM
answer a LEFT JOIN user u ON a.User_ID = u.User_ID";
$reply_stmt = $pdo->prepare($load_replies);
$reply_stmt->execute();

$old_reply = -1;
$reply_list = array();
$reply_results = false;
while($row = $reply_stmt->fetch(PDO::FETCH_ASSOC)){
    $reply_results = true;
    if ($old_reply != $row['Answer_ID']) {
        if($old_reply != -1){
            $reply_list[$old_reply] = $reply_array;
        }

        $reply_array = array (
            "Answer_ID" => $row["Answer_ID"],
            "Question_ID" => $row["Question_ID"],
            "Answer" => $row["Answer"],
            "User_ID" => $row["User_ID"],
            "Full_Name" => $row["Full_Name"]
        );

        $old_reply = $row["Answer_ID"];
    }
}

$reply_list[$old_reply] = $reply_array;


$smarty->assign("reply_results", $reply_results);
$smarty->assign("reply_list", $reply_list);

$smarty->assign("question_results", $question_results);
$smarty->assign("question_list", $question_list);


$user_id = $_SESSION['User'];
$game_link = $game['Name'];

// add question query
if (isset ($_POST['game_question'])){
    $game_question = $_POST['game_question'];
    $add_ques = "INSERT INTO question
           (Question, Game_ID, User_ID)
             VALUES
           ('$game_question','$game_id', '$user_id')";
    $ques_stmt = $pdo->prepare($add_ques);
    $ques_stmt->execute();
    header("Location: game.php?link=$game_link");
}



// add response query
if (isset ($_POST['question_response'])){
    echo "hello world";
    $reply = $_POST['question_response'];
    $question_id = $_POST['question_id'];
    $add_answer = "INSERT INTO answer
           (Question_ID, Answer, User_ID)
             VALUES
           ('$question_id', '$reply', '$user_id')";
    $answer_stmt = $pdo->prepare($add_answer);
    $answer_stmt->execute();
    header("Location: game.php?link=$game_link");
}
