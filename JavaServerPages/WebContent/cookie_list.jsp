<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of cookies in this page</title>
</head>
<body>
<h1>Welcome</h1>
<%
	Cookie mycookie = null;
	Cookie[] mycookies = null;
	
	mycookies = request.getCookies();
	
	if( mycookies != null ) {
        out.println("<h2> Found the following list of Cookies</h2>");
        
        for (int i = 0; i < mycookies.length; i++) {
        	mycookie = mycookies[i];
                       
           out.print("Name : " + mycookie.getName( ) + ",  ");
           out.print("Value: " + mycookie.getValue( )+" <br/>");
        }
     } else {
        out.println(
        "<h2>No cookies :-((( </h2>");
     }


%>
</body>
</html>