<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Credit Amount</title>
<link href="CustomerDelete.css" rel="stylesheet" type="text/css">
</head>
<body style="background-color:powderblue;">
<h3 style="color: blue;">MONEY BANK</h3>

<div class="navbar">
 <h2 class="active" >CREDIT AMOUNT</h2>
</div>
<p>
<div class="center">
<form action="AccountCreditServe" method="post">
<table  class ="hi" style=" background-color:#FFFFE0">
<tr>
<td><label>Enter Account Number</label></td>
<td><input type="text" name="accno"placeholder="Enter Account Number"></td>
</tr>
<tr>
<td><label>Enter Amount</label></td>
<td><input type="number" name="camount"placeholder="Enter Amount"></td>
</tr>
<tr>
<td><label><button style="border: 2px solid Tomato;" type="submit" form="nameform" value="Submit">Update</button><br>
</label>
</td>
</tr>
</table>
<p>
</form>
</div>

<br>
<br>
<br>
<br>
<center>
<a href="AccountUpdate.jsp">BACK</a>
</center>


</body>
</html>
