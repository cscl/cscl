<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<?php
include("mysql_connect.php");
?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Learning Management System Sample</title>
</head>

<body>
<div id="HEADER">
	<h2>學習管理系統範例</h2>
</div>
<div id="MAIN_NAV">
	<ul>
		<li><b>開始閱讀</b></li>
		<li><a href="record.php">歷史紀錄</a></li>
		<li><a href="login.php">會員資料修改</a></li>
		<li><a href="manager_login.php">管理者專區</a></li>
		<li><a href="index.php" style="color:#FF99FF">回首頁</a></li>
	</ul>
</div>
<div id="CONTENT">
	<p>
		<center>
		<h2>開始閱讀<br/></h2>
		<br/>
		<br/>
		<h3>

		<form name="form" method="post" action=" reading_connect.php">
			<p>
			帳號：<input type="text" name="id" /> <br>
			密碼：<input type="password" name="pw" /> <br>
			</p>
			<input type="submit" name="button" value="開始" />
			<p>
			</p>
		</form>
		
		</center>
		</h3>
	</p>
</div>
<div id="FOOTER">	
	<p>
		<br/><br/><br/><br/><br/><br/>
		<h3><center><br/>Modified by Ying-Chun Chou</center></h3>
	</p>
</div>
</body>
</html>
