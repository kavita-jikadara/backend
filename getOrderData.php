<?php

include("connect.php");

$res_id = $_POST['rid'];
$status = $_POST['status'];
$length = $_POST['length'];
$start = $_POST['start'];

$product = $conn->query("SELECT * FROM orderfood WHERE rid=$res_id ORDER BY oredrdatetime DESC");
$productData = $conn->query("SELECT 
                                o.*,u.uname,p.pname,p.pimage 
                            FROM orderfood o
                            LEFT JOIN user u on u.uid = o.uid
                            LEFT JOIN product p on p.pid = o.pid
                            WHERE o.rid=$res_id AND orderstatus='$status'
                            ORDER BY oredrdatetime DESC 
                            LIMIT $start,$length");

$arr = [];
foreach ($productData as $key => $value) {
    $arr['data'][] = $value;
}

if (empty($arr['data'])) {
    $arr['data'] = [];
}
$arr['status'] = true;
$arr['totalRecord'] = mysqli_num_rows($product);
echo json_encode($arr);
$conn->close();