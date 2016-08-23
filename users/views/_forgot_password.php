<?php
/*
UserSpice 4
An Open Source PHP User Management System
by the UserSpice Team at http://UserSpice.com

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/
?>
<div class="row">
<div class="col-xs-12">
</br>
<h1 class="text-center">Reset your password.</h1>
</br>
</br>
<ol style="font-size:18px; padding: 1% 20% 0% 1%">
	<li>Enter your email address and click Reset</li>
	<li>Check your email and click the link that is sent to you.</li>
	<li>Follow the on screen instructions</li>
</ol>
<?php
 if(!empty($errors))
 {
?>
<span class="bg-danger"><?=display_errors($errors);?></span>
<?php
 }
?>
<form action="forgot_password.php" method="post" class="form ">
	
	
		<label for="email">
		<input type="text" name="email" id="email" required autocomplete="off" autofocus>
        <div class="label-text">
		E-Mail
        </div>
        </label>

	<input type="hidden" name="csrf" value="<?=Token::generate();?>">
	<p><input type="submit" name="forgotten_password" value="Reset" class="btn btn-primary trans" style="width:100%; font-size:20px"></p>
</form>

</div><!-- /.col -->
</div><!-- /.row -->
</br>
</br>
</br>
</br>