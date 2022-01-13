<%@page import="java.util.List" import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     pageEncoding="ISO-8859-1" import ="com.onlineflowershop.dao.impl.*" %>
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
<title>Update Product </title>
</head>
<body>


<%
ProductDAOImpl product=new ProductDAOImpl();
ResultSet rs=product.showProduct();
%>
<table border="2">
<tr>
<th>Flower Name</th>

</tr>
<%while(rs.next()){%>
<tr>
<td><%= rs.getString(2) %></td>

</tr>

<%} %>
</table>





<fieldset id="box"><center>
<form action="UpdateProduct" method="post">

 Old Flower Name:<input type="text" name="oldflowerName"><br><br>
 
 New Flower Name:<input type="text" name="newflowerName"><br><br>
 
 <button type="submit" id="button"> submit</button>
 
 

</form>

 </center>
</fieldset>
<a href="Home.jsp">Back To Home Page</a>

</body>
</html>