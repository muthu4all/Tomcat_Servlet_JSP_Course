<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Core tag - Choose - When - Otherwise Sample</title>
</head>
<body>
<c:choose>
	   <c:when test="${param.colorField == 'red'}">
         <p style="color:red;font-size:50px;">Selected red</p>
      </c:when>
	     <c:when test="${param.colorField == 'blue'}">
       <p style="color:blue;font-size:50px;">Selected blue</p>
    </c:when>
    <c:when test="${param.colorField == 'green'}">
        <p style="color:green;font-size:50px;">Selected green</p>
    </c:when>
    <c:when test="${param.colorField == 'yellow'}">
      <p style="color:yellow;font-size:50px;">Selected yellow</p>
     </c:when>
       <c:otherwise>
    <p style="color:black;font-size:50px;">Nothing Selected. Default</p>
 	 </c:otherwise>
</c:choose>

<br/>
     <form action="core_6_choose_when.jsp" method="POST">
           Select a color and submit<br/>
           red <input type="radio" name="colorField" value="red"/><br/>
           blue <input type="radio" name="colorField" value="blue"/><br/>
           green <input type="radio" name="colorField" value="green"/><br/>
           yellow <input type="radio" name="colorField" value="yellow"/><br/>
        <input type="submit" value="submit"/>
    </form><br> 

</body>
</html>