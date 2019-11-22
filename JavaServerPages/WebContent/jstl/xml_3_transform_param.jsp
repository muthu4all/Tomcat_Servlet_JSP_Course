<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>       
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP JSTL - XML Transform</title>
</head>
<body>
		<c:import
      		url="http://localhost:8080/JavaServerPages/jstl/book-template.xsl"
      		var="bookTemplate"/>

       	<c:import
      		url="http://localhost:8080/JavaServerPages/jstl/books.xml"
     	 	var="bookXML"/>
     	 	
     	<x:transform doc="${bookXML}" xslt="${bookTemplate}">
        	<x:param name="tableBGColor" value="#bbbbbb"/>
      		<x:param name="fontColor" value="#000099"/>
        </x:transform>
</body>
</html>