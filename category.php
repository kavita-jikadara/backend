<?php

include("connect.php");

$foodcategory = $_GET['foodcategory'];

$sql = "select * from restaurant where foodcategory='$foodcategory'";
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

