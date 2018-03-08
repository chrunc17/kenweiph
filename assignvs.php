<?php
$date=  date("d/m/Y");
?>
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
					<div id="gtco-logo"><a href="index.php">LOGOUT<em>.</em></a></div>
					<div id="gtco-logo"><a href="assignvs.php">LOAD<em>.</em></a></div>
				</div>
				<div class="col-xs-8 text-right menu-1"><?php echo "<a href='addingsv.php' ><font size='5'>ADD SUPERVISOR</font></a><font color='White'>Today is " . date("d/m/Y") ."</font>";?>
					
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
											<h3 align="center">Assigning of Supervisor </h3>
											
											<table align="center"border="1"style="width:90%" >
	<tr >

	<th><font color='black'>NAME</font></th>
	<th><font color='black'>Branch</font></th>
	<th><font color='black'>Date</font></th>

	
	</tr>";
 <?php
	mysql_connect('localhost','projsadx','Satsuki016');
	mysql_select_db('projsadx_projsad');
$date=date('m/d/Y');
	$result=mysql_query("SELECT * FROM assignsv where date_assign='$date'");
	while($test = mysql_fetch_array($result))
	{
		$id = $test['id'];


		echo "<tr'>";
		
		echo"<td><font color='black'>" .$test['svname']."</font></td>";
		echo"<td><font color='black'>" .$test['branch']."</font></td>";
		echo"<td><font color='black'>" .$test['date_assign']."</font></td>";
		
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
	<select name='name'  width='200' STYLE='width: 200px'  height='200'STYLE='height: 200px'>
	<?php
	$sql1="select supervisor_name from supervisor";
	
	if($result=mysql_query($sql1))
	{
		if($success = mysql_num_rows($result)>0)
		
		{
	
			echo "<option>-- Name --</option>";
			while($row=mysql_fetch_array($result))
				echo "<option value='$row[supervisor_name]'>$row[supervisor_name]</option>";
		}
	}

?>
</select>
<select name='branch'  width='200' STYLE='width: 200px'  height='200'STYLE='height: 200px'>
<?php
	$sql1="select branch_name from branches";
	
	if($result=mysql_query($sql1))
	{
		if($success = mysql_num_rows($result)>0)
		
		{
			
			echo "<option>-- Branch --</option>";
			while($row=mysql_fetch_array($result))
				echo "<option value='$row[branch_name]'>$row[branch_name]</option>";
			
		}
	}

  




?>
</select>
<br><br>
	<center><input type="Submit" name="submit123"id="submit23" value="Assign"required><center>										
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
mysql_connect("localhost", "root", "");
mysql_select_db('projsad');
	
$date=date('m/d/Y');
 $name=$_POST['name'];
$branch=$_POST['branch'];

$sql="insert into assignsv (svname,branch,date_assign) values('$name','$branch','$date')";

if(mysql_query($sql)){
echo "<font color='green'><center>Branch Assigned.</font></center>";




}
else
{
echo "<font color='red'><center>Supervisor Declared!</font></center>";
}
}

?>
