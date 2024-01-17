<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int [] jum = {
		Integer.parseInt(request.getParameter("kor")),
		Integer.parseInt(request.getParameter("eng")),
		Integer.parseInt(request.getParameter("mat"))
	};

	int tot = 0;
	for(int i : jum){
		tot += i;
	}
	int avg = tot/jum.length;
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>studReg</title>
</head>
<body>
<h1>studReg</h1>
	<table border="">
		<tr>
			<td>이름</td>
			<td><%=request.getParameter("pname") %></td>
		</tr>
		<tr>
			<td>국어</td>
			<td><%=request.getParameter("kor") %></td>
		</tr>
		<tr>
			<td>영어</td>
			<td><%=request.getParameter("eng") %></td>
		</tr>
		<tr>
			<td>수학</td>
			<td><%=request.getParameter("mat") %></td>
		</tr>
		<tr>
			<td>총점</td>
			<td><%=tot%></td>
		</tr>
		<tr>
			<td>평균</td>
			<td><%=avg %></td>
		</tr>
	</table>
</body>
</html>