<?php
session_start();
//      require_once("dompdf/dompdf_config.inc.php");

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

if($username == ''){
	header("location:index.php");
}

header('Content-Type: text/csv; charset=utf-8');
header('Content-Disposition: attachment; filename=spreadsheet.csv');
$data = fopen('php://output', 'w');
fputcsv($data,array('ID','email','password','Name','Last Name','Started Position','Rank','Time in Rank'));


$sql_temp = "Select * from UserName where UserNameID =  %u ";
$query = sprintf($sql_temp, $_SESSION['UserNameID']);
$result = $con->query($query);

if($row = $result->fetch_assoc()){
                        if(($row['nombreProf'] != NULL) AND ($row['apellidoProf'])!= NULL) {
                                        
					$_SESSION['UserNameID'] = $row['UserNameID'];
					fputcsv($data, $row);
                     //                   $_SESSION['UserNameID'] = $row['UserNameID'];
                }               else{
                                header("location:editprofile.php");
                                                }
                        }

fputcsv($data,array('Title','Year','Type','Authors','Status','Graduate Students','Undergrad Students','Information'));
$sql_temp = "Select titlePub, yearPub, typePub, authorPub, pubStatus, gradPub, subgradPub, infoPub from publicaciones where UserNameID = %u;";
$query = sprintf($sql_temp, $_SESSION['UserNameID']);
$result = $con->query($query);
	while($row = $result->fetch_assoc()) {
                        fputcsv($data, $row);
	}

fputcsv($data,array('Title','Year','Type of Presentation','Authors','Type of Meeting', 'Title of Meeting'));
$sql_temp = "Select title, year, typepres, author, typemeeting, titlemeeting from presentaciones where UserNameID = %u;";
$query = sprintf($sql_temp, $_SESSION['UserNameID']);
$result = $con->query($query);
        while($row = $result->fetch_assoc()) {
                        fputcsv($data, $row);
        }


fputcsv($data,array('Role','Status','Funding Source','Title','Start-End','Amount Funding','Amount Release Time'));
$sql_temp = "Select role, status, source, title, startend, amount_fund, amount_time from support where UserNameID = %u;";
$query = sprintf($sql_temp, $_SESSION['UserNameID']);
$result = $con->query($query);
        while($row = $result->fetch_assoc()) {
                        fputcsv($data, $row);
        }

fputcsv($data,array('Academic Stage','University','Name, Last Name','Role','Duration'));
$sql_temp = "Select academic, university, name, role, duration from grad where UserNameID = %u;";
$query = sprintf($sql_temp, $_SESSION['UserNameID']);
$result = $con->query($query);
        while($row = $result->fetch_assoc()) {
                        fputcsv($data, $row);
        }

fputcsv($data,array('Academic Level','Institution','Year - Concentration','Name, Last Name','Position','Mechanism','Funding Source','Activities (paper, presentation, other)'));
$sql_temp = "Select academic, institution, year, name, position, mechanism, funding, activities from training where UserNameID = %u;";
$query = sprintf($sql_temp, $_SESSION['UserNameID']);
$result = $con->query($query);
        while($row = $result->fetch_assoc()) {
                        fputcsv($data, $row);
        }
?>
