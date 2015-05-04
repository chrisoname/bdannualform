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

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Report</title>

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
 <body>
<center>
   <h1>Annual Reports</h1>
<div class="row">
  <div class="span12 centered-pills">
     <ul class="nav nav-pills">
        <li role="presentation"><a href="profile.php">Profile</a></li>
        <li role="presentation"><a href="editprofile.php">Edit Profile</a></li>
	<li role="presentation"><a href="publicaciones.php">Publications</a></li>
	<li role="presentation" class="active"><a href="presentaciones.php">Presentations</a></li>
	<li role="presentation"><a href="support.php">Supports</a></li>
	<li role="presentation"><a href="grad.php">Graduate Students Committees</a></li>
	<li role="presentation"><a href="training.php">Student and Post-doctoral training</a></li>
         </ul>
</div>
</div>

<nav>
  <ul class="pager">
    <li><a href="conecNewPres.php">Add New Presentation</a></li>
  </ul>
</nav>

<div class="col-xs-2">
<div class ="container center_div">

<form name="input" action="presinput.php" method="post">
<center>
<label for="nombre">Title</label>
</center>
<input type="text" class="form-control" name='title' id="title"  placeholder="Ex. Bees">
<center>
<label for="apellido">Year of Presentation</label>
</center>
<input type="text" class="form-control" name='year' id="year" placeholder="Ex. 2013">
<center>
<label for="start">Type of Presentation</label>
</center> <!-- me quede aqui editando -->
<input type="text" class="form-control" name='typepres' id="typepres"  placeholder="Ex. 08/08">
<center>
<label for="nombre">Authors</label>
</center>
<input type="text" class="form-control" name='author' id="author"  placeholder="Ex. Bees">
<center>
<label for="rank">Type of Meeting</label>
</center>
<input type="text" class="form-control" name='typemeeting' id="typemeeting"  placeholder="Ex. Pending">
<center>
<label for="rank">Title of Meeting</label>
</center>
<input type="text" class="form-control" name='titlemeeting' id="titlemeeting"  placeholder="Ex. Pending">
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


