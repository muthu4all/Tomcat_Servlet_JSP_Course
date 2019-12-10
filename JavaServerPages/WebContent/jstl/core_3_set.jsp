<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Core tag - Set</title>
</head>
<body>
	<c:set var="variable1" value="value1" scope="page" />
    <c:set var="variable2" value="value2" scope="request" />
    <c:set var="variable3" value="value3" scope="session" />
    <c:set var="variable4" value="value4" scope="application" />	
	
	
	 variable1: <c:out value='${pageScope.variable1}'/> <br/>
	 variable2: <c:out value='${requestScope.variable2}' /> <br/>
    variable3: <c:out value='${sessionScope.variable3}' /> <br/>
    variable4: <c:out value='${applicationScope.variable4}' /> <br/>
    
	<c:set var="simplevar" value="SimpleValue" />
    Without Scope (Default is page): <c:out value='${simplevar}' /> <br/>

    <c:set var="appCounter" scope="application" value="${appCounter+1}"/> <br>
     Application Counter: <c:out value='${applicationScope.appCounter}' /> <br/>    
    
</body>
</html>