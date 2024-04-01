<?php
include("connect.php");

$user_name = $_POST["user_name"];
$password = $_POST["password"];

//to prevent from mysqli injection  
$user_name = stripcslashes($user_name);
$password = stripcslashes($password);
$user_name = mysqli_real_escape_string($conn, $user_name);
$password = mysqli_real_escape_string($conn, $password);

$sql = "select * from user where uemail = '$user_name' and uphone = '$password'";

$result = $conn->query($sql);
$count = mysqli_num_rows($result);

if ($count > 0) {
    $arr['status'] = true;
    $arr['message'] = "login has been successfully.";
    $arr['data'] = mysqli_fetch_assoc($result);
} else {
    $arr['status'] = false;
    $arr['message'] = "Login failed. Invalid username or password.";
    //  echo "Login failed. Invalid username or password.";  
}

echo json_encode($arr);

$conn->close();
