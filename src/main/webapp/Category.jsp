<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.ResultSet" import="com.onlineflowershop.dao.impl.ProductDAOImpl"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Category page</title>

<style>
body{
background-image:url('home.jpg');
background-repeat:no-repeat;
background-size:cover;
}

</style>
</head>
<body>
<form>
<%
ProductDAOImpl productDao=new ProductDAOImpl();
ResultSet rs=productDao.ShowCategory();

%>

<table align="center" border="3">

<th><h3>Category Name</h3></th>

<%while(rs.next()) {%>

<tr>

<td><%=rs.getString(1)%></td>

<td><button><a href="CategoryFilter.jsp?categoryname=<%=rs.getString(1)%>">Buy</a></button></button></button>

</td>
</tr>
<%} %>
</table>



</form>
</body>
</html>