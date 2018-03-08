<?php

$id=$_REQUEST['id'];
$db = mysqli_connect("localhost","projsadx","Satsuki016","projsadx_projsad");	
$result ="SELECT * FROM inserttask WHERE id = '$id'";

if(mysqli_query($db,$result))
	{
	
	}
	
	?>
<html>


<html>
	<head>
	


	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/bootstrap-datepicker.min.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
	
<form method="post">
		
	<div class="gtco-loader"></div>
	
	<div id="page">

	
	<!-- <div class="page-inner"> -->
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div id="gtco-logo"><a href="inserttask.php">BACK <em>.</em></a></div>
				</div>
				<div class="col-xs-8 text-right menu-1">
					
				</div>
			</div>
			
		</div>
	</nav>
	
	<header id="gtco-header" class="gtco-cover gtco-cover-md" role="banner" style="background-image: url(images/img_bg_2.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					

					<div class="row row-mt-15em">
						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
								<h1>SUPERVISOR</h1>

						</div>
						<div class="col-md-4 col-md-push-1 animate-box" data-animate-effect="fadeInRight">
							<div class="form-wrap">
								<div class="tab">
									
									<div class="tab-content">
										<div class="tab-content-inner active" data-content="signup">
											<h3>Log-In</h2>
												<form action="#">
												<div class="row form-group">
													<div class="col-md-15">
													

											<input type="text" name="name" id="name"value="<?php echo $test[1]; ?>"><br><br>
									  <input type="text" name="task" id="start"value="<?php echo $test[2]; ?>"><br><br>
 <input type="text" name="start" id="password"value="<?php echo $test[3]; ?>"><br><br>
 <input type="text" name="out" id="day"value="<?php echo $test[4]; ?>"><br><br>
<input type="text" name="day" id="day"value="<?php echo $test[5]; ?>"><br><br>
 <input type="text" name="branch" id="branch"value="<?php echo $test[6]; ?>"><br><br>
<input type="submit" value="Save" name="save"><br><br>

												</div>
												


		
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>

	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>

	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	
	<!-- Datepicker -->
	<script src="js/bootstrap-datepicker.min.js"></script>
	

	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>


</html>


<?php
	$db = mysqli_connect("localhost","projsadx","Satsuki016","projsadx_projsad");	
		$name=$test['name'];
		$task=$test['task'];
		$start=$test['timeIn'];
		$out=$test['timeOut'];
		$day=$test['day'];
		$branch=$test['branch'];
	
if(isset($_POST['save']))
{
	$name = $_POST['name'];
	$task = $_POST['task'];
	$start = $_POST['start'];
	$out = $_POST['out'];
	$branch=$_POST['branch'];
$day = $_POST['day'];
	$sql="UPDATE inserttask SET name ='$name' , task='$task', TimeIn ='$start' , TimeOut ='$out', Day='$day', branch='$branch' WHERE id = '$id'";
if(mysqli_query($db,$sql))
{
	echo "Saved!";
	header("Location: inserttask.php");
}



}
if (isset($_POST['back']))
{
header("Location: inserttask.php");
}

?>