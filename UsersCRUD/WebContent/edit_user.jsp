<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add User</title>
</head>
<body>
<form method="POST" action='update_user' name="editUserForm">
<hr>
<%@ include file="header.jsp" %>

<p>Edit User</p>
	<input type="hidden" name="userid" value="<c:out value='${user.userid}' />" />
	<table>
	<tr>
		<td>First Name</td>
		<td><input type="text" name="firstname" value="<c:out value='${user.firstname}' />" /></td>
	</tr>
	<tr>
		<td>Last Name</td>
		<td><input type="text" name="lastname" value="<c:out value='${user.lastname}' />"/></td>
	</tr>
	<tr>
		<td>Age</td>
		<td>
		<select name='age'>
		<c:forEach begin="15" end="99" var="i">
 			<option value="${i}" <c:if test ="${user.age == i}">selected</c:if>>${i}</option>
			</c:forEach>
		</select>
		</td>
	</tr>
	<tr>
		<td>Position</td>
		<td><input type="text" name="position" value="<c:out value='${user.position}' />"/></td>
	</tr>
	    <td colspan="2" align="center">
            <input type="submit" value="Save" />
        </td>		
	</table>
</form>
</body>
</html>