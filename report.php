<?php
include 'connect.php';
$id=$_POST['id'];
$typ = $_POST['report_type'];
$des = $_POST['description'];
$lti = $_POST['location'];

$sql = mysqli_query($con,"INSERT INTO report(report_type,description,location,reg_id)values('$typ','$des','$lti','$id')");
if ($sql){
    $my['result'] = 'success';
   
}else{
    $my['result'] = 'failed';
}
echo json_encode($my);