<?php

$level_no = -1;
$correctAns = "";


require_once 'init.php';

Redirect::to($us_url_root.'leaderboard.php');
$isCorrectAnswer=0;//not attempted 1->right 2->wrong
if (!(isset($user) && $user->isLoggedIn())) {
    Redirect::to("http://chakravyuha.in/users/login.php");
}

$host = Config::get('mysql/host');
$db = Config::get('mysql/db');
$un = Config::get('mysql/username');
$password = Config::get('mysql/password');
$dbC = new mysqli($host, $un, $password, $db);

$username = $user->data()->username;
$queryC = "SELECT * FROM users WHERE username=\"$username\"";
$res = $dbC->query($queryC);
$row = $res->fetch_assoc();
if (!($level_no == $row['level'])) {
    Redirect::to($us_url_root.'users/level'.$row['level'].'.php');
}


?>


<?php require_once $abs_us_root.$us_url_root.'users/includes/header.php';?>

<?php require_once $abs_us_root.$us_url_root.'users/includes/navigation.php'; ?>
<script>
    document.title = "Disqualified page";
</script>

<div id="particles-js"></div>
<script src="http://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script> <!-- stats.js lib -->
<header>

    <div class="jumbotron " id="back" style="background-color:transparent">

        <div class="container">

            <div class="row">

                <div class="col-xs-12"> </br>

                    </br>

                    </br>


                    <h1 class="text-center">You have been Disqualified</h1>

                    </br>

                    </br>



                    </br>

                    <p class="text-center">

                    </p>

                    </br>

                </div>

            </div>

        </div>
    </div>

</header>


