<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pname = request.getParameter("pname");
	String kind = request.getParameter("kind");
	
	
	String goPage = kind;
	
	if(kind.equals("coding")){
		goPage = "../index";
	}
	
	goPage += ".jsp&pname="+URLEncoder.encode(pname,"UTF-8");

	response.sendRedirect(goPage);
	
	
	 /////회원기본정보를 입력받아 회원가입 입력창으로 유도하세요

	 //// 기본정보 - 이름, 주민번호

	 ///  회원종류 - 미성년자, 성인, 외국인

	 ///  미성년자(만 15세 미만) -  이름 , 부모 주민번호, 전화, 학교

	 ///  성인 - 이름, 전화, 회사

	 ///  외국인 - 이름, 전화, 국적
%>