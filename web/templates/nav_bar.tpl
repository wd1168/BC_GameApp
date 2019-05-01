<div class="nav">

    <div><a href="./index.php"><img src="./images/GrLogo.svg" alt="" style="margin-top: .25em;" width="30" height="30"></a></div>
    <div style="padding-top: .45em"><a href="./board_games.php"><strong>Board</strong></a></div>
    <div style="padding-top: .45em"><a href="./card_games.php"><strong>Card</strong></a></div>
    <div style="padding-top: .45em;"><a href="./about.php"><strong>About</strong></a></div>
    <div class="input-group" style="width: 15em">
        <input type="text" id="myInput" class="form-control" onkeyup="myFunction(); isEmpty()" placeholder="🔍 Search Games" aria-label="Search Games" aria-describedby="basic-addon2" style="padding-top: .275em;">
        <!--<div class="input-group-append">
            <button class="btn fas fa-search fa-md" type="button" style="color: #ffffff"></button>
        </div>-->
    </div>
    {if isset($first_name)}
        <div style="padding-top: .45em;"><a href="./logout.php"><strong>{$first_name} {$last_name}</strong></a></div>
    {else}
        <div style="padding-top: .45em;"><a href="./login.php"><i class="fas fa-sign-in-alt" style="padding-top: .275em;"></i></a></div>
    {/if}

</div>

<ul id="myUL">
    {for $x = 0 to sizeof($search_results)}
        <li><a href="./game_rules.php?link={$search_results[$x]}">{$search_results[$x]}</a></li>
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
    function isEmpty() {
        if (document.getElementById("myInput").value == "") {
            document.getElementById("myUL").style.display = "none";
        } else {
            document.getElementById("myUL").style.display = "block";

        }
    }
</script>
