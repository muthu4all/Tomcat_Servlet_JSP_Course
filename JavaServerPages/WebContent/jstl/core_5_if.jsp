<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Core tag - If</title>
</head>
<body>

	
		<c:if test="${appCounter >= 10}">
 			<c:out value="Your application is having more hits.... "/>
		</c:if>
		<c:if test="${appCounter < 10}">
 			<c:out value="More hits required."/>
		</c:if>
		

	<c:set var="appCounter" scope="application" value="${appCounter+1}"/> <br>
     Application Counter: <c:out value='${applicationScope.appCounter}' /> <br/>

</body>
</html>