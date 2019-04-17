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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
          integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
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

        <form action="signup.php" method="post">
            <img src='./images/GrLogo_Black.png' height="105">
            <h2 align="center">Sign-Up</h2>
            <br>
            <h3 style="color:#FF0000;text-align:center;font-size:17px;">{$msg}</h3>
            <label for="First Name" class="form-label">First Name:</label><br>
            <input type="text" class="form-control mx-auto" style="width: 300"
              name="first_name" value="{$first_name}" placeholder="First Name" required/>
            <br>
            <label for="Last Name">Last Name:</label><br>
            <input type="text" name="last_name" class="form-control mx-auto" style="width: 300"
              value="{$last_name}" placeholder="Last Name" required/>
            <br>
            <label for="Email">E-mail:</label></br>
            <input type="Email" name="email" value="{$email}" class="form-control mx-auto" style="width: 300"
              placeholder="Email" pattern="{literal}[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}${/literal}"
              title="e.g example@email.com " required/>
            <br>
            {if !isset($msg)}
            <label for="password" class="form-label">Password: </label><br>
            <input type="password" name="password" value="" class="form-control mx-auto" style="width: 300"
              placeholder="Password" pattern="{literal}(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}{/literal}"
              title="Must contain at least one number and one uppercase and lowercase letter, and at least 6
              or more characters" required/>
            <br>
            <label for="password confirmation" class="form-label"> Confirm Password: </label><br>
            <input type="password" name="confirm" class="form-control mx-auto" style="width: 300"
              value="" placeholder="Confirm Password" pattern="{literal}(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}{/literal}"
              title="Must contain at least one number and one uppercase and lowercase letter, and at least 6
              or more characters" required/>
            <br>
            {else}
            <label for="password" class="form-label text-danger"> Password: </label><br>
            <input type="password" class="is-invalid form-control mx-auto" name="password" value="" style="width: 300"
              placeholder="Password" pattern="{literal}(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}{/literal}"
              title="Must contain at least one number and one uppercase and lowercase letter, and at least 6
              or more characters" required/>
            <br>
            <br>
            <label for="password confirmation" class="text-danger form-label"> Confirm Password: </label><br>
            <input type="password" name="confirm" value="" class="is-invalid form-control mx-auto" style="width: 300"
              placeholder="Confirm Password" pattern="{literal}(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}{/literal}"
              title="Must contain at least one number and one uppercase and lowercase letter, and at least 6
              or more characters" required/>
            <br>
            <br>
            {/if}
            <button class=" col-2 btn btn-outline-primary" type="submit">Sign Up</button>
            </form>
            <a href="./login.php"><button class="col-2 btn btn-outline-primary" formnovalidate>Log In</button></a>

        <br>

    </div>
</main>

<script src="./scripts/jquery-3.3.1.min.js"></script>
<script src="./scripts/bootstrap.min.js"></script>


</body>
</html>
