<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginReg</title>
</head>
<body>
<h1>loginReg</h1>
<%

	String username = request.getParameter("username");
	String juminbunho = request.getParameter("juminbunho");
	String membershiptype = request.getParameter("membershiptype");
	
	if("minor".equals(membershiptype)){
		response.sendRedirect("minor.jsp?name="+username+"juminbunho"+juminbunho);
	}else if("adult".equals(membershiptype)){
		response.sendRedirect("adult.jsp?name="+username+"juminbunho"+juminbunho);
	}else{
		response.sendRedirect("foreigner.jsp?name="+username+"juminbunho"+juminbunho);
	}
	
// 	String nextPage = membershiptype;
	
// 	if(membershiptype.equals("minor")){
// 		nextPage = "../index";
// 	}
	
// 	nextPage += ".jsp&username="+URLEncoder.encode(username,"UTF-8");
	
// 	response.sendRedirect(nextPage);
%>
</body>
</html>
