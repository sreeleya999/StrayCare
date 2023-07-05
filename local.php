<?php
include 'connect.php';
$nm = $_POST['reporter_name'];
$tm = $_POST['time'];
$des = $_POST['description'];
$loc = $_POST['location'];

$sql = mysqli_query($con,"INSERT INTO local(reporter_name,time,description,location)values('$nm','$tm','$des','$loc')");
if ($sql){
    $my['result'] = 'success';
   
}else{
    $my['result'] = 'failed';
}
echo json_encode($my);