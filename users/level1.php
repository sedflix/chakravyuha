<?php



$level_no = 1;
$correctAns = "chakravyuha";


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

if (isset($_POST['answer'])) {
    $userAns = $_POST['answer'];
    $userID = $row['id'];
    $levelOfUser = $row['level'];

    $userAttemptQuery = "INSERT INTO attempt (id, level, answer, time) VALUES ($userID, $levelOfUser, \"$userAns\", NOW())";
    if (!$dbC->query($userAttemptQuery)) {
        echo "ERROR IN ATTEMPT";
    }

    if ($userAns == $correctAns) {
        $isCorrectAnswer = 1;
        $levelOfUser = $levelOfUser + 1;
        $usersUpdateQuery = "UPDATE users SET level=$levelOfUser,lastAnswerTime = NOW() WHERE id=$userID";
        if (!$dbC->query($usersUpdateQuery)) {
            echo "ERROR IN UPDATING USERS CRED";
        }
        Redirect::to($us_url_root.'users/level'.$levelOfUser.'.php');
    }
    else
    {
        $isCorrectAnswer=2;
    }
}
?>


<?php require_once $abs_us_root.$us_url_root.'users/includes/header.php';?>

<?php require_once $abs_us_root.$us_url_root.'users/includes/navigation.php'; ?>
    <div id="particles-js"></div>
    <script src="http://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script> <!-- stats.js lib -->
    <header>

        <div class="jumbotron " id="back" style="background-color:transparent">

            <div class="container">

                <div class="row">

                    <div class="col-xs-12"> </br>

                        </br>

                        </br>


                        <h1 class="text-center">Level <?= $level_no ?></h1>

                        </br>

                        </br>

                        <p class="text-center" style="color: #2e8a19">
                            <?php
                            if ($isCorrectAnswer==1)
                            {
                                echo 'Your Answer was Correct';

                            }
                            else if($isCorrectAnswer==2)
                            {
                                echo 'Your Answer was Wrong';
                            }

                            ?>
                        </p>

                        </br>

                        <p class="text-center">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26050.409101389698!2d25.142101499038258!3d35.29849823824194!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzXCsDE3JzU0LjYiTiAyNcKwMDknMzQuNiJF!5e0!3m2!1sen!2sin!4v1470924510278" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>

                        </p>

                        </br>
                        <!--It still exists..-->
                    </div>

                </div>

            </div>

        </div>

    </header>
<?php
if ($level_no == $row['level']) {
    ?>
    <form action="level1.php" method="post" style="z-index: 999999999; width: 100%; position: absolute;">
        <label>
            <input type="text" id="answer" name="answer" class="answer"  autocomplete="off">
            <div class="label-text">
                Your answer
            </div>
        </label>
        </br></br></br>
        <input type="submit" role="button" class="btn btn-primary trans" style="font-size: 18px">
    </form>

    <?php
} else {
    ?>
    <header>

        <div class="jumbotron " id="back" style="background-color:transparent" >

            <div class="container" >

                <div class="row" >

                    <div class="col-xs-12">
                        <h1>You have already cleared this level</h1>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <?php

}

?>
