<?php 
$servername = "localhost"; 
$username = "root"; 
$password = "helloman123"; 
$dbname = "employeeDetails"; 
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) 
{ 
    die("Connection failed: " . $conn->connect_error); 
} 
?>
