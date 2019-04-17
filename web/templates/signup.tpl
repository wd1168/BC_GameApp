<html>
<head>
{include "head.tpl"}
</head>
<body>

{include "nav_bar.tpl"}

<main role="main" class="container" align="center">
    <div class="content">

        <form action="signup.php" method="post">
            <img src='./images/GrLogo_Black.png' height="105">
            <h2 align="center">Sign-Up</h2>
            <br>
            <h3 style="color:#FF0000;text-align:center;font-size:17px;">{$msg}</h3>
            <label for="First Name" class="form-label">First Name:</label><br>
            <input type="text" class="form-control mx-auto" style="width: 300"
              name="first_name" value="{$first_name}" placeholder="First Name" required/>
            <br>
            <label for="Last Name">Last Name:</label><br>
            <input type="text" name="last_name" class="form-control mx-auto" style="width: 300"
              value="{$last_name}" placeholder="Last Name" required/>
            <br>
            <label for="Email">E-mail:</label></br>
            <input type="Email" name="email" value="{$email}" class="form-control mx-auto" style="width: 300"
              placeholder="Email" pattern="{literal}[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}${/literal}"
              title="e.g example@email.com " required/>
            <br>
            {if !isset($msg)}
            <label for="password" class="form-label">Password: </label><br>
            <input type="password" name="password" value="" class="form-control mx-auto" style="width: 300"
              placeholder="Password" pattern="{literal}(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}{/literal}"
              title="Must contain at least one number and one uppercase and lowercase letter, and at least 6
              or more characters" required/>
            <br>
            <label for="password confirmation" class="form-label"> Confirm Password: </label><br>
            <input type="password" name="confirm" class="form-control mx-auto" style="width: 300"
              value="" placeholder="Confirm Password" pattern="{literal}(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}{/literal}"
              title="Must contain at least one number and one uppercase and lowercase letter, and at least 6
              or more characters" required/>
            <br>
            {else}
            <label for="password" class="form-label text-danger"> Password: </label><br>
            <input type="password" class="is-invalid form-control mx-auto" name="password" value="" style="width: 300"
              placeholder="Password" pattern="{literal}(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}{/literal}"
              title="Must contain at least one number and one uppercase and lowercase letter, and at least 6
              or more characters" required/>
            <br>
            <br>
            <label for="password confirmation" class="text-danger form-label"> Confirm Password: </label><br>
            <input type="password" name="confirm" value="" class="is-invalid form-control mx-auto" style="width: 300"
              placeholder="Confirm Password" pattern="{literal}(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}{/literal}"
              title="Must contain at least one number and one uppercase and lowercase letter, and at least 6
              or more characters" required/>
            <br>
            <br>
            {/if}
            <button class=" col-2 btn btn-outline-primary" type="submit">Sign Up</button>
            </form>
            <a href="./login.php"><button class="col-2 btn btn-outline-primary" formnovalidate>Log In</button></a>

        <br>

    </div>
</main>

<script src="./scripts/jquery-3.3.1.min.js"></script>
<script src="./scripts/bootstrap.min.js"></script>


</body>
</html>
