<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration Form</title>
</head>
<body>
	<form action="student-dropdown-reponse.jsp">
		First name: <input type="text" name="firstName">
		<br><br>
		
		Last name: <input type="text" name = "lastName">
		<br><br>
		
		<select name="country">
			<option>Brazil</option>
			
			<option>France</option>
			
			<option>Germany</option>
			
			<option>India</option>
			
			<option>Turkey</option>
			
			<option>United Kingdom</option>
			
			<option>United States of America</option>
		
		</select>
		
		<br><br>
		
		<input type="submit" value="submit">
	</form>
</body>
</html>