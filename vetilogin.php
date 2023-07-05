<?php
include 'connect.php';
$nm = $_POST['name'];
$pwd= $_POST['password'];
$sql = mysqli_query($con,"SELECT * from veterinarylogin where name='$nm'and password='$pwd'");
if($sql->num_rows > 0){
while($row = mysqli_fetch_assoc($sql)){
    $myarray['result'] = 'success';
    $myarray['veter_id'] = $row['veter_id'];

}
}
else{
    $myarray['result'] = 'failed';

}
echo json_encode($myarray);