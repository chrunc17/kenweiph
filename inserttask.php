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
	
<form method="post" >
		
	<div class="gtco-loader"></div>
	
	<div id="page">

	
	<!-- <div class="page-inner"> -->
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div id-"gtco-logo"><a href="index.php">Log-out <em>.</em></div>
					<div id="gtco-logo"><a href="inserttask.php">Load <em>.</em></a></div>
				</div>
				<div class="col-xs-8 text-right menu-1"><?php echo "<font color='White'>Today is " . date("d/m/Y") ."</font>";?>
					
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
	<th><font color='black'>Branch</font></th>
	<th><font color='black'>Update</font></th>
	
	</tr>";
 <?php
	$db = mysqli_connect("localhost","projsadx","Satsuki016","projsadx_projsad");	
	
	$date=date('m/d/Y');
	$result="SELECT * FROM inserttask ";
	$rslt = mysqli_query($db, $result);
	while(mysqli_fetch_array($rslt))
	{
		$id = $test['id'];


		echo "<tr'>";
		
		echo"<td><font color='black'>" .$test['name']."</font></td>";
		echo"<td><font color='black'>" .$test['task']."</font></td>";
		echo"<td><font color='black'>" .$test['timeIn']."</font></td>";
		echo"<td><font color='black'>" .$test['timeOut']."</font></td>";
		echo"<td><font color='black'>" .$test['day']."</font></td>";
		echo"<td><font color='black'>" .$test['branch']."</font></td>";
		echo"<td><a href='updatetask.php?id=$id'>Edit</a> / <a href='deletetask.php?id=$id'>Delete</a>";
		
		echo"</tr>";	
	}
 
	?>
	
</table>

<hr color="yellow">
<table align="center"border="1"style="width:90%" >
<tr>
<Center>
<br>
							
	&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
<input type="text" name="name" id="name"  placeholder="Name" required>&#160;-&#160;
<input type="text" name="task" id="email"  placeholder="Task to do" required>&#160;-&#160;
<select name="start"  width="200" STYLE="width: 200px"  height="200"STYLE="height: 200px">
  <option value="null">Time Start</option>
  <option value="6:00am">6:00am</option>
  <option value="7:00am">7:00am</option>
  <option value="8:00am">8:00am</option>
<option value="9:00am">9:00am</option>
<option value="10:00am">10:00am</option>
<option value="11:00am">11:00am</option>
<option value="12:00am">12:00am</option>
<option value="1:00pm">1:00pm</option>
</select>&#160;-&#160;
<select name="out"  width="200" STYLE="width: 200px"  height="200"STYLE="height: 200px">
  <option value="null">Time Out</option>
  <option value="12:00am">12:00am</option>
  <option value="1:00pm">1:00pm</option>
  <option value="2:00pm">2:00pm</option>
<option value="3:00pm">3:00pm</option>
<option value="4:00pm">4:00pm</option>
<option value="5:00pm">5:00pm</option>
<option value="6:00pm">6:00pm</option>
<option value="7:00pm">7:00pm</option>
<option value="8:00pm">8:00pm</option>
</select>
<select name="branch"  width="200" STYLE="width: 200px"  height="200"STYLE="height: 200px">
  <option value="null">Branch</option>
  <option value="IMUS, CAVITE">IMUS, CAVITE</option>
  <option value="NOVALICHES, QC">NOVALICHES, QC</option>
  <option value="ZABARTE, QC">ZABARTE, QC</option>

</select>

<br><br>
	<center><input type="Submit" name="submit123"id="submit23" value="ADD-TASK"required></center>											
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
	<br>
	
	</body>
	
	
</html>

<?php


if(isset($_POST['submit123']))
{ 
$db = mysqli_connect("localhost","projsadx","Satsuki016","projsadx_projsad");

	
$date=date('m/d/Y');
 $name=$_POST['name'];
$task=$_POST['task'];
$start=$_POST['start'];
$out=$_POST['out'];
$branch=$_POST['branch'];

$sql="insert into inserttask (name,task,timeIn,timeOut,branch,day) values('$name','$task','$start','$out','$branch','$date')";
echo"<a href='inserttask.php'>";

if(mysqli_query($db,$sql)){
echo "<font color='green'><center>Task Submitted.</font></center>";




}
else
{
echo "<font color='red'><center>Task not Declared!</font></center>";
}
}
?>
