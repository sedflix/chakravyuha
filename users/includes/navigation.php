<?php

$lang = array_merge($lang,array(

	"SIGNUP_TEXT"			=> "Register",

	"SIGNUP_BUTTONTEXT"		=> "Register Me",

	"SIGNUP_AUDITTEXT"		=> "Registered",

	));



// Signin

$lang = array_merge($lang,array(

	"SIGNIN_FAIL"			=> "** FAILED LOGIN **",

	"SIGNIN_TITLE"			=> "Please Log In",

	"SIGNIN_TEXT"			=> "Log In",

	"SIGNOUT_TEXT"			=> "Log Out",

	"SIGNIN_BUTTONTEXT"		=> "Login",

	"SIGNIN_AUDITTEXT"		=> "Logged In",

	"SIGNOUT_AUDITTEXT"		=> "Logged Out",

	));



//Navigation

$lang = array_merge($lang,array(

	"NAVTOP_HELPTEXT"		=> "Help",

	));



$query = $db->query("SELECT * FROM email");

$results = $query->first();



//Value of email_act used to determine whether to display the Resend Verification link

$email_act=$results->email_act;



?>

<!-- Navigation -->

<link href="../css/bootstrap.css" rel="stylesheet" type="text/css">

<link href="https://fonts.googleapis.com/css?family=Cabin+Sketch:400,700|Flamenco" rel="stylesheet">

<div class="navbar  navbar-inverse navbar-fixed-top" style="color:white; border:none;"role="navigation">

  <div class="container" style="color:white;"> 

    <!-- Brand and toggle get grouped for better mobile display -->

    <div class="navbar-header ">

      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-top-menu-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>

      <a class="" href="<?=$us_url_root?>"><img class="img-responsive  imgt" src="<?=$us_url_root?>users/images/header.png" alt="" /></a>

    </div>

    <div class="collapse navbar-collapse navbar-top-menu-collapse navbar-right">

      <ul class="nav navbar-nav ">

        <?php if($user->isLoggedIn()){ //anyone is logged in?>

        <li><a href="<?=$us_url_root?>users/account.php"><i class=""></i>

          <?=$user->data()->username;?>

          </a></li>

        <!-- Common for Hamburger and Regular menus link -->

        <li class="hidden-sm hidden-md hidden-lg"><a href="<?=$us_url_root?>rules.php>"><i class=""></i> Rules </a></li>

        <li class="hidden-sm hidden-md hidden-lg"><a href="<?=$us_url_root?>"><i class=""></i> Home</a></li>

        

        <!-- Hamburger menu link -->

        <?php if (checkMenu(2,$user->data()->id)){  //Links for permission level 2 (default admin) ?>

        <li class="hidden-sm hidden-md hidden-lg"><a href="<?=$us_url_root?>users/admin.php"><i class=""></i> Admin Dashboard</a></li>

        <!-- Hamburger menu link -->

        <?php } // is user an admin ?>

        <li class="dropdown hidden-xs"><a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class=""></i><b class="caret"></b></a> <!-- regular user menu -->

          <ul class="dropdown-menu">

            <!-- open tag for User dropdown menu -->

             <li><a href="<?=$us_url_root?>rules.php"><i class=""></i> Rules</a></li>

            <li><a href="<?=$us_url_root?>"><i class=""></i> Home</a></li>

           

            

            <!-- regular user menu link -->

            <li><a href="<?=$us_url_root?>users/account.php"><i class=""></i> Account</a></li>

            <!-- regular user menu link -->

            

            <?php if (checkMenu(2,$user->data()->id)){  //Links for permission level 2 (default admin) ?>

            <li class="divider"></li>

            <li><a href="<?=$us_url_root?>users/admin.php"><i class=""></i> Admin Dashboard</a></li>

            <!-- regular Admin menu link -->

            <?php } // is user an admin ?>

            <li class="divider"></li>

            <li><a href="<?=$us_url_root?>users/logout.php"><i class=""></i>

              <?=lang("SIGNOUT_TEXT","");?>

              </a></li>

            <!-- regular Logout menu link -->

          </ul>

          <!-- close tag for User dropdown menu --> 

        </li>

        <li class="hidden-sm hidden-md hidden-lg"><a href="<?=$us_url_root?>users/logout.php"><i class=""></i>

          <?=lang("SIGNOUT_TEXT","");?>

          </a></li>

        <!-- regular Hamburger logout menu link -->

        

        <?php }else{ // no one is logged in so display default items ?>

        <li><a href="<?=$us_url_root?>users/login.php" class=""><i class=""></i>

          <?=lang("SIGNIN_TEXT","");?>

          </a></li>

        <li><a href="<?=$us_url_root?>users/join.php" class=""><i class=""></i>

          <?=lang("SIGNUP_TEXT","");?>

          </a></li>

        <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class=""></i>

          <?=lang("NAVTOP_HELPTEXT","");?>

          <b class="caret"></b></a>

          <ul class="dropdown-menu">

            <li><a href="<?=$us_url_root?>users/forgot_password.php"><i class="fa fa-wrench"></i> Forgot Password</a></li>

            <?php if ($email_act){ //Only display following menu item if activation is enabled ?>

            <li><a href="<?=$us_url_root?>users/verify_resend.php"><i class="fa fa-exclamation-triangle"></i> Resend Activation Email</a></li>

            <?php }?>

          </ul>

        </li>

        <?php } //end of conditional for menu display ?>

      </ul>

      <!-- End of UL for navigation link list --> 

    </div>

    <!-- End of Div for right side navigation list -->

    

    <?php require_once $abs_us_root.$us_url_root.'usersc/includes/navigation.php';?>

  </div>

  <!-- End of Div for navigation bar --> 

</div>

<!-- End of Div for navigation bar styling --> 

