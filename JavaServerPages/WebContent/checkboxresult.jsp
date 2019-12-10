<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkbox Input Element</title>
</head>
<body>
<h1>Sample to read checkbox</h1>
    	<% 
    	String[] values = request.getParameterValues("hobbies");
    		if (values != null) {
    			out.println("Selected Hobbies...");
    			for (int i = 0; i < values.length; i++) {
    				out.println("<li>" + values[i] + "</li>");
    			}
    		}
		%>
</body>
</html>