<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/slate/bootstrap.min.css"
	integrity="sha384-8iuq0iaMHpnH2vSyvZMSIqQuUnQA7QM+f6srIdlgBrTSEyd//AWNMyEaSF2yPzNQ"
	crossorigin="anonymous">
<title>MVC Pizza | Review</title>
</head>
<body>
	<h1>Leave a Review</h1>
	<form method="post" action="/submitreview">
		<h2>Name:   <input type="text" name="name" required="required" /></h2><br />
		
		<h2>Comment:</h2><br /> <textarea name="comment" required="required" minlength="5"></textarea>	
		
		<h2>Rating:</h2> 
		<input type="radio" id="rating1"
     name="rating" value="1">
    <label for="rating1">1 - Worst</label>

    <input type="radio" id="rating2"
     name="rating" value="2">
    <label for="rating2">2</label>

    <input type="radio" id="rating3"
     name="rating" value="3">
    <label for="rating3">3</label>
    
    <input type="radio" id="rating4"
     name="rating" value="4">
    <label for="rating4">4</label>
    
    <input type="radio" id="rating5"
     name="rating" value="5">
    <label for="rating5">5 - Best</label>
		
		<input type="submit" />
	</form>
	<br />
	<a href="/">Return to Homepage</a>
	
</body>
</html>