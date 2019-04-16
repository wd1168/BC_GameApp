<html>
  <head>
    <title> GameRepo </title>
    <link rel="stylesheet" href="Styles/bootstrap.min.css"/>
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
            background-color: rgb(108, 160, 255);
            color: white;
            padding-left: 10px;
            padding-right: 10px;
            padding-bottom: 5px;
            padding-top: 2px;
            margin-left: 3px;
            margin-right: 3px;
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

      <div class="nav">
            <div><a href="./index.php"><img src="./images/GrLogo.png" width="30" height="30" alt=""></a></div>
            <div><a href="./board_games.php"><strong>Boards</strong></a></div>
            <div><a href="./card_games.php"><strong>Cards</strong></a></div>
            <div><a href="./about.php"><i class="fas fa-question fa-md" style="padding-top: .275em"></i></a></div>
            <div><a href="./search_page.php"><i class="fas fa-search fa-md" style="padding-top: .275em;"></i></a></div>
            <div><a href="./login.php"><i class="fas fa-sign-in-alt" style="padding-top: .275em;"></i></a></div>
        </div>
    <main role="main" class="container" align="center">
      <div class="content">
        <img src='./images/GrLogo_Black.png' height="105">
        <h2 align="center"> Login </h2>
        <br>
        {if isset($errMsg)}
          <text style="color:#FF0000;text-align:center;font-size:17px;">{$errMsg}</p>
        {/if}
        {if isset($msg)}
          <text style="color:#008000;text-align:center;font-size:17px;">{$msg}</p>
        {/if}
        <form action="login.php" method="post" class="text-center">
          <div class="form-group row">
              <div class="col-3"></div>
              <label for="email" class="col-3 col-form-label text-right">Email:</label>
              <div class="col-3">
                <input type="email" name="email" value="{$email}"
                  placeholder="Email" class="form-control"
                  pattern="{literal}[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}${/literal}"
                  title="e.g example@email.com" required/>
              </div>
              <div class="col-3"></div>
          </div>
          <div class="form-group row">
            <div class="col-3"></div>
            <label for="password" class="col-3 col-form-label text-right"> Password: </label>
            <div class="col-3">
              <input type="password" name="password" class="form-control"
                  value="" placeholder="Password" required>
            </div>
            <div class="col-3"></div>
          </div>
          </br>
          <div class="form-group-row">
            <input class="btn btn-outline-primary btn-lg col-2 col-offset-4" type="submit" name='login' value="Login" onclick="./login.php"/>
          <a href="./signup.php"><button class=" col-2 btn btn-outline-primary btn-lg">Sign-Up</button></a>
          <div class="col-4"></div>
        </div>
        </form>
      </div>
    </main>

    <script src="./scripts/jquery-3.3.1.min.js"></script>
    <script src="./scripts/bootstrap.min.js"></script>

  </body>
</html>
