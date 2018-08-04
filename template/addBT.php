 <?php  
  $chemotherapy=$_POST['chemotherapy'];
  $chemotherapyjiliang=$_POST['chemotherapyjiliang'];
  $chemotherapypingci=$_POST['chemotherapypingci'];
  $chemotherapyway=$_POST['chemotherapyway'];
  $chemotherapytime=$_POST['chemotherapytime'];
  $lastchemotherapynot=$_POST['lastchemotherapynot'];
  $chemotherapyelse=$_POST['chemotherapyelse'];                        //获取页面的信息
  $EEGTime=$_POST['EEGTime'];
  $EEGResult=$_POST['EEGResult'];
  $pathologyname=$_POST['pathologyname'];
  $pathologyNum=$_POST['pathologyNum'];
  $pathologyResult=$_POST['pathologyResult'];
  
  $con=mysql_connect("localhost","root",'');
  mysql_query("SET NAMES 'utf8'");                                    //打开数据库
  mysql_query("SET CHARACTER SET utf8");
  mysql_query("SET CHARACTER_SET_RESULT=utf8");
  IF(!$con){
     die(mysql_error());
  }
  mysql_select_db("zhongliusuifang",$con);
  $result = mysql_query("INSERT INTO basic_cure(chemotherapy,chemotherapyjiliang,chemotherapypingci,chemotherapyway,chemotherapytime,lastchemotherapynot,chemotherapyelse,EEGTime,EEGResult,pathologyname,pathologyNum,pathologyResult) VALUES('$chemotherapy','$chemotherapyjiliang','$chemotherapypingci','$chemotherapyway','$chemotherapytime','$lastchemotherapynot','$chemotherapyelse','$EEGTime','$EEGResult','$pathologyname','$pathologyNum','$pathologyResult')");   //依次插入数据
  if(mysql_errno()){
      echo mysql_error();
  }

  $rs = '{ "status" : "500"}';
  echo json_encode($rs);

?>