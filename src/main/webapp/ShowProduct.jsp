<%@page import="java.util.List" import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     pageEncoding="ISO-8859-1" import ="com.onlineflowershop.dao.impl.*" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  padding: 20px;
}
</style>
<meta charset="ISO-8859-1">
<title>Show Product Page</title>
</head>
<body>
<form>
<p> Welcome </p>
<%
ProductDAOImpl product=new ProductDAOImpl();
ResultSet rs=product.showProduct();
%>

<table>
<tr>
<th>Flower Name</th>
<th>Flower Description</th>
<th>Color</th>
<th>Flower Retail price</th>
<th>Flower Category</th>
<th>Flower Rating</th>
</tr>
<%while(rs.next()){%>
<tr>
<td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>
<td><%= rs.getString(4) %></td>
<td><%= rs.getDouble(5) %></td>
<td><%= rs.getString(6) %></td>
<td><%= rs.getInt(7) %></td>
<td><button><a href="Order.jsp?flowerId=<%=rs.getInt(1)%>">buy</a></button></td>
</tr>

<%} %>
</table>
</form>
</body>
</html>