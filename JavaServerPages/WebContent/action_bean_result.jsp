<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="myBean" scope="request" class="com.muthu4all.MyBean"/> 
<jsp:setProperty property="*" name="myBean"/>        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Action Bean Result</title>
</head>
<body>
	<H2>Bean Result</H2>
	<P> User name :<jsp:getProperty name="myBean" property="username"/>
    <P> Salary : <jsp:getProperty name="myBean" property="salary"/>
    <P> Age Group : <jsp:getProperty name="myBean" property="age"/>
</body>
</html>