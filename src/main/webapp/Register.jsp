<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>

<h3> Register page</h3>
<form action="Register" method="post"> 
Name:<input type="text" name="name" >
Email Id:<input type="emailId"  name="emailId" pattern="[A-Za-z0-9]+[@][a-zA-Z]+[.][a-z]+">
Password:<input type="password" name="password" pattern="[a-z0-9]{8}">
Address:<input type="text" name="address" pattern="[0-9a-z]+[,][A-Za-z]+[,][0-9]{6}">
Mobile Number:<input type="Mobilenumber" name="Mobilenumber" pattern="[0-9]{10}">

<input type="submit" value="Register" class="submit-button">


</body>
</html>