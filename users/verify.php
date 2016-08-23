<?php require_once 'init.php'; ?>

<?php require_once $abs_us_root.$us_url_root.'users/includes/header.php'; ?>

<?php require_once $abs_us_root.$us_url_root.'users/includes/navigation.php'; ?>



<?php

if($user->isLoggedIn()){

	$user->logout();

	Redirect::to('verify.php');

}



$verify_success=FALSE;



$errors = array();

if(Input::exists('get')){



	$email = Input::get('email');

	$vericode = Input::get('vericode');



	$validate = new Validate();

	$validation = $validate->check($_GET,array(

	'email' => array(

	  'display' => 'Email',

	  'valid_email' => true,

	  'required' => true,

	),

	));

	if($validation->passed()){ //if email is valid, do this

		//get the user info based on the email

		$verify = new User(Input::get('email'));

		

		if ($verify->exists() && $verify->data()->vericode == $vericode){ //check if this email account exists in the DB

			$verify->update(array('email_verified' => 1),$verify->data()->id);

			$verify_success=TRUE;

		}

	}else{

		$errors = $validation->errors();

	}

}



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

         <p>&nbsp;</p>

         <p>&nbsp;</p>

         <p>&nbsp;</p>

          <h1 class="text-center">Verification Process</h1>

          <p class="text-center"> For preventing spam. </p>

          <p>&nbsp;</p>

        </div>

      </div>

    </div>

  </div>

</header>



<div id="page-wrapper">

<div class="container">



<?php



if ($verify_success){

	require 'views/_verify_success.php';

}else{

	require 'views/_verify_error.php';

}



?>

</div>

</div>



<?php require_once $abs_us_root.$us_url_root.'users/includes/page_footer.php'; // the final html footer copyright row + the external js calls ?>



  <!-- Place any per-page javascript here -->



<?php require_once $abs_us_root.$us_url_root.'users/includes/html_footer.php'; // currently just the closing /body and /html ?>

