<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP - JSTL - Date format</title>
</head>
<body>
<c:set var="now" value="<%=new java.util.Date()%>" />
<hr>
<p>Time: <strong><fmt:formatDate type="time" value="${now}" /></strong></p>
<p>Date: <strong><fmt:formatDate type="date" value="${now}" /></strong></p>
<p>Date & Time: <strong><fmt:formatDate type="both" value="${now}" /></strong></p>
<hr>
<p>Date & Time Long:
<strong>
    <fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${now}" />
</strong></p>
<hr>
<p>Date & Time Medium:
<strong>
    <fmt:formatDate type="both" dateStyle="medium" timeStyle="medium" value="${now}" />
</strong></p>
<hr>
<p>Date & Time Short:
<strong>
    <fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${now}" />
</strong>
</p>
<hr>
<p>Date (dd-MMM-yyyy):
<strong>
    <fmt:formatDate pattern="dd-MMM-yyyy" value="${now}" />
</strong></p>
<hr>
<p>Date (dd-MM-yyyy):
<strong>
    <fmt:formatDate pattern="dd-MM-yyyy" value="${now}" />
</strong></p>


</body>
</html>