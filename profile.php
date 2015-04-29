<?php
session_start();
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
//echo $_SESSION['userName'];
//echo $_SESSION['UserNameID'];
//echo $ID;
//echo "nombre del tipo";
if($row = $result->fetch_assoc()){
//			echo "Nombre del tipo"; 
//			echo $row['nombreProf'];			
			if(($row['nombreProf'] != NULL) AND ($row['apellidoProf'])!= NULL) { 
					$_SESSION['UserNameID'] = $row['UserNameID'];
				//	echo $row['nombreProf'];
				//	echo $row['apellidoProf'];
					$NOMBRE = $row['nombreProf'];
					$APELLIDO = $row['apellidoProf'];
					$RANK = $row['rank'];
					$TIMERANK = $row['timerank'];
					$START = $row['start'];	
	//				echo $NOMBRE, $APELLIDO, $RANK, $TIMERANK, $RANK, $START;
				//	header("location:profile.php");	
     				//	echo "SUCCESSFULLY LOGIN TO USER PROFILE PAGE...";
						 }
				else{
				header("location:editprofile.php");
}
}
//session_start();
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

<?php
// Echo session variables that were set on previous page
//echo "Favorite color is " . $_SESSION["userName"] . ".<br>";
//echo "Favorite animal is " . $_SESSION["pass"] . ".";
//echo "IDProf es" . $_SESSION["UserNameID"] . ".<br>";


?>
</body>
  <body>
<center> 
   <h1>Annual Reports</h1>
<div class="row">
  <div class="span12 centered-pills">
     <ul class="nav nav-pills">
        <li role="presentation"class="active"><a href="#">Profile</a></li>
	<li role="presentation"><a href="editprofile.php">Edit Profile</a></li>
	<li role="presentation"><a href="publicaciones.php">Publications</a></li>
	<li role="presentation"><a href="#">Presentations<span class="badge"> </span></a></li>
	<li role="presentation"><a href="#">Supports<span class="badge"> </span></a></li>
	<li role="presentation"><a href="#">Graduate Students Committees<span class="badge"> </span></a></li>
	<li role="presentation"><a href="#">Student and Post-doctoral training<span class="badge"> </span></a></li>
	 </ul>
</div>
</div>
<?php
echo "<h1>" ; echo $NOMBRE,' ', $APELLIDO; echo "</h1>";
echo "<h2>" ; echo $RANK ; echo "</h2>";


?>
 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
