<?php
$logedIn = false;
require_once 'users/init.php';

if(isset($user) && $user->isLoggedIn()){
    $logedIn=true;
}
require_once $abs_us_root.$us_url_root.'users/includes/header.php';

require_once $abs_us_root.$us_url_root.'users/includes/navigation.php';

$host = Config::get('mysql/host');
$db = Config::get('mysql/db');
$username = Config::get('mysql/username');
$password = Config::get('mysql/password');


$dbC = new mysqli($host, $username, $password, $db);

$result = $dbC->query("SELECT * FROM users ORDER BY level DESC , lastAnswerTime");


?>

<div id="particles-js"></div> <script src="http://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script> <!-- stats.js lib --> <header>

    <div class="jumbotron " id="back" style="background-color:transparent" >

        <div class="container" >

            <div class="row" >

                <div class="col-xs-12"> </br>

                    </br>

                    </br>


                    <h1 class="text-center">Final Results</h1>

                    
<p class="text-center">The Final Prize Winners.</p>

                    </br>

                    </br>
                    </br>

                    </br>

                    </br>
                    <p class="text-center" style="width: 100%">
                    <table style="font-size: 25px; color: white; width: 100%">
                        <thead>
                        <tr>
                            <th>
                                Rank
                            </th>
                            <th style="text-align: center">
                                Name
                            </th>
			    <th style="text-align: right">
                                Username
                            </th>
                            
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
				<td>1

				</td>
				<td style="text-align: center"> Neeraj Pandey
				</td>
				<td style="text-align: right">jareenyednap
				</td>
				
			</tr>
<tr>
				<td>2
				</td>
				<td style="text-align: center"> Gaurav Meena
				</td>
				<td style="text-align: right">GauravMeena
				</td>
				
			</tr>
<tr>
				<td>3
				</td>
				<td style="text-align: center">Vaibhav Gupta
				</td>
				<td style="text-align: right">guptavaibhavv
				</td>
				
			</tr>
<tr>
				<td>4
				</td>
				<td style="text-align: center">Akshay Mehta 
				</td>
				<td style="text-align: right">Black Pearl
				</td>
				
			</tr>
<tr>
				<td>5
				</td>
				<td style="text-align: center">Abhishek Kumar
				</td>
				<td style="text-align: right">siggy
				</td>
				
			</tr>

                        </tbody>
                    </table>
                    </p>

                    </br>
                    </br>
                    </br>

                    

                </div>

            </div>

        </div>

    </div>

</header>



<?php require_once $abs_us_root.$us_url_root.'users/includes/page_footer.php'; // the final html footer copyright row + the external js calls ?>



<?php 	if($settings->recaptcha == 1){ ?>

    <script src="https://www.google.com/recaptcha/api.js" async defer></script>

<?php } ?>

<?php require_once $abs_us_root.$us_url_root.'users/includes/html_footer.php'; // currently just the closing /body and /html ?>



