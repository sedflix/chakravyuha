<?php

// error_reporting(E_ALL);

// ini_set('display_errors', 1);

ini_set("allow_url_fopen", 1);

?>

<?php require_once 'init.php'; ?>

    <?php require_once $abs_us_root.$us_url_root.'users/includes/header.php'; ?>

    <?php require_once $abs_us_root.$us_url_root.'users/includes/navigation.php'; ?>

    <?php

$settingsQ = $db->query("SELECT * FROM settings");

$settings = $settingsQ->first();

$error_message = '';

$reCaptchaValid=FALSE;



if (Input::exists()) {

	$token = Input::get('csrf');

	if(!Token::check($token)){

		die('Token doesn\'t match!');

	}



	//Check to see if recaptcha is enabled

	if($settings->recaptcha == 1){

		require_once 'includes/recaptcha.config.php';



		//reCAPTCHA 2.0 check

		$response = null;



		// check secret key

		$reCaptcha = new ReCaptcha($privatekey);



		// if submitted check response

		if ($_POST["g-recaptcha-response"]) {

			$response = $reCaptcha->verifyResponse($_SERVER["REMOTE_ADDR"],$_POST["g-recaptcha-response"]);

		}

		if ($response != null && $response->success) {

			$reCaptchaValid=TRUE;



		}else{

			$reCaptchaValid=FALSE;

			$error_message .= 'Please check the reCaptcha.';

		}

	}else{

		$reCaptchaValid=TRUE;

	}



	if($reCaptchaValid || $settings->recaptcha == 0){ //if recaptcha valid or recaptcha disabled



		$validate = new Validate();

		$validation = $validate->check($_POST, array('username' => array('display' => 'Username','required' => true),'password' => array('display' => 'Password', 'required' => true)));



		if ($validation->passed()) {

			//Log user in



			$remember = (Input::get('remember') === 'on') ? true : false;

			$user = new User();

			$login = $user->loginEmail(Input::get('username'), trim(Input::get('password')), $remember);

			if ($login) {

				if(file_exists($abs_us_root.$us_url_root.'usersc/scripts/custom_login_script.php')){

					require_once $abs_us_root.$us_url_root.'usersc/scripts/custom_login_script.php';

				}else{

					//Feel free to change where the user goes after login!

					Redirect::to('account.php');

				}

			} else {

				$error_message .= 'Log in failed. Please check your username and password and try again.';

			}

		} else{

			$error_message .= '<ul>';

			foreach ($validation->errors() as $error) {

				$error_message .= '<li>' . $error . '</li>';

			}

			$error_message .= '</ul>';

		}

	}

}



?>

<div id="particles-js"></div> <script src="http://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script> <!-- stats.js lib --> 

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

          <h1 class="text-center">Log In</h1>

          <p class="text-center"> Valour, power, determination, proficiency and courage in battle, generosity and leadership are the inherent characteristics of a kshatriya.</p>
           <p class="text-center" ><b>Do you have what takes?</b></p>

          <p>&nbsp;</p>

        </div>

          </div>

    </div>

      </div>

</header>

    <div id="page-wrapper">

  <div class="container">

        <div class="row">
		<div class="col-xs-12">
        <?php

		if(!empty($error_message))

		{


      echo "

            <div class=\"bg-danger\">";

          echo $error_message;

echo        "</div>";

		}

		?>

           <form name="login" class="form-signin" action="login.php" method="post" style="color:white;">

          <label for="username">

          <input type="text" name="username" id="username"  required>

          <div class="label-text">Username Or E-Mail </div>
		  </label>
          

          <label for="password"> 

          <input type="password"  name="password" id="password" min="8" required >

          <div class="label-text"> Password </div>

		 </label>         

          <?php

	if($settings->recaptcha == 1){

	?>

          <div class="form-group">

                <label>Please check the box below to continue</label>

                <div class="g-recaptcha" data-sitekey="<?=$publickey; ?>"></div>

              </div>

          <?php } ?>

          

          <div style="agree" >

               

              <input type="checkbox" class="checkbox1" checked name="remember" id="remember" >

              <span style="padding:5px; font-size:18px;"> Remember Me <span>

            </div>

              

          <input type="hidden" name="csrf" value="<?=Token::generate(); ?>">

          <button class="submit  btn  btn-primary trans" style="width:100%; font-size:25px; letter-spacing:normal;" type="submit">

              Log In

              </button>

        </form>

          </div>

    </div>

    <br>

    <br>

        <div class="row">

      <div class="col-xs-6 botB"><br>

            <a class="" href='forgot_password.php'><i class="fa fa-wrench"></i> Forgot Password</a><br>

            <br>

          </div>

      <div class="col-xs-6 botB"><br>

            <a class="botB" href='join.php'><i class="fa fa-plus-square"></i>

        <?=lang("SIGNUP_TEXT","");?>

        </a><br>

            <br>

          </div>

    </div>

      </div>

</div>

<br>

    <br>

    <br>



    <!-- footers -->

    <?php require_once $abs_us_root.$us_url_root.'users/includes/page_footer.php'; // the final html footer copyright row + the external js calls ?>



    <!-- Place any per-page javascript here -->



    <?php 	if($settings->recaptcha == 1){ ?>

    <script src="https://www.google.com/recaptcha/api.js" async defer></script>

    <?php } ?>

    <?php require_once $abs_us_root.$us_url_root.'users/includes/html_footer.php'; // currently just the closing /body and /html ?>

