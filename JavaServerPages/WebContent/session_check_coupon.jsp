<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Session Details</title>
</head>
<body>
<%
	String coupon_code=(String)session.getAttribute("sess_coupon_code");
	out.println("<br>");
	out.println("User entered the coupon code as : "+coupon_code);
	out.println("<br>");
	out.println("Generated unique session ID : "+ session.getId());
	out.println("<br>");
	out.println("Session created date : "+ new Date(session.getCreationTime()));
	out.println("<br>");
	out.println("Last accessed session time : "+ new Date(session.getLastAccessedTime()));
%>
<br>
	<a href="session_input_coupon.jsp">Add new coupon code </a>
	<br>
	<br>
	<a href="session_invalidate.jsp">Invalidate Session </a>

</body>
</html>