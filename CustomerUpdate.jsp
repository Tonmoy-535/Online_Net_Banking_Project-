<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Customer</title>
<link href="CustomerUpdate.css" rel="stylesheet" type="text/css">
</head>
<body style="background-color:powderblue;">
<h3 style="color: blue;">MONEY BANK</h3>
<div class="navbar">
 <h2 class="active" > CHANGE PASSWORD</h2>
</div>
<p>
 <form action="CustomerUpdateServe" method="post">
<table class ="hi" style=" background-color:#FFFFE0">
<tr>
<td><label>Enter Customer ID</label></td>
<td><input type="text" name="cid"placeholder="Enter Customer ID"></td>
</tr>
<tr>
<td><label>Enter Current Password</label></td>
<td><input type="password" name="password"placeholder="Enter Current Password"></td>
</tr>
<tr>
<td><label>Enter New Password</label></td>
<td><input type="password" name="npassword"placeholder="Enter New Password"></td>
</tr>
</table>
<center>
<p>
<a href="CustomerUpdateShow.jsp">
<button style="border: 2px solid Tomato;" type="submit" value="Submit">Update</button></a><br>
</p>
</center>
</form>
<p>

<br>
<center>

<a href="Client_Menu.jsp">BACK</a>
</center>
<br>
<br>

</body>
</html>