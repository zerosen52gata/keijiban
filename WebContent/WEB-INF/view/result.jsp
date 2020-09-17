<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.book"%>
<%@page import="dao.UserDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css" type="text/css">
<link rel="shortcut icon" href="./icon.png">
<title>検索結果</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8");
	String key = request.getParameter("key"); %>
	<header>
  <h1 class="headline">
    <a><font size="10" color="white">検索結果表示画面</font></a>
  </h1>
</header>
	<DIV align="center"><font size="10" color="white">「<%=key %>」の検索結果</font></DIV>
	<br>
	<table border="1">
		<tr>
			<th>図書ID</th>
			<th>図書名</th>
			<th>著者</th>
			<th>出版社</th>
			<th>ISBN</th>
		</tr>
		<%
		ArrayList<book> bookList = UserDAO.selectStudent(key);
		for(int i = 0 ; i < bookList.size() ; i++){
		book book = bookList.get(i);
		%>
		<tr>
			<td><%=book.getId() %></td>
			<td><%=book.getName() %></td>
			<td><%=book.getTyosya() %></td>
			<td><%=book.getSyuppan() %></td>
			<td><%=book.getIsbn() %></td>
		</tr>
	<%
	}
	%>
	</table>
	<br>
	<DIV align="center"><font size="15" color="white"><a href="/Book_management_system/Menu">メニュー</a></font></DIV>
	<DIV align="center"><font size="15" color="white"><a href="/Book_management_system/logout">ログアウト</a></font></DIV>
</body>
</html>