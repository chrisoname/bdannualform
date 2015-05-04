<?php
session_start();
//	require_once("dompdf/dompdf_config.inc.php");

$servername = "localhost";
$username = "cdejesus";
$password = "chrisoname@gmail.com";
$dbname = "cdejesus";

// Create connection
$con = new mysqli($servername, $username, $password, $dbname);

if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
$username = $_SESSION['userName'];
$password = $_SESSION['pass'];
$ID = $_SESSION['UserNameID'];


$sql_temp = "Select * from UserName where UserNameID =  %u ";		
$query = sprintf($sql_temp, $_SESSION['UserNameID']);
$result = $con->query($query);
if($row = $result->fetch_assoc()){
			if(($row['nombreProf'] != NULL) AND ($row['apellidoProf'])!= NULL) { 
				
					$_SESSION['UserNameID'] = $row['UserNameID'];
					$NOMBRE = $row['nombreProf'];
					$APELLIDO = $row['apellidoProf'];
					$RANK = $row['rank'];
					$TIMERANK = $row['timerank'];
					$START = $row['start'];	
		}		else{
				header("location:editprofile.php");
						}
			}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Profile</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/custom.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

</body>
  <body>
<center> 
   <h1>Annual Reports</h1>
<div class="row">
  <div class="span12 centered-pills">
     <ul class="nav nav-pills">
        <li role="presentation"class="active"><a href="profile.php">Profile</a></li>
	<li role="presentation"><a href="editprofile.php">Edit Profile</a></li>
	<li role="presentation"><a href="publicaciones.php">Publications</a></li>
	<li role="presentation"><a href="presentaciones.php">Presentations<span class="badge"></span></a></li>
	<li role="presentation"><a href="support.php">Supports<span class="badge"></span></a></li>
	<li role="presentation"><a href="grad.php">Graduate Students Committees<span class="badge"></span></a></li>
	<li role="presentation"><a href="training.php">Student and Post-doctoral training<span class="badge"></span></a></li>
	 </ul>
</div>
</div>
<?php
echo "<h1>".$NOMBRE," ", $APELLIDO."</h1>";
echo "<h2>".$RANK."<h2>";
?>



 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
