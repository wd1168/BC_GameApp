
<?php
/**
 * Example Application
 *
 * @package Example-application
 */
 
require_once "../configuration/config.php";
require_once "../configuration/dbconfig.php";
session_start();
if (isset ($_SESSION['User'])){
    header("Location: index.php");
}
if(!isset($_POST['name'])) {
    $smarty->display('add_game.tpl');
    exit();
}

$img_name = $msg = $name = $description = $age = $count = $type = $deck = $image = "";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $name = clean_input($_POST["name"]);
  $description = clean_input($_POST["description"]);
  $age = clean_input($_POST["age"]);
  $count = clean_input($_POST["count"]);
  $type = clean_input($_POST["type"]);
  $deck = clean_input($_POST["deck"]);
  $namef = clean_input($_POST["namef"]);
  if ($namef == "")
        $namef = "N/A";
  
     
           if ($name == "" || $description == "" || $age == "" || $count == "" || $type == "" || $deck == ""){
            $msg = "Please make sure you provide all required information";
            $err = 1;
        }
        else if ($age < 4){
            $msg = "Please make sure age rating is above 4";
            $err = 1;
        }
        else if ($count < 1){
            $msg = "Please make sure player count is one of more";
            $err = 1;
        }
        
        if (!$err){
        $messages = upload_image();     
        $err = $messages['err'];
        $msg = $messages['msg'];
        $img_name = $messages['img_name'];
        $image = $messages['image'];
       }
        $smarty->assign('msg', $msg);
        $smarty->assign('name', $name);
        $smarty->assign('description', $description);
        $smarty->assign('age', $age);
        $smarty->assign('count', $count);
        $smarty->assign('type', $type);
        $smarty->assign('deck', $deck);
       
       if ($err){
       $smarty->display('add_game.tpl');
       exit();
        }
} 
 
  $sql = "SELECT *FROM game 
              WHERE `name` = :name;";
  
   
     $stmt = $pdo->prepare($sql);
     $stmt->bindParam(':name', $name);
     $stmt->execute();
     $rows = $stmt->fetchAll();
     $rowCount = count($rows);
     
     $sql = "SELECT *FROM game_image 
     WHERE `name` = :name;";


    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':name', basename( $_FILES["fileToUpload"]["name"]));
    $stmt->execute();
    $rows = $stmt->fetchAll();
    $I_rowCount = count($rows);

    if ($rowCount >= 1) {
         $message = "Game already exists \n 
                      Please add a different game";
         $smarty->assign('msg', $message);
         $smarty->display('add_game.tpl');
         exit();
    }else if ($I_rowCount >= 1){
        $message = "Image name already exists \n 
        Please use a different image name";
        $smarty->assign('msg', $message);
        $smarty->display('add_game.tpl');
        exit();
    }else {
      
     // instert the image name into the database game_image table
       $sql = "INSERT INTO game_image
       (`Name`, `Image`)
         VALUES
       (:name, :data);";
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':name', $messages['img_name']);
        $stmt->bindParam(':data', $image, PDO::PARAM_LOB);
        $stmt->execute();

             $sql = "INSERT INTO manufacturer
              (`Name`, Game_Name)
            VALUES
           (:namef, :name)";        
            $stmt = $pdo->prepare($sql);
            $stmt->bindParam(':namef', $namef);
            $stmt->bindParam(':name', $name);
            $stmt->execute();

            $sql = "SELECT Manufacturer_ID FROM manufacturer where Game_Name = :name";
            $stmt = $pdo->prepare($sql);
            $stmt->bindParam(':name', $name);
            $stmt->execute();         
            $row = $stmt->fetch(PDO::FETCH_ASSOC);
            $m_id = $row[Manufacturer_ID];  
        
            $sql = "SELECT G_Image_ID FROM game_image where Name = :name";
            $stmt = $pdo->prepare($sql);
            $stmt->bindParam(':name', $img_name);
            $stmt->execute();         
            $row = $stmt->fetch(PDO::FETCH_ASSOC);
            $img_id = $row[G_Image_ID];

            
            $sql = "INSERT INTO game
            (`Name`, `Description`, Age, Player_Count, `Type`, Deck, Manufacturer_ID, Image_ID)
            VALUES
            (:name, :description, :age, :count, :type, :deck, :m_id, :img_id);";


}
    
    function clean_input($data) {
      $data = trim($data);
      $data = htmlspecialchars($data);
      return $data;
    }
    // Function to upload game image and validate input 
    // Modified from W3c school website. 
    function upload_image(){
       
        $target_dir = "images/";
        $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
        $uploadOk = 1;
        $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
       
        // Check if image file is a actual image or fake image
        if(isset($_POST["submit"])) {
            
            $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
            if($check !== false) {
                 $message .= "File is an image - " . $check["mime"] . ".";
                 $uploadOk = 1;
             } else {
                    $message .= "File is not an image.";
                    $uploadOk = 0;
                }
            }
    
             //Check name length
              if (strlen(basename( $_FILES["fileToUpload"]["name"])) > 50) {
                $message = "Sorry, your image's name is too long, max 50 characters.";
                 $uploadOk = 0;
            }
    
           //  Check file size
              if ($_FILES["fileToUpload"]["size"] > 1000000) {
                $message = "Sorry, your image size is too large.";
                 $uploadOk = 0;
            }
           //  Allow certain file formats
             if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
                && $imageFileType != "gif" ) {
                    $message = "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
             $uploadOk = 0;
            }
          
          //   Check if $uploadOk is set to 0 by an error
        if ($uploadOk == 0) {
            $message .= "<br> Your image was not uploaded.";
        
        //    if everything is ok, try to upload file
        } else {
            
             if ($image = file_get_contents($_FILES["fileToUpload"]["tmp_name"])) {
                $message = "The image ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
            } else {
                $message .= "<br> There was an error uploading your image.";
            
            }
               
         }
        $messages['err'] = !$uploadOk;
        $messages['img_name'] = basename( $_FILES["fileToUpload"]["name"]);
        $messages['image'] = $image;
        $messages['msg'] = $message;
        return $messages;
    }
    
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':name', $name);
    $stmt->bindParam(':description', $description);
    $stmt->bindParam(':age', $age);
    $stmt->bindParam(':count', $count);
    $stmt->bindParam(':type', $type);
    $stmt->bindParam(':deck', $deck);
    $stmt->bindParam(':m_id', $m_id);
    $stmt->bindParam(':img_id', $img_id);
    $stmt->execute();
header("Location: index.php");
