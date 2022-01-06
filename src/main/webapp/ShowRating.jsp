<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.ResultSet" import="com.onlineflowershop.dao.impl.ProductDAOImpl"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rating Flowers</title>
</head>
<body>

<center><h2><b>High Rated Flowers </b></h2></center>
<%
ProductDAOImpl product=new ProductDAOImpl();
ResultSet rs=product.ShowRating();
%>

<table align="center" border="6">

<th><h3>Flower Name </h3></th>
<th><h3>Ratings </h3></th>


<% while(rs.next()){ %>

<tr>
<td><%= rs.getString(1) %></td>
<td><%= rs.getInt(2) %></td>
</tr>

<%} %>

</table>


</body>
</html>