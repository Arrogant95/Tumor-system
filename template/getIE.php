<?php

  require 'mysql_connect.php';
  $n=0;
  $result=mysql_query("select * from inspect_experience");
  while($row=mysql_fetch_array($result)){
  	$arr[$n++]=array(
                      
                        "id"=>$row['id'],
                        "firstVisitTime"=>$row['firstVisitTime'],
                        "firstVisitDoc"=>$row['firstVisitDoc'],
                        "firstVisitHip"=>$row['firstVisitHip'],
                        "mainComplain"=>$row['mainComplain'],
                        "ptct"=>$row['ptct'],
                        "zkct"=>$row['zkct'],
                        "ECGTime"=>$row['ECGTime'],
                        "ECGResult"=>$row['ECGResult'],
                        "bingliCheck"=>$row['bingliCheck'],
                        "bingliNum"=>$row['bingliNum'],
                        "bingliResult"=>$row['bingliResult'],
                        
  		);
  }
 echo json_encode($arr);

?>