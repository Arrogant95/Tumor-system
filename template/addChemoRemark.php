<?php  
  $time=$_POST['time'];
  $remark=$_POST['remark'];
  $zhongliuTime=$_POST['zhongliuTime'];
  $zhongliuRemark=$_POST['zhongliuRemark'];
  $bloodTime=$_POST['bloodTime'];
  $bloodRemark=$_POST['bloodRemark'];
  $EEGTime=$_POST['EEGTime'];
  $EEGResult=$_POST['EEGResult'];
  $checkName=$_POST['checkName'];
  $checkTime=$_POST['checkTime'];
  $checkRemark=$_POST['checkRemark'];
  $picCheckName=$_POST['picCheckName'];
  $picCheckTime=$_POST['picCheckTime'];
  $picCheckRemark=$_POST['picCheckRemark'];
  $bingliName=$_POST['bingliName'];
  $bingliNum=$_POST['bingliNum'];
  $bingliResult=$_POST['bingliResult'];
  $ptctTime=$_POST['ptctTime'];
  $ptctResult=$_POST['ptctResult'];
  $zkctTime=$_POST['zkctTime'];
  $zkctResult=$_POST['zkctResult'];
  $waiyin=$_POST['waiyin'];
  $yindao=$_POST['yindao'];
  $gongjing=$_POST['gongjing'];
  $zigong=$_POST['zigong'];
  $fujian=$_POST['fujian'];
  $elset=$_POST['elset'];
  
  
  $con=mysql_connect("localhost","root",'');
  mysql_query("SET NAMES 'utf8'");
  mysql_query("SET CHARACTER SET utf8");
  mysql_query("SET CHARACTER_SET_RESULT=utf8");
  IF(!$con){
     die(mysql_error());
  }
  mysql_select_db("zhongliusuifang",$con);
  $result = mysql_query("INSERT INTO addRemark(time,remark,zhongliuTime,zhongliuRemark,bloodTime,bloodRemark,EEGTime,EEGResult,checkName,checkTime,checkRemark,picCheckName,picCheckTime,picCheckRemark,bingliName,bingliNum,bingliResult,ptctTime,ptctResult,zkctTime,zkctResult,waiyin,yindao,gongjing,zigong,fujian,elset) VALUES('$time','$remark','$zhongliuTime','$zhongliuRemark','$bloodTime','$bloodRemark','&EEGTime','$EEGResult','$checkName','$checkTime','$checkRemark','$picCheckName','$picCheckTime','$picCheckRemark','$bingliName','$bingliNum','$bingliResult','$ptctTime','$ptctResult','$zkctTime','$zkctResult','$waiyin','$yindao','$gongjing','$zigong','$fujian','$elset')");
  if(mysql_errno()){
      echo mysql_error();
  }

  $rs = '{ "status" : "500"}';
  echo json_encode($rs);

?>