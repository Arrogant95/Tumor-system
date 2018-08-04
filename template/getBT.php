<?php

  require 'mysql_connect.php';
  $n=0;
  $result=mysql_query("select * from basic_cure");
  while($row=mysql_fetch_array($result)){
  	$arr[$n++]=array(
                      
                        "id"=>$row['id'],
                        "code"=>$row['code'],
                        "entity"=>$row['entity'],
                        "time"=>$row['time'],
                        "chemotherapy"=>$row['chemotherapy'],
                        "chemotherapyjiliang"=>$row['chemotherapyjiliang'],
                        "chemotherapypingci"=>$row['chemotherapypingci'],
                        "chemotherapyway"=>$row['chemotherapyway'],
                        "chemotherapytime"=>$row['chemotherapytime'],
                        "chemotherapyremark"=>$row['chemotherapyremark'],
                        "lastchemotherapynot"=>$row['lastchemotherapynot'],
                        "chemotherapyelse"=>$row['chemotherapyelse'],
                        "EEGTime"=>$row['EEGTime'],
                        "EEGResult"=>$row['EEGResult'],
                        "checkResult"=>$row['checkResult'],
                        "CTcheckResult"=>$row['CTcheckResult'],
                        "pathologyname"=>$row['pathologyname'],
                        "pathologyNum"=>$row['pathologyNum'],
                        "pathologyResult"=>$row['pathologyResult'],
  		);
  }
 echo json_encode($arr);

?>