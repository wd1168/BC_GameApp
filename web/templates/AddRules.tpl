<html>
  <head>
    <title> Add Game Rules </title>
    <!-- <link rel="stylesheet" href="./Styles/bootstrap.min.css" /> -->
    <link rel="stylesheet" href="bootstrap.min.css"/>
    <style>
        body > .container {
  padding: 75px 15px 0;
}
    </style>
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
            </li>
            <li class="nav-item">
              <a class="nav-link" href="./sample_rules.php">Sample Rules</a>
              </li>
			  <li class="nav-item">
              <a class="nav-link" href="AddRules.html">Add Rules</a>
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
   <div></br>  </div>
    <main role="main" class="container">
        <div class="hero">
        
 <H4> Here You can add Rules for various games and have them approved to be on our site<h4>
 <br> </br>
  <br> </br>
   <br> </br>
    <br> </br>
 
 <form id = "NewRules">
 <bold> Title of Game</bold><br>
 <input type = "text" name = "GameTitle" value = "">
 <br><br>
 <bold> Game Rules</bold><br>
 
<!--<input type = "text" name = "GameRules">
 <br><br>*/-->
 
  <input type="submit" value="Submit Rule">
 </form>
 <textarea rows="4" cols="50" name="Textbox" form="NewRules">
Enter Rules here...</textarea>
 
 
 
    </main>

    <script src="./scripts/jquery-3.3.1.min.js"></script>
    <script src="./scripts/bootstrap.min.js"></script>


  </body>
</html>
