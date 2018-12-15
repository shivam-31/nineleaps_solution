<!DOCTYPE HTML>
<html>
<head>
<style>

table {
    border-collapse: collapse;
width: 100%;
       text-align: center;
}

th, td {
    text-align: center;
padding: 8px;
}
th {

    background-color: #4CAF50;
color: white;
}
tr:hover {background-color: #f5f5f5}
tr:nth-child(even){background-color: #f2f2f2}
</style>
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
echo "<h1 align='center'>Employee Details</h1>";
echo "<table border='1' align='center'>";
echo "<tr><th>Employee ID</th><th>Employee Name</th><th>Employee Designation </th><th>Reporting Manager</th></tr>";

while($row = mysqli_fetch_array($result)) {
    $id = $row['employeeID'];
    $name = $row['employeeName'];
    $designation = $row['employeeDesignation'];
    $manager = $row['reportingManager'];
    echo "<tr align='center'><td style='width: 200px;'>".$id."</td><td style='width: 600px;'>".$name."</td><td>".$designation."</td><td>".$manager."</td></tr>";
} 

echo "</table>";
mysql_close($conn); 
?>

</body>
</html>
