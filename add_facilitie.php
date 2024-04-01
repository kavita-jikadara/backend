<?php
include("connect.php");

$rid = $_POST["rid"];
$textfield = $_POST["textfield"];

$sql = "INSERT INTO facilitie (rid, textfield) VALUES ('$rid', '$textfield')";

    $arr = [];
    if ($conn->query($sql) === TRUE) {
        
        $arr['status'] = true;
        $arr['message'] = "facilitie has been successfully aaded.";
    } else {
        $arr['status'] = false;
        $arr['message'] = $conn->error;
    }


echo json_encode($arr);
$conn->close();