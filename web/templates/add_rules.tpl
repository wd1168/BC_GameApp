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
    <link rel="shortcut icon" href="images/GrLogo_Black.png">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  </head>
  <body>

    <header>
            <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="./index.php">GameRepo</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="./index.php">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./board_games.php">Board Games</a>
            </li>
            <li class="nav-item">

              <a class="nav-link" href="./card_games.php">Card Games</a>

			  <li class="nav-item">
              <a class="nav-link" href="add_rules.php">Add Rules</a>
              </li>
            <!--<li class="nav-item">-->
            <!--  <a class="nav-link disabled" href="#">Disabled</a>-->
            <!--</li>-->
          </ul>
          <form class="form-inline mt-2 mt-md-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </form>
        </div>
      </nav>



    </header>


    <main role="main" class="container">

        <div class="content">




            <h4>Here You can add Rules for various games and have them approved to be on our site</h4>

            <form name ="NewRules">
                <bold> Title of Game</bold>
            <br>
                <input type = "text" nae ="GameTitle" value="">
                <br>
                <br>
                <bold>Game Rules</bold>
                <br>
                <input type ="submit" value ="Submit Rule">
            </form>
            <textarea rows = "4" cols = "50" name ="NewRules"> Enter Rules here...</textarea>

            <br>
            <br>
            <br>
            <br>


            <div class="nav">
           <div><a href="./index.php"><img src="./images/GrLogo.png" width="30" height="30" alt=""></a></div>

            <div><a href="./board_games.php"><strong>Boards</strong></a></div>

            <div><a href="./card_games.php"><strong>Cards</strong></a></div>

            <div><a href="./add_rules.php"><strong>Add Rules</strong></a></div>

            <div><a href="./about.php"><i class="fas fa-question fa-md" style="padding-top: .275em"></i></a></div>

            <div><a href="./search_page.php"><i class="fas fa-search fa-md" style="padding-top: .275em;"></i></a></div>

            <div><a href="./login.php"><i class="fas fa-sign-in-alt" style="padding-top: .275em;"></i></a></div>
        </div>

                </div>
    </main>



  <!--  Log in Form
When back end is fully developed, form action can be implemented to submit to where information needs to go
-->












    <script src="./scripts/jquery-3.3.1.min.js"></script>
    <script src="./scripts/bootstrap.min.js"></script>


  </body>
</html>
