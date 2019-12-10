<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP - JSTL - Number format</title>
</head>
<body>
	<c:set var="mainBalance" value="2899000.254" />
	Input Number : <b><c:out value='${mainBalance}'/></b>

      <p>as it is: <b><fmt:formatNumber value="${mainBalance}" type="currency"/></b></p>
      <p>no grouping:
      	<b><fmt:formatNumber type="number" groupingUsed="false" value="${mainBalance}" /></b>
      </p>
      <p>max. fraction digits 1:
      	<b><fmt:formatNumber type="number" maxFractionDigits="1" value="${mainBalance}" /></b>
      </p>
      <p>percent format:
      	<b><fmt:formatNumber type="percent" value="${mainBalance}" /></b>
      </p>
      <p>Scientific pattern ###.###E0:
      	<b><fmt:formatNumber type="number" pattern="###.###E0" value="${mainBalance}" /></b>
      </p>
      <p>Account Balance in India :
      	<fmt:setLocale value="en_IN"/>
      	<b><fmt:formatNumber value="${mainBalance}" type="currency"/></b>
      </p>
      <p>Account Balance in US :
       	<fmt:setLocale value="en_US"/>
      	<b><fmt:formatNumber value="${mainBalance}" type="currency"/></b>
      </p>	
</body>
</html>