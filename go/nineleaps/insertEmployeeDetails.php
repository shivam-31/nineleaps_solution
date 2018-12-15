<?php
try {
    require 'ndbConnect.php';
} 
catch (Exception $e) {
    exit('Require failed! Error: '.$e);
}
$name = $_POST["name"]; 
$designation = $_POST["designation"]; 
$manager = $_POST["manager"]; 
$sql = "INSERT INTO employeeDetails (employeeID,employeeName,employeeDesignation,reportingManager) VALUES (NULL,'".$name."','".$designation."','".$manager."')"; 
if ($conn->query($sql) === TRUE) 
{ 
  //  echo "New record created successfully"; 
header('Location: right.html ');    
} 
else 
{ 
  //  echo "Error: " . $sql . "<br>" . $conn->error; 
 
header('Location: wrong.html ');    
} 
$conn->close(); 
?>
