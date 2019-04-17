<html>
  <head>
    <title> GameRepo </title>
    <link rel="stylesheet" href="Styles/bootstrap.min.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <style>
        * {
            box-sizing: border-box;
          }

        #myInput {
            background-image: url('/css/searchicon.png');
            background-position: 10px 12px;
            background-repeat: no-repeat;
            width: 100%;
            font-size: 16px;
            padding: 12px 20px 12px 40px;
            border: 1px solid #ddd;
            margin-bottom: 12px;
          }

          #myUL {
            list-style-type: none;
            padding: 0;
            margin: 0;
          }

        #myUL li a {
          border: 1px solid #ddd;
          margin-top: -1px; /* Prevent double borders */
          background-color: #f6f6f6;
          padding: 12px;
          text-decoration: none;
          font-size: 18px;
          color: black;
          display: block
        }

          #myUL li a:hover:not(.header) {
            background-color: #eee;
          }

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

    </header>

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

<h2>Game Search</h2>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for games.." title="Type in a name">

<ul id="myUL">
         {for $x = 0 to sizeof($games)}
            <li><a href="./game_rules.php?link={$games[$x]}">{$games[$x]}</a></li>
         {/for}
</ul>

<script>
function myFunction() {
    var input, filter, ul, li, a, i, txtValue;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    ul = document.getElementById("myUL");
    li = ul.getElementsByTagName("li");
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        txtValue = a.textContent || a.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }
    }
}
</script>

</body>
</html>
