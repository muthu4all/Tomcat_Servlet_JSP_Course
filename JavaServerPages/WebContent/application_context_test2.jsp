<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Application Context Test</title>
</head>
<body>
<%
Integer applicationCouter = (Integer)application.getAttribute("applicationVisit");
	if( applicationCouter ==null || applicationCouter == 0 ){
	 	applicationCouter = 1;
	 	}else{
	 		applicationCouter = applicationCouter+ 1;
	 	}
	application.setAttribute("applicationVisit", applicationCouter);
%>
<h3>Total number of page visit: <%= applicationCouter%></h3>
<br>
<br>
<h3>Servlet Engine Info: <%= application.getServerInfo()%></h3>
<br>
</body>
</html>