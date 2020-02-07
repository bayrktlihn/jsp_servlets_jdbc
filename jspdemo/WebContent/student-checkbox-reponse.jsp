<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Confirmation Title</title>
</head>
<body>
	The student is confirmed: ${param.firstName } ${param.lastName }
	
	<br><br>
	
	Favorite Programming Languages:<br>
	
	<ul>
		<%
			String [] langs = 	request.getParameterValues("favoriteLanguage");
		
			for(String lang : langs){
				out.print("<li>"+lang+"</li>");
			}
		%>
	</ul>
</body>
</html>