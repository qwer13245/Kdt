<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="8kb"  autoFlush="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out</title>
</head>
<body>
<h1>out</h1>

버퍼크기,    버퍼남은 양 <br/>
<%=out.getBufferSize() %>,<%=out.getRemaining() %><br/>
나는 무너, 꿈을 꾸는 무너<br/>
<%=out.getBufferSize() %>,<%=out.getRemaining() %><br/>
<%
	out.println("아기상어 <br/>");
	out.println("엄마상어 <br/>");
	out.println("아빠상어 <br/>");
	JspWriter jw = out;
	JspWriter jw2 = pageContext.getOut();
%>
<%=out.getBufferSize() %>,<%=out.getRemaining() %><br/>
<%="할머니 상어<br/>할아버지 상어<br/>" %>
<%=out.getBufferSize() %>,<%=out.getRemaining() %><br/>
<%=jw.getBufferSize() %>,<%=jw.getRemaining() %><br/>
<%=jw2.getBufferSize() %>,<%=jw2.getRemaining() %><br/>
<% 
//out.flush();  //버퍼 내용 전송후 버퍼 갱신
out.clear();	//버퍼 내용 모두 지움 버퍼 갱신
%>
<%=out.getBufferSize() %>,<%=out.getRemaining() %><br/>
야야이 야아 야 야이이 야
</body>
</html>