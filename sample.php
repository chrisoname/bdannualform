<?php
session_start();
$servername = "localhost";
$username = "cdejesus";
$password = "chrisoname@gmail.com";
$dbname = "cdejesus";

// Create connection
$con = new mysqli($servername, $username, $password, $dbname);

if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
$username = $_SESSION['userName'];
$password = $_SESSION['pass'];
$ID = $_SESSION['UserNameID'];
function AllPubs($con){
                $sql_temp = "Select * from publicaciones where UserNameID = %u;";
		$query = sprintf($sql_temp, $_SESSION['UserNameID']);
                $result = $con->query($query);
		//require('WriteHTML.php');
		require('html_table.php');
		$pdf=new PDF_HTML_Table();
		$pdf->AddPage();
		$pdf->SetFont('Arial');
		$htmlTable='<TABLE>
<TR>
<TD>S. No.</TD>
<TD>Name</TD>
<TD>Age</TD>
<TD>Sex</TD>
<TD>Location</TD>
</TR>

<TR>
<TD>1</TD>
<TD>Azeem</TD>
<TD>24</TD>
<TD>Male</TD>
<TD>Pakistan</TD>
</TR>

<TR>
<TD>2</TD>
<TD>Atiq</TD>
<TD>24</TD>
<TD>Male</TD>
<TD>Pakistan</TD>
</TR>

<TR>
<TD>3</TD>
<TD>Shahid</TD>
<TD>24</TD>
<TD>Male</TD>
<TD>Pakistan</TD>
</TR>

<TR>
<TD>4</TD>
<TD>Roy Montgome</TD>
<TD>36</TD>
<TD>Male</TD>
<TD>USA</TD>
</TR>

<TR>
<TD>5</TD>
<TD>'.$_SESSION['userName'].'</TD>
<TD>18</TD>
<TD>Female</TD>
<TD>&nbsp;</TD>
</TR>
</TABLE>';
		$pdf->WriteHTML("<table>");
		while($row = $result->fetch_assoc()) {
			//echo "entro al while";
		
			$puta= '<TR>
        		 <TD>'.$row["titlePub"].'</TD> 
			 <TD>'.$row["yearPub"].'</TD> 
			 <td>'.$row["typePub"].'</td> 
			 <td>'.$row["authorPub"].'</td> 
			 <td>'.$row["pubStatus"].'</td> 
			 <td>'.$row["gradPub"].'</td>
			 <td>'.$row["subgradPub"].'</td> 
			 <td>'.$row["infoPub"].'</td>
			 </tr>'; 
        		$pdf->WriteHTML("$puta");
			}
			$pdf->WriteHTML("</TABLE>");
			$pdf->Output();
                }
AllPubs($con);
?>

