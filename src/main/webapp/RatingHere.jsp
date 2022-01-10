<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
background-image:url('index1.jpg');
background-repeat:no-repeat;
background-size:cover;
}
</style>
<meta charset="ISO-8859-1">
<title>Rating here</title>
</head>
<body>

<center>
<form action="RatingServlet" method="post">
<h3>please Add Your Rating :<input type="number" name="Rating" placeholder="upto 5 rating" pattern="[0-9]{5}"></h3>
<button type="submit" id="rating">Rating</button>
</form >
</center>
</body>
</html>