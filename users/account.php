

<?php require_once 'init.php'; ?>

<?php require_once $abs_us_root.$us_url_root.'users/includes/header.php'; ?>



<?php require_once $abs_us_root.$us_url_root.'users/includes/navigation.php'; ?>



<?php if (!securePage($_SERVER['PHP_SELF'])){die();}

 if ($settings->site_offline==1){die("The site is currently offline.");}?>

<?php

$grav = get_gravatar(strtolower(trim($user->data()->email)));

$get_info_id = $user->data()->id;

// $groupname = ucfirst($loggedInUser->title);

$raw = date_parse($user->data()->join_date);

$signupdate = $raw['month']."/".$raw['day']."/".$raw['year'];

$userdetails = fetchUserDetails(NULL, NULL, $get_info_id); //Fetch user details

 ?>

 <div id="particles-js"></div> <script src="http://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script> <!-- stats.js lib --> <header>

 <header>

  <div class="jumbotron " id="back" style="background-color:transparent;">

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

         <p>&nbsp;</p>

          <h1 class="text-center">Chakravyuha</h1>

          <h1 class="text-center"> It's Over. </h1>

          <p class="text-center"> <a class="btn btn-primary btn-lg trans" href="user_settings.php" role="button">Edit Account Settings</a></p>

          <p class="text-center"> <a class="btn btn-primary btn-lg trans" href="profile.php?id=<?=$get_info_id;?>" role="button">See Your Profile</a></p>

          </br>

            <div class="countdown-container countdown col-md-8 col-md-offset-2 hidden-xs" id="countdown"></div>

        </div>

      </div>

    </div>

  </div>

</header>



<div id="page-wrapper">

<div class="container">

<div class="well" >

<div class="row">

	<div class="col-xs-12 col-md-3">

		<p><img src="<?=$grav; ?>" class="img-thumbnail" alt="Generic placeholder thumbnail"></p>

		

		

	</div>

	<div class="col-xs-12 col-md-9">

		<h1 class="text-center"><?=ucfirst($user->data()->fname)." ".ucfirst($user->data()->lname)?></h1>

		<p></p>

        <p class="text-center"> The clues are hidden in the unrecognizable nooks and corners until the nooks turn into craters and the corners stretch out to make mountains.</p>


	</div>

</div>

</div>



</div> <!-- /container -->



</div> <!-- /#page-wrapper -->



<!-- footers -->

<?php require_once $abs_us_root.$us_url_root.'users/includes/page_footer.php'; // the final html footer copyright row + the external js calls ?>



<!-- Place any per-page javascript here -->



<?php require_once $abs_us_root.$us_url_root.'users/includes/html_footer.php'; // currently just the closing /body and /html ?>

