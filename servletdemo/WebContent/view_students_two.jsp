<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Student Table Demo</h2>
	<hr>
	<br>
	
	<table border="1">
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${student_list }" var="tempStudent">
				<tr>
					<td>${tempStudent.firstName }</td>
					<td>${tempStudent.lastName }</td>
					<td>${tempStudent.email }</td>
				</tr>
			</c:forEach>
		
		</tbody>
	
	</table>
	
	
	
</body>
</html>