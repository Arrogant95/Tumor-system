<?php

  require 'mysql_connect.php';                      //请求执行一次mysql_connect.php
  $n=0;
  $result=mysql_query("select * from login");       //选择login列表中的所有元素
  while($row=mysql_fetch_array($result)){             
    $arr[$n++]=array(
                      

                        "name"=>$row['name'],       //把列表中的name 和 pw 密码数据赋予变量
                        "pw"=>$row['pw'],                                         
      );
  }

 echo json_encode($arr);

?>