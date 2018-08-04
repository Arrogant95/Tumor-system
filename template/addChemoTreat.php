<?php  
  $time=$_POST['time'];
  $treatment=$_POST['treatment'];
  $volume=$_POST['volume'];
  $drugName=$_POST['drugName'];
  $drugjiliang=$_POST['drugjiliang'];
  $drugpingci=$_POST['drugpingci'];
  $drugway=$_POST['drugway'];
  $drugtime=$_POST['drugtime'];
  $drugremark=$_POST['drugremark'];
  $lastTreatmentnot=$_POST['lastTreatmentnot'];
  $treatmentElse=$_POST['treatmentElse'];
  $fudrugName=$_POST['fudrugName'];
  $fudrugjiliang=$_POST['fudrugjiliang'];
  $fudrugpingci=$_POST['fudrugpingci'];
  $fudrugway=$_POST['fudrugway'];
  $fudrugtime=$_POST['fudrugtime'];
  $fudrugremark=$_POST['fudrugremark'];
  $fulastTreatmentnot=$_POST['fulastTreatmentnot'];
  $fulastTreatmentelse=$_POST['fulastTreatmentelse'];
  
  $con=mysql_connect("localhost","root",'');
  mysql_query("SET NAMES 'utf8'");
  mysql_query("SET CHARACTER SET utf8");
  mysql_query("SET CHARACTER_SET_RESULT=utf8");
  IF(!$con){
     die(mysql_error());
  }
  mysql_select_db("zhongliusuifang",$con);
  $result = mysql_query("INSERT INTO pathology(time,treatment,volume,drugName,drugjiliang,drugpingci,drugway,drugtime,drugremark,lastTreatmentnot,treatmentElse,fudrugName,fudrugjiliang,fudrugpingci,fudrugway,fudrugtime,fudrugremark,fulastTreatmentnot,fulastTreatmentelse) VALUES('$time','$treatment','$volume','$drugName','$drugjiliang','$drugpingci','$drugway','$drugtime','$drugremark','$lastTreatmentnot','$treatmentElse','$fudrugName','$fudrugjiliang','$fudrugpingci','$fudrugway','$fudrugtime','$fudrugremark','$fulastTreatmentnot','$fulastTreatmentelse')");
  if(mysql_errno()){
      echo mysql_error();
  }

  $rs = '{ "status" : "500"}';
  echo json_encode($rs);

?>