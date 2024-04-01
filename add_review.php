<?php
include("connect.php");

$uid = $_POST["uid"];
$rid = $_POST["rid"];
$rating = $_POST["rating"];
$review = $_POST["review"];
$datetime = date('Y-m-d H:i:s');

$sql = "INSERT INTO review (uid,rid,rating,review,datetime) VALUES ('$uid','$rid','$rating','$review','$datetime')";

    $arr = [];
    if ($conn->query($sql) === TRUE) {
        
        $arr['status'] = true;
        $arr['message'] = "Review has been successfully aaded.";
    } else {
        $arr['status'] = false;
        $arr['message'] = $conn->error;
    }


echo json_encode($arr);
$conn->close();