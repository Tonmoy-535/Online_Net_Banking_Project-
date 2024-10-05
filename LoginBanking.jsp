<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link href="CustomerUpdate.css" rel="stylesheet" type="text/css">
</head>
<body style="background-color:powderblue;">
<h3 style="color: blue;">MONEY BANK</h3>
<div class="navbar">
 <h2 class="active" >  Login Form
 </h2>
 </div>
 
<form action="LoginBankingServe" method="post">
<br>
<br>


<table class ="hi" style=" background-color:#FFFFE0">
<tr>
<td><label>Customer ID</label></td>
<td><input type="text" name="cid"></td>
</tr>
<tr>
<td><label>PASSWORD</label></td>
<td><input type="password" name="password"></td>
</tr>
<tr>
<td><input type="submit" value="LOGIN"></td>
</tr>
</table>
</form>
<br>
<br>
<center>
<a href="WelcomePage.jsp">BACK</a>
</center>
</body>
</html>