<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Cookies</title>
</head>
<body>
		<b>Cookie Details</b><br>
         
         <P> Name set as :: ${cookie['my_name'].getValue()}
         <P> Preferred Language set as :: ${cookie['my_language'].getValue()}
</body>
</html>