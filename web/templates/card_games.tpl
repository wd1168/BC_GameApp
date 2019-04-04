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

<header>

</header>

<div class="nav">

    <div><a href="./index.php"><img src="./images/GrLogo.png" width="30" height="30" alt=""></a></div>
    <div><a href="./board_games.php"><strong>Boards</strong></a></div>
    <div><a href="./card_games.php"><strong>Cards</strong></a></div>
    <div><a href="./about.php"><i class="fas fa-question fa-md" style="padding-top: .275em"></i></a></div>
    <div><a href="./search_page.php"><i class="fas fa-search fa-md" style="padding-top: .275em;"></i></a></div>
    {if isset($first_name)}
        <div><a href="./logout.php"><strong>{$first_name} {$last_name}</strong></a></div>
    {else}
        <div><a href="./login.php"><i class="fas fa-sign-in-alt" style="padding-top: .275em;"></i></a></div>
    {/if}

</div>
<div class="container">
    <div class="content">
    
                <div><a href="./add_game.php"> Add new game </a></div>
    
        <div class="jumbotron col-md-12 col-lg-12">
            <center><h2>Card Games</h2></center>
        </div>
        {if $results == 'TRUE'}
            <div class="row">
                {foreach $game_list as $game}
                    <div class="col-md-4 col-lg-4">
                        <picture>
                            <source srcset="images\{$game.Image}">
                            <a href="./game.php?link={$game.Name}"><img src="images\{$game.Image}"
                                                                        class="img-fluid img-thumbnail mx-auto"
                                                                        alt="{$game.Name}"
                                                                        width="100" height="100"></a>
                            <h3><a href="./game.php?link={$game.Name}">{$game.Name}</a></h3>
                        </picture>
                    </div>
                {/foreach}
            </div>
        {else}
            <h2 class="text-center">No games. D:</h2>
        {/if}

        <script src="./script/jquery-3.3.1.min.js"></script>
        <script src="./scripts/bootstrap.min.js"></script>
</body>
</html>
