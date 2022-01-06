<%@page import="java.util.List" import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    import="com.onlineflowershop.dao.impl.*" pageEncoding="ISO-8859-1"%>
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
<title>Show User page</title>
</head>
<body>
<form>
<%
UserDAOImpl userDao=new UserDAOImpl();
ResultSet rs=userDao.showAllUser();
%>
<table>

<tr>
<th>User Id</th>
<th> Name</th>
<th>Email Id</th>
<th>Password</th>
<th>Address</th>
<th>Mobile Number</th>
<th>Role</th>
<th> Wallet<th>
</tr>

<% while(rs.next()){%>
<tr>
<td><%= rs.getInt(1) %></td>
<td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>
<td><%= rs.getString(4) %></td>
<td><%= rs.getString(5) %></td>
<td><%= rs.getLong(6) %></td>
<td><%= rs.getString(7) %></td>
<td><%= rs.getInt(8) %></td>

</tr>
<%} %>
</table>


</form>


</body>
</html>