<html>
  <head>
  {include "head.tpl"}
  </head>
  <body>
  {include "nav_bar.tpl"}

  <main role="main" class="container">
      <div class="content">
        <h1><strong>{$game['Name']}</strong></h1>
        <img class="image-fluid" src='./images/{$game['Image']}' height="auto" style="max-width: 20%">
        <br>
        <h5>Players</h5> <p><i>{$game['Player_Count']}</i></p>
        <h5>Ages</h5> <p><i>+ {$game['Age']}</i></p>
        <h5>Manufacturer</h5>
        <p><i>{$game['Manufacturer']}</i></p>
        <h5>Description</h5>
        <p>{$game['Description']}</p>
        <div class="text-center">
          <a href="./game_rules.php?link={$game.Name}"><button class="btn btn-outline-primary btn-lg">Rules</button></a>
          <button class="btn btn-outline-primary btn-lg">Suggest a rule</button>
        </div>
      </div>
        
        
        <div class="content">
            
            <form>
                Enter your Question: <input type="text" name ="questionbox">
                <br>
                <br>
            
                <input type="submit" value="Reply" name= "replybtn">
            
            </form>
            
            
            <h4>Sample Reply</h4>
            
            <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque accumsan nisi nec massa scelerisque suscipit. Suspendisse leo libero, malesuada ut massa eget, condimentum tempus sapien. Aliquam a mi urna. Duis iaculis commodo eros ut malesuada. Vestibulum auctor ante elementum enim aliquet, porta condimentum nulla eleifend. Sed id imperdiet nisl, eget commodo justo. In nec tempor sem. Morbi eu orci eu tellus luctus egestas.</p>
            
            <h5 align="right">Sample UserName</h5>
            
        </div>
        
        
        
        
      <div class="content">
        <h5>Expansions</h5>
        {if $exp_results == 'TRUE'}
          <div class="row">
            {foreach $exp_list as $exp}
              <div class="col-md-4 col-lg-4">
                <picture>
                  <source srcset="images\{$exp.Image}">
                  <a href="./expansion_rules.php?link={$exp.Name}"><img src="images\{$exp.Image}"
                                                              class="img-fluid img-thumbnail mx-auto"
                                                              alt="{$exp.Name}"
                                                              width="100" height="100"></a>
                  <h3><a href="./expansion_rules.php?link={$exp.Name}">{$exp.Name}</a></h3>
                </picture>
              </div>
            {/foreach}
          </div>
        {else}
          <h2 class="text-center">No expansions. D:</h2>
        {/if}
      </div>
    </main>

    <script src="./scripts/jquery-3.3.1.min.js"></script>
    <script src="./scripts/bootstrap.min.js"></script>

  </body>
</html>
