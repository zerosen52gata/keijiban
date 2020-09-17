<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/style.css">
<link rel="shortcut icon" href="./icon.png">
<title></title>
</head>
<body>
<header>
  <h1 class="headline">
    <a><font size="10" color="white">本の追加</font></a>
  </h1>
</header>
	<form action="/Book_management_system/Add2" method="post">
  	<div>
		<DIV align="center"><font size="10" color="white">ID：</font><input type="text" style="height:40px;width:250px;font-size:40px;" name="id"></DIV><br>
		<DIV align="center"><font size="10" color="white">名前：</font><input type="text" style="height:40px;width:270px;font-size:40px;" name="name"></DIV><br>
		<DIV align="center"><font size="10" color="white">著者：</font><input type="text" style="height:40px;width:290px;font-size:40px;" name="author"></DIV><br>
		<DIV align="center"><font size="10" color="white">出版社：</font><input type="text" style="height:40px;width:340px;font-size:40px;" name="publisher"></DIV><br>
		<DIV align="center"><font size="10" color="white">ISBN：</font><input type="text" style="height:40px;width:340px;font-size:40px;" name="isbn"></DIV><br>
		<DIV align="center"><input type="submit" class="button" value="送信"></DIV><br>
	</div>
	</form>
</body>
</html>