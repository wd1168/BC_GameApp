<?php
/* Smarty version 3.1.33, created on 2019-02-02 04:56:10
  from 'C:\Users\Eliezer\OneDrive - Messiah College\Messiah Classes\Fall 2018\CIS 411\lab reports\tri\BC_GameApp\web\templates\index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5c5522eae63523_81946477',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8756e63d4cdf277e17a55b4f72b93a8b900511dc' => 
    array (
      0 => 'C:\\Users\\Eliezer\\OneDrive - Messiah College\\Messiah Classes\\Fall 2018\\CIS 411\\lab reports\\tri\\BC_GameApp\\web\\templates\\index.tpl',
      1 => 1549083239,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c5522eae63523_81946477 (Smarty_Internal_Template $_smarty_tpl) {
?><html>
  <head>
    <title>Home</title>
    <link rel="stylesheet" href="./Styles/bootstrap.min.css" />
  </head>
  <body>
         <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
         <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="./index.php">Home </a>
             </li>
             <li class="nav-item">
                <a class="nav-link" href="./sample1.php">Link 1</a>
            </li>
             <li class="nav-item">
                <a class="nav-link" href="#">Link 2</a>
            </li>
            <li>
            <form class="form-inline" action="/action_page.php">
                <input class="form-control mr-sm-2" type="text" placeholder="Search">
                 <button class="btn btn-success" type="submit">Search</button>
            </form>
            </li>
            </ul>
        </nav> 
    <div></br>  </div>
    <div class="container">
        <div class="jumbotron col-md-12 col-lg-12"><center><h2>Card /Game App</h2></center></div>
        
        <div class='row'>
            <div class="col-md-4 col-lg-4">
                    <picture>
                            <source srcset="images/jenny-marvin-1265717-unsplash.jpg" type="image/svg+xml">
                            <img src="images/jenny-marvin-1265717-unsplash.jpg" class="img-fluid img-thumbnail" alt="Cinque Terre" width="300" height="300">
                    </picture>
                    
            </div>
            <div class="col-md-4 col-lg-4">
                    <picture>
                            <source srcset="images/jack-hamilton-320934-unsplash.jpg" type="image/svg+xml">
                            <img src="images/jack-hamilton-320934-unsplash.jpg" class="img-fluid img-thumbnail" alt="Cinque Terre" width="300" height="300">
                    </picture>
            </div>
            <div class="col-md-4 col-lg-4">
                    <picture>
                            <source srcset="images/rawpixel-592443-unsplash.jpg" type="image/svg+xml">
                            <img src="images/rawpixel-592443-unsplash.jpg" class="img-fluid img-thumbnail" alt="Cinque Terre" width="300" height="300">
                    </picture>
            </div>
        </div>
    </div>

    <?php echo '<script'; ?>
 src="./script/jquery-3.3.1.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="./scripts/bootstrap.min.js"><?php echo '</script'; ?>
>
  </body>
</html>
<?php }
}
