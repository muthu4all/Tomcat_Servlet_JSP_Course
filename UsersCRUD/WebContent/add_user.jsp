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
<form method="post" name="addUserForm" action="insert_user">
<%@ include file="header.jsp" %>
<p>Add a User</p>
<table>
	<tr>
		<td>First Name</td>
		<td><input type="text" name="firstname" /></td>
	</tr>
	<tr>
		<td>Last Name</td>
		<td><input type="text" name="lastname" /></td>
	</tr>
	<tr>
		<td>Age</td>
		<td>
		<select name='age'>
		<c:forEach begin="15" end="99" var="i">
 			<option value="${i}">${i}</option>
			</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<td>Position</td>
		<td><input type="text" name="position" /></td>
	</tr>	
	<tr>
        <td colspan="2" align="center">
            <input type="submit" value="Save" />
        </td>
    </tr>
	
</table>

</form>
</body>
</html>