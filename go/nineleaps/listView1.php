<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/jquery.jOrgChart.css"/>
</head>
<body>
<?php
try {
    require 'ndbConnect.php';
} 
catch (Exception $e) {
    exit('Require failed! Error: '.$e);
}
$sql = "SELECT * FROM employeeDetails;"; 

$result = mysqli_query($conn,$sql);
echo "</br><h2 align='center' style='color:#069'>Organization Hierarchy </h2></br>";
echo "<ul id='org' style='display:none'>";
while($row = mysqli_fetch_array($result)) {
    $name = $row['employeeName'];
    $desig = $row['employeeDesignation'];
    echo "<li>".$name." ( ".$desig." )</li>";
    $sql1="SELECT * FROM employeeDetails where reportingManager='".$name."';";
    $result1 = mysqli_query($conn,$sql1);
	echo "<ul>";
    while($row1 = mysqli_fetch_array($result1))
    {
	$name1= "".$row1['employeeName'];
	$desig1 = "".$row1['employeeDesignation'];
	echo "<li>". $name1."( ".$desig1." ) </li>"; 
    }	
	echo "</ul>";

} 
echo "</ul>";
mysqli_close($conn); 
?>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
<script type="text/javascript" src="jquery.jOrgChart.js"></script>
<script type="text/javascript">
      jQuery(document).ready(function() {
    $("#org").jOrgChart();
});
    </script>
</body>
</html>


