<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MVC Pizza | Specialty Pizza</title>
</head>
<body>
	<h1>Specialty Pizza:  ${ pizza.getName() }</h1>
	<br />
	<p><b>Name:</b> ${ pizza.getName() }</p>
	<p><b>Price:</b> <fmt:formatNumber value="${ pizza.getPrice() }" type="currency"/></p>
	
	<a href="/">Back to Homepage</a>
</body>
</html>