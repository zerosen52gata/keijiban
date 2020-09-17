<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="shortcut icon" href="./icon.png">
<title>ログイン</title>
</head>
<body>
	<header>
  <h1 class="headline">
    <a><font size="10" color="white">ログイン画面</font></a>
  </h1>
</header>
	<p class="books">
	<% if(request.getParameter("error") != null){ %>
		<DIV align="center"><font size="10" style="color:red">エラーです。再度ログインして下さい</font></DIV>

	<%} %>

	<form action="/Book_management_system/LoginServlet" method="post">
		<DIV align="center"><font size="10" color="white">【IDとPWを入力してください。】</font></DIV><br>
		<DIV align="center"><font size="8" color="white">ユーザID：<input type="text" style="height:40px;width:370px;font-size:30px;" name="id"></font></DIV><br>
		<DIV align="center"><font size="8" color="white">パスワード：<input type="password" style="height:40px;width:415px;font-size:30px;" name="pw"></font></DIV><br>
		<DIV align="center"><input id="submit" type="submit" class="button" value="送信"></DIV>
	</form>
	<form action="/Book_management_system/New_account" method="get">
	 <DIV align="center"><input type="submit" value="アカウントの作成はここをクリック！！"></DIV>
	 </form>
</body>
</html>