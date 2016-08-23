

<?php require_once $abs_us_root.$us_url_root.'users/helpers/helpers.php'; ?>

<?php require_once $abs_us_root.$us_url_root.'users/includes/user_spice_ver.php'; ?>

<?php

//check for a custom page

$currentPage = currentPage();

if(file_exists($abs_us_root.$us_url_root.'usersc/'.$currentPage)){

	if(currentFolder()!= 'usersc'){

		Redirect::to($us_url_root.'usersc/'.$currentPage);

	}

}



$db = DB::getInstance();

$settingsQ = $db->query("Select * FROM settings");

$settings = $settingsQ->first();

if ($settings->site_offline==1){

	die("The site is currently offline.");

}



if ($settings->force_ssl==1){

	if (!isset($_SERVER['HTTPS']) || !$_SERVER['HTTPS']) {

		// if request is not secure, redirect to secure url

		$url = 'https://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];

		Redirect::to($url);

		exit;

	}

}



//if track_guest enabled AND there is a user logged in

if($settings->track_guest == 1 && $user->isLoggedIn()){

	if ($user->isLoggedIn()){

		$user_id=$user->data()->id;

	}else{

		$user_id=0;

	}

	new_user_online($user_id);

	

}

?>

<!DOCTYPE html>

<html lang="en">

<head>

	<meta charset="utf-8">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<meta name="description" content="Chakravyuha will be the online cryptic hunt which will be a collection of multiple rounds each carrying a question. As the user answers a question correctly, he proceeds to the next round">

	<meta name="author" content="Siddharth Yadav">
	<meta property="og:url"                content="https://chakravyuha.in" />
<meta property="og:type"               content="article" />
<meta property="og:title"              content="Chakravyuha - Online Cryptic Hunt" />
<meta property="og:description"        content="Chakravyuha will be the online cryptic hunt which will be a collection of multiple rounds each carrying a question. As the user answers a question correctly, he proceeds to the next round" />
<meta property="og:image"              content="http://52.66.75.233/img/fb_og.png" />
<meta property="og:author" content="https://www.facebook.com/EsyaIIITD/">
	

	<?php

	if(file_exists($abs_us_root.$us_url_root.'usersc/includes/head_tags.php')){

		require_once $abs_us_root.$us_url_root.'usersc/includes/head_tags.php';

	}

	?>

	

	<title><?=$settings->site_name;?></title>



	<!-- Bootstrap Core CSS -->

	<!-- AKA Primary CSS -->

	<link href="<?=$us_url_root?><?=str_replace('../','',$settings->us_css1);?>" rel="stylesheet">



	<!-- Template CSS -->

	<!-- AKA Secondary CSS -->

	<link href="<?=$us_url_root?><?=str_replace('../','',$settings->us_css2);?>" rel="stylesheet">



	<!-- Your Custom CSS Goes Here!-->

	<link href="<?=$us_url_root?><?=str_replace('../','',$settings->us_css3);?>" rel="stylesheet">



	<!-- Custom Fonts -->

	<link href="<?=$us_url_root?>users/fonts/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300" rel="stylesheet">

    

 

</head>



<body>

