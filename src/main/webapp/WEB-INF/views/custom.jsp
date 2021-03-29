<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/slate/bootstrap.min.css"
	integrity="sha384-8iuq0iaMHpnH2vSyvZMSIqQuUnQA7QM+f6srIdlgBrTSEyd//AWNMyEaSF2yPzNQ"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>MVC Pizza | Custom Pizza Builder</title>
</head>
<body>
	<h1>Build Your Own Pizza</h1>
	<form method="post" action="/customorder">
	<p>
		<b>Size</b><select name="size">
			<option>Small</option>
			<option>Medium</option>
			<option>Large</option>
		</select>
	</p>
	
	<p>
		<b>How many toppings? between 0 and 10</b> <input type="number" id="toppings" name="toppings"
       		min="0" max="10" placeholder=0> 
    </p>
      
       <ul>
			<c:forEach var="topping" items="${ toppings }">		
				<li>${topping}</li>		
			</c:forEach>
	   </ul>
       
      
     <p>  
     	<input type="checkbox" name="glutenfree" /> <b>Gluten-Free Crust?</b> ($2.00 extra)
	</p>
	
	<h2>Special Instructions: (Optional)</h2>
	<p>
	 	<textarea name="specialinstructions" placeholder="Optional" rows="4" cols="20"></textarea>
	</p>
	<input type="submit" value="Calculate Price" />
	</form>
	<a href="/">Return to Homepage</a>
</body>
</html>