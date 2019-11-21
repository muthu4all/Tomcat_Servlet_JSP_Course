<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>String Function Contains</title>
</head>
<body>
	<c:set var="MyString" value="JSP will be foundation for java web applications"/> 
	
	<c:choose>
	<c:when test="${fn:contains(MyString, 'java1')}">
        'java' found 
        <br />
    </c:when>
  
    <c:otherwise>
        'java' not found 
        <br />
    </c:otherwise> 
</c:choose> 
<br>
<br>
 <c:choose>

	<c:when test="${fn:containsIgnoreCase(MyString, 'jsp')}">
        'jsp' found with Ignorecase 
        <br />
    </c:when>   
    <c:otherwise>
        'jsp' not found at all 
        <br />
    </c:otherwise> 
    </c:choose>
<br>

<c:set var="string_with_xml" value="With xml tag - <xyz>I am betweeen xml tags</xyz>"/>
<hr>  
<p>Without escapeXml() Function:</p>  
<p>string_with_xml : ${string_with_xml}</p> 
<hr>
<p>With escapeXml() Function:</p>  
<p>string_with_xml : ${fn:escapeXml(string_with_xml)}</p> 


</body>
</html>