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
$sql_temp = "DELETE from support where support_id = %u;";
                $query = sprintf($sql_temp, $_POST['support_id']);
                $result = $con->query($query);
		header("location:support.php");
?>

