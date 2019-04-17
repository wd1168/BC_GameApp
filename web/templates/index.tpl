<html>
<head>
    {include "head.tpl"}
</head>
<body>
{include "nav_bar.tpl"}
<main role="main" class="container">

    <div class="content">

        <h1><strong>GameRepo</strong></h1>

        <p><i>Welcome! Please enjoy this repo for all of your favorite board and card game rules.</i></p>

        <h4><strong>Popular Board Games</strong></h4>
        <div class="row">
            <div class="col-xxs-3 col-xs-3 col-sm-3 col-md-3 col-lg-3">
                <picture>
                    <source srcset="images\battleship-logo.jpg">
                    <img src="images\battleship-logo.jpg" class="img-fluid img-thumbnail mx-auto" alt="Battleship"
                         width="100" height="100">

                    <h5><a href="./game.php?link=battleship"> Battleship </a></h5>

                </picture>
            </div>
            <div class="col-xxs-3 col-xs-3 col-sm-3 col-md-3 col-lg-3">
                <picture>
                    <source srcset="images\othello.jpg">
                    <img src="images\othello.jpg" class="img-fluid img-thumbnail mx-auto" alt="Othello" width="100"
                         height="100">
                    <h5><a href="./game.php?link=Othello"> Othello </a></h5>

                </picture>
            </div>
            <div class="col-xxs-3 col-xs-3 col-sm-3 col-md-3 col-lg-3">
                <picture>
                    <source srcset="images\monopoly.jpg">
                    <img src="images\monopoly.jpg" class="img-fluid img-thumbnail mx-auto" alt="Monopoly" width="100"
                         height="100">
                    <h5><a href="./game.php?link=Monopoly"> Monopoly </a></h5>

                </picture>
            </div>
        </div>
        <br>
        <h4><strong>Popular Card Games</strong></h4>
        <div class="row">
            <div class="col-xxs-3 col-xs-3 col-sm-3 col-md-3 col-lg-3">
                <picture>
                    <source srcset="images\def-card.jpg">
                    <img src="images\def-card.jpg" class="img-fluid img-thumbnail mx-auto" alt="Go Fish" width="100"
                         height="100">
                    <h5><a href="./game.php?link=Go Fish">Go Fish</a></h5>
                </picture>
            </div>
            <div class="col-xxs-3 col-xs-3 col-sm-3 col-md-3 col-lg-3">
                <picture>
                    <source srcset="images\def-card.jpg">
                    <img src="images\def-card.jpg" class="img-fluid img-thumbnail mx-auto" alt="Solitaire" width="100"
                         height="100">
                    <h5><a href="./game.php?link=Solitaire">Solitaire</a></h5>

                </picture>
            </div>
            <div class="col-xxs-3 col-xs-3 col-sm-3 col-md-3 col-lg-3">
                <picture>
                    <source srcset="images\def-card.jpg">
                    <img src="images\def-card.jpg" class="img-fluid img-thumbnail mx-auto" alt="War" width="100"
                         height="100">

                    <h5><a href="./game.php?link=War">War</a></h5>
                </picture>
            </div>
        </div>
        <br>

        <!--<h2>Random Games</h2>-->

        <!--<p>This sample text serves in place of suggested games as we currently have no rulesets to offer.</p>-->

        <br>

        <!--<h4><strong>Developers</strong></h4>

        <ul style="list-style: none; ">
            <li><strong>Wyatt Derk</strong>, Project Lead</li>
            <li><strong>Eliezer Mwankenja</strong>, Database</li>
            <li><strong>Benjamin Underwood</strong>, Design</li>
            <li><strong>Ibinabo Braide</strong>, Design</li>
            <li><strong>Joshua Simmons</strong>, Design</li>

        </ul>-->
    </div>
</main>

<script src="./scripts/jquery-3.3.1.min.js"></script>
<script src="./scripts/bootstrap.min.js"></script>


</body>
</html>
