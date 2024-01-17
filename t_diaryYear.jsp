<%@page import="java.util.HashMap"%>
<%@page import="basic_p.DiaryMM"%>
<%@page import="basic_p.DiaryDD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>diaryYear</title>
<style>
	img{
		width: 300px;
		height: 200px;
	}
	.now{
		background-color: #ff0;
	}
</style>
</head>
<body>
<h1>diaryYear</h1>
<%
	int year = 2024;

	HashMap<String, String>spec = new HashMap();
	spec.put("1_1","새해");
	spec.put("3_1","삼일절");
	spec.put("5_5","어린이날");
	spec.put("2_9","설");
	spec.put("2_10","-");
	spec.put("2_11","날");
	spec.put("2_12","대체");
	spec.put("4_10","선거일");
	spec.put("5_15","석가탄신일");
	spec.put("6_6","건우축하");

	char [] dayArr = "일월화수목금토".toCharArray();
	String [] imgs = {
			"child_1.jpg","child_2.jpg","child_3.jpg","child_4.jpg",
			"son_1.jpg","son_2.jpg","son_3.jpg","son_4.jpg",
			"balloon/01.png","balloon/02.png","balloon/03.png","balloon/04.png"};
	for(int m = 0; m < imgs.length; m++){
		DiaryMM dmm = new DiaryMM(year, m, spec);
	
%>

<table border="">
	<tr>
		<td colspan="7">
			<img src="../fff/<%=imgs[m] %>" alt="" />
		</td>
	</tr>
	<tr>
		<td colspan="7">
			<h2><%=dmm.getTitle() %></h2>
		</td>
	</tr>
	<tr>
	<% for(char ch : dayArr) {%>
		<td><%=ch %></td>
	<%} %>	
	</tr>
	<tr>
	<%
		for(DiaryDD day : dmm.days){
			String nowCSS = "";
			
			if(day.today){
				nowCSS = "class = 'now'";
			}	
	%>
		<td  <%=nowCSS %>>
		<%=day.dateStr() %><br/>
		<%=day.spec %>
		</td>
	<% 
		if(day.day==7){ %>
			</tr><tr>
	<%	}} %>
	</tr>
</table>
<% } %>
</body>
</html>