<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext</title>
</head>
<body>
<h1>pageContext</h1>
<%
	PageContext pc = pageContext;
%>
<%=page %><br/>
<%=pageContext.getPage() %><br/>
<hr />
<%=request %><br/>
<%=pageContext.getRequest() %><br/>
<hr />
<%=response %><br/>
<%=pageContext.getResponse() %><br/>
<hr />
<%=session %><br/>
<%=pageContext.getSession() %><br/>
<hr />
<%=application %><br/>
<%=pageContext.getServletContext() %><br/>
<hr />
<%=out %><br/>
<%=pageContext.getOut() %><br/>
<hr />
<%=config %><br/>
<%=pageContext.getServletConfig() %><br/>
<hr />
<%=exception %><br/>
<%=pageContext.getException() %><br/>
<hr />
<%=pc %><br/>
<%=pageContext %><br/>
<hr />
</body>
</html>