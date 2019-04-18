<div class="nav">

    <div><a href="./index.php"><img src="./images/GrLogo.png" width="30" height="30" alt=""></a></div>
    <div><a href="./board_games.php"><strong>Boards</strong></a></div>
    <div><a href="./card_games.php"><strong>Cards</strong></a></div>
    <div><a href="./about.php"><strong>About Us</strong</a></div>
    <div><a href="./search_page.php"><i class="fas fa-search fa-md" style="padding-top: .275em;"></i></a></div>
    {if isset($first_name)}
        <div><a href="./logout.php"><strong>{$first_name} {$last_name}</strong></a></div>
    {else}
        <div><a href="./login.php"><i class="fas fa-sign-in-alt" style="padding-top: .275em;"></i></a></div>
    {/if}

</div>
