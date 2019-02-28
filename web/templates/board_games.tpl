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
            <div><a href="/"><i class="fas fa-home fa-md" style="padding-top: .275em;"></i></a></div>
            <div><a href="/boards"><strong>Boards</strong></a></div>
            <div><a href="/cards"><strong>Cards</strong></a></div>
            <div><a href="/about"><i class="fas fa-question fa-md" style="padding-top: .275em"></i></a></div>
            <div><a href="/search"><i class="fas fa-search fa-md" style="padding-top: .275em;"></i></a></div>
        </div>
    <div class="container">
      <div class="jumbotron col-md-12 col-lg-12"><center><h2>Board Games</h2></center></div>
      <div class="row">
        <div class="col-md-4 col-lg-4">
          <picture>
            <source srcset="images\battleship-logo.jpg">
            <img src="images\battleship-logo.jpg" class="img-fluid img-thumbnail mx-auto" alt="Battleship" width="100" height="100">
            <h3>Battleship</h3>
          </picture>
        </div>
        <div class="col-md-4 col-lg-4">
          <picture>
            <source srcset="images\othello.jpg">
            <img src="images\othello.jpg" class="img-fluid img-thumbnail mx-auto" alt="Othello" width="100" height="100">
            <h3>Othello</h3>
          </picture>
        </div>
        <div class="col-md-4 col-lg-4">
          <picture>
            <source srcset="images\monopoly.jpg">
            <img src="images\monopoly.jpg" class="img-fluid img-thumbnail mx-auto" alt="Monopoly" width="100" height="100">
            <h3>Monopoly</h3>
          </picture>
        </div>
        {*<table>*}
          {*<tr>*}
            {*<th colspan = 3>Database Test</th>*}
          {*</tr>*}
          {*<tr>*}
            {*<th>First Name</th>*}
            {*<th>Last Name</th>*}
            {*<th>Email</th>*}
          {*</tr>*}
          {*<tr>*}
            {*<th>{$name}</th>*}
            {*<th>{$name2}</th>*}
            {*<th>{$email}</th>*}
          {*</tr>*}
        {*</table>*}
    <script src="./script/jquery-3.3.1.min.js"></script>
    <script src="./scripts/bootstrap.min.js"></script>
  </body>
</html>
