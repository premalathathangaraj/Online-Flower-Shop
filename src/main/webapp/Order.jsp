<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.onlineflowershop.dao.impl.*" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order page</title>
</head>
<body>
<%int flowerId=Integer.parseInt(request.getParameter("flowerId")); 
	
	session.setAttribute("flower_id",flowerId);
	
	String flowerName=request.getParameter("FlowerName");
	
	session.setAttribute("flowername", flowerName);
	
ProductDAOImpl productDao=new ProductDAOImpl();
ResultSet rs=productDao.findPrice(flowerId);



String name=session.getAttribute("username").toString();
System.out.println(name);


UserDAOImpl userDao=new UserDAOImpl();
int userId=userDao.findUserId(name);
session.setAttribute("userId", userId);

%>
<center>
	
		<fieldset id="box">
			<form action="OrderServlet" method="post">
			<%while(rs.next()){
			%>
			<h3><%= rs.getString(2) %></h3>
			<h1><%double price=rs.getDouble(5);%></h1>
			<h3>Price :<%= price%></h3><br>	
			<%session.setAttribute("retailPrice", price); %>		
				Quantity:<input type="number" name="quantity"><br>
								
				 				
				<button type="submit" id="button">Buy</button>
				<%} %>
			</form>
		</fieldset>
	</center>

</body>
</html>