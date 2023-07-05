<?php
include 'connect.php';
$data=mysqli_query($con,"SELECT * FROM report; ");
$list=array();

if($data->num_rows>0){
    while($row=mysqli_fetch_assoc($data)){

    $myarray['reporttype']=$row['report_type'];
    $myarray['description']=$row['description'];
    $myarray['location']=$row['location'];

   
    
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