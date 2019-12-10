<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Action Foward</title>
</head>
<body>
	<jsp:forward page="getdemoresult.jsp">
  		<jsp:param name="customerName" value="Muthukumar"/>
  		<jsp:param name="customerAge" value="37"/>
	</jsp:forward>
</body>
</html>