<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set session and cookie</title>
</head>
<body>
Setting session param 'mylanguage' as 'JSP':
<%  
session.setAttribute("mylanguage","JSP");  
%> 
<br>
Setting a cookie 'location' as 'chennai' :
<%  
Cookie loc =new Cookie("location","Chennai");  
response.addCookie(loc);  
%>
<br>

Setting application scope variable 'app_name' as 'EL Demo' :
<%  
application.setAttribute("app_name", "EL Demo");
%>
<br>
<a href="el_view_session_cookie.jsp">See the cookie and session</a> 
</body>
</html>