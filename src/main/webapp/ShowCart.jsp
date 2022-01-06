<%@page import="java.util.List" import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     import ="com.onlineflowershop.dao.impl.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table,th,td{
 border: 1px solid black;
  border-collapse: collapse;
  padding: 20px;
}
</style>
<meta charset="ISO-8859-1">
<title>ShowUser page</title>
</head>
<body>

<form>
<%
CartDAOImpl cartDao=new CartDAOImpl();
ResultSet rs=cartDao.ShowCart();
%>

<table>

<tr>
<th>Cart Id</th>
<th>Flower Id</th>
<th>User Id</th>
<th>Order Quantity</th>
<th>Total Price</th>
<th>Order Date</th>


</tr>

<% while(rs.next()) {%>

<tr>
<td><%= rs.getInt(1) %></td>
<td><%= rs.getInt(2) %></td>
<td><%= rs.getInt(3) %></td>
<td><%= rs.getInt(4) %></td>
<td><%= rs.getDouble(5) %></td>
<td><%= rs.getDate(6) %>

</tr>

<%} %>

</table>

</form>

</body>
</html>