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

body{
background-image:url(home.jpg);
background-repeat:no-repeat;
background-size:cover;
}

.topnav {
  background-color: gray;
  overflow: hidden;
}

.topnav a {
  float: left;
  color: pink;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color:pink;
  color:black ;
  }
  


#button {
	border-radius: 20px;
	padding: 10px 20px;
	background:blue;
	color: black;
	margin-top: 20px;
	border: none;
	outline: none;
	margin-left: 50px;
}



#button:hover {
	background-color:pink;
	color: black;
	cursor: pointer;


</style>
<meta charset="ISO-8859-1">
<title>Show Product Page</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>




</head>
<body>
<form>






<div class="topnav" >
  
  <a href="AboutUs.jsp">AboutUs</a>
  <a href="Category.jsp">Category</a>
  <a href="MyCart.jsp">My Order</a>
  
   
  

<%
//int id=Integer.parseInt(request.getParameter("userId"));
ProductDAOImpl product=new ProductDAOImpl();
ResultSet rs=product.showProduct();
%>

<table align="center" class="table table-hover">
<tr>
<th>Picture</th>
<th style=color:black>Flower Name</th>
<th style=color:black>Flower Description</th>
<th style=color:black>Color</th>
<th style=color:black>Flower Retail price</th>
<th style=color:black>Flower Category</th>
<th style=color:black>Flower Rating</th>
<th style=color:black>Buy Product</th>
</tr>
<%while(rs.next()){%>
<tr>
<td><img alt="#alter" src="<%=rs.getString(8)%>" width="200" height="200"></td>
<td style=color:black><%= rs.getString(2) %></td>
<td style=color:black><%= rs.getString(3) %></td>
<td style=color:black><%= rs.getString(4) %></td>
<td style=color:black><%= rs.getDouble(5) %></td>
<td style=color:black><%= rs.getString(6) %></td>
<td style=color:black><%= rs.getInt(7) %></td>
<td><button><a href="Order.jsp?flowerId=<%=rs.getInt(1)%>&flowerName=<%=rs.getString(2)%>" style=color:black>buy</a></button></td>
</tr>

<%} %>


</table>

</div>
</form>
</body>
</html>