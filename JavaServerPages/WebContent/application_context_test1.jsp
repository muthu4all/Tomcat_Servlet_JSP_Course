<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Application Context Test</title>
</head>
<body>
<%
Integer applicationCouter = (Integer)application.getAttribute("applicationVisit");
	if( applicationCouter ==null || applicationCouter == 0 ){
	 	applicationCouter = 1;
	 	}else{
	 		applicationCouter = applicationCouter+ 1;
	 	}
	application.setAttribute("applicationVisit", applicationCouter);
%>
<h3>Total number of page visit: <%= applicationCouter%></h3>
<br>
<br>
<h3>Servlet Engine Info: <%= application.getServerInfo()%></h3>
<br>
<br>
<h3>Servlet Engine Info: <%= application.getInitParameter("course_name")%></h3>
<br>
<h3>List of Param Names from web.xml: </h3>
<%
	java.util.Enumeration<String> enuParamNames = application.getInitParameterNames();
	while(enuParamNames.hasMoreElements())
	{
	    out.println(enuParamNames.nextElement() + "<br>");
	}
%>
</body>
</html>