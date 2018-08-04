<?php  
  $inputf=$_POST['inputf'];
  $inputr=$_POST['inputr'];
  $inputcard=$_POST['inputcard'];
  $inputn=$_POST['inputn'];
  $inputb=$_POST['inputb'];
  $inputa=$_POST['inputa'];
  $inputs=$_POST['inputs'];
  $input7=$_POST['input7'];
  $input9=$_POST['input9'];
  $con=mysql_connect("localhost","root",'');
  mysql_query("SET NAMES 'utf8'");
  mysql_query("SET CHARACTER SET utf8");
  mysql_query("SET CHARACTER_SET_RESULT=utf8");
  IF(!$con){
     die(mysql_error());
  }
  mysql_select_db("zhongliusuifang",$con);
  $result = mysql_query("INSERT INTO basic_info(filing,registerNum,cardNum,name,birthday,age,stature,self,street) VALUES('$inputf','$inputr','$inputcard','$inputn','$inputb','$inputa','$inputs','$input7','$input9')");
  if(mysql_errno()){
      echo mysql_error();
  }

  $rs = '{ "status" : "500"}';
  echo json_encode($rs);

?>