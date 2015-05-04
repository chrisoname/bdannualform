<?php
$servername = "localhost";
$username = "cdejesus";
$password = "chrisoname@gmail.com";
$dbname = "cdejesus";

// Create connection
$con = new mysqli($servername, $username, $password, $dbname);
   
if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
//$ID = $_POST['user']; 
//$Password = $_POST['pass'];
$academic = $_POST['academic'];
$intitution = $_POST['institution'];
$year = $_POST['year'];
$name = $_POST['name'];
$position = $_POST['position'];
$mechanism = $_POST['mechanism'];
$funding = $_POST['funding'];
$activities = $_POST['activities'];

//-------------------------------------------------------------  
	function AddSub($academic, $intitution, $year, $name, $position, $mechanism, $funding, $activities, $con){
		session_start(); 
                echo  $_SESSION['UserNameID'];
		$sql_temp = "INSERT INTO training(academic, institution, year, name, position, mechanism, funding, activities, UserNameID) VALUES('%s','%s','%s','%s','%s', '%s', '%s','%s', %u);";
		$query = sprintf($sql_temp, $academic, $intitution, $year, $name, $position, $mechanism, $funding, $activities, $_SESSION['UserNameID']);
		echo $query;
		$result = $con->query($query);	
			echo "entre a AddSub <br>";
		
		}	 
if(isset($_POST['submit'])) {
         AddSub($academic, $intitution, $year, $name, $position, $mechanism, $funding, $activities, $con);
	 header("location:training.php");
}

?>
