<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Wallet check</title>
<style type="text/css">
#box{
width:350px;
margin-left:600px;
margin-top:250px;
}
body{
background-image:url(home.jpg);
background-repeat:no-repeat;
background-size:cover;
}


</style>
</head>
<body>



<fieldset id="box"><center>
<h2>Your Wallet Amount is low Please Recharge </h2>
<form action="CheckWallet">
<button type="submit" id="button">Pay</button>
</form><br>
<form action="Home.jsp">
<button type="submit" id="button">Pay Later</button>
</form></center>
</fieldset>
</body>
</html>