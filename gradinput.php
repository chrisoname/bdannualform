<?php
$servername = "localhost";
$username = "cdejesus";
$password = "chrisoname@gmail.com";
$dbname = "informes";

// Create connection
$con = new mysqli($servername, $username, $password, $dbname);
   
if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
//$ID = $_POST['user']; 
//$Password = $_POST['pass'];
$academic = $_POST['academic'];
$university = $_POST['university'];
$name = $_POST['name'];
$role = $_POST['role'];
$duration = $_POST['duration'];


//-------------------------------------------------------------  
	function AddSub($academic, $university, $name, $role, $duration, $con){
		session_start(); 
                echo  $_SESSION['UserNameID'];
		$sql_temp = "INSERT INTO grad (academic, university, name, role, duration, UserNameID) VALUES('%s','%s','%s','%s','%s', %u);";
		$query = sprintf($sql_temp, $academic, $university, $name, $role, $duration, $_SESSION['UserNameID']);
		echo $query;
		$result = $con->query($query);	
			echo "entre a AddSub <br>";
		
		}	 
if(isset($_POST['submit'])) {
         AddSub($academic, $university, $name, $role, $duration, $con);
	 header("location:grad.php");
}

?>
