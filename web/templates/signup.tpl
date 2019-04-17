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


        <form action="signup.php" method="post">
            <h2 align="center"> Sign-Up</h2><br/>
            <h3 style="color:#FF0000;text-align:center;font-size:17px;"> {$msg} </h3>
            
            <label for="First Name" >First Name: </label><br>
            <input type="text" name="first_name" value="{$first_name}" placeholder="First Name" required>
            <br>
            <br>
            <label for="Last Name" >Last Name: </label><br>
            <input type="text" name="last_name" value="{$last_name}" placeholder="Last Name" required>
            <br>
            <br>
            <label for="Email"> E-mail: </label><br>
            <input type="Email" name="email" value="{$email}" placeholder="Email" pattern="{literal}[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}${/literal}" 
            title="e.g example@email.com " required>
            <br>
            <br>
            {literal}
            <label for="password"> Password: </label><br>
            <input type="password" name="password" value="" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" 
            title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 
            or more characters" required>
            <br>
            <br>
            <label for="password confirmation"> Confirm Password: </label><br>
            <input type="password" name="confirm" value="" placeholder="Confirm Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" 
            title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 
            or more characters" required>
            <br>
            <br>
            <input type="submit" value="Submit">
            <br>
            <a href="./login.php">Log in instead if you already have an account</a>
        {/literal}
        </form>
        <br>

    </div>
</main>

<script src="./scripts/jquery-3.3.1.min.js"></script>
<script src="./scripts/bootstrap.min.js"></script>


</body>
</html>
