<?php

include("connect.php");

$sql = "select * from review";
$reviewData = $conn->query($sql);

$data = [];
foreach ($reviewData as $key => $value) {
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