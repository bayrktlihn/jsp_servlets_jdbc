<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<c:set var="theLocale" value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale }" scope="session"/>

<fmt:setLocale value="${theLocale }"/>
<fmt:setBundle basename="com.bayrktlihn.jsp.tagdemo.i18n.resources.mylabels"/>

<body>
	
	<a href="i18n-messages-test.jsp?theLocale=en_US">English (US)</a>|
	<a href="i18n-messages-test.jsp?theLocale=es_ES">Spanish (ES)</a>|
	<a href="i18n-messages-test.jsp?theLocale=de_DE">German (DE)</a>
	
	<hr>

	<fmt:message key="label.greeting"/><br><br>
	<fmt:message key="label.firstname"/> <i>Alihan</i><br>
	<fmt:message key="label.lastname"/> <i>Bayraktar</i><br><br>
	<fmt:message key="label.welcome"/> <br>
	
	<hr>
	
	Selected locale: ${theLocale }
</body>
</html>