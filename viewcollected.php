<?php
include 'connect.php';
$data=mysqli_query($con,"SELECT * FROM collected; ");
$list=array();

if($data->num_rows>0){
    while($row=mysqli_fetch_assoc($data)){

    $myarray['breed']=$row['breed'];
    $myarray['color']=$row['color'];
    $myarray['healthcondition']=$row['health_condition'];
    $myarray['collectedfrom']=$row['collected_from'];
    $myarray['collected on']=$row['collected_on'];
    
   
    
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