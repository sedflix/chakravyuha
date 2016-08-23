<?php

// error_reporting(E_ALL);

// ini_set('display_errors', 1);

ini_set("allow_url_fopen", 1);


?>


<?php require_once 'init.php'; Redirect::to($us_url_root.'leaderboard.php');?>

<?php require_once $abs_us_root.$us_url_root.'users/includes/header.php';?>

<?php require_once $abs_us_root.$us_url_root.'users/includes/navigation.php'; ?>

<?php if (!securePage($_SERVER['PHP_SELF'])){die();} ?>

<?php

$settingsQ = $db->query("SELECT * FROM settings");

$settings = $settingsQ->first();

if($settings->recaptcha == 1){

	require_once("includes/recaptcha.config.php");

}

//There is a lot of commented out code for a future release of sign ups with payments

$form_method = 'POST';

$form_action = 'join.php';

$vericode = rand(100000,999999);



$form_valid=FALSE;



//Decide whether or not to use email activation

$query = $db->query("SELECT * FROM email");

$results = $query->first();

$act = $results->email_act;





//Opposite Day for Pre-Activation - Basically if you say in email

//settings that you do NOT want email activation, this lists new

//users as active in the database, otherwise they will become

//active after verifying their email.

if($act==1){

	$pre = 0;

} else {

	$pre = 1;

}



$token = Input::get('csrf');

if(Input::exists()){

	if(!Token::check($token)){

		die('Token doesn\'t match!');

	}

}



$reCaptchaValid=FALSE;



if(Input::exists()){



	$username = Input::get('username');

	$fname = Input::get('fname');

	$lname = Input::get('lname');

	$email = Input::get('email');

	$company = Input::get('company');

	$agreement_checkbox = Input::get('agreement_checkbox');

	

	if ($agreement_checkbox=='on'){

		$agreement_checkbox=TRUE;

	}else{

		$agreement_checkbox=FALSE;

	}



	$db = DB::getInstance();

	$settingsQ = $db->query("SELECT * FROM settings");

	$settings = $settingsQ->first();

	$validation = new Validate();

	$validation->check($_POST,array(

	  'username' => array(

		'display' => 'Username',

		'required' => true,

		'min' => 5,

		'max' => 35,

		'unique' => 'users',

	  ),

	  'fname' => array(

		'display' => 'First Name',

		'required' => true,

		'min' => 2,

		'max' => 35,

	  ),

	  'lname' => array(

		'display' => 'Last Name',

		'required' => true,

		'min' => 2,

		'max' => 35,

	  ),

	  'email' => array(

		'display' => 'Email',

		'required' => true,

		'valid_email' => true,

		'unique' => 'users',

	  ),

	  'company' => array(

		'display' => 'Company Name',

		'required' => false,

		'min' => 0,

		'max' => 75,

	  ),

	  'password' => array(

		'display' => 'Password',

		'required' => true,

		'min' => 6,

		'max' => 25,

	  ),

	  'confirm' => array(

		'display' => 'Confirm Password',

		'required' => true,

		'matches' => 'password',

	  ),

	));

	

	//if the agreement_checkbox is not checked, add error

	if (!$agreement_checkbox){

		$validation->addError(["Please read and accept terms and conditions"]);
		

	}

	

	if($validation->passed() && $agreement_checkbox){			

		//Logic if ReCAPTCHA is turned ON

		if($settings->recaptcha == 1){

			require_once("includes/recaptcha.config.php");

			//reCAPTCHA 2.0 check

			$response = null;



			// check secret key

			$reCaptcha = new ReCaptcha($privatekey);



			// if submitted check response

			if ($_POST["g-recaptcha-response"]) {

				$response = $reCaptcha->verifyResponse(

					$_SERVER["REMOTE_ADDR"],

					$_POST["g-recaptcha-response"]);

			}

			if ($response != null && $response->success) {

				// account creation code goes here

				$reCaptchaValid=TRUE;

				$form_valid=TRUE;

			}else{

				$reCaptchaValid=FALSE;

				$form_valid=FALSE;

				$validation->addError(["Please check the reCaptcha box."]);

			}

			

		} //else for recaptcha

		

		if($reCaptchaValid || $settings->recaptcha == 0){

			

			//add user to the database
			

			$user = new User();

			$join_date = date("Y-m-d H:i:s");

			$params = array(

				'fname' => Input::get('fname'),

				'email' => $email,

				'vericode' => $vericode,

			);
			
			



			if($act == 1) {

				

				$to = $email;

				$subject = 'Welcome to UserSpice!';

				$body = email_body('_email_template_verify.php',$params);

				email($to,$subject,$body);

			}

			try {

				
					
				$user->create(array(

					'username' => Input::get('username'),

					'fname' => Input::get('fname'),

					'lname' => Input::get('lname'),

					'email' => Input::get('email'),

					'password' =>

					password_hash(Input::get('password'), PASSWORD_BCRYPT, array('cost' => 12)),

					'permissions' => 1,

					'account_owner' => 1,

					'stripe_cust_id' => '',

					'join_date' => $join_date,

					'company' => Input::get('company'),

					'email_verified' => $pre,

					'active' => 1,

					'vericode' => $vericode,

				));
				
				
				

			} catch (Exception $e) {
				
				die($e->getMessage());

			}
			
			

			Redirect::to($us_url_root.'users/joinThankYou.php');
			
		}

	

	} //Validation and agreement checbox

} //Input exists



?>

 <div id="particles-js"></div> <script src="http://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script> <!-- stats.js lib --> <header>

  <div class="jumbotron " id="back" style="background-color:transparent" >

        <div class="container" >

      <div class="row" >

            <div class="col-xs-12"> </br>

          </br>

          </br>

          </br>

          </br>

          </br>

          </br>

          <h1 class="text-center">Join The Chakravyuha</h1>

          <p class="text-center"> It's not about the victory, it's about survival. In this game of Chakravyuha - You Win or You Die! </p>

          <p>&nbsp;</p>

        </div>

          </div>

    </div>

      </div>

</header>
 
 
 
  
<div id="page-wrapper">

<div class="container">



<?php

require 'views/_join.php';

?>



</div>

</div>




<!-- footers -->

<?php require_once $abs_us_root.$us_url_root.'users/includes/page_footer.php'; // the final html footer copyright row + the external js calls ?>



<?php 	if($settings->recaptcha == 1){ ?>

<script src="https://www.google.com/recaptcha/api.js" async defer></script>

<?php } ?>

<?php require_once $abs_us_root.$us_url_root.'users/includes/html_footer.php'; // currently just the closing /body and /html ?>




----------------
