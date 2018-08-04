<?php  
  $firstVisitTime=$_POST['firstVisitTime'];
  $firstVisitDoc=$_POST['firstVisitDoc'];
  $firstVisitHip=$_POST['firstVisitHip'];
  $mainComplain=$_POST['mainComplain'];
  $ptct=$_POST['ptct'];
  $zkct=$_POST['zkct'];
  $ECGTime=$_POST['ECGTime'];
  $ECGResult=$_POST['ECGResult'];
  $bingliCheck=$_POST['bingliCheck'];
  $bingliNum=$_POST['bingliNum'];
  $bingliResult=$_POST['bingliResult'];
  
  $con=mysql_connect("localhost","root",'');
  mysql_query("SET NAMES 'utf8'");
  mysql_query("SET CHARACTER SET utf8");
  mysql_query("SET CHARACTER_SET_RESULT=utf8");
  IF(!$con){
     die(mysql_error());
  }
  mysql_select_db("zhongliusuifang",$con);
  $result = mysql_query("INSERT INTO inspect_experience(firstVisitTime,firstVisitDoc,firstVisitHip,mainComplain,ptct,zkct,ECGTime,ECGResult,bingliCheck,bingliNum,bingliResult) VALUES('$firstVisitTime','$firstVisitDoc','$firstVisitHip','$mainComplain','$ptct','$zkct','$ECGTime','$ECGResult','$bingliCheck','$bingliNum','$bingliResult')");
  if(mysql_errno()){
      echo mysql_error();
  }

  $rs = '{ "status" : "500"}';
  echo json_encode($rs);

?>