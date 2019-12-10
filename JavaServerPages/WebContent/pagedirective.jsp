<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date" %>
<%@ page info="Should get this on getServletInfo()" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sample for Page Directive</title>
</head>
<body>
	<a>Data and Time now is : </a>
	<%= new java.util.Date() %>
	<br>
	Get Servlet Info : <%=getServletInfo() %>
	
</body>
</html>