<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>d</title>
</head>
<body>
<h1>d 페이지입니다.</h1>
<script>
	alert("d 입니다.")
</script>
<%
	response.sendRedirect("b.jsp");
	//response.sendRedirect("c.jsp");
%>
</body>
</html>