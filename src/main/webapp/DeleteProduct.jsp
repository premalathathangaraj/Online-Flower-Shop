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
<title>Delete Product</title>
</head>
<body>

<%
ProductDAOImpl product=new ProductDAOImpl();
ResultSet rs=product.showProduct();
%>


<table>
<tr>
<th>Flower Id</th>
<th>Flower Name</th>

</tr>
<%while(rs.next()){%>
<tr>
<td><%= rs.getInt(1) %></td>
<td><%= rs.getString(2) %></td>


</tr>

<%} %>
</table>


<fieldset id="box">
<form action="DeleteProduct" method="post">

FlowerId:<input type="number" name="FlowerId"><br><br>


<button type="submit" id="button"> delete</button>

</form>


</fieldset>
<a href="Home.jsp">Back To Home Page</a>

</body>
</html>