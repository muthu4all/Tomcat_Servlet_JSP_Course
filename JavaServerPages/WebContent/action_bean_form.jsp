<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Action Bean Form</title>
</head>
<body>
	<form action="action_bean_result.jsp" method="get">
	<p>User name : <input type="text" name="username" size="20">
	<p>Salary : <input type="text" name="salary" size="20">
	<p>Age Group : <br>	<input type="radio" name="age" value="1">less than 20
					<input type="radio" name="age" value="2">more than 20 and less than 40
					<input type="radio" name="age" value="3">more than 40
	
	<P> <input type="submit" VALUE="Submit">
												
	</form>
</body>
</html>