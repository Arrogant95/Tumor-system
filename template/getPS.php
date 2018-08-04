<?php

  require 'mysql_connect.php';
  $n=0;
  $result=mysql_query("select * from operation_history");                      //从数据库中选择出所有数据
  while($row=mysql_fetch_array($result)){
  	$arr[$n++]=array(
                      
                        "id"=>$row['id'],
                        "code"=>$row['code'],
                        "Pregnancy"=>$row['Pregnancy'],
                        "birth"=>$row['birth'],
                        "abortion"=>$row['abortion'],
                        "lastMenstruation"=>$row['lastMenstruation'],
                        "allergy"=>$row['allergy'],
                        "zhongliuHome"=>$row['zhongliuHome'],
                        "diseasetime"=>$row['diseasetime'],                    //将数据库中的数据赋予$arr
                        "diseasename"=>$row['diseasename'],
                        "diseaseremark"=>$row['diseaseremark'],
                        "time"=>$row['time'],
                        "name"=>$row['name'],
                        "baseInfo"=>$row['baseInfo'],
                        "ascites"=>$row['ascites'],
                        "lump"=>$row['lump'],
                        "frozenExamine"=>$row['frozenExamine'],
                        "pathologyExamine"=>$row['pathologyExamine'],
                        "residualDisease"=>$row['residualDisease'],
                        "doctor"=>$row['doctor'],
                        "hospital"=>$row['hospital'],
  		);
  }
 echo json_encode($arr);                                                        //将该变量变成json数据输出

?>