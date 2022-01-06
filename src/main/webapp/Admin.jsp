<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin page</title>
</head>
<body>
<h3> Welcome Admin</h3>

<fieldset id="box">
<form action="ShowUser.jsp">
<button type="submit"id="button"><i>ShowUser</i> </button>
</form><br>

<form action="ShowCart.jsp">
<button type="submit"id="button"><i>ShowCart</i> </button>
</form><br>


<form action="UpdateProduct.jsp">
<button type="submit" id="button"><i>UpdateProduct</i></button>
</form><br>

<form action="AddProduct.jsp" >
<button type="submit" id="button"><i> AddProduct</i></button>
</form><br>

<form action="DeleteProduct.jsp">
<button type="submit" id="button"><i>deleteProduct</i></button>
</form><br>


</fieldset>

</body>
</html>