<?php



?>

<?php require_once 'init.php'; ?>

<?php require_once $abs_us_root.$us_url_root.'users/includes/header.php'; ?>

<?php require_once $abs_us_root.$us_url_root.'users/includes/navigation.php'; ?>

<?php if (!securePage($_SERVER['PHP_SELF'])){die();} ?>

<?php

$error_message = null;

$errors = array();

$email_sent=FALSE;



$token = Input::get('csrf');

if(Input::exists()){

	if(!Token::check($token)){

		die('Token doesn\'t match!');

	}

}



if (Input::get('forgotten_password')) {

	$email = Input::get('email');

	$fuser = new User($email);

	//validate the form

	$validate = new Validate();

	$validation = $validate->check($_POST,array('email' => array('display' => 'Email','valid_email' => true,'required' => true,),));

	

	if($validation->passed()){

		if($fuser->exists()){

			//send the email

			$options = array(

			  'fname' => $fuser->data()->fname,

			  'email' => $email,

			  'vericode' => $fuser->data()->vericode,

			);

			$subject = 'Password Reset';

			$body =  email_body('_email_template_forgot_password.php',$options);

			$email_sent=email($email,$subject,$body);

			if(!$email_sent){

				$errors[] = 'Email NOT sent due to error. Please contact site administrator.';

			}

		}else{

			$errors[] = 'That email does not exist in our database';

		}

	}else{

		//display the errors

		$errors = $validation->errors();

	}

}

?>
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

         <p>&nbsp;</p>

         <p>&nbsp;</p>

         <p>&nbsp;</p>

          <h1 class="text-center">Forgot Your Password?</h1>

          <p class="text-center"> We are here to help you. </p>

          <p>&nbsp;</p>

        </div>

      </div>

    </div>

  </div>

</header>



<div id="page-wrapper">

<div class="container">

<?php



if($email_sent){

	require 'views/_forgot_password_sent.php';

}else{

	require 'views/_forgot_password.php';

}



?>

</div><!-- /.container-fluid -->

</div><!-- /#page-wrapper -->

<script src="https://www.google.com/recaptcha/api.js" async defer></script>

<!-- footer -->

<!-- footers -->

<?php require_once $abs_us_root.$us_url_root.'users/includes/page_footer.php'; // the final html footer copyright row + the external js calls ?>



<!-- Place any per-page javascript here -->



<?php require_once $abs_us_root.$us_url_root.'users/includes/html_footer.php'; // currently just the closing /body and /html ?>

