<html>
<head>
    {include "head.tpl"}
    <style>
    .MultiCarousel { float: left; overflow: hidden; padding: 15px; width: 100%; position:relative; }
    .MultiCarousel .MultiCarousel-inner { transition: 1s ease all; float: left; }
    .MultiCarousel .MultiCarousel-inner .item { float: left;}
    .MultiCarousel .MultiCarousel-inner .item > div { text-align: center; padding:10px; margin:10px; background:#f1f1f1; color:#666;}
    .MultiCarousel .leftLst, .MultiCarousel .rightLst { position:absolute; border-radius:50%;top:calc(50% - 20px); }
    .MultiCarousel .leftLst { left:0; }
    .MultiCarousel .rightLst { right:0; }
    .MultiCarousel .leftLst.over, .MultiCarousel .rightLst.over { pointer-events: none; background:#ccc; }
    .pad15 .row img { max-width: 140px; max-height: 140px; }
    </style>

</head>
<body>
{include "nav_bar.tpl"}
<main role="main" class="container">

    <div class="content">

        <div style="position: relative">

        <h1>
  <img src="./images/GrLogo_Black.svg" style="width: 1.75em">
  <strong style="position: absolute; left: 2.025em; top: -0.05em">GameRepo</strong>
  
</h1>

  <div style="position: absolute; left: 5.15em; bottom: 5.25em">
    <p>board and card game rule lookup</p>
  </div>
  
  <div>
    
    <p>Welcome! Look for games using by using our <strong><a href="board_games.php">Board</a></strong> and <strong><a href="card_games.php">Card</a></strong> game lists. To find the rules for a game, click on the <strong>Rules</strong> button on the game overview page, or 🔍 <strong>Search</strong> for the game above to be taken directly to its rules.</p>
    <p><i class="fas fa-sign-in-alt"></i> Sign up/Login to ask and respond to questions as well as add more games to our database. </p>

  </div>

</div>

	<h4><strong>Popular Board Games</strong></h4>

        <div class="row">

        <div class="container">
	<div class="row">
		<div class="MultiCarousel" data-items="1,3,5,6" data-slide="1" id="MultiCarousel"  data-interval="1000">
            <div class="MultiCarousel-inner">
                <div class="item">
                    <div class="pad15">
		    <a href="game_rules.php?link=Battleship">
                        <div class="row">
                         <img src="images\battleship-logo.png" height="" width="" style="display: block; margin: auto; vertical-align: middle">
                        </div>
		    </a>
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
		    <a href="game_rules.php?link=Othello">
                        <div class="row">
                        <img src="images\othello.png" height="" width="" style="display: block; margin: auto; vertical-align: middle">
                        </div>
		    </a>
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
		    <a href="game_rules.php?link=Monopoly">
                        <div class="row">
                         <img src="images\monopoly.jpg" height="" width="" style="display: block; margin: auto; vertical-align: middle">
                        </div>
		    </a>
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
		    <a href="game_rules.php?link=Battleship">
                        <div class="row">
                         <img src="images\battleship-logo.png" height="" width="" style="display: block; margin: auto; vertical-align: middle">
                        </div>
		    </a>
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
		    <a href="game_rules.php?link=Othello">
                        <div class="row">
                        <img src="images\othello.png" height="" width="" style="display: block; margin: auto; vertical-align: middle">
                        </div>
		    </a>
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                    <a href="game_rules.php?link=Monopoly">
                        <div class="row">
                         <img src="images\monopoly.jpg" height="" width="" style="display: block; margin: auto; vertical-align: middle">
                        </div>
		    </a>
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                    <a href="game_rules.php?link=Battleship">
                        <div class="row">
                         <img src="images\battleship-logo.png" height="" width="" style="display: block; margin: auto; vertical-align: middle">
                        </div>
		    </a>
                    </div>
                </div>


            </div>
            <button class="btn btn-primary leftLst"><</button>
            <button class="btn btn-primary rightLst">></button>
        </div>
	</div>

</div>

        </div>


        <div class="row">


        </div>
        <br>
        <h4><strong>Popular Card Games</strong></h4>
        <div class="row">

        <div class="MultiCarousel" data-items="1,3,5,6" data-slide="1" id="MultiCarousel"  data-interval="1000">
        <div class="MultiCarousel-inner">
                <div class="item">
                    <div class="pad15">
		    <a href="game_rules.php?link=Go%20Fish">
                        <div class="row">
                        <img src="https://prodimage.images-bn.com/pimages/0689196801211_p0_v3_s600x595.jpg" height="" width="" style="display: block; margin: auto; vertical-align: middle">
                        </div>
		    </a>
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
		    <a href="game_rules.php?link=Solitaire">
                        <div class="row">
                        <img src="https://www.mobygames.com/images/covers/l/397255-solitaire-playstation-4-front-cover.jpg" height="" width="" style="display: block; margin: auto; vertical-align: middle">
                        </div>
		    </a>
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
		    <a href="game_rules.php?link=War">
                        <div class="row">
                        <img src="https://lh6.ggpht.com/lGMkLqc51PsnTon7HDkCm92Cw96n4-UYthj3nzp30PoWj8jiO8C-a93_h7nLLHyJkpg=h300" height="" width="" style="display: block; margin: auto; vertical-align: middle">
                        </div>
		    </a>
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <a href="game_rules.php?link=Go%20Fish">
                        <div class="row">
                        <img src="https://prodimage.images-bn.com/pimages/0689196801211_p0_v3_s600x595.jpg" height="" width="" style="display: block; margin: auto; vertical-align: middle">
                        </div>
		    </a>
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <a href="game_rules.php?link=Solitaire">
                        <div class="row">
                        <img src="https://www.mobygames.com/images/covers/l/397255-solitaire-playstation-4-front-cover.jpg" height="" width="" style="display: block; margin: auto; vertical-align: middle">
                        </div>
		    </a>
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <a href="game_rules.php?link=War">
                        <div class="row">
                        <img src="https://lh6.ggpht.com/lGMkLqc51PsnTon7HDkCm92Cw96n4-UYthj3nzp30PoWj8jiO8C-a93_h7nLLHyJkpg=h300" height="" width="" style="display: block; margin: auto; vertical-align: middle">
                        </div>
		    </a>
                    </div>
                </div>
                <div class="item">
                    <div class="pad15">
                        <a href="game_rules.php?link=Go%20Fish">
                        <div class="row">
                        <img src="https://prodimage.images-bn.com/pimages/0689196801211_p0_v3_s600x595.jpg" height="" width="" style="display: block; margin: auto; vertical-align: middle">
                        </div>
		    </a>
                    </div>
                </div>

            </div>
            <button class="btn btn-primary leftLst"><</button>
            <button class="btn btn-primary rightLst">></button>
        </div>





        </div>

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
<script src="./scripts/carousel.js"></script>


</body>
</html>
