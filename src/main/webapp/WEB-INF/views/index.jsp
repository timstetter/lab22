<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/slate/bootstrap.min.css"
	integrity="sha384-8iuq0iaMHpnH2vSyvZMSIqQuUnQA7QM+f6srIdlgBrTSEyd//AWNMyEaSF2yPzNQ"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>MVC Pizza | Home</title>
</head>
<body>
	<h1>Welcome to MVC's Pizza</h1>
	
	<h2>Specialty Pizzas</h2>
		<ul>
			<c:forEach var="pizza" items="${ pizzas }">		
		<li><a href="/specialty/${ pizzas.indexOf(pizza) }"><c:out value="${ pizza.getName() }"/></a></li> <br />
		
	</c:forEach>
		</ul>
		<br />
	<h2>Custom Pizza</h2>
	<a href="/custom">Build your own!</a>
	<br />
	<h2>Leave a review</h2>
	<a href="/review">Click here to leave a review</a>
</body>
</html>