<html>
  <head>
  {include "head.tpl"}
  </head>
  <body>

    <header>

    </header>
    {include "nav_bar.tpl"}

    <main role="main" class="container" align="center">

        <div class="content">
        
     	 {if isset($errMsg)}
	 <p style="color:#FF0000;text-align:center;font-size:17px;">{$errMsg}</p>
     	{/if}
     	{if isset($msg)}
    	 <p style="color:#008000;text-align:center;font-size:17px;"> {$msg}</p>
	 {/if}            
  <!--  Log in Form
When back end is fully developed, form action can be implemented to submit to where information needs to go
-->        
        <form action="login.php" method="post">
		        <h2 align="center"> Login </h2>
                <label for="email"> Email: </label>	<br/>	
                <input type="email" name="email" value="{$email}" placeholder="Email" pattern="{literal}[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}${/literal}" 
title="e.g example@email.com " required><br /><br />
                <label for="password"> Password: </label><br/>
                <input type="password" name="password" value="" placeholder="Password" required><br/><br />
                <input type="submit" name='login' value="login" onclick="./login.php"/>
                <a href="./signup.php">Sign-Up</a>
                
         </form> 
      
        </div>
    </main>

    <script src="./scripts/jquery-3.3.1.min.js"></script>
    <script src="./scripts/bootstrap.min.js"></script>


  </body>
</html>
