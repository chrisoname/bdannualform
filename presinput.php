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
$title = $_POST['title'];
$year = $_POST['year'];
$typepres = $_POST['typepres'];
$author = $_POST['author'];
$typemeeting = $_POST['typemeeting'];
$titlemeeting = $_POST['titlemeeting'];
//-------------------------------------------------------------  
	function AddSub($title, $year, $typepres, $author, $typemeeting, $titlemeeting, $con){
		session_start(); 
                echo  $_SESSION['UserNameID'];
		$sql_temp = "INSERT INTO presentaciones(title, year, typepres, author, typemeeting, titlemeeting, UserNameID) VALUES('%s',%u,'%s','%s','%s','%s', %u);";
		$query = sprintf($sql_temp, $title, $year, $typepres, $author, $typemeeting, $titlemeeting, $_SESSION['UserNameID']);
		echo $query;
		$result = $con->query($query);	
			echo "entre a AddSub <br>";
		
		}	 
if(isset($_POST['submit'])) {
         AddSub($title, $year, $typepres, $author, $typemeeting, $titlemeeting, $con);
	 header("location:presentaciones.php");
}

?>


