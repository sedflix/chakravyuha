
<?php  require_once 'init.php';Redirect::to($us_url_root.'leaderboard.php'); ?>

<?php require_once $abs_us_root.$us_url_root.'users/includes/header.php'; ?>

<?php require_once $abs_us_root.$us_url_root.'users/includes/navigation.php'; ?>

<div id="particles-js"></div> <script src="http://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script> <!-- stats.js lib --> <header>


<header>

  <div class="jumbotron " id="back" style="background-color:transparent;" >

    <div class="container" >

      <div class="row" >

        <div class="col-xs-12">         

         </br>

         </br>

         </br>

         </br>

         </br>

         </br>

         </br>

          <h1 class="text-center">Welcome to Chakravyuha</h1>

          <p class="text-center"> Thanks for registering! Please Log In Again! </p>

 <p>&nbsp;</p>
  <p>&nbsp;</p>
          <p class="text-center"> <a class="btn btn-primary btn-lg trans" href="login.php" role="button">Log In Now!</a></p>

         

          <p class="text-center"> <a class="btn btn-primary btn-lg trans" href="../rules.php" role="button">Read the Rules</a></p>

          <p>&nbsp;</p>

        </div>

      </div>

    </div>

  </div>

</header>



<div id="page-wrapper">

<div class="container">

<?php

$settingsQ = $db->query("SELECT * FROM settings");

$settings = $settingsQ->first();



//Decide whether or not to use email activation

$query = $db->query("SELECT * FROM email");

$results = $query->first();

$act = $results->email_act;



if($act == 1) {

	require 'views/_joinThankYou_verify.php';

}else{

	require 'views/_joinThankYou.php';

}



?>

</div>

</div>

<!-- Content Ends Here -->

<!-- footers -->

<?php require_once $abs_us_root.$us_url_root.'users/includes/page_footer.php'; // the final html footer copyright row + the external js calls ?>



<!-- Place any per-page javascript here -->

<script src="https://www.google.com/recaptcha/api.js" async defer></script>

<?php require_once $abs_us_root.$us_url_root.'users/includes/html_footer.php'; // currently just the closing /body and /html ?>

