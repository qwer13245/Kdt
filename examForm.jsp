<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>examForm</title>
</head>
<body>
<form action="studReg.jsp" method="post">
	<table border="">
		<tr>
			<td>이름</td><td>국어</td><td>영어</td><td>수학</td>
		</tr>
<% for(int i = 0; i<5 ; i++) {%>		
		<tr>
			<td><input type="text" name="pname" /></td>
			<td><input type="text" name="kor" /></td>
			<td><input type="text" name="eng" /></td>
			<td><input type="text" name="mat" /></td>
		</tr>
<% } %>		
		<tr>
			<td colspan="4" align="center">
				<input type="submit" value="계산" />
			</td>
		</tr>
	</table>
</form>
</body>
</html>