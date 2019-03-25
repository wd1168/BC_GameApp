<?php
/**
 * Example Application
 *
 * @package Example-application
 */
   require_once "../configuration/config.php";
    require_once "../configuration/dbconfig.php";


	if(isset($_GET['login'])) {
        $errMsg = '';
        $msg = '';
		// Get data from FORM
	$username = $_GET['username'];
        $password = $_GET['password'];

        if($username == '')
			$errMsg = 'Please enter username <br/>';
		if($password == '')
			$errMsg .= 'Please enter password';
		if($errMsg == '') {

            $query = "SELECT User_ID, First_Name, Email, Last_Name, `Password` FROM user WHERE Email = '$username';";

            $statement = $pdo->prepare($query);

            $statement ->execute();

                try 
                    {
                        $row = $statement->fetch(PDO::FETCH_ASSOC);
                       if (($row['Email'] == $username) && ($password == $row['Password']))
                        {
                            
                            $msg = "Log in successful!";
                        } 
                        else
                        {
                            $errMsg = "Incorrect username or password";
                        }
                    }
                    catch(PDOException $e)
                        {
                        echo "Error: " . $e->getMessage();
                        }

                    }


                }
                    $pdo = null;

    
    $smarty -> assign('errMsg', $errMsg);
    $smarty -> assign('msg', $msg);
 
$smarty->display('login.tpl');
