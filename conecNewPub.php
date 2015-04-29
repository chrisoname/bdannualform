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
	<li role="presentation" class="active"><a href="publicaciones.php">Publications</a></li>
	<li role="presentation"><a href="#">Presentations</a></li>
	<li role="presentation"><a href="#">Supports</a></li>
	<li role="presentation"><a href="#">Graduate Students Committees</a></li>
	<li role="presentation"><a href="#">Student and Post-doctoral training</a></li>
         </ul>
</div>
</div>

<nav>
  <ul class="pager">
    <li><a href="conecNewPub.php">Add New Publication</a></li>
  </ul>
</nav>

<div class="col-xs-2">
<div class ="container center_div">

<form name="input" action="pubinput.php" method="post">
<center>
<label for="nombre">Title</label>
</center>
<input type="text" class="form-control" name='titlePub' id="titlePub"  placeholder="Ex. Bees">
<center>
<label for="apellido">Year of Publication</label>
</center>
<input type="text" class="form-control" name='yearPub' id="yearPub" placeholder="Ex. 2013">
<center>
<label for="start">Authors</label>
</center>
<input type="text" class="form-control" name='authorPub' id="authorPub"  placeholder="Ex. 08/08">
<center>
<label for="nombre">Information</label>
</center>
<input type="text" class="form-control" name='infoPub' id="infoPub"  placeholder="Ex. Bees">
<center>
<label for="rank">Publication Status</label>
</center>
<input type="text" class="form-control" name='pubStatus' id="pubStatus"  placeholder="Ex. Pending">
<center>
<label for="rank">Type of Publication</label>
</center>
<input type="text" class="form-control" name='typePub' id="typePub"  placeholder="Ex. Pending">
<center>
<label for="timerank">Undegraduate Students involved</label>
</center>
<input type="text" class="form-control" name='subgradPub' id="subgradPub"  placeholder="Ex. 6">
<center>
<label for="timerank">Graduate Students involved</label>
</center>
<input type="text" class="form-control" name='gradPub' id="gradPub"  placeholder="Ex. 6">
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

