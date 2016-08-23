

<?php require_once 'init.php'; ?>

<?php require_once $abs_us_root.$us_url_root.'users/includes/header.php'; ?>

<?php require_once $abs_us_root.$us_url_root.'users/includes/navigation.php'; ?>



<?php if (!securePage($_SERVER['PHP_SELF'])){die();} ?>

<?php

//PHP Goes Here!

$validation = new Validate();

$userID = $user->data()->id;

$grav = get_gravatar(strtolower(trim($user->data()->email)));

$profileQ = $db->query("SELECT * FROM profiles WHERE user_id = ?",array($userID));

$thisProfile = $profileQ->first();

//Uncomment out the 2 lines below to see what's available to you.

// dump($user);

// dump($thisProfile);



//Forms posted

if(!empty($_POST)) {

    $token = $_POST['csrf'];

    if(!Token::check($token)){

      die('Token doesn\'t match!');

    }else {

      if ($thisProfile->bio != $_POST['bio']){

        $newBio = $_POST['bio'];

        $fields=array('bio'=>$newBio);

        $validation->check($_POST,array(

          'bio' => array(

            'display' => 'Bio',

            'required' => true

          )

        ));

      if($validation->passed()){

        $db->update('profiles',$userID,$fields);

        Redirect::to('profile.php?id='.$userID);

      }

    }

  }

}

?>


<div id="particles-js"></div> <script src="http://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script> <!-- stats.js lib --> <header>
<header>

  <div class="jumbotron " id="back" style="background-color:transparent;" >

        <div class="container" >

      <div class="row" >

            <div class="col-xs-12"> </br>

          </br>

          </br>

          </br>

          </br>

          </br>

          </br>

          <p  class="text-center"><img src="<?=$grav; ?>" class="img-thumbnail img-responsive" alt="Profile Pic"></p>

          <h1 class="text-center">Hello, <?=ucfirst($user->data()->username)?></h1>

          <p class="text-center"> Change Yor Profiles Details Here</p>

          <p>&nbsp;</p>

        </div>

          </div>

    </div>

      </div>

</header>



	  <div id="page-wrapper">



		 <div class="container">



				<!-- Main jumbotron for a primary marketing message or call to action -->

				<div class="well">

					<div class="row">

						<div class="col-xs-12 col-md-12 text-center">

						<h1><?=ucfirst($user->data()->username)?>'s Profile</h1>



        <h2>Bio</h2>

          <form name="update_bio" action="edit_profile.php" method="post">

    <div align="center"><textarea rows="20" cols="80"  id="mytextarea" name="bio" ><?=$thisProfile->bio;?></textarea></div>

          <input type="hidden" name="csrf" value="<?=Token::generate();?>" >

		</p>

		  <p>

			<button type="submit" class="btn btn-primary trans" style="width:100%; color:#9B9B9B; :font-size:20px; letter-spacing:normal; margin-bottom:1%;" name="update_bio">Update Bio</button>

			<a class="btn btn-primary trans" style="width:100%; color:#9B9B9B; font-size:20px; letter-spacing:normal;" href="profile.php?id=<?php echo $userID;?>">Cancel</a>



</p>



			 </form>



					</div>

					</div>

				</div>





    </div> <!-- /container -->



</div> <!-- /#page-wrapper -->

<!-- If you disable this script below you will get a standard textarea with NO WYSIWYG editor. That simple -->

<script src='//cdn.tinymce.com/4/tinymce.min.js'></script>

<script>

tinymce.init({

  selector: '#mytextarea'

});

</script>



    <!-- footers -->

<?php require_once $abs_us_root.$us_url_root.'users/includes/page_footer.php'; // the final html footer copyright row + the external js calls ?>



    <!-- Place any per-page javascript here -->



<?php require_once $abs_us_root.$us_url_root.'users/includes/html_footer.php'; // currently just the closing /body and /html ?>

