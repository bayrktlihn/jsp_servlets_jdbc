<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fn" 
   uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var = "data" value="bayrktlihn"></c:set>
	
	Length of the string <b>${data }</b>: ${fn:length(data) }
	
	<br><br>
	
	Uppercase version of the string <b>${data }</b>: ${fn:toUpperCase(data) }
	
	<br><br>
	
	Does the string <b>${data }</b> start with <b>bay</b>?: ${fn:startsWith(data, "bay") } 
</body>
</html>