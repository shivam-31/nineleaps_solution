<?php
try {
    require 'ndbConnect.php';
} 
catch (Exception $e) {
    exit('Require failed! Error: '.$e);
}
$sql = "SELECT * FROM employeeDetails order by orderNo;"; 

$result = mysqli_query($conn,$sql);
echo "</br><h2 align='center' style='color:#069'>Organization Hierarchy </h2></br>";
echo "<ul style='list-style-type:square'>";
while($row = mysqli_fetch_array($result)) {
    $name = $row['employeeName'];
    $desig = $row['employeeDesignation'];
    echo "<li><b>".$name." ( ".$desig." )</b> </li>"."</br>";
    $sql1="SELECT * FROM employeeDetails where reportingManager='".$name."';";
    $result1 = mysqli_query($conn,$sql1);
	echo "<ul style='list-style-type:circle'>";
    while($row1 = mysqli_fetch_array($result1))
    {
	$name1= "".$row1['employeeName'];
	$desig1 = "".$row1['employeeDesignation'];
	echo "<li>". $name1."<small> ( ".$desig1." )</small></li>"."</br>"; 
    }	
	echo "</ul>";

echo "</br>";
} 
echo "</ul>";
mysqli_close($conn); 
?>
