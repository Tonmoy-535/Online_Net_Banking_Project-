<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="CustomerUpdate.css" rel="stylesheet" type="text/css">
</head>
<body style="background-color:powderblue;">
<h3 style="color: blue;">MONEY BANK</h3>
<div class="navbar">
<h2><b> Recurring Deposit</b></h2>
</div>
<br>
<br>
<form action="RdServe" method="post">
<table class ="hi" style=" background-color:#FFFFE0">
<tr>
<td><label>ENTER ACCOUNT NUMBER</label></td>
<td><input type="text" name="accno"></td>
</tr>
<tr>
<td><label>ENTER AMOUNT</label></td>
<td><input type="text" name="amount"></td>
</tr>
<tr>
<td><label>ENTER NO OF MONTH</label></td>
<td><select name="mn">
<option value="1">1 MONTH</option>
<option value="2">2 MONTH</option>
<option value="3">3 MONTH</option>
<option value="4">4 MONTH</option>
<option value="5">5 MONTH</option>
<option value="6">6 MONTH</option>
<option value="7">7 MONTH</option>
<option value="8">8 MONTH</option>
<option value="9">9 MONTH</option>
<option value="10">10 MONTH</option>
<option value="11">11 MONTH</option>
</select>
</td>
</tr>
<tr>
<td><label>ENTER BOOKING DATE</label></td>
<td><input type="text" name="bookdt"></td>
</tr>
<tr>
<td><input style="border: 2px solid Tomato;" type="submit" value="CREATE RD"></td>
</tr>
</table>
</form>
<p>
<br>
<br>
<center>
<a href="Client_Menu.jsp">BACK</a>
</center>
</body>
</html>