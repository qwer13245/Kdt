<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>examFormEx</title>
</head>
<body>
<h1>examFormEx</h1>
</body>
</html>

<!-- 	
5명의 정보를 받아서 뿌려줘야 함
계산 버튼을 누르면 5명의 입력정보를 받아서 뿌려주게끔 해야함
지금 작성한거는 1명의 정보만 출력됨
=>form 태그 메소드를 post로 따로 빼서 get으로 받아보세요.
등급 구하는 식 int rank = 1;(1등으로 초기값 설정)
reset 버튼 누르면 저장된 값을 DB에서 가져와야 함
action="값을 가져올 주소" method="post/get"
request.getParameterValue()
java 기본 문법 쭉 훑어보세요(java/javascript/html/jsp)
 -->
 <form action="studExReg.jsp" method="post">
	<table border="">
		<tr>
			<td>이름</td><td>국어</td><td>영어</td><td>수학</td><td>총점</td><td>평균</td>
		</tr>
<% for(int i = 0; i < 1; i++){ %>
	<tr>
		<td><input type="text" name="username" /></td>
		<td><input type="text" name="kor" /></td>
		<td><input type="text" name="eng" /></td>
		<td><input type="text" name="math" /></td>
		<td><input type="text" name="tot" /></td>
		<td><input type="text" name="avg" /></td>
	</tr>
<%}%>
	<tr>
		<td colspan="4" align="center">
			<input type="submit" value="결과" />
		</td>
	</tr>
</table>
	<table border="">
	<tr>
		<td>이름</td><td>국어</td><td>영어</td><td>수학</td><td>총점</td><td>평균</td>
	</tr>
<% for(int i = 0; i < 1; i++){ %>
	<tr>
		<td><input type="text" name="username" /></td>
		<td><input type="text" name="kor" /></td>
		<td><input type="text" name="eng" /></td>
		<td><input type="text" name="math" /></td>
		<td><input type="text" name="tot" /></td>
		<td><input type="text" name="avg" /></td>
	</tr>
<%}%>
	<tr>
		<td colspan="4" align="center">
			<input type="submit" value="결과" />
		</td>
	</tr>
</table>
	<table border="">
	<tr>
		<td>이름</td><td>국어</td><td>영어</td><td>수학</td><td>총점</td><td>평균</td>
	</tr>
<% for(int i = 0; i < 1; i++){%>
	<tr>
		<td><input type="text" name="username" /></td>
		<td><input type="text" name="kor" /></td>
		<td><input type="text" name="eng" /></td>
		<td><input type="text" name="math" /></td>
		<td><input type="text" name="tot" /></td>
		<td><input type="text" name="avg" /></td>
	</tr>
<%}%>
	<tr>
		<td colspan="4" align="center">
			<input type="submit" value="결과" />
		</td>
	</tr>
</table>
	<table border="">
		<tr>
			<td>이름</td><td>국어</td><td>영어</td><td>수학</td><td>총점</td><td>평균</td>
		</tr>
<% for(int i = 0; i < 1; i++){ %>
	<tr>
		<td><input type="text" name="username" /></td>
		<td><input type="text" name="kor" /></td>
		<td><input type="text" name="eng" /></td>
		<td><input type="text" name="math" /></td>
		<td><input type="text" name="tot" /></td>
		<td><input type="text" name="avg" /></td>
	</tr>
<%}%>
	<tr>
		<td colspan="4" align="center">
			<input type="submit" value="결과" />
		</td>
	</tr>
</table>
	<table border="">
		<tr>
			<td>이름</td><td>국어</td><td>영어</td><td>수학</td><td>총점</td><td>평균</td>
		</tr>
<% for(int i = 0; i < 1; i++){ %>
	<tr>
		<td><input type="text" name="username" /></td>
		<td><input type="text" name="kor" /></td>
		<td><input type="text" name="eng" /></td>
		<td><input type="text" name="math" /></td>
		<td><input type="text" name="tot" /></td>
		<td><input type="text" name="avg" /></td>
	</tr>
<%}%>
	<tr>
		<td colspan="4" align="center">
			<input type="submit" value="결과" />
		</td>
	  </tr>
  </table>
</form>