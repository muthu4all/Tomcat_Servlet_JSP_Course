<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View session and cookie</title>
</head>
<body>
Session value of :: ${ sessionScope.mylanguage }
<br>
<hr>
<br>
Cookie value of 'location' :: ${cookie.location.value} 
<br>
<hr>
<br>
Application value of 'app_name' ::  ${applicationScope.app_name}
<br>
</body>
</html>