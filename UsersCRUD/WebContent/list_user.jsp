<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Users</title>
</head>
<body>
<%@ include file="header.jsp" %>

<div align="center">
	<table border="1" cellpadding="5">
	<caption><h2>List of Users</h2></caption>
	<tr>
		<th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>
        <th>Profession</th>
        <th>Edit / Delete</th>
        
	</tr>
	 <c:forEach var="user" items="${userList}">
	 <tr>
           <td><c:out value="${user.userid}" /></td>
           <td><c:out value="${user.firstname}" /></td>
           <td><c:out value="${user.lastname}" /></td>
           <td><c:out value="${user.age}" /></td>
           <td><c:out value="${user.position}" /></td>
           <td>
           	<a href="edit_user_form?userid=<c:out value='${user.userid}' />">Edit User</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
           	<a href="delete_user?userid=<c:out value='${user.userid}' />">Delete User</a>  
           </td>

	 
	 </tr>
	 
	 </c:forEach>
	
	</table>

</div>

</body>
</html>