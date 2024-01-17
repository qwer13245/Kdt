<%@page import="java.util.Arrays"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request</title>
</head>
<body>
<h1>request</h1>
<%
	HttpServletRequest hsr = request;
	ServletRequest hsr2 = pageContext.getRequest();

	out.println(request+"<br/>");
	out.println(hsr+"<br/>");
	out.println(hsr2+"<br/>");
	out.println(request.getRemoteAddr()+"<br/>");
	out.println(request.getRemoteHost()+"<br/>");
	out.println(request.getRemoteUser()+"<br/>");
	out.println(request.getProtocol()+"<br/>");
	out.println(request.getServerName()+"<br/>");
	out.println(request.getMethod()+"<br/>");
	out.println(request.getContentType()+"<br/>");
	out.println(request.getContentLength()+"<br/>");
	out.println(request.getRequestURL()+"<br/>");
	out.println(request.getRequestURI() + "<br/>");
	out.println(request.getContextPath() + "<br/>");
	out.println(request.getCharacterEncoding() + "<br/>");
	out.println(request.getHeader("referer")+ "<br/>");
	out.println(request.getHeader("User-Agent")+ "<br/>");//클라이언트가 접속한 브라우저 정보
	
	Enumeration en = request.getHeaderNames();
	out.println("request.getHeaderNames() -------------<br/>");
	while(en.hasMoreElements()){
		out.println(en.nextElement()+ "<br/>");
	}
	
	en = request.getParameterNames();
	out.println("request.getParameterNames() -------------<br/>");
	while(en.hasMoreElements()){
		out.println(en.nextElement()+ "<br/>");
	}
	
	out.println("-------------<br/>");
	//request/request.jsp?no=1234&pname=펜이없어&marriage=true&hobby=movie&hobby=cook
	//http://localhost:8080/jspProj/request/request.jsp?no=1234&pname=%ED%8E%9C%EC%9D%B4%EC%97%86%EC%96%B4&marriage=true&hobby=movie&hobby=cook
	//no=1234&pname=%ED%8E%9C%EC%9D%B4%EC%97%86%EC%96%B4&marriage=true&hobby=movie&hobby=cook
	// encoding : %ED%8E%9C   %EC%9D%B4   %EC%97%86  %EC%96%B4  UTF-8
	// decoding :     펜          이           없          어
	String enTTT = URLEncoder.encode("펜이없어", "UTF-8");
	out.println(enTTT+ "<br/>");
	out.println(request.getParameter("no")+ "<br/>");
	out.println(request.getParameter("pname")+ "<br/>");
	out.println(request.getParameter("marriage")+ "<br/>");
	out.println(request.getParameter("hobby")+ "<br/>");
	out.println(request.getParameter("no")+100+ "<br/>");
	String [] hobbys = request.getParameterValues("hobby");
	out.println(Arrays.toString(hobbys)+"<br/>");
%>
</body>
</html>