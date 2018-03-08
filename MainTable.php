
<html>
	<head>
	
<?php
$usernames=$_REQUEST['username'];
include_once 'Conn.php';
    $date=date('m/d/Y');
	$sql=("SELECT svname FROM `assignsv` where date_assign='$date' and branch='$usernames'");
	$result=mysqli_query($conn,$sql);
	while($test = mysqli_fetch_array($result))
	{
		$id = $test['svname'];

		

	
	}

	?>

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
	
<form method="post" >
		
	<div class="gtco-loader"></div>
	
	<div id="page">

	
	<!-- <div class="page-inner"> -->
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div id="gtco-logo"><a href="Index.php">LOG-OUT <?php echo $date?><em>.</em></a></div>

				</div>
				<div class="col-xs-0 text-right menu-1">
				
				</div>
			</div>
			
		</div>
	</nav>
	
	<header id="gtco-header" class="gtco-cover gtco-cover-md" role="banner" style="background-image: url(images/img_bg_2.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-0 col-md-offset-0 text-left">
					

					<div class="row row-mt-0em">
						<div class="col-md-0 mt-text animate-box" data-animate-effect="fadeInUp">
							
					
					
					<div class="col-md-0 col-md-push-1 animate-box" data-animate-effect="fadeInRight">
							<div class="form-wrap">
								<div class="form-wrap">
									<div class="tab-content">
										<div class="tab-content-inner active" data-content="signup">
											<h3 align="center">TASK FOR TODAY</h3>
											
											<table align="center"border="1"style="width:90%" >
	<tr >

	<th><font color='black'>NAME</font></th>
	<th><font color='black'>TASK</font></th>
	<th><font color='black'>Time In</font></th>
	<th><font color='black'>Time Out</font></th>
	<th><font color='black'>DATE</font></th>

	</tr>
<?php
	include_once 'Conn.php';
$date=date('m/d/Y');
	$sql="SELECT * FROM inserttask where day='$date' and branch='$usernames'";
	$result=mysqli_query($conn,$sql);
	$resultc=mysqli_num_rows($result);
	
	if($resultc>0){
	while($row=fetch_assoc($result))
	
	{
	$id = $row['id'];
?>
<tr>
<td><?php echo $row['name']; ?></td>
<td><?php echo $row['task']; ?></td>
<td><?php echo $row['timeIn']; ?></td>
<td><?php echo $row['timeOut']; ?></td>
<td><?php echo $row['day']; ?></td>
</tr>
		<?php
		
	}
}

	?>
</table><br>


										
</tr>
		</table>		
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