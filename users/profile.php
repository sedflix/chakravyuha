<?php require_once 'init.php'; ?>

    <?php require_once $abs_us_root.$us_url_root.'users/includes/header.php'; ?>

    <?php require_once $abs_us_root.$us_url_root.'users/includes/navigation.php'; ?>

    <?php if (!securePage($_SERVER['PHP_SELF'])){die();} ?>

    <?php

//PHP Goes Here!



if($user->isLoggedIn()) { $thisUserID = $user->data()->id;} else { $thisUserID = 0; }



if(isset($_GET['id']))

	{

	$userID = Input::get('id');

	

	$userQ = $db->query("SELECT * FROM profiles LEFT JOIN users ON user_id = users.id WHERE user_id = ?",array($userID));

	$thatUser = $userQ->first();



	if($thisUserID == $userID)

		{

		$editbio = ' <small><a class="btn btn-primary btn-lg trans" href="edit_profile.php" role="button">Edit Bio</a></small>';

		}

	else

		{

		$editbio = '';

		}

	

	$ususername = ucfirst($thatUser->username);

	$grav = get_gravatar(strtolower(trim($thatUser->email)));

	$useravatar = '<img src="'.$grav.'" class="img-thumbnail" alt="'.$ususername.'">';

	$usbio = html_entity_decode($thatUser->bio);

	//Uncomment out the line below to see what's available to you.

	//dump($thisUser);

	}

else

	{

	$ususername = '404';

	$usbio = 'User not found';

	$useravatar = '';

	$editbio = ' <small><a class="btn btn-primary btn-lg trans" role="button" href="/">Go to the homepage</a></small>';

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

          <p class="text-center"><?php echo $useravatar;?> </p>

          </br>

          <h1 class="text-center">Hi, </h1>

          <h1 class="text-center"><?php echo $ususername;?></h1>

         <p>&nbsp;</p>
          <p class="text-center" style="font-size:18px;!important margin:1% 5% 1% 5%"> <?php echo $usbio;?> </p>
         
         <p>&nbsp;</p>

          <p>&nbsp;</p>

          <p class="text-center"> <?php echo $editbio;?></p>

        </div>

          </div>

    </div>

      </div>

</header>
          

    <!-- <a class="btn btn-success" href="view_all_users.php" role="button">All Users</a> </div> --> 

   

    <!-- footers -->

    <?php require_once $abs_us_root.$us_url_root.'users/includes/page_footer.php'; // the final html footer copyright row + the external js calls ?>

    <!-- Place any per-page javascript here -->

    <?php require_once $abs_us_root.$us_url_root.'users/includes/html_footer.php'; // currently just the closing /body and /html ?>

