<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Today is <%= (new java.util.Date())%>

<br>
<br>

Another example of simple expression 34 * 32 is <%= 34 * 32 %>

<br>
<br>

Result of jsp expression tag :  
<jsp:expression>
   34 * 32
</jsp:expression>
</body>
</html>