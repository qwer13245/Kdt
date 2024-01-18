<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>minor</title>
</head>
<body>
<h1>minor</h1>
<!-- 
미성년자 : 주민번호로 생일 구하는 식, 
만 15세 : 2008년생이 미성년자
-->
<form action="loginReg.jsp">
	이름<input type="text" name = "username"/>
	부모주민번호<input type="text" name = "parentsJumin"/>
	전화<input type="text" name = "tel"/>
	학교<input type="text" name = "school"/>
	<br/>
	<input type="submit" value="다음" />
</form>
</body>
</html>