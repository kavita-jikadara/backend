<?php

include("connect.php");

$res_id = $_POST['rid'];

$product = $conn->query("SELECT * FROM product WHERE rid=$res_id ORDER BY pid DESC");

$arr = [];
foreach ($product as $key => $value) {
    $arr['data'][] = $value;
}
$arr['status'] = true;
echo json_encode($arr);
$conn->close();