<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Account</title>
<link href="AccountCreation (1).css" rel="stylesheet" type="text/css">
</head>
<body style="background-color:powderblue;">
<h3 style="color: blue;">MONEY BANK</h3>
<div class="navbar">
 <h2 class="active" >Delete Account</h2>
</div>
<center>
<p>
<div class="center">
<form action="AccountDeleteServe" method="post">
<table style=" background-color:#FFFFE0">
<tr>
<td><label>Enter Account Number</label></td>
<td><input type="text" name="accno" placeholder="Enter Account Number"></td>
</tr>

<tr>

<td>
<div class="ho">
<button style="border: 2px solid Tomato;" type="submit" form="nameform" value="Submit">DELETE</button>
</div>

</td>


</tr>

</table>
<p>
<br>
</form>
</div>
<br>
<br>
<br>
<a href="">
</a>

<a href="Admin_Menu.jsp">BACK</a>


</center>
</body>
</html>