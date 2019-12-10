<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Core tag - Remove result</title>
</head>
<body>
	<c:out value="${name}" default="Name NOT Set"/><br>
	<c:out value="${language}" default="English - Default"/><br>
</body>
</html>