<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Action Include</title>
</head>
<body>
<jsp:include page = "inner.jsp"/>
<%
int i = 100;
out.println("value of i : " +i);
%>

</body>
</html>