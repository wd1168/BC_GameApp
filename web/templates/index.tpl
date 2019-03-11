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
            <div><a class="navbar-brand" href="./index.php">
              <img src="./images/GrLogo.svg" width="30" height="30" alt=""></a></div>
            <div><a href="./board_games.php"><strong>Boards</strong></a></div>
            <div><a href="./card_games.php"><strong>Cards</strong></a></div>
            <div><a href="./about.php"><i class="fas fa-question fa-md" style="padding-top: .275em"></i></a></div>
            <div><a href="./search.php"><i class="fas fa-search fa-md" style="padding-top: .275em;"></i></a></div>
        </div>
    <main role="main" class="container">

        <div class="content">

        <h1><strong>GameRepo</strong></h1>

        <p><i>Welcome! Please enjoy this repo for all of your favorite board and card game rules.</i></p>

        <h4><strong>Popular Board Games</strong></h4>
        <div class="row">
        <div class="col-xxs-3 col-xs-3 col-sm-3 col-md-3 col-lg-3">
          <picture>
            <source srcset="images\battleship-logo.jpg">
            <img src="images\battleship-logo.jpg" class="img-fluid img-thumbnail mx-auto" alt="Battleship" width="100" height="100">
            <h5>Battleship</h5>
          </picture>
        </div>
        <div class="col-xxs-3 col-xs-3 col-sm-3 col-md-3 col-lg-3">
          <picture>
            <source srcset="images\othello.jpg">
            <img src="images\othello.jpg" class="img-fluid img-thumbnail mx-auto" alt="Othello" width="100" height="100">
            <h5>Othello</h5>
          </picture>
        </div>
        <div class="col-xxs-3 col-xs-3 col-sm-3 col-md-3 col-lg-3">
          <picture>
            <source srcset="images\monopoly.jpg">
            <img src="images\monopoly.jpg" class="img-fluid img-thumbnail mx-auto" alt="Monopoly" width="100" height="100">
            <h5>Monopoly</h5>
          </picture>
        </div>
        </div>
        <br>
        <h4><strong>Popular Card Games</strong></h4>
        <div class="row">
        <div class="col-xxs-3 col-xs-3 col-sm-3 col-md-3 col-lg-3">
          <picture>
            <source srcset="images\photo-1529480384838-c1681c84aca5.jpg">
            <img src="images\photo-1529480384838-c1681c84aca5.jpg" class="img-fluid img-thumbnail mx-auto" alt="Go Fish" width="100" height="100">
            <h5><a href="./gofish.php">Go Fish</a></h5>
          </picture>
        </div>
        <div class="col-xxs-3 col-xs-3 col-sm-3 col-md-3 col-lg-3">
          <picture>
            <source srcset="images\photo-1529480384838-c1681c84aca5.jpg">
            <img src="images\photo-1529480384838-c1681c84aca5.jpg" class="img-fluid img-thumbnail mx-auto" alt="Solitaire" width="100" height="100">
            <h5><a href="./solitaire.php">Solitaire</a></h5>
          </picture>
        </div>
        <div class="col-xxs-3 col-xs-3 col-sm-3 col-md-3 col-lg-3">
          <picture>
            <source srcset="images\photo-1529480384838-c1681c84aca5.jpg">
            <img src="images\photo-1529480384838-c1681c84aca5.jpg" class="img-fluid img-thumbnail mx-auto" alt="War" width="100" height="100">
            <h5><a href="./war.php">War</a></h5>
          </picture>
        </div>
        </div>
        <!--<h2>Random Games</h2>-->

        <!--<p>This sample text serves in place of suggested games as we currently have no rulesets to offer.</p>-->

        <!--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget nulla et metus congue finibus. Nam mauris nisl, sodales a purus quis, ornare commodo lacus.</p>-->

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
