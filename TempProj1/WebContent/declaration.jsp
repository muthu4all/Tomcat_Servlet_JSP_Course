<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Hello World!
	<br />
	<%! int firstvar = 100; %> 
	<jsp:declaration>
   		String SecondVar = "muthu4all.com";
	</jsp:declaration>
	<br>
	<%
		out.println("Value of first variable :: " + firstvar);
	%>
	<br>
	<br>
	<jsp:scriptlet>
		out.println("Value of second variable :: " + SecondVar);
	</jsp:scriptlet>
</body>
</html>