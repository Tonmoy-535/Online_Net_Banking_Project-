<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Debit Amount</title>
<link href="CustomerUpdate.css" rel="stylesheet" type="text/css">
</head>
<body style="background-color:powderblue;">
<h3 style="color: blue;">MONEY BANK</h3>
<div class="navbar">
<h2><b>DEBIT AMOUNT</b></h2>
</div>
<p>
<div class="center">
<form action="AccountDebitServe" method="post">
<table class ="hi" style=" background-color:#FFFFE0">
<tr>
<td><label>Enter Account Number</label></td>
<td><input type="text" name="accno"placeholder="Enter Account Number"></td>
</tr>
<p>
<tr>
<td><label>Enter Amount</label></td>
<td><input type="number" name="damount"placeholder="Enter Amount"></td>
</tr>
</table>
<p>
<center>
<button style="border: 2px solid Tomato;" type="submit" form="nameform" value="Submit">Update</button><br>
</center>

</form>
</div>

<a href="">
<br>
<br>
</a>
<br>
<center>
<a href="AccountUpdate.jsp">BACK</a>

<br>
<br>
<br><br><br><br><br><br>

</center>
</body>
</html>
