<?php require_once 'init.php'; ?>

    <?php require_once $abs_us_root.$us_url_root.'users/includes/header.php'; ?>

    <?php require_once $abs_us_root.$us_url_root.'users/includes/navigation.php'; ?>

    <?php

if (!securePage($_SERVER['PHP_SELF'])){die();}



if ($settings->site_offline==1){die("The site is currently offline.");}?>

    <?php

//PHP Goes Here!

$errors=[];

$successes=[];

$userId = $user->data()->id;

$grav = get_gravatar(strtolower(trim($user->data()->email)));



$validation = new Validate();

$userdetails=$user->data();



//Temporary Success Message

$holdover = Input::get('success');

if($holdover == 'true'){

	bold("Account Updated");

}



//Forms posted

if(!empty($_POST)) {

    $token = $_POST['csrf'];

    if(!Token::check($token)){

      die('Token doesn\'t match!');

    }else {



    //Update display name



    if ($userdetails->username != $_POST['username']){

		$displayname = Input::get("username");



		$fields=array('username'=>$displayname);

		$validation->check($_POST,array(

		'username' => array(

		  'display' => 'Username',

		  'required' => true,

		  'unique_update' => 'users,'.$userId,

		  'min' => 1,

		  'max' => 25

		)

		));

		if($validation->passed()){

			//echo 'Username changes are disabled by commenting out this field and disabling input in the form/view';

			//$db->update('users',$userId,$fields);

			

			$successes[]="Username updated.";

		}else{

			//validation did not pass

			foreach ($validation->errors() as $error) {

				$errors[] = $error;

			}			



		}

    }else{

		$displayname=$userdetails->username;

	}



    //Update first name



    if ($userdetails->fname != $_POST['fname']){

		$fname = Input::get("fname");



		$fields=array('fname'=>$fname);

		$validation->check($_POST,array(

		'fname' => array(

		  'display' => 'First Name',

		  'required' => true,

		  'min' => 1,

		  'max' => 25

		)

		));

		if($validation->passed()){

			$db->update('users',$userId,$fields);

			

			$successes[]='First name updated.';

		}else{

			//validation did not pass

			foreach ($validation->errors() as $error) {

				$errors[] = $error;

			}			



		}

    }else{

		$fname=$userdetails->fname;

	}



    //Update last name



    if ($userdetails->lname != $_POST['lname']){

      $lname = Input::get("lname");



      $fields=array('lname'=>$lname);

      $validation->check($_POST,array(

        'lname' => array(

          'display' => 'Last Name',

          'required' => true,

          'min' => 1,

          'max' => 25

        )

      ));

    if($validation->passed()){

      $db->update('users',$userId,$fields);

      

	  $successes[]='Last name updated.';

    }else{

			//validation did not pass

			foreach ($validation->errors() as $error) {

				$errors[] = $error;

			}			



      }

    }else{

		$lname=$userdetails->lname;

	}



    //Update email

    if ($userdetails->email != $_POST['email']){

      $email = Input::get("email");

      $fields=array('email'=>$email);

      $validation->check($_POST,array(

        'email' => array(

          'display' => 'Email',

          'required' => true,

          'valid_email' => true,

          'unique_update' => 'users,'.$userId,

          'min' => 3,

          'max' => 75

        )

      ));

    if($validation->passed()){

      $db->update('users',$userId,$fields);

      

	  $successes[]='Email updated.';

    }else{

			//validation did not pass

			foreach ($validation->errors() as $error) {

				$errors[] = $error;

			}					

      }



    }else{

		$email=$userdetails->email;

	}



    if(!empty($_POST['password'])) {

      $validation->check($_POST,array(

        'old' => array(

          'display' => 'Old Password',

          'required' => true,

        ),

        'password' => array(

          'display' => 'New Password',

          'required' => true,

          'min' => 6,

        ),

        'confirm' => array(

          'display' => 'Confirm New Password',

          'required' => true,

          'matches' => 'password',

        ),

      ));

		foreach ($validation->errors() as $error) {

			$errors[] = $error;

		}			



      if (!password_verify(Input::get('old'),$user->data()->password)) {

			foreach ($validation->errors() as $error) {

				$errors[] = $error;

			}			

			$errors[]='Your password does not match our records.';

      }

		if (empty($errors)) {

			//process

			$new_password_hash = password_hash(Input::get('password'),PASSWORD_BCRYPT,array('cost' => 12));

			$user->update(array('password' => $new_password_hash,),$user->data()->id);

			$successes[]='Password updated.';

		}

    }

    }

}else{

	$displayname=$userdetails->username;

	$fname=$userdetails->fname;

	$lname=$userdetails->lname;

	$email=$userdetails->email;

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

          <p  class="text-center"><img src="<?=$grav; ?>" class="img-thumbnail img-responsive" alt="Profile Pic"></p>

          <h1 class="text-center">Hello, <?php echo "$fname"?></h1>

          <p class="text-center"> Update Your Accounts Settings</p>

          <p>&nbsp;</p>

        </div>

          </div>

    </div>

      </div>

</header> 

    <div id="page-wrapper">

  <div class="container">

     <div class="well" style="background-color:transparent">

      <div class="row">

      <?php

	  	if(!empty($error) || !empty($successes))

		{

	  

            echo '<div class="col-xs-12 col-md-12"> <span class="bg-danger">';

              echo "<?=display_errors($errors);?>";

              

              echo "<?=display_successes($successes);?>";
			  echo "</span> ";

              echo '</div>';

         

		}

		 ?>
         </div>

		
        <div class="row">
<div class="col-xs-12 col-md-12"> 
          <form name='updateAccount' action='user_settings.php' method='post'>

                <label for="username">

                <input  class='iii' type='text' id="username" name='username' value='<?=$displayname?>'/>

                <div class="label-text">Username </div>

                </label>

                <label>

                <input  class='iii' type='text' name='fname' value='<?=$fname?>' />

                <div class="label-text"> First Name </div>

                </label>

                <label>

                <input  class='iii' type='text' name='lname' value='<?=$lname?>' />

                <div class="label-text">Last Name </div>

                </label>

                <label>

                <input class='iii' type='text' name='email' value='<?=$email?>' />

                <div class="label-text">E-Mail </div>

                </label>

                <label>

                <input class='iii' type='password' name='old' />

                <div class="label-text">Old Password </div>

                </label>

                <label>

                <input class='iii' type='password' name='password' />

                <div class="label-text">New Password </div>

                </label>

                <label>

                <input class='iii' type='password' name='confirm' />

                <div class="label-text">Confirm Password </div>

              </form>

          <input type="hidden" name="csrf" value="<?=Token::generate();?>" />

          <p>

                <input class='btn btn-primary trans' style="width:100%; font-size:25px; letter-spacing:normal;" type='submit' value='Update' class='submit' />

              </p>

          <p> <a class="btn btn-primary trans" style="width:100%; font-size:25px; letter-spacing:normal;" href="account.php">Cancel</a> </p>

          </form>

        </div>

          </div>

    </div>

      </div>

  <!-- /container --> 

  

</div>

    <!-- /#page-wrapper --> 

    <br>

	<br>

    <br>

    <!-- footers -->

    <?php require_once $abs_us_root.$us_url_root.'users/includes/page_footer.php'; // the final html footer copyright row + the external js calls ?>



    <!-- Place any per-page javascript here -->



    <?php require_once $abs_us_root.$us_url_root.'users/includes/html_footer.php'; // currently just the closing /body and /html ?>

