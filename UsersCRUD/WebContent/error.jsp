<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error!!!</title>
</head>
<body>
<hr>
<%@ include file="header.jsp" %>

	 <h1>Error</h1>
        <h2><%=exception.getMessage() %><br/> </h2>
</body>
</html>