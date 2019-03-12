<html>
  <head>
    <title> GameRepo </title>
    <link rel="stylesheet" href="../Styles/bootstrap.min.css"/>
    <meta name="viewport" content="width=device-width">
    <style>
        body {
            background-color: rgb(91, 136, 216);
        }
    
        body > .container {
            padding: 20px 15px 0;
        }
        .content {
            
            border-radius: 25px;
            border: 2px solid white;
            background-color: white;
            padding: 30px; 
            margin-bottom: 20px;
            /*box-shadow: 0px 10px 20px grey;*/
            z-index: 1;
        }
        
        .nav {
            margin-left: 12px;
            
        }
        
        .nav > * {
            border-bottom-left-radius: 9px;
            border-bottom-right-radius: 9px;
            border-left: 2px solid rgb(108, 160, 255);
            border-bottom: 2px solid rgb(108, 160, 255);
            border-right: 2px solid rgb(108, 160, 255);
            border-top: 2px solid rgb(108, 160, 255);
            /*box-shadow: 0px 0px 6px grey;*/
            background-color: rgb(108, 160, 255);
            color: white;
            padding-left: 10px;
            padding-right: 10px;
            padding-bottom: 5px;
            padding-top: 2px;
            margin-left: 3px;
            margin-right: 3px;
            /*z-index: -1;*/
        }
        
        a i {
            color: white;
        }
        
        a strong {
            color: white;
        }
        
        a:hover {
            text-decoration: none;
        }
        
        ul, li {
            margin: 0;
            padding-left: .25em;
        }
    </style>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  </head>
  <body>

    <header>

    </header>
   
    <div class="nav">
            <div><a href="./index.php"><i class="fas fa-home fa-md" style="padding-top: .275em;"></i></a></div>
            <div><a href="./board_games.php"><strong>Boards</strong></a></div>
            <div><a href="./card_games.php"><strong>Cards</strong></a></div>
            <div><a href="./about.php"><i class="fas fa-question fa-md" style="padding-top: .275em"></i></a></div>
            <div><a href="./search.php"><i class="fas fa-search fa-md" style="padding-top: .275em;"></i></a></div>
        </div>
    <main role="main" class="container">

        <div class="content">
        
     
            
  <!--  Log in Form
When back end is fully developed, form action can be implemented to submit to where information needs to go
-->        
            <form >
		<h2> Login or Sign-Up!</h2>
		
  e-mail:<br>
  <input type="text" name="email" value="">
  <br>
  password:<br>
  <input type="password" name="password" value="">
  <br><br>
  <input type="submit" value="Login!">
  <a href="https://messiah.edu">Sign-Up</a>
  
</form> 
        <br>

        <h4><strong>Developers</strong></h4>

        <ul style="list-style: none; ">
                <li><strong>Wyatt Derk</strong>, Project Lead</li>
                <li><strong>Eliezer Mwankenja</strong>, Database</li>
                <li><strong>Benjamin Underwood</strong>, Design</li>
                <li><strong>Ibinabo Braide</strong>, Design</li>
                <li><strong>Joshua Simmons</strong>, Design</li>
                
        </ul>
        </div>
    </main>

    <script src="./scripts/jquery-3.3.1.min.js"></script>
    <script src="./scripts/bootstrap.min.js"></script>


  </body>
</html>
