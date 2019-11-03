<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 Test for JSP Comment 
      <%-- This text will not be visible in HTML source --%>
      
<br>
<br>
Test for HTML Comment
	
	<!-- This comment will be visible in HTML Source -->
<br>
<br>  

Test for literals. \ will be used to escape. 
<br>
<%="Literal %\> must be escaped"%> 
<br>
This is template text and <\% is not a start of a scriptlet.
<br>
<%= "escaped \' single quote" %>
<br>
<%= "escaped \" double quote" %>https://s3.ap-south-1.amazonaws.com/pm-prod-tournaments/1e0d3c2b-7dcf-4d01-b3d5-000cb67cdefb.jpeg
<br>
<%= "escaped \\ backslash" %>
<br>
<br>  
   
</body>
</html>