<?php
include("connect.php");

$oid = $_POST["oid"];
$status = $_POST["status"];
$addedDateTime = date('Y-m-d H:i:s');
$arr = [];

$sql = "UPDATE orderfood SET orderstatus='$status', ordercompletetime='$addedDateTime' WHERE oid='$oid'";
if ($conn->query($sql) === TRUE) {
    $statusName = ($status == 1) ? 'accepted' : 'rejected';
    $arr['status'] = true;
    $arr['message'] = "Order has been $statusName successfully";
} else {
    $arr['status'] = false;
    $arr['message'] = $conn->error;
}

echo json_encode($arr);
$conn->close();