<?php

// function dbconnection(){
//     $con=mysqli_connect("localhost","root","","food_app_db");
//     return $con;
// };
?>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "food_app_db";

// Create connection
$conn = new mysqli($servername, $username, $password,$dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
// echo "Connected successfully";
?>
