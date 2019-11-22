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
     
     <b>First Book Title :: </b><x:out select ="$booksdoc/books/book[1]/title"/><br>
      <b>First Book Price :: </b><x:out select="$booksdoc/books/book[1]/price"/> 
      <hr>
      
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
        	<x:choose>
            <x:when select="price>10">   
      			<td><x:out select="author" /></td>
         		<td><b><x:out select="title" /></b></td>
      			<td><x:out select="genre" /></td>
      			<td><b><x:out select="price" /></b></td>
          		<td><x:out select="publish_date"/></td>
          	</x:when>
          	<x:otherwise>
      			<td><x:out select="author" /></td>
         		<td><x:out select="title" /></td>
      			<td><x:out select="genre" /></td>
      			<td><x:out select="price" /></td>
          		<td><x:out select="publish_date"/></td>

          	</x:otherwise>
         </x:choose>                       
        </tr>       
   </x:forEach>
  </table>
</body>
</html>