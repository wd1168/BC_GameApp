<html>
  <head>
    {include "head.tpl"}
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
    </style>
</head>
  <body>

    {include "nav_bar.tpl"}

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
