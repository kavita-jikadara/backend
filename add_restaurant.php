<?php

include("connect.php");
// $con=dbconnection();//

$res_user_name = $_POST["res_user_name"];
$res_password = $_POST["res_password"];
$resname = $_POST["resname"];
$resaddress = $_POST["resaddress"];
// $opentime = $_POST["opentime"];
// $closetime = $_POST["closetime"];
$resphone = $_POST["resphone"];
// $minamount = $_POST["minamount"];
// $foodcategory = $_POST["foodcategory"];
$datetime = date('Y-m-d H:i:s');

// $uploaddir = 'res_image/';
// $uploadfile = $uploaddir . basename($_FILES['resimage']['name']);
// move_uploaded_file($_FILES['resimage']['tmp_name'], $uploadfile);

// $resbanner = 'res_baner_image/';
// $bannerfile = $resbanner . basename($_FILES['banerimage']['name']);
// move_uploaded_file($_FILES['banerimage']['tmp_name'], $bannerfile);

$checkData = $conn->query("SELECT * FROM restaurant WHERE res_user_name = '$res_user_name'");

if (mysqli_num_rows($checkData) == 0) {
    // $sql = "INSERT INTO restaurant (res_user_name, res_password, resname, resaddress, opentime, closetime, resphone,minamount,foodcategory,datetime,resimage,banerimage) VALUES ('$res_user_name', '$res_password', '$resname', '$resaddress', '$opentime','$closetime','$resphone','$minamount','$foodcategory','$datetime','$uploadfile','$bannerfile')";
    $sql = "INSERT INTO restaurant (res_user_name, res_password, resname, resaddress, resphone,datetime) VALUES ('$res_user_name', '$res_password', '$resname', '$resaddress','$resphone','$datetime')";

    $arr = [];
    if ($conn->query($sql) === TRUE) {
    
        $arr['status'] = true;
        $arr['message'] = "restaurant has been successfully aaded.";
    } else {
        
        $arr['status'] = false;
        $arr['message'] = $conn->error;
    }
} else {
    $arr['status'] = false;
    $arr['message'] = "Entered UserName Already existed, Please to new username";
}

echo json_encode($arr);
$conn->close();