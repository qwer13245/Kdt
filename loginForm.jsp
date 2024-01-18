<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginForm</title>
<!-- 회원기본정보를 입력받아 회원가입 입력창으로 유도하세요
기본정보 - 이름, 주민번호
회원종류 - 미성년자, 성인, 외국인 
1. 미성년자 2. 성인 3. 외국인
미성년자(만 15세 미만) -  이름 , 부모 주민번호, 전화, 학교
성인 - 이름, 전화, 회사
외국인 - 이름, 전화, 국적 -->
</head>
<body>
<h1>loginForm</h1>
<form action="loginReg.jsp" method="get">
<%
	String username = request.getParameter("username");
	String juminbunho = request.getParameter("juminbunho");
	String membershiptype = request.getParameter("membershiptype");
	String minor, adult, foreigner;
	
	if ("minor".equals(membershiptype)) {
        String parentJumin = request.getParameter("parentJumin");
        String phone = request.getParameter("phone");
        String school = request.getParameter("school");
        minor = "부모 주민번호: " + parentJumin + ", 전화번호: " + phone + ", 학교: " + school;
    } else if ("adult".equals(membershiptype)) {
        String phone = request.getParameter("phone");
        String company = request.getParameter("company");
        adult = "전화번호: " + phone + ", 회사: " + company;
    } else if ("foreigner".equals(membershiptype)) {
        String phone = request.getParameter("phone");
        String nationality = request.getParameter("nationality");
        foreigner = "전화번호: " + phone + ", 국적: " + nationality;
    }
%>
	이름<input type="text" name="username" value=<%=username%> /><br/>
	주민번호<input type="text" name="juminbunho" value=<%=juminbunho%> /><br>
	회원종류<input type="checkbox" name="membershiptype" value=<%=membershiptype%> /><br/>
	<select name="membershiptype" id="membershiptype">
            <option value="minor">미성년자</option>
            <option value="adult">성인</option>
            <option value="foreigner">외국인</option>
        </select><br>
		 <br> 
	<br/>
	<input type="submit" value="다음" />
</form>
</body>
</html>