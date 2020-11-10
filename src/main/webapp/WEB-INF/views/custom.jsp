<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
       
     <p>  
     	<input type="checkbox" name="glutenfree" /> <b>Gluten-Free Crust?</b> ($2.00 extra)
	</p>
	
	<h2>Special Instructions: (Optional)<br /> <textarea name="specialinstructions" placeholder="Optional" rows="4" cols="20"></textarea></h2>
	
	<input type="submit" value="Calculate Price" />
	</form>
	<a href="index">Return to Homepage</a>
</body>
</html>