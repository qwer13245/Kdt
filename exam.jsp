<%@page import="java.net.URL"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.nio.file.Files"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exam</title>
</head>
<body>
<h1>exam</h1>
<!-- exam.txt 내용을 출력하세요
총점, 평균 계산하여 출력 -->

<!-- 페이지 경로 -->
<%
	URL url = application.getResource("fff/exam.txt");
%>
<!-- 파일 불러오기 -->
<hr/>
<%
	InputStream is = url.openStream();
	byte [] buff = new byte[is.available()];
	is.read(buff);
	String stud = new String(buff);
	String [] arr = stud.split("[/n]");
	int tot = 0;
 	int avg = 0;
	for(int i = 0; i < arr.length; i++){
		//String [] arr = Integer.parseInt(",");
		
}
	is.close();

%>
<%=stud %>


<!-- 
	exam.txt - 학생들의 총점, 평균을 구해야 함
	학생 1명을 잘라서 출력해보고 나오면 1줄의 학생을 출력해보기
 -->
</body>
</html>