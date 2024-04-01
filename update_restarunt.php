<?php

include("connect.php");

$resid = $_POST["resid"];
$resname = $_POST["resname"];
$resaddress = $_POST["resaddress"];
$opentime = $_POST["opentime"];
$closetime = $_POST["closetime"];
$resphone = $_POST["resphone"];
$foodcategory = $_POST["foodcategory"];
$minamount = $_POST["minamount"];
$uploaddir = 'images/';
$arr = [];
if (isset($_FILES['resimage'])) {
    $uploadfile = $uploaddir . basename($_FILES['resimage']['name']);

    if (move_uploaded_file($_FILES['resimage']['tmp_name'], $uploadfile)) {
        $sql = "UPDATE restaurant SET resname='$resname', resaddress='$resaddress', opentime='$opentime', closetime= '$closetime', resphone= '$resphone', foodcategory='$foodcategory', minamount='$minamount',resimage='$uploadfile' WHERE resid='$resid'";
        
        if ($conn->query($sql) === TRUE) {
            $sql = "select * from restaurant where resid=$resid";
            $resData = $conn->query($sql);
            if (mysqli_num_rows($resData) > 0) {
                $arr['status'] = true;
                $arr['message'] = "restaurant has been successfully update.";
                $arr['data'] = mysqli_fetch_assoc($resData);
            }
        }
    } else {
        $arr['status'] = false;
        $arr['message'] = $conn->error;
    }
} else {
    $sql = "UPDATE restaurant SET resname='$resname', resaddress='$resaddress', opentime='$opentime', closetime= '$closetime', resphone= '$resphone', foodcategory='$foodcategory', minamount='$minamount' WHERE resid='$resid'";
    if ($conn->query($sql) === TRUE) {
        $sql = "select * from restaurant where resid=$resid";
        $resData = $conn->query($sql);
        if (mysqli_num_rows($resData) > 0) {
            $arr['status'] = true;
            $arr['message'] = "restaurant has been successfully update.";
            $arr['data'] = mysqli_fetch_assoc($resData);
        }
    } else {
        $arr['status'] = false;
        $arr['message'] = $conn->error;
    }
}


echo json_encode($arr);
$conn->close();
