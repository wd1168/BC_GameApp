<html>
  <head>
  {include "head.tpl"}
  <style>
  .small {
    font-style: italic;
  }
  .thumbnail {
    padding: 0.25rem;
    background-color: #fff;
    border: 1px solid #dee2e6;
    border-radius: 0.25rem;
    object-fit: scale-down;
  }
  .make_reply, .question_text {
    display: inline-block;
  }
    h5.replies {
      /*text-indent: .8em;*/
      color: rgb(91, 136, 216);
    }
    .question_submitter {
      color: rgb(91, 136, 216);
    }
    .question_bubble, .reply_bubble {
      border-radius: 25px;
      border: 2px solid rgb(91, 136, 216);
      background-color: white;
      padding: 1em;
      margin: .5em;
    }
    .response_form, .cancel_reply {
      display: none;
    }
  </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  </head>
  <body>
  {include "nav_bar.tpl"}

  <main role="main" class="container">
      <div class="content">
        <h1><strong>{$game['Name']}</strong></h1>

        <div class="row">
          <div class="col-lg-2">
            <img class="thumbnail mx-auto" <img src="{$game['Image']}" height="150" width="150">
          </div>
          <div class="col-lg-4">
          </br>
            <h5>Players: &nbsp;<text class="small">{$game['Player_Count']}</text></h5>
            <h5>Ages: &nbsp;<text class="small">+ {$game['Age']}</text></h5>
            <h5>Manufacturer: &nbsp;<text class="small">{$game['Manufacturer']}</text></h5>
          </div>
        </div></br>
        <h4>Description</h4><p>{$game['Description']}</p>
        <div class="text-center">
          <a href="./game_rules.php?link={$game.Name}"><button class="btn btn-outline-primary btn-lg">Rules</button></a>
            <a href="./add_rules.php"><button class="btn btn-outline-primary btn-lg">Add Rules</button></a>
        </div>
      </div>

        <div class="content">
          <h3><strong>Questions</strong></h3>
          <div class="ask_q">
            {if isset($first_name)}
            <form class="form-inline" action="game.php?link={$game.Name}" method="post">
                Enter your Question: <input type="text" class="form-control" value="" name ="game_question" required="">
                <input class="btn btn-outline-primary btn-md" type="submit" value="Submit"
                       name= "submitbtn">
            </form>
            {/if}
          </div>
            <div class="row">
        <div class="col-md-12 response">
          {if $question_results == 'TRUE'}
            {foreach $question_list as $question_array}
              <div class="question_bubble">
              <h5 class="question_submitter">{$question_array.User_Name}:</h5>
                <p class="question_text">{$question_array.Question}</p>

              {*Response Form*}
              {if isset($first_name)}
                <button id="button{$question_array.Question_ID}" class ="btn btn-outline-primary btn-sm make_reply"  type="button">Respond</button>
                <button id="cancel_button{$question_array.Question_ID}" class ="btn btn-outline-primary btn-sm cancel_reply"  type="button">Cancel</button>

                <form id="form_button{$question_array.Question_ID}" class="form-inline response_form" action="game.php?link={$game.Name}" method="post">
                  Enter your Response: <input type="text" class="form-control"
                                              name="question_response">
                  <input type="text" value="{$question_array.Question_ID}" name="question_id" style="display: none">
                  <input class="btn btn-outline-primary btn-md" type="submit" value="Respond"
                         name= "submitbtn">

                </form>
                </div>
              {/if}
              {if $reply_results == 'TRUE'}
                {foreach $reply_list as $reply_array}
                  {if ($question_array.Question_ID == $reply_array.Question_ID)}
                      <div class="row justify-content-around">
                    <div class="col-md-10 reply_bubble">
                      <h5 class="replies">{$reply_array.Full_Name}:</h5>
                      <p class="replies">{$reply_array.Answer}</p>
                    </div>
                      </div>
                  {/if}
                {/foreach}
              {/if}


            {/foreach}
          {else}
            <h2 class="text-center">No Questions. </h2>
          {/if}
        </div>

            </div>
        </div>

        {if $exp_results == 'TRUE'}
          <div class="content">
            <h3><strong>Expansions</strong></h3>
            <div class="row">
            {foreach $exp_list as $exp}
              <div class="col-md-4 col-lg-4">
                <picture>
                  <source srcset="images\{$exp.Image}">
                    <a href="./expansion_rules.php?link={$exp.Name}">
                      <img src="images\{$exp.Image}" class="img-fluid img-thumbnail mx-auto"
                      alt="{$exp.Name}" width="100" height="100">
                    </a><h3><a href="./expansion_rules.php?link={$exp.Name}">{$exp.Name}</a></h3>
                </picture>
              </div>
            {/foreach}
            </div>
          <div>
        {/if}
    </main>
  <script>
    $(document).ready(function(){
      // $(".response_form").hide();
      // $(".cancel_reply").hide();
      $(".make_reply").on('click', function(){
       var id = $(this).attr('id');
       var form_name = 'form_' + id;
       var cancel_button = 'cancel_' + id;
       $('#' + id).hide();
       $('#' + cancel_button).show();
       $('#' + form_name).toggle();
        $(".cancel_reply").on('click', function(){
          var c_id = $(this).attr('id');
          $(".cancel_reply").hide();
          $('#' + id).show();
          var form_name = 'form_' + id;
          $('#' + form_name).hide();
        })
      })
    });
  </script>
  <script src="./scripts/jquery-3.3.1.min.js"></script>
    <script src="./scripts/bootstrap.min.js"></script>
  </body>
</html>
