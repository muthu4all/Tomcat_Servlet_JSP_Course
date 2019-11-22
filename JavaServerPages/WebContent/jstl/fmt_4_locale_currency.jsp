<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP - JSTL - Locale - Currency</title>
</head>
<body>
<fmt:setLocale value="en_US"/>
    <fmt:formatNumber value="353.123" type="CURRENCY" minFractionDigits="3"></fmt:formatNumber>
    <br/>
    <hr>
    <!-- Setting Locale to UK -->
    <fmt:setLocale value="en_GB"/>
    <fmt:formatNumber value="353.123" type="CURRENCY" minFractionDigits="3"></fmt:formatNumber>
  <br/>
  <hr>
  <!-- Setting Locale to India -->
    <fmt:setLocale value="en_IN"/>
    <fmt:formatNumber value="353.123" type="CURRENCY" minFractionDigits="3"></fmt:formatNumber>
    <br>
    <hr>
</body>
</html>