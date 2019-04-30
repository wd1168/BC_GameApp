<html>
  <head>
    {include "head.tpl"}
    <style>
    .sidebar {
      border-radius: 25px;
      border: 2px solid rgb(91, 136, 216);
      background-color: white;
      padding: 30px;
      margin: 20px;
    }
    .jumbotron {
      position:relative;
      overflow:hidden;
      background: none;
      z-index: 0;
    }

    .jumbotron .blah {
      z-index: 1;
      position: relative;
    }

    .jumbotron .bg {
    position: absolute;
    right: 0;
    bottom: 0;
    top: 0;
    left: 0;
    background-image: url(images/{$image_name});
    background-position: 0%;
    background-size: cover;
    background-repeat: no-repeat;
    -webkit-filter: blur(5px);
    -moz-filter: blur(5px);
     -o-filter: blur(5px);
     -ms-filter: blur(5px);
     filter: blur(5px) brightness(.3);
     z-index: -1;
}

    </style>
  </head>
  <body>
    {* {include "nav_bar.tpl"} *}
    {* could not get the serch rules bar to work so put the foollowing back will be removed later *}
    <div class="nav">

    <div><a href="./index.php"><img src="images/GrLogo.png" width="30" height="30" alt=""></a></div>
    <div><a href="./board_games.php"><strong>Boards</strong></a></div>
    <div><a href="./card_games.php"><strong>Cards</strong></a></div>
    <div><a href="./about.php"><strong>About Us</strong></a></div>
      {if isset($first_name)}
        <div><a href="./logout.php"><strong>{$first_name} {$last_name}</strong></a></div>
    {else}
        <div><a href="./login.php"><i class="fas fa-sign-in-alt" style="padding-top: .275em;"></i></a></div>
    {/if}

</div>
{* could not get the serch rules bar to work so put the above back will be removed later *}

<div class="container">
    <div class="content">
        <div class="jumbotron col-md-12 col-lg-12">
          {if isset($image_name)}
          <div class="bg"></div>
          <center class="blah text-white"><p><b>How to play: </b></p>
            <h1> {$info[0]} </h1>
          {else}
          <center class="blah text-black"><p><b>How to play: </b></p>
            <h1> {$info[0]} </h1>
          {/if}
        </center>
        </div>
        <div  class="text-center" style="width: 30em ;margin-left: auto; margin-right: auto; margin-bottom: 2em;">
          <a href="./game.php?link={$info[0]}"><button class="btn btn-outline-primary btn-lg">Back to Overview</button></a>
        </div>
        <div class="input-group"  style="width: 30em ;margin-left: auto; margin-right: auto; margin-bottom: 2em;">
            <input type="text" id="myInput" class="form-control" onkeyup="myFunction(); isEmpty()" placeholder="Search the rules of this game" aria-label="Search Games" aria-describedby="basic-addon2" style="padding-top: .275em;">
        </div>

        <ul id="myUL">
          {for $x = 0 to sizeof($r_results)}
            <li><a href="./game_rules.php?link={$r_results[$x]}">{$r_results[$x]}</a></li>
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
        function isEmpty() {
          if (document.getElementById("myInput").value == "") {
            document.getElementById("myUL").style.display = "none";
          } else {
            document.getElementById("myUL").style.display = "block";
          }
        }
        </script>

      <div class="row">
          <div class="col-md-4 col-lg-3">
            <div class="sidebar"
              <p><b> Game Type: </b> {$info[1]} </p>
              <p><b> Age: </b> {$info[2]} + </p>
              <p><b> Players: </b> {$info[3]} </p>
          </div>
        </div>
          <div class="col-md-8 col-lg-8">
                {if (sizeof($rules)!=0)}
                  {for $x = 0 to sizeof($rules)}
                    {if $category[$x] != $category[$x-1]}
                      <h3 style="color: rgb(91, 136, 216)"><strong>{$category[$x]}</strong></h3>
                    {/if}
                    {if !is_null($subcategory[$x]) And $subcategory[$x] != $subcategory[$x-1]}
                      <h4>{$subcategory[$x]}</h4>
                    {/if}
                    <article><p>{$rules[$x]}</p></article>
                  {/for}
                {else}
                  <p><strong>No rules in our database! :( Check back later!</strong></p>
                {/if}
              </div>
            </div>
          </div>
        </div>
    <script src="./script/jquery-3.3.1.min.js"></script>
    <script src="./scripts/bootstrap.min.js"></script>
  </body>
</html>
