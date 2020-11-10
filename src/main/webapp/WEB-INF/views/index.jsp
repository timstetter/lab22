<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MVC Pizza | Home</title>
</head>
<body>
	<h1>Welcome to MVC's Pizza</h1>
	
	<h2>Specialty Pizzas</h2>
		<ul>
			<li><a href="/specialty?name=Meat Lover's Pizza&price=14.00">Meat Lover's Pizza</a></li>
			<li><a href="/specialty?name=Veggie Lover's Pizza&price=12.00">Veggie Lover's Pizza</a></li>
			<li><a href="/specialty?name=BBQ Chicken Pizza&price=13.50">BBQ Chicken Pizza</a></li>
		</ul>
		<br />
	<h2>Custom Pizza</h2>
	<a href="/custom">Build your own!</a>
	<br />
	<h2>Leave a review</h2>
	<a href="/review">Click here to leave a review</a>
</body>
</html>