<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>html input elements sample</title>
</head>
<body>
	<br> Customer Name : <%= request.getParameter("customerName")%>
	<br> Custmer Age :<%= request.getParameter("customerAge")%> 
	<br> Hobbies :
	<% 
	String[] values = request.getParameterValues("hobbies");
		if (values != null) {
			for (int i = 0; i < values.length; i++) {
				out.println("<li>" + values[i] + "</li>");
			}
		}
		%> 
	<br> How many hours do you spend
		on Hobbies? <%= request.getParameter("hobbyduration")%> 
	<br> favorite subject : <%= request.getParameter("subject")%>

	<br> OTP: <%= request.getParameter("otp")%>

	<br> Feedback: <%= request.getParameter("feedback")%>
</body>
</html>