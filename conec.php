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
$ID = $_POST['user']; 
$Password = $_POST['pass'];
//-------------------------------------------------------------  

 
     function SignIn($ID, $Password, $con) { 
	session_start(); //starting the session for user profile page 
     		if(!empty($_POST['user'])) //checking the 'user' name which is from Sign-In.html, is it empty or have some text 
		{	 
			$sql_temp = "SELECT * FROM UserName where userName = '%s' AND pass = '%s';";
			$query = sprintf($sql_temp, $ID, $Password);
			$result = $con->query($query);
			
			if($row = $result->fetch_assoc()){
				if(!empty($row['userName']) AND !empty($row['pass'])) { 
					$_SESSION['pass'] = $row['pass'];
					$_SESSION['userName'] = $row['userName'];
					$_SESSION['UserNameID'] = $row['UserNameID'];
					echo $row['UserNameID'];
					header("location:profile.php");	
     					echo "SUCCESSFULLY LOGIN TO USER PROFILE PAGE...";
						 } 
		}
		else{
		$_SESSION["Login.Error"] = 'Invalid credentials';
		echo $_SESSION["Login.Error"];
		header("location:index.php");
		}
	
		}	 
					}
if(isset($_POST['submit'])) {
	 SignIn($ID, $Password, $con); 
}
?>
