<?php

include("connect.php");

$sql = "select * from menu";
$menuData = $conn->query($sql);

$data = [];
foreach ($menuData as $key => $value) {
    $data[] = $value;
}

$return = [
    'data' => $data,
    'status' => true
];
echo json_encode($return);
// while ($fetch = mysqli_fetch_assoc($productData)) {
//     print_r($fetch);
// }