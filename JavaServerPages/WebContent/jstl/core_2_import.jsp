<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Core tag - Import</title>
</head>
<body>
<c:out value="Welcome to JSTL Tutorial"/>
<br>
<hr>
<c:import var = "google_import" url = "https://www.google.com"/>
<c:out value = "${google_import}"/>
</body>
</html>