<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP JSTL - XML Parse and For Each</title>
</head>
<body>
<c:import
      url="http://localhost:8080/JavaServerPages/jstl/books.xml" var="booksXML"/>

<x:parse var="booksdoc" xml="${booksXML}" />

<table border="1">
      	<tr>
    		<th>Author</th>
    		<th>Title</th>
    		<th>Genre</th>
    		<th>Price</th>
    		<th>Publish Date</th>

  		</tr>
  		<x:forEach var="book" select="$booksdoc/books/book">
        <tr>       
      		<td><x:out select="author" /></td>
         	<td><x:out select="title" /></td>
      		<td><x:out select="genre" /></td>
      		<td><x:out select="price" /></td>
          	<td><x:out select="publish_date"/></td>                       
        </tr>       
   </x:forEach>
</table>
</body>
</html>