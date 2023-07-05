<?php
include 'connect.php';
$nme = $_POST['name'];
$pwrd= $_POST['password'];

$sql = mysqli_query($con,"SELECT * from register where name='$nme'and password='$pwrd'");
if($sql->num_rows > 0){
while($row = mysqli_fetch_assoc($sql)){
    $myarray['message']='User Successfully Logged In';
    $myarray['reg_id'] = $row['reg_id'];

}
}
else{
    $myarray['message']='failed to login';

}
echo json_encode($myarray);