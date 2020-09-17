<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.book"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css" type="text/css">
<link rel="shortcut icon" href="./icon.png">
<title>本の一覧画面</title>
</head>
<body>
<header>
  <h1 class="headline">
    <a><font size="10" color="white">本の全件表示</font></a>
  </h1>
</header>
	<DIV align="center"><font size="10" color="white">ここは今存在する本の一覧です</font></DIV>
	<table border="1" style="font-size: 25px;background-color:white">
		<tr>
			<th width="300" height="50">図書ID</th>
			<th width="300" height="50">図書名</th>
			<th width="300" height="50">著者</th>
			<th width="300" height="50">出版社</th>
			<th width="300" height="50">ISBN</th>
			<th width="300" height="50">貸出</th>
		</tr>
		<%
	ArrayList<book> bookList = (ArrayList<book>)request.getAttribute("listget");
	for(int i = 0 ; i < bookList.size() ; i++){
		book boo = bookList.get(i);
	%>
		<tr>
			<td><%=boo.getId() %></td>
			<td><%=boo.getName() %></td>
			<td><%=boo.getAuthor() %></td>
			<td><%=boo.getPublisher() %></td>
			<td><%=boo.getIsbn() %></td>
			<td><%=boo.getBorrow() %></td>
		</tr>
	<%
	}
	%>
	</table>
	<br>
	<br>
	<DIV align="center"><font size="15" color="white"><a href="/Book_management_system/Menu">メニュー</a></font></DIV>
	<DIV align="center"><font size="15" color="white"><a href="/Book_management_system/logout">ログアウト</a></font></DIV>
</body>
</html>