<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Invalidate Session</title>
</head>
<body>
<%session.invalidate();%>

<br>
	<a href="session_check_coupon.jsp">Check coupon code set in session </a>
	<br>
	<a href="session_input_coupon.jsp">Add new coupon code </a>
	<br>


</body>
</html>