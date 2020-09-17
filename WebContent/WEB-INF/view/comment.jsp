<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="./css/sample3.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="shortcut icon" href="./icon.png">
<title>コメントの入力</title>
</head>
<body>
<header>
  <h1 class="headline">
    <a><font size="10" color="white">コメントの追加</font></a>
  </h1>
</header>
	<form action="/Book_management_system/Comment2" method="post">
  	<div>
  		<DIV align="center"><font size="10" color="white">本のID：</font><input type="text" style="height:40px;width:250px;font-size:40px;" name="bookid"></DIV><br>
		<DIV align="center"><font size="40" color="white">コメント：<br></font><textarea name = "comment" rows="15" cols="120">ここに感想を記入してください。</textarea></DIV><br>
		<DIV align="center"><input type="submit" class="button" value="送信"><input type="reset" class="button" value="リセット"><br>
	</div>
	</form>
</body>
</html>