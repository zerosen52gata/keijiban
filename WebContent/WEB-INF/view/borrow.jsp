<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css" type="text/css">
<link rel="shortcut icon" href="./icon.png">
<title>貸出</title>
</head>
<body>
<header>
  <h1 class="headline">
    <a><font size="10" color="white">貸出画面</font></a>
  </h1>
</header>
<form action="/Book_management_system/Borrow2" method="post">
		<DIV align="center"><font size="15" color="white">【借りたい本のIDを入力して下さい。】</font></DIV><br>
		<DIV align="center"><font size="15" color="white">ID：<input type="text" style="height:45px;width:370px;font-size:30px;" name="bookID"></font></DIV><br>
		<DIV align="center"><font size="9" color="white">※期限は一か月です、期限は守りましょう！</font></DIV><br>
		<DIV align="center"><input type="submit" class="button" value="借りる"></DIV>
	</form>
</body>
</html>