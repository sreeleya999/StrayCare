<?php
include 'connect.php';
$id=$_POST['id'];
$amt = $_POST['amount'];
$sql = mysqli_query($con,"INSERT INTO donation(amount,reg_id)values('$amt','$id')");
if ($sql){
    $my['result'] = 'success';
   
}else{
    $my['result'] = 'failed';
}
echo json_encode($my);