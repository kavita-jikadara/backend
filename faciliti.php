<?php

include("connect.php");

$sql = "select * from facilitie";
$facilitieData = $conn->query($sql);

$data = [];
foreach ($facilitieData as $key => $value) {
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