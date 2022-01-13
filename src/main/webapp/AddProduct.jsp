<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>

body{
background-image:url(home.jpg);
background-repeat:no-repeat;
background-size:cover;
}


</style>

<meta charset="ISO-8859-1">
<title>Add Product</title>
</head>
<body>
<fieldset id="box"><center>
<form action="AddProduct" method="post">

Flower_Name:       <input type="text" name="flowerName"><br><br>

Flower_Description:<input type="text" name="flowerDescription"><br><br>

Color:             <input type="text" name="flowerColor"><br><br>

Retail_Price:      <input type="text" name="flowerRetailPrice"><br><br>

Category_Name:     <input type="text" name="categoryName"><br><br>

<button type="submit" name="buttton"> Add</button> 

</form>
<a href="Home.jsp">Back To Home Page</a>

</center></fieldset>

</body>
</html>