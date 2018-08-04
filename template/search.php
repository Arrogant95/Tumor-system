<?php  
header("Content-Type: text/html;charset=utf-8");

 if(!isset($_POST['name'])){
   die('user name not define');                //获取页面传来的name数据并判断name是否为空
  }
  $name=$_POST['name'];
  if (empty($name)) {
  	die('user name not define');
  }

 require 'mysql_connect.php';                 //具体代码看前面
  $n=0;

  $result=mysql_query("select * from cancer_history where name = '$name'");

  if (mysql_num_rows($result) < 1){
	die ('查询无数据！');                    //有可能在数据库中并没有
	}

  while($row=mysql_fetch_array($result)){
  	$arr[$n++]=array(
                      
                        "id"=>$row['id'],
                        "phoneNum"=>$row['phoneNum'],
                        "diseaseAttribute"=>$row['diseaseAttribute'],
                        "pathologialDiagnosis"=>$row['pathologialDiagnosis'],
                        "operationName"=>$row['operationName'],
                        "headDOC"=>$row['headDOC'],
                        "visitingStaff"=>$row['visitingStaff'],             //把输入的name对应的信息都取出来
                        "residentDOC"=>$row['residentDOC'],
                        "surgeon"=>$row['surgeon'],
                        "ageStart"=>$row['ageStart'],
                        "ageEnd"=>$row['ageEnd'],
                        "startLeave"=>$row['startLeave'],
                        "endLeave"=>$row['endLeave'],
                        "bingli"=>$row['bingli'],
  		);
  }

  //$rs = {status:200}
  //$rs = {status:500} 
 echo json_encode($arr);                                         //以json数据的形式输出
 
?>