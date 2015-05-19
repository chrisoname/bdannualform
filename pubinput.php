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
$titulo = $_POST['titlePub'];
$year = $_POST['yearPub'];
$type = $_POST['typePub'];
$author = $_POST['authorPub'];
$status = $_POST['pubStatus'];
$grad = $_POST['gradPub'];
$subgrad = $_POST['subgradPub'];
$info = $_POST['infoPub'];
echo $info;
echo $subgrad;
echo $type;
echo $grad;
//-------------------------------------------------------------  
	function AddSub($titulo, $year, $type, $author, $status, $grad, $subgrad, $info, $con){
		session_start(); 
                echo  $_SESSION['UserNameID'];
		$sql_temp = "INSERT INTO publicaciones(titlePub, yearPub, typePub, authorPub, pubStatus, gradPub, subgradPub, infoPub, UserNameID) VALUES('%s','%s','%s','%s','%s',%u, %u, '%s', %u);";
		$query = sprintf($sql_temp, $titulo, $year, $type, $author, $status, $grad, $subgrad, $info, $_SESSION['UserNameID']);
		echo $query;
		$result = $con->query($query);	
			echo "entre a AddSub <br>";
		
		}	 
if(isset($_POST['submit'])) {
         AddSub($titulo, $year, $type, $author, $status, $grad, $subgrad, $info, $con);
	 header("location:publicaciones.php");
}
















?>

