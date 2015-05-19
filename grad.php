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

<?php
//Echo session variables that were set on previous page
//echo "Username " . $_SESSION["userName"] . ".<br>";
//echo "pass " . $_SESSION["pass"] . ".";
//echo "IDProf es" . $_SESSION["UserNameID"] . ".<br>";
function AllPres($con){
             //   session_start();
              //  echo  $_SESSION['UserNameID'];
                $sql_temp = "Select * from grad where UserNameID = %u;";
		$query = sprintf($sql_temp, $_SESSION['UserNameID']);
                //echo $query;
                $result = $con->query($query);
                 //       echo "entre a AddSub <br>";
		echo "<table class='table'> ";
		echo "<th> Academic Stage </th>";
		echo "<th> University </th>";
		echo "<th> Name, Last Name</th>";
		echo "<th> Role </th>";
		echo "<th> Duration </th>";
    echo "<th>  </th>";
		while($row = $result->fetch_assoc()) {
  			echo "<tr>";
			echo "<td>".$row["academic"]."</td>" ;
			echo "<td>".$row["university"]."</td>" ;
			echo "<td>".$row["name"]."</td>" ;
			echo "<td>".$row["role"]."</td>" ;
			echo "<td>".$row["duration"]."</td>" ;        
              echo "<td><form> <input type='number' name='grad_id' value='".$row["grad_id"]."' hidden><button type='submit' class='btn btn-danger' formmethod='post' formaction='conecDelGrad.php' name='submit' value='submit'>Delete</button></form></td>";

			echo "</tr>" ;
        		}
		echo "</table>";

                }
//AllPubs($con);
?>
</body>
  <body>
<center>
   <h1>Annual Reports</h1>
<div class="row">
  <div class="span12 centered-pills">
     <ul class="nav nav-pills">
        <li role="presentation"><a href="profile.php">Profile</a></li>
        <li role="presentation"><a href="editprofile.php">Edit Profile</a></li>
	<li role="presentation" ><a href="publicaciones.php">Publications</a></li>
	<li role="presentation" ><a href="presentaciones.php">Presentations</a></li>
	<li role="presentation" ><a href="support.php">Supports</a></li>
	<li role="presentation"class="active"><a href="grad.php">Graduate Students Committees</a></li>
	<li role="presentation"><a href="training.php">Student and Post-doctoral training</a></li>
         </ul>
</div>
</div>

<nav>
  <ul class="pager">
    <li><a href="conecNewGrad.php">Add New Graduate Student Committee</a></li>
  </ul>
</nav>
<?php
AllPres($con);
?>
 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>



