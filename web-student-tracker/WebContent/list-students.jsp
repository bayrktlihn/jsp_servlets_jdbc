<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.bayrktlihn.web.jdbc.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Tracker App</title>

<link type="text/css" rel="stylesheet" href="css/style.css">
</head>


<%
	List<Student> theStudents = (List<Student>) request.getAttribute("STUDENT_LIST");
%>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>FooBar University</h2>
		</div>
	</div>

	<div id="container">
		<div id="content">
		
			<input type="button" class="add-student-button" value="Add Student" onclick="window.location.href='add-student-form.jsp; return false;'">
					
			<table>
				<thead>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Action</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${STUDENT_LIST }" var="tempStudent">
						
						<c:url var="updateLink" value="/StudentControllerServlet">
							<c:param name="studentId" value="${tempStudent.id }"></c:param>
							<c:param name="command" value="LOAD"></c:param>
						</c:url>
						
						<c:url var="deleteLink" value="/StudentControllerServlet">
							<c:param name="studentId" value="${tempStudent.id }"/>
							<c:param name="command" value="DELETE"/>
						</c:url>
							
						<tr>
							<td>${tempStudent.firstName }</td>
							<td>${tempStudent.lastName }</td>
							<td>${tempStudent.email }</td>
							<td>
							
							<a href="${updateLink }">Update</a>
							|
							<a href="${deleteLink}"
							onclick="if (!(confirm('Are you sure you want to delete this student?'))) return false">
							Delete</a>	
							
							</td>

						</tr>

					</c:forEach>

				</tbody>

			</table>
		</div>
	</div>


</body>
</html>