<?php
   $con=mysql_connect("localhost","root",''); // 连接本地数据库，账号为root，密码为无
  mysql_query("SET NAMES 'utf8'");               //    把码确立为utf_8
  mysql_query("SET CHARACTER SET utf8");
  mysql_query("SET CHARACTER_SET_RESULT=utf8");

  IF(!$con){
     die(mysql_error());                         //如果连接失败就退出
  }
  mysql_select_db("zhongliusuifang",$con);      //连接本地数据库中的zhongliusuifang库
  ?>