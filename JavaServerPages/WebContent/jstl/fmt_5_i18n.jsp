<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="fav_language" value="${not empty param.fav_language ? param.fav_language : not empty fav_language ? fav_language : pageContext.request.locale}" scope="session" />    
<fmt:setLocale value="${fav_language}" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP - JSTL - Locale</title>
</head>
<body>
<form action="fmt_5_i18n.jsp" method="post">
<fmt:setBundle basename="messages"/>
Language?<select id="fav_language" name="fav_language" onchange="submit()">
                <option value="en" ${fav_language == 'en' ? 'selected' : ''}>English</option>
                <option value="fr" ${fav_language == 'fr' ? 'selected' : ''}>French</option>
                <option value="es" ${fav_language == 'es' ? 'selected' : ''}>Español</option>
            </select> 

<hr>
<h2>
        <fmt:message key="label.welcome" />
    </h2>
</form>

</body>
</html>