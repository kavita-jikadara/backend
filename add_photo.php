<?php
include("connect.php");

$rid = $_POST["rid"];
$tagname = $_POST["tagname"];
$datetime = date('Y-m-d H:i:s');

$uploaddir = 'menu_image/';
$uploadfile = $uploaddir . basename($_FILES['image']['name']);

if (move_uploaded_file($_FILES['image']['tmp_name'], $uploadfile)) {
    $sql = "INSERT INTO photo (rid, image,tagname, datetime) VALUES ('$rid', '$uploadfile','$tagname', '$datetime')";

    $arr = [];
    if ($conn->query($sql) === TRUE) {
        
        $arr['status'] = true;
        $arr['message'] = "photo has been successfully aaded.";
    } else {
        $arr['status'] = false;
        $arr['message'] = $conn->error;
    }
} else {
    $arr['status'] = false;
    $arr['message'] = "Image has been not uploded, Please try again";
}

echo json_encode($arr);
$conn->close();