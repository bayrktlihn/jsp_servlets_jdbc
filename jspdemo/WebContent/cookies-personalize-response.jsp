<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirmation</title>
</head>
<body>
	<%
		String favLang = request.getParameter("favoriteLanguage");
		Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);
		
		theCookie.setMaxAge(60*60*24*365);
		
		response.addCookie(theCookie);
	
	%>
	
	Thanks! We set your favorite language to: ${param.favoriteLanguage }
	
	<br><br>
	
	<a href="cookies-homepage.jsp">Return to homepage.</a>
	
	
</body>	
</html>