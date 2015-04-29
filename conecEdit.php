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
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$startdate = $_POST['start'];
$rank = $_POST['rank'];
$timerank = $_POST['timerank'];
//-------------------------------------------------------------  
	function ProfileEdit($nombre, $apellido, $startdate, $rank, $timerank, $con){
		session_start(); 
                echo  $_SESSION['UserNameID'];
		$sql_temp = "UPDATE UserName SET nombreProf = '%s', apellidoProf = '%s', start = '%s', rank = '%s', timerank= '%s' where UserNameID = %u ;";
		$query = sprintf($sql_temp, $nombre, $apellido, $startdate, $rank, $timerank, $_SESSION['UserNameID']);
		$result = $con->query($query);	
			echo "entre a ProfileEdit <br>";
			echo $nombre ;
			echo $apellido ;
			echo $startdate;
			echo $rank;
			echo $timerank;
		
		
		}	 
if(isset($_POST['submit'])) {
         ProfileEdit($nombre, $apellido, $startdate, $rank, $timerank, $con);
	 header("location:profile.php");
}
?>

