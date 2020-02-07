<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Training Portal</title>

<%
	String favLang = "Java";

	Cookie[] theCookies = request.getCookies();

	if (theCookies != null) {
		for (Cookie tempCookie : theCookies) {
			if ("myApp.favoriteLanguage".equals(tempCookie.getName())) {
				favLang = tempCookie.getValue();
				break;
			}
		}
	}
%>

</head>
<body>

<h4>New Books for <%=favLang %></h4>

<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>	
</ul>


<h4>Latest News reports for <%=favLang %></h4>

<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>	
</ul>

<h4>Hot jobs for <%=favLang %></h4>

<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>	
</ul>

<hr>
<a href="cookies-personalize-form.jsp">Personalize this page</a>

</body>
</html>