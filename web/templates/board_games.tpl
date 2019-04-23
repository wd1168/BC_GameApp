<html>
<head>
    {include "head.tpl"}
  <style>
  .thumbnail {
    padding: 0.25rem;
    background-color: #fff;
    border: 1px solid #dee2e6;
    border-radius: 0.25rem;
    object-fit: scale-down;
  }
  </style>
</head>
<body>

{include "nav_bar.tpl"}

<div class="container">
    <div class="content">

        <div  style="position: absolute; right: 1em; bottom: 1em;"><a href="./add_game.php"> 

<button type="button" class="btn btn-primary btn-lg">
  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add a new game
</button>

</a></div>

        <div class="jumbotron col-md-12 col-lg-12">
            <center><h2>Board Games</h2></center>
        </div>
        {if $results == 'TRUE'}
            <div class="row">
                {foreach $game_list as $game}
                    <div class="col-md-4 col-lg-4">
                        <picture>
                            <source srcset="images\{$game.Image}">
                            <a href="./game.php?link={$game.Name}"><img src="images\{$game.Image}" class="thumbnail mx-auto" alt="{$game.Name}"
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
