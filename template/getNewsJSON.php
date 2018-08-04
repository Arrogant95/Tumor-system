<?php

  require 'mysql_connect.php';
  $n=0;
  $result=mysql_query("select * from basic_info");
  while($row=mysql_fetch_array($result)){
  	$arr[$n++]=array(
                      
                        "id"=>$row['id'],
                        "filing"=>$row['filing'],
                        "department"=>$row['department'],
                        "registerNum"=>$row['registerNum'],
                        "cardNum"=>$row['cardNum'],
                        "name"=>$row['name'],
                        "sex"=>$row['sex'],
                        "birthday"=>$row['birthday'],
                        "age"=>$row['age'],
                        "stature"=>$row['stature'],
                        "self"=>$row['self'],
                        "relation"=>$row['relation'],
                        "provice"=>$row['provice'],
                        "city"=>$row['city'],
                        "country"=>$row['country'],
                        "street"=>$row['street'],
  		);
  }
 echo json_encode($arr);

?>