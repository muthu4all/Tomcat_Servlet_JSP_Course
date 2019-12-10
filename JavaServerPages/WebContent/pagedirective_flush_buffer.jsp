<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page autoFlush="false" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Demo on Flush and Buffer</title>
</head>
<body>
	<% for (int i=0; i<20000; i++) { %>A<% } %>
 
<%
   try {
      response.sendRedirect("pagedirective_flush_buffer_result.jsp");
   }
   catch(Exception e) {
      e.printStackTrace();
   }
%>
</body>
</html>