<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
</head>
<body>
<form action="Login" method="post">
Email Id:<input type="emailId"  name="emailId" pattern="[A-Za-z0-9]+[@][a-zA-Z]+[.][a-z]+">
Password:<input type="password" name="password" pattern="[a-z0-9]{8}">

<button type="submit" id="button">Login</button>

</form>

</body>
</html>