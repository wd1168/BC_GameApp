<html>
  <head>
  {include "head.tpl"}
  </head>
  <body>
  {include "nav_bar.tpl"}

   
    
    <main role="main" class="container">

        <div class="content">
            
            
            
            
            <h4>Here You can add Rules for various games and have them approved to be on our site</h4>
            
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
            
            <br>
            <br>
            <br>
            <br>

            
                </div>
    </main>
        
     


    <script src="./scripts/jquery-3.3.1.min.js"></script>
    <script src="./scripts/bootstrap.min.js"></script>


  </body>
</html>
