<html>
  <head>
  {include "head.tpl"}
  </head>
  <body>
    {include "nav_bar.tpl"}

    <main role="main" class="container" align="center">
      <div class="content">
        <img src='./images/GrLogo_Black.png' height="105">
        <h2 align="center"> Login </h2>
        <br>
        {if isset($errMsg)}
          <text style="color:#FF0000;text-align:center;font-size:17px;">{$errMsg}</p>
        {/if}
        {if isset($msg)}
          <text style="color:#008000;text-align:center;font-size:17px;">{$msg}</p>
        {/if}
        <form action="login.php" method="post" class="text-center">
          <div class="form-group row">
              <div class="col-3"></div>
              {if !isset($errMsg)}
              <label for="email" class="col-3 col-form-label text-right">Email:</label>
              <div class="col-3">
                <input type="email" name="email" value="{$email}"
                  placeholder="Email" class="form-control"
                  pattern="{literal}[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}${/literal}"
                  title="e.g example@email.com" />
              </div>
              {else}
              <label for="email" class="col-3 text-danger col-form-label text-right">Email:</label>
              <div class="col-3">
                <input type="email" name="email" value="{$email}"
                  placeholder="Email" class="form-control is-invalid"
                  pattern="{literal}[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}${/literal}"
                  title="e.g example@email.com" />
              </div>
              {/if}
              <div class="col-3"></div>
          </div>
          <div class="form-group row">
            <div class="col-3"></div>
            {if !isset($errMsg)}
            <label for="password" class="col-3 col-form-label text-right">Password:</label>
            <div class="col-3">
              <input type="password" name="password" class="form-control"
                  value="" placeholder="Password" >
            </div>
            {else}
              <label for="password" class="col-3 col-form-label text-danger text-right"> Password: </label>
              <div class="col-3">
                <input type="password" name="password" class="form-control is-invalid"
                  value="" placeholder="Password" >
              </div>
            {/if}
            <div class="col-3"></div>
          </div>
          </br>
          <div class="col-4"></div>
            <button class="col-2 btn btn-outline-primary" type="submit" name='login' onclick="./login.php">Login</button>
          </form>
          <a href="./signup.php"><button class="col-2 btn btn-outline-primary">Sign-Up</button></a>
        <div class="col-4"></div>
      </div>
    </main>
    <script src="./scripts/jquery-3.3.1.min.js"></script>
    <script src="./scripts/bootstrap.min.js"></script>

  </body>
</html>
