<%@page import="com.bayrktlihn.jsp.tagdemo.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%
	List<Student> data = new ArrayList<Student>();

	data.add(new Student("alihan", "bayraktar", true));
	data.add(new Student("mimar", "aslan", false));
	data.add(new Student("levent", "erguder", false));
	data.add(new Student("ferhat", "aykan", false));

	pageContext.setAttribute("myStudents", data);
%>

<body>

	<table border = "1">
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Gold Customer</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="tempStudent" items="${myStudents }">
			<tr>
				<td>${tempStudent.firstName }</td>
				<td>${tempStudent.lastName }</td>
				<td>${tempStudent.goldCustomer }</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>



</body>
</html>