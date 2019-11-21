<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Core tag - URL and Param</title>
</head>
<body>
		<c:url var="toURL" value="core_8_url_param.jsp">
        	<c:param name="myparam1" value="customvalue1"/>
          	<c:param name="myparam2" value="customvalue2"/>
       </c:url>
             <a href="<c:out value="${toURL}"/>">
         This link will send two params with the link</a>
         <br>
         <br>
     myparam1 :: <c:out value="${param.myparam1}"/><br/>
      myparam2 :: <c:out value="${param.myparam2}"/>         
</body>
</html>