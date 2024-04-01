<?php
include("connect.php");

$uname = $_POST["uname"];
$uemail = $_POST["uemail"];
$uphone = $_POST["uphone"];
$uaddress = $_POST["uaddress"];
$pwd = $_POST["pwd"];
$uadddatetime = date('Y-m-d H:i:s');

$sql = "INSERT INTO user (uname,uemail,uphone,uaddress,pwd,uadddatetime) VALUES ('$uname', '$uemail','$uphone','$uaddress','$pwd','$uadddatetime')";

    $arr = [];
    if ($conn->query($sql) === TRUE) {
        
        $arr['status'] = true;
        $arr['message'] = "user has been successfully aaded.";
    } else {
        $arr['status'] = false;
        $arr['message'] = $conn->error;
    }


echo json_encode($arr);
$conn->close();