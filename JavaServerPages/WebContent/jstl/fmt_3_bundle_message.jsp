<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP - JSTL - Bundle - messages</title>
</head>
<body>
<fmt:setLocale value="fr"/>
<fmt:setBundle basename="messages"/>
	<h2>
        <fmt:message key="label.welcome" />
    </h2>
</body>
</html>