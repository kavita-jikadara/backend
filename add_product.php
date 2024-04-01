<?php
include("connect.php");

$name = $_POST["name"];
$type = $_POST["ptype"];
$category = $_POST["category"];
$price = $_POST["price"];
$rid = $_POST["rid"];
$datetime = date('Y-m-d H:i:s');
$cookingtime = $_POST["cookingtime"];
 $uploaddir = 'images/';
 $uploadfile = $uploaddir . basename($_FILES['pimage']['name']);

 if (move_uploaded_file($_FILES['pimage']['tmp_name'], $uploadfile)) {
    $sql = "INSERT INTO product (pname, ptype,rid, category, price,pimage, datetime, cookingtime) VALUES ('$name', '$type','$rid', '$category','$price','$uploadfile','$datetime','$cookingtime')";

    $arr = [];
    if ($conn->query($sql) === TRUE) {
        
        $arr['status'] = true;
        $arr['message'] = "Product has been successfully aaded.";
    } else {
        $arr['status'] = false;
        $arr['message'] = $conn->error;
    }
 } else {
     $arr['status'] = false;
     $arr['message'] = "Image has been not uploded, Please try again";
 }

echo json_encode($arr);
$conn->close();