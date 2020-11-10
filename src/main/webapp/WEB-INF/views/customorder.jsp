<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MVC Pizza | Your Custom Order</title>
</head>
<body>
	<h1>Your Pizza</h1>
	<p>
	<b>Size: </b>${ size }
	</p>
	<p>
	<b>Toppings: </b> ${ toppings }
	</p>
	<p>
	<b>Gluten-Free Crust: </b> ${ glutenfree }
	</p>
	<p>
	<b>Special Instructions: </b> ${ specialinstructions }
	</p>
	<p>
	<b>Price: </b>$${ price }
	</p>
	<a href="custom"><button>Build Another Pizza</button></a>
	<a href="index"><button>Back to Homepage</button></a>
	
</body>
</html>