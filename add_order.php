<?php
include("connect.php");

$uid = $_POST["uid"];
$rid = $_POST["rid"];
$pid = $_POST["pid"];
$quantity = $_POST["quantity"];
$amount = $_POST["amount"];
$discount = $_POST["discount"];
$totalamount = $_POST["totalamount"];
$orderstatus = 0;
$oredrdatetime = date('Y-m-d H:i:s');

$sql = "INSERT INTO orderfood (uid,rid,pid,quantity,amount,discount,totalamount,orderstatus,oredrdatetime) VALUES ('$uid','$rid', '$pid','$quantity','$amount','$discount','$totalamount','$orderstatus','$oredrdatetime')";

$arr = [];
if ($conn->query($sql) === TRUE) {
    $arr['status'] = true;
    $arr['message'] = "order has been successfully aaded.";
} else {
    $arr['status'] = false;
    $arr['message'] = $conn->error;
}

echo json_encode($arr);
$conn->close();
