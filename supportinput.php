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
$role = $_POST['role'];
$status = $_POST['status'];
$source = $_POST['source'];
$title = $_POST['title'];
$startend = $_POST['startend'];
$amount_fund = $_POST['amount_fund'];
$amount_time = $_POST['amount_time'];
//-------------------------------------------------------------  
	function AddSub($role, $status, $source, $title, $startend, $amount_fund, $amount_time, $con){
		session_start(); 
                echo  $_SESSION['UserNameID'];
		$sql_temp = "INSERT INTO support(role, status, source, title, startend, amount_fund, amount_time, UserNameID) VALUES('%s','%s','%s','%s','%s', %u, '%s', %u);";
		$query = sprintf($sql_temp,$role, $status, $source, $title, $startend, $amount_fund, $amount_time, $_SESSION['UserNameID']);
		echo $query;
		$result = $con->query($query);	
			echo "entre a AddSub <br>";
		
		}	 
if(isset($_POST['submit'])) {
         AddSub($role, $status, $source, $title, $startend, $amount_fund, $amount_time, $con);
	 header("location:support.php");
}

?>



