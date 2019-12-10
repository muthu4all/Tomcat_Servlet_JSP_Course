<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Core tag - Catch</title>
</head>
<body>

		<c:catch var ="exceptioninfo">
  		  <% int result = 1000/0;
  			out.println(result);%>
		</c:catch>
		<c:if test = "${exceptioninfo != null}">  <p>Got Exception. Exception is: ${exceptioninfo}</p>
		</c:if>
</body>
</html>