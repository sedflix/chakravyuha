<?php







require_once 'users/init.php';

if(isset($user) && $user->isLoggedIn()){
  Redirect::to($us_url_root.'users/account.php');
}


require_once $abs_us_root.$us_url_root.'users/includes/header.php';

require_once $abs_us_root.$us_url_root.'users/includes/navigation.php';


?>

<div id="particles-js"></div> <script src="http://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script> <!-- stats.js lib -->


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



          <p class="text-center" style="width:100%;"><img src="users/images/chakravyuha.png" class="img-responsive" height="240px;"></p>

          <h1 class="text-center"> It's Over. </h1>
          <div class="countdown-container countdown col-md-8 col-md-offset-2 hidden-xs" id="countdown"></div></br>

        </div>

      </div>

    </div>

  </div>

</header>
<header>
<div class="jumbotron " id="back" style="background-color:transparent;" >

    <div class="container" >

        <div class="row" >

            <div class="col-xs-12">


<p class="text-center"> <a class="btn btn-primary btn-lg trans" style="font-size=22px;" href="leaderboard.php" role="button">See The Results</a></p>
                         
           <p class="text-center"> <a class="btn btn-primary btn-lg trans" href="users/login.php" role="button">Log In!</a></p>

        </div>

      </div>

    </div>

  </div>

</header>



<!-- footers -->

<?php require_once $abs_us_root.$us_url_root.'users/includes/page_footer.php'; // the final html footer copyright row + the external js calls ?>


<!-- Place any per-page javascript here -->



<?php require_once $abs_us_root.$us_url_root.'users/includes/html_footer.php'; // currently just the closing /body and /html ?>

