<html>
  <head>
  {include "head.tpl"}
  </head>
  <body>
  {include "nav_bar.tpl"}

    <main role="main" class="container">

        <div class="content">
            <h1 class="text-center">Add Rules</h1>
            <form name ="NewRules">
                <bold> Title of Game</bold>
            <br>
                <input type = "text" nae ="GameTitle" value="">
                <br>
                <br>
                <bold>Game Rules</bold>
                <br>
                <input type ="submit" value ="Submit Rule">
            </form>
            <textarea rows = "4" cols = "50" name ="NewRules"> Enter Rules here...</textarea>
          </div>
    </main>

    <script src="./scripts/jquery-3.3.1.min.js"></script>
    <script src="./scripts/bootstrap.min.js"></script>

  </body>
</html>
