<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
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
	.now{
	background-color : #ff0
	}
</style>
</head>
<body>
<h1>diary</h1>
<%
	Calendar today = Calendar.getInstance();
	int now = today.get(Calendar.DATE);
	
	String title = new SimpleDateFormat("yyyy년 MM월").format(today.getTime());
	
	today.set(Calendar.DATE, 1);
	int first = today.get(Calendar.DAY_OF_WEEK);
	int last = today.getActualMaximum(Calendar.DATE);
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
	<%
	for(int i = 1; i < first; i++){
		out.println("<td></td>");
	}
	%>
	<% for(char ch : "일월화수목금토".toCharArray()){%>
		<td><%=ch%></td>
	<%}%>
	</tr>
	<tr>
	<% for(int i = 1; i <= last; i++) {
		today.set(Calendar.DATE, i);
		String nowCSS = "";
		
		if(i == now){
			nowCSS = "class = 'now'";
		}
	%>
		<td <%=nowCSS %>><%=i %></td>
	   
	<%
	if(today.get(Calendar.DAY_OF_WEEK)==7){%>
			</tr><tr>
		
	<% }} %>
	</tr>
</table>
</body>
</html>