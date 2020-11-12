<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<b>Price: </b><fmt:formatNumber value="${ price }" type="currency"/>
	</p>
	<p>
	<c:if test="${price > 15.0 }">
	 <p style="color:red;">FREE DELIVERY - Your total was over $15.00</p><br />
	</c:if>
	</p>
	
	<a href="custom"><button>Build Another Pizza</button></a>
	<a href="/"><button>Back to Homepage</button></a>
	
</body>
</html>