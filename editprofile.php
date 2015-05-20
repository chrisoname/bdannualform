<?php
session_start();
$servername = "localhost";
$username = "cdejesus";
$password = "chrisoname@gmail.com";
$dbname = "informes";

// Create connection
$con = new mysqli($servername, $username, $password, $dbname);

if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
$username = $_SESSION['userName'];
$password = $_SESSION['pass'];
$ID = $_SESSION['UserNameID'];
if($username == ''){
        header("location:index.php");
}
		$sql_temp = "Select * from UserName where UserNameId = %u";
                $query = sprintf($sql_temp, $_SESSION['UserNameID']);
                $result = $con->query($query);
		$row = $result->fetch_assoc();
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
        <li role="presentation"><a href="profile.php">Profile</a></li>
        <li role="presentation" class="active"><a href="#">Edit Profile</a></li>
        <li role="presentation"><a href="publicaciones.php">Publications</a></li>
	        <li role="presentation"><a href="presentaciones.php">Presentations</a></li>
        <li role="presentation"><a href="support.php">Supports</a></li>
        <li role="presentation"><a href="grad.php">Graduate Students Committees</a></li>
        <li role="presentation"><a href="training.php">Student and Post-doctoral training</a></li>
<li role="presentation"><a href="logout.php">Log Out<span class="badge"></span></a></li>
         </ul>
</div>
</div>

<form name="input" action="conecEdit.php" method="post">
<!--
<div class="col-xs-2">
<div class ="container center_div">
-->
<div class="col-xs-2">
<div class ="container center_div">
<center>
<label for="nombre">Nombre</label>
</center>
<input type="text" class="form-control" name='nombre' id="nombre"  placeholder="Ex. Juan" required value="<?php if(isset($row['nombreProf']))
{echo $row['nombreProf']; }?>"> 
<center>
<label for="apellido">Apellido</label>
</center>
<input type="text" class="form-control" name='apellido' id="apellido" placeholder="Ex. Del Pueblo" required value="<?php if(isset($row['nombreProf']))
{echo $row['apellidoProf']; }?>">
<center>
<label for="start">Starting Date in Position</label>
</center>
<input type="text" class="form-control" name='start' id="start"  placeholder="Ex. 08/08"value="<?php if(isset($row['nombreProf']))
{echo $row['start']; }?> ">
<center>
<label for="rank">Rank</label>
</center>
<input type="text" class="form-control" name='rank' id="rank"  placeholder="Ex. Associate Professor"value="<?php if(isset($row['nombreProf']))
{echo $row['rank']; }?> ">
<center>
<label for="timerank">Time in Rank (yrs)</label>
</center>
<input type="text" class="form-control" name='timerank' id="timerank"  placeholder="Ex. 6" value="<?php if(isset($row['nombreProf']))
{echo $row['timerank']; }?>">
<br><br>
<button type="submit" class="btn btn-primary" name='submit' value="submit">Submit</button>

</div>
</div>

</form>


 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
