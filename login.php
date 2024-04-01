<?php
include("connect.php");

$user_name = $_POST["user_name"];
$password = $_POST["password"];

//to prevent from mysqli injection  
$user_name = stripcslashes($user_name);
$password = stripcslashes($password);
$user_name = mysqli_real_escape_string($conn, $user_name);
$password = mysqli_real_escape_string($conn, $password);

$sql = "select * from restaurant where res_user_name = '$user_name' and res_password = '$password'";

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


// $sql="select * from login where user_name='$user_name' and password='$password'";

// $res= mysqli_query($conn,$sql);
// if(mysqli_fetch_array($res)>0){
//     $arr['status'] = true;
//     $arr['message'] = "login has been successfully.";
// }else{
//     $arr['status'] = false;
//     $arr['message'] = $conn->error;
// }
echo json_encode($arr);


// $sql = "select * from login where user_name='$user_name' and password='$password'";
// $arr = [];
// if ($conn->query($sql) === TRUE) {

//     $arr['status'] = true;
//     $arr['message'] = "login has been successfully.";
// } else {
//     $arr['status'] = false;
//     $arr['message'] = $conn->error;
// }

// echo json_encode($arr);
$conn->close();
