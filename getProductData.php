<?php

include("connect.php");

$res_id = $_POST['rid'];
$length = $_POST['length'];
$start = $_POST['start'];

$product = $conn->query("SELECT * FROM product WHERE rid=$res_id ORDER BY pid DESC");
$productData = $conn->query("SELECT * FROM product WHERE rid=$res_id ORDER BY pid DESC LIMIT $start,$length");

$arr = [];
foreach ($productData as $key => $value) {
    $arr['data'][] = $value;
}
$arr['status'] = true;
$arr['totalRecord'] = mysqli_num_rows($product);
echo json_encode($arr);
$conn->close();