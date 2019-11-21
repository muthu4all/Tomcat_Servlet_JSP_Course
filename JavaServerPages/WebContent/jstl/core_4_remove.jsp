<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Core tag - remove</title>
</head>
<body>

	<c:set var="name" scope="session" value="Kumar"/>
	<c:set var="language" scope="session" value="Spanish"/>
	<c:remove var="language"/>
	<a href="core_4_remove_result.jsp">check attributes</a>

</body>
</html>