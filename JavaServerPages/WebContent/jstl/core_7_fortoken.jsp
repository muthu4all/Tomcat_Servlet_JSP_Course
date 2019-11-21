<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Core tag - For</title>
</head>
<body>
	<c:set var="fortokeninput" value="different:delimiter;used|here;Totally|Six" scope="page" />

		<c:forTokens items="${pageScope.fortokeninput}" delims=":;|" 
			var="currentItem" varStatus="loopStatus">
				Items # <c:out value="${loopStatus.count}" /> 
				is <c:out value="${currentItem}" /> <br />
		</c:forTokens>
	
</body>
</html>