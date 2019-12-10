<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Session Test 2</title>
</head>
<body>
<form action="session_test2.jsp">
		Add a New Item: <input type="text" name="singleItem" />
 		
		<input type="submit" name="action" value="Submit" />
</form>

<%
	List<String> items = (List<String>) session.getAttribute("sessionToDoList");

	if(items==null){
		items = new ArrayList<String>();
    	session.setAttribute("sessionToDoList", items);
	}
	String theItem = request.getParameter("singleItem");
	if(theItem!=null){
		items.add(theItem);
	}
	
%>

<hr>
<hr>
<b>To do items: </b><br/>
<ol>
<%
		   for(String temp: items){
		   out.println("<li>"+temp+"</li>");
		   }
		%>
</ol>
<hr>
<hr>


</body>
</html>