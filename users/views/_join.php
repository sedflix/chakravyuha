<?php

?>
<div class="row">
<div class="col-xs-12">
<?php 
if (!$form_valid && Input::exists()){
	echo display_errors($validation->errors());
}
?>

<form class="form-signup" action="<?=$form_action;?>" method="<?=$form_method;?>" id="payment-form">
	
	<h2 class="form-signin-heading" style="visibility:hidden"> <?=lang("SIGNUP_TEXT","");?></h2>

	<div class="form-group">
	    <label for="username">
		<input  class="iii"type="text" alt="No Spaces or Special Characters - Min 5 characters" name="username" id="username"  value="<?php if (!$form_valid && !empty($_POST)){ echo $username;} ?>" required autocomplete="off" autofocus>
        <div class="label-text">Username
        </div>
        </label>
		
		<label for="fname">
		<input type="text" class="iii"id="fname" name="fname" autocomplete="off" value="<?php if (!$form_valid && !empty($_POST)){ echo $fname;} ?>" required>
        <div class="label-text">First Name
        </div>
        </label>

		<label for="lname">
		<input type="text" class="iii"id="lname" name="lname" autocomplete="off" value="<?php if (!$form_valid && !empty($_POST)){ echo $lname;} ?>" required>
        <div class="label-text">Last Name
        </div>
        </label>

		<label for="email">
		<input  class="iii" type="text" name="email" id="email" autocomplete="off" value="<?php if (!$form_valid && !empty($_POST)){ echo $email;} ?>" required >
        <div class="label-text">E-Mail
        </div>
        </label>

		<label for="company">
		<input type="text" class="iii" id="company" name="company" autocomplete="off" value="<?php if (!$form_valid && !empty($_POST)){ echo $company;} ?>" required>
        <div class="label-text">College or School Name
        </div>
        </label>

	
		<!-- <span class="help-block" id="passwordhelp" style="font-size:smaller;">Password must be at least 6 characters</span> -->
		<label for="password">
		<input  class="iii"type="password" name="password" autocomplete="off" id="password"  required aria-describedby="passwordhelp">
        <div class="label-text">Password
        </div>
        </label>
		
        <label for="confirm">		
		<input  type="password" id="confirm" name="confirm" autocomplete="off" class="iii" required >
        <div class="label-text">Confirm Password
        </div>
        </label>
		
        </br>
        </br>
		<label for="agreement">
        <div class="agree">Registration User Terms and Conditions
        </div></label></br>
		<textarea id="agreement" name="agreement" rows="10" class="iii"disabled ><?php require $abs_us_root.$us_url_root.'usersc/includes/user_agreement.php'; ?></textarea>
        
		</label>
        <br><br>
		<input type="checkbox" id="agreement_checkbox" name="agreement_checkbox" class="checkbox1">
        <span class="agree" style="padding:5px;">Check box to agree to terms </span>
<!--		<label for="agreement_checkbox" >
        Check box to agree to terms
        </label>
-->
	</div>

	<?php if($settings->recaptcha == 1){ ?>
	<div class="form-group">
		<div class="g-recaptcha" data-sitekey="<?=$publickey; ?>"></div>
	</div>
	<?php } ?>
	<input type="hidden" value="<?=Token::generate();?>" name="csrf">
    </br>
	<button class="submit btn btn-primary trans" style="width:100%; font-size:25px" type="submit" id="next_button">Register Me</button>
</form>
</div>
</div>
</br>
</br>
</br>