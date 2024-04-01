<?php

include("connect.php");

$res_id = $_GET['res_id'];

$sql = "select * from restaurant where resid=$res_id";
$resData = $conn->query($sql);
if (mysqli_num_rows($resData) > 0) {
    $return = [
        'data' => mysqli_fetch_assoc($resData),
        'status' => true,
        'message' => 'Restaent data'
    ];
} else {
    $return = [
        'data' => [],
        'status' => false,
        'message' => 'Restaent data not found'
    ];
}

echo json_encode($return);
$conn->close();