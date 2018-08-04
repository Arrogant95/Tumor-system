<?php  
  $Pregnancy=$_POST['Pregnancy'];
  $birth=$_POST['birth'];
  $abortion=$_POST['abortion'];
  $lastMenstruation=$_POST['lastMenstruation'];
  $allergy=$_POST['allergy'];
  $zhongliuHome=$_POST['zhongliuHome'];
  $diseasetime=$_POST['diseasetime'];
  $diseasename=$_POST['diseasename'];
  $diseaseremark=$_POST['diseaseremark'];
  $time=$_POST['time'];
  $name=$_POST['name'];
  $baseInfo=$_POST['baseInfo'];
  $ascites=$_POST['ascites'];
  $lump=$_POST['lump'];
  $frozenExamine=$_POST['frozenExamine'];
  $pathologyExamine=$_POST['pathologyExamine'];
  $residualDisease=$_POST['residualDisease'];
  $doctor=$_POST['doctor'];
  $hospital=$_POST['hospital'];
  $con=mysql_connect("localhost","root",'');
  mysql_query("SET NAMES 'utf8'");
  mysql_query("SET CHARACTER SET utf8");
  mysql_query("SET CHARACTER_SET_RESULT=utf8");
  IF(!$con){
     die(mysql_error());
  }
  mysql_select_db("zhongliusuifang",$con);
  $result = mysql_query("INSERT INTO operation_history(Pregnancy,birth,abortion,lastMenstruation,allergy,zhongliuHome,diseasetime,diseasename,diseaseremark,time,name,baseInfo,ascites,lump,frozenExamine,pathologyExamine,residualDisease,doctor,hospital) VALUES('$Pregnancy','$birth','$abortion','$lastMenstruation','$allergy','$zhongliuHome','$diseasetime','$diseasename','$diseaseremark','$time','$name','$baseInfo','$ascites','$lump','$frozenExamine','$pathologyExamine','$residualDisease','$doctor','$hospital')");
  if(mysql_errno()){
      echo mysql_error();
  }

  $rs = '{ "status" : "500"}';
  echo json_encode($rs);

?>