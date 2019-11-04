<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Read Input Elements</title>
</head>
<body>
<h1>Reading Form Data</h1>
<ul>
         <li><p><b>Customer Name : </b>
            <%= request.getParameter("customerName")%>
         </p></li>
         <li><p><b>Customer Age : </b>
            <%= request.getParameter("customerAge")%>
         </p></li>
      </ul>
</body>
</html>