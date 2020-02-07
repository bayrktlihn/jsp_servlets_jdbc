<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration Form</title>
</head>
<body>
	<form action="student-radio-reponse.jsp">
		First name: <input type="text" name="firstName">
		<br><br>
		
		Last name: <input type="text" name = "lastName">
		<br><br>
		
		
		<br>
		
		Favorite Programming Language: <br>
		
		<input type="radio" name="favoriteLanguage" value="Java"> Java
		
		<input type="radio" name="favoriteLanguage" value="Python"> Python
		
		<input type="radio" name="favoriteLanguage" value="Javascript"> Javascript
		
		<input type="radio" name="favoriteLanguage" value="Php"> Php
		
		<br><br>
		
		<input type="submit" value="submit">
	</form>
</body>
</html>