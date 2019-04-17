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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
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
