<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Attribute Action</title>
</head>
<body>
	<jsp:element name = "myElement">
         <jsp:attribute name = "myElementAttr">
            MyAttribute
         </jsp:attribute>
         
         <jsp:body>
            My XML Body for XML element
         </jsp:body>
      
      </jsp:element>
</body>
</html>