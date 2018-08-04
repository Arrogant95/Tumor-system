<?php

  require 'mysql_connect.php';  //连接上一节写的php文件来访问数据库
  ?>

<!DOCTYPE html>
<html>
<head>
	<title>所有患者</title>
  <style type="text/css">
  a{padding-left: 50%;}
  body{background: #EEEEEE;}
  </style>
</head>
<body>
<h3 align='center'>所有患者</h3>
<?php
$result = mysql_query("select name from basic_info");  //从basic_info数据库搜索name列并赋予result
  
$datacount = mysql_num_rows($result); 


for($i = 0;$i < $datacount;$i++)
{ 
  $row = mysql_fetch_assoc($result);
  $name = $row['name'];                                  //循环取出name列中的数据并显示在网页上
  echo "<a href='index1.html?id=$i' > $name</a><br/>";
}

?>

</body>
</html>


  