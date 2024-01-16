<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>diary</title>
<style>
	img{
		width: 300px;
		height: 300px;
	}
</style>
</head>
<body>
<h1>diary</h1>
<%
	Calendar today = Calendar.getInstance();
	String title = new SimpleDateFormat("yyyy년 MM월").format(today.getTime());
%>

<table border="">
	<tr>
		<td colspan="7"></td>
		<img src="../fff/옷1.jpg" alt=""/>
	   </td>
	</tr>
	<tr>
		<td colspan="7"></td>
		<h2><%=title%></h2>
		</td>
	</tr>
	<tr>
	<%for(char ch : "일월화수목금토".toCharArray()){%>
		<td><%=ch%></td>
	<%}%>
	</tr>
</table>
</body>
</html>