<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration Form</title>
</head>
<body>
	<form action="student-checkbox-reponse.jsp">
		First name: <input type="text" name="firstName">
		<br><br>
		
		Last name: <input type="text" name = "lastName">
		<br><br>
		
		<input type="checkbox" name="favoriteLanguage" value="Java"> Java
		<input type="checkbox" name="favoriteLanguage" value="Python"> Python
		<input type="checkbox" name="favoriteLanguage" value="Javascript"> Javascript
		<input type="checkbox" name="favoriteLanguage" value="Php"> Php 
		
		
		<br><br>
		
		<input type="submit" value="submit">
	</form>
</body>
</html>