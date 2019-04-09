<html>
  <head>
    <title> GameRepo </title>
    <!-- <link rel="stylesheet" href="./Styles/bootstrap.min.css" /> -->
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
        margin-right: 12px;
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
    <link rel="shortcut icon" href="images/GrLogo_Black.png">
</head>
<body>
      <div class="nav">

          <div><a href="./index.php"><img src="./images/GrLogo.png" width="30" height="30" alt=""></a></div>
          <div><a href="./board_games.php"><strong>Boards</strong></a></div>
          <div><a href="./card_games.php"><strong>Cards</strong></a></div>
          <div><a href="./about.php"><strong>About Us</strong></a></div>
          <div><a href="./search_page.php"><i class="fas fa-search fa-md" style="padding-top: .275em;"></i></a></div>
          {if isset($first_name)}
              <div><a href="./logout.php"><strong>{$first_name} {$last_name}</strong></a></div>
          {else}
              <div><a href="./login.php"><i class="fas fa-sign-in-alt" style="padding-top: .275em;"></i></a></div>
          {/if}

      </div>
<main role="main" class="container">
  <div class="content">

  <h2 class="text-center"> About Us</h2>
  <br>
  <h3> Our Team</h3>
  <br>
  <ul>
    <li> Wyatt Derk, Team Lead, Back-End Engineer</li>
    <li>Eliezer Mwankenja, Back-End Engineer</li>
    <li>Ibinabo Braide, Front-End Engineer</li>
    <li>Ben Underwood, Front-End Engineer</li>
    <li>Joshua Simmons, Front-End Engineer</li>
  </ul>
  </br>
  </br>
    <table class="table table-striped">
        <tr>
        <th>Name:</th>
        <th>Bio:</th>
        </tr>
        <tr>
            <td><bold>Wyatt Derk</bold></td>
            <td>Wyatt Derk has worked on two separate web applications with contributions in both front-end and back-end development. He is the team-manager and inspiration for this project application.</td>

        </tr>

        <tr>
            <td><bold>Eliezer Mwankenja</bold></td>
            <td>Eliezer is a computer science major, who has worked on a web application project as a back-end developer and as a QA tester.</td>

        </tr>

        <tr>
            <td><bold>Ibinabo Braide</bold></td>
            <td>Ibinabo is  a computer science major, who has had programming experience of 4 years, and won a web development competition.</td>

        </tr>

        <tr>
            <td><bold>Ben Underwood</bold></td>
            <td>Ben has experience in front-end and back-end development with multiple academic and professional software development teams using languages such as Python, C#, JavaScript, PHP, and HTML/CSS.</td>

        </tr>

        <tr>
            <td><bold>Joshua Simmons</bold></td>
            <td>Josh is a computer science major, and is a part of the Front End Design Team. He has a strong programming background and is an
            avid board game fan.</td>

        </tr>
    </table>
    <br>
    <h3> What is the purpose of our application?</h3>
    <p> <em>GameRepo</em> is an app designed for board and card game enthusiasts who would benefit from a central repository of game rules.
       With this app, the user is able to select a supported game and search for a rule by keyword. In addition, users will be able to log-in, ask
        their own questions, and submit their own house rules. </p>
    <br>
    <h3>Features of our Application</h3>
    <ol>
      <li> Pages with various rules for board and card games, as well as their expansion packs.</li>
      <li> Ability to add rules and have it approved by our team.</li>
      <li> Users can search for various rules through a functioning search bar.</li>
    </ol>
  </main>
<script src="./scripts/jquery-3.3.1.min.js"></script>
<script src="./scripts/bootstrap.min.js"></script>
</body>
</html>
