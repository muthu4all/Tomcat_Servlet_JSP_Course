<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Core tag - For</title>
</head>
<body>

		 <form action="core_7_foreach.jsp" method="POST">
             Select the fruits you like: <br/>
             Mango<input type="checkbox" name="fruits" value="Mango"/><br/>
             Orange<input type="checkbox" name="fruits" value="Orange"/><br/>
             Banana<input type="checkbox" name="fruits" value="Banana"/><br/>
             Cherry<input type="checkbox" name="fruits" value="Cherry"/><br/>
             Plum<input type="checkbox" name="fruits" value="Plum"/><br/>
             Apple<input type="checkbox" name="fruits" value="Apple"/><br/>
             Berry<input type="checkbox" name="fruits" value="Berry"/><br/>
             Figs<input type="checkbox" name="fruits" value="Figs"/><br/>
          <input type="submit" value="Submit"/>
   </form>

	<br/>
  <br/>
   Fruits Selected ::
	
	<ol>
		<c:forEach var="fruit" items="${paramValues.fruits}">
			<li><c:out value="${fruit}"/></li>
		</c:forEach>
	</ol>

</body>
</html>