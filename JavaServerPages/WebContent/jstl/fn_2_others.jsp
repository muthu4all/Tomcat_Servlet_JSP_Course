<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>String Function - Others</title>
</head>
<body>
	<c:set var="test_string" value="The quick brown fox jumps over the lazy dog"/>

	<%
	String testArr[]={"The", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog"};
	session.setAttribute("testArr", testArr);
	%>
	

	<b>Test String :: The quick brown fox jumps over the lazy dog </b><br>
	
	<hr>
	<b>Test on fn:endsWith </b><br>
	<c:if test="${fn:endsWith(test_string, 'dog')}">  
   		<p>Test string ends with dog<p>  
	</c:if>
	<hr>
	<b>Test on fn:startsWith </b><br>
	<c:if test="${fn:startsWith(test_string, 'The')}">  
   		<p>Test string starts with 'The'<p>  
	</c:if>
	<hr>	  
	<b>Test on fn:indexOf </b><br>
	<p> index of the word 'jumps' : ${fn:indexOf(test_string, 'jumps')}</p>
	<hr>
	<b>Test on fn:join </b><br>
	<p> Join : ${fn:join(testArr, " & ")}</p>
	<hr>
	<b>Test on fn:split </b><br>
	<c:set var="splitted_msg" value="${fn:split(test_string,' ')}"/>
	<c:forEach var="i" begin="0" end="8">
 		splitted_msg[${i}]: ${splitted_msg[i]}<br>
	</c:forEach>
	<hr>
	
	<hr>
	<b>Test on fn:substring() </b><br>
	<p>Substring sample : ${fn:substring(test_string, 10, 25)}</p>
	<hr>
	<hr>
	<b>Test on fn:substringAfter() </b><br>
	<p>Substring sample : ${fn:substringAfter(test_string, "fox")}</p>
	<hr>	
	<hr>
	<b>Test on fn:substringBefore() </b><br>
	<p>Substring sample : ${fn:substringBefore(test_string, "fox")}</p>
	<hr>
	<b>Test on fn:toUpperCase() </b><br>
	<p>Substring sample : ${fn:toUpperCase(test_string)}</p>
	<hr>
	<b>Test on fn:toLowerCase() </b><br>
	<p>Substring sample : ${fn:toLowerCase(test_string)}</p>
	<hr>
	<b>Test on fn:replace() </b><br>
	<p>Substring sample : ${fn:replace(test_string, "fox","dog")}</p>
	<hr>
	
</body>
</html>