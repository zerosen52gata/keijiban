<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css" type="text/css">
<link rel="shortcut icon" href="./icon.png">
<title>検索画面</title>
</head>
<body>
<header>
  <h1 class="headline">
    <a><font size="10" color="white">キーワード検索画面</font></a>
  </h1>
</header>
	<form action="/Book_management_system/result" method="post">
		<DIV align="center"><font size="15" color="white">【検索ワードを入力して下さい。】</font></DIV><br>
		<DIV align="center"><font size="15" color="white">キーワード：<input type="text" style="height:45px;width:370px;font-size:30px;" name="key"></font></DIV><br>
		<DIV align="center"><input type="submit" class="button" value="検索"></DIV>
	</form>
	<br>
	<br>
	<DIV align="center"><font size="15" color="white"><a href="/Book_management_system/Menu">メニュー</a></font></DIV>
	<DIV align="center"><font size="15" color="white"><a href="/Book_management_system/logout">ログアウト</a></font></DIV>
</body>
</html>