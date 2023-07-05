<?php
include 'connect.php';
$nme = $_POST['name'];
$pwrd= $_POST['password'];
$sql = mysqli_query($con,"SELECT * from forestlogin where name='$nme'and password='$pwrd'");
if($sql->num_rows > 0){
while($row = mysqli_fetch_assoc($sql)){
    $myarray['result'] = 'success';
    $myarray['forest_id'] = $row['forest_id'];

}
}
else{
    $myarray['result'] = 'failed';

}
echo json_encode($myarray);