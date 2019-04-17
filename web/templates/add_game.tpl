<html>
<head>
    {include "head.tpl"}
</head>
<body>
{include "nav_bar.tpl"}

<main role="main" class="container" align="center">

    <div class="content">


        <form action="add_game.php" method="post">
            <h2 align="center"> Add New Game </h2>
                <h3 style="color:#FF0000;text-align:center;font-size:17px;">{$msg}</h3>
                <label for="Game Name" >Game Name: </label><br>
                <input type="text" name="name" value="{$name}" placeholder="Game Name" required>
            <br>
            <br>
                <label for="Game Description" >Game Description: </label><br>
                <textarea rows="5" cols="50" type="text" name="description" required>{$description}</textarea>
            <br>
            <br>
                <label for="Age Rating"> Age Rating: </label><br>
                <input type="number" name="age" value="{$age}" placeholder="Age Rating" min="4" required>
            <br>
            <br>
                 <label for="Player Count"> Number of Players: </label><br>
                 <input type="number" name="count" value="{$count}" placeholder="Player Count" min="1" required>
            <br>
            <br>
                <fieldset>
                    <legend > Game Type: </legend><br>
                        <input type="radio" name="type" value="card" required> Card Game <br>
                        <input type="radio" name="type" value="board"> Board Game
                </fieldset>
            <br>
            <br>
                <fieldset>
                    <legend> Deck Type: </legend><br>
                        <input type="radio" name="deck" value ="Standard" required selected> Standard<br>
                        <input type="radio" name="deck" value= "Custom"> Custom<br>
                        <input type="radio" name="deck" value= "N/A">  N/A
                </fieldset>
            <br>
            <br>
            <input type="submit" value="Submit">
            <br>

        </form>
        <br>

    </div>
</main>

<script src="./scripts/jquery-3.3.1.min.js"></script>
<script src="./scripts/bootstrap.min.js"></script>


</body>
</html>
