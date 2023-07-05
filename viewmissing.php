<?php
include 'connect.php';
$data=mysqli_query($con,"SELECT * FROM missing; ");
$list=array();

if($data->num_rows>0){
    while($row=mysqli_fetch_assoc($data)){

    $myarray['petname']=$row['pet_name'];
    $myarray['age']=$row['age'];
    $myarray['color']=$row['color'];
    $myarray['missingdate']=$row['missing_date'];
    $myarray['location']=$row['location'];
    $myarray['phoneno']=$row['phone_no'];
   
    
    $myarray['result']="success";

   
    array_push($list,$myarray);


    }   
} 
else{
    $myarray['result']="failed";
    array_push($list,$myarray);
 
}

echo json_encode($list);

?>