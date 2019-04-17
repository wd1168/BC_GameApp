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
