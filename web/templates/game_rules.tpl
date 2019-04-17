<html>
  <head>
    {include "head.tpl"}  
  </head>
  <body>

    <header>

    </header>
    {include "nav_bar.tpl"}

    <div class="container">
    <div class="content">
      <div class="jumbotron col-md-12 col-lg-12"><center><p><b>How to play: </b></p><h1> {$info[0]} </h1></center></div>
      <div class="row">
          <div class="jumbotron col-md-4 col-lg-3">
            <p><b> Game Type: </b> {$info[1]} </p>
            <p><b> Age: </b> {$info[2]} + </p>
            <p><b> Players: </b> {$info[3]} </p>
          </div>
          <div class="col-md-8 col-lg-8">
                {if (sizeof($rules)!=0)}
                  {for $x = 0 to sizeof($rules)}
                    {if $category[$x] != $category[$x-1]}
                      <h3><strong>{$category[$x]}</strong></h3>
                    {/if}
                    {if !is_null($subcategory[$x]) And $subcategory[$x] != $subcategory[$x-1]}
                      <h4><strong>{$subcategory[$x]}</strong></h4>
                    {/if}
                    <article><p>{$rules[$x]}</p></article>
                  {/for}
                {else}
                    <p><strong>No rules in our database! :( Check back later!</strong></p>
                {/if}
          </div>
        </div>
        </div>
        </div>
    <script src="./script/jquery-3.3.1.min.js"></script>
    <script src="./scripts/bootstrap.min.js"></script>
  </body>
</html>
