<?php  
header("Content-Type: text/html;charset=utf-8");
$operationName=$_POST['operationName'];
 if(!isset($_POST['operationName'])){
   die('user operationName not define');
  }
  
  if (empty($operationName)) {
  	die('user operationName not define');
  }

 require 'mysql_connect.php';
  $n=0;

  $result=mysql_query("select name from cancer_history where operationName = '$operationName'");

  if (mysql_num_rows($result) < 1){
	die ('查询无数据！');
	}

  while($row=mysql_fetch_array($result)){
  	$arr[$n++]=array(
                      
                        "name"=>$row['name'],
  		);
  }

  //$rs = {status:200}
  //$rs = {status:500}
 echo json_encode($arr);
 
?>