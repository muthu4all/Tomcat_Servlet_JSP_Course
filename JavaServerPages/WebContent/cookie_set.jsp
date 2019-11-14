<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
	Cookie my_name = new Cookie("my_name",request.getParameter("my_name"));
	Cookie my_language = new Cookie("my_language",request.getParameter("my_language"));
	
	my_name.setMaxAge(60*60*24);
	my_language.setMaxAge(60*60*24);
	
	response.addCookie( my_name );
	response.addCookie( my_language );
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set cookie Example</title>
</head>
<body>
<b>Cookie is set.</b>

</body>
</html>