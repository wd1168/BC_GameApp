<html>
  <head>
    <title>Card Games</title>
    <link rel="stylesheet" href="./Styles/bootstrap.min.css" />
    <link rel="mainstyle" href="./stylesheets/main.css" />
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
    <div class="container">
      <div class="jumbotron col-md-12 col-lg-12"><center><h2>Card Games</h2></center></div>
      <div class="row">
        <div class="col-md-4 col-lg-4">
          <picture>
            <source srcset="images\photo-1529480384838-c1681c84aca5.jpg">
            <img src="images\photo-1529480384838-c1681c84aca5.jpg" class="img-fluid img-thumbnail mx-auto" alt="Go Fish" width="100" height="100">
            <h3><a href="./rules.php">Go Fish</a></h3>
          </picture>
        </div>
        <div class="col-md-4 col-lg-4">
          <picture>
            <source srcset="images\photo-1529480384838-c1681c84aca5.jpg">
            <img src="images\photo-1529480384838-c1681c84aca5.jpg" class="img-fluid img-thumbnail mx-auto" alt="Solitaire" width="100" height="100">
            <h3>Solitaire</h3>
          </picture>
        </div>
        <div class="col-md-4 col-lg-4">
          <picture>
            <source srcset="images\photo-1529480384838-c1681c84aca5.jpg">
            <img src="images\photo-1529480384838-c1681c84aca5.jpg" class="img-fluid img-thumbnail mx-auto" alt="War" width="100" height="100">
            <h3>War</h3>
          </picture>
        </div>
    <script src="./script/jquery-3.3.1.min.js"></script>
    <script src="./scripts/bootstrap.min.js"></script>
  </body>
</html>
