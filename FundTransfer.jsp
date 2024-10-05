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
 <h2 class="active" > Fund Transfer</h2>
</div>
<br>
<br>
<br>

<form action="FundTransferServe" method="post">
<table class ="hi" style=" background-color:#FFFFE0">
<tr>
<td><label>SOURCE ACCOUNT NUMBER</label></td>
<td><input type="text" name="saccno"></td>
</tr>
<tr>
<td><label>BENIFICIARY ACCOUNT NO</label></td>
<td><input type="text" name="baccno"></td>
</tr>
<tr>
<td><label>AMOUNT</label></td>
<td><input type="text" name="amount"></td>
</tr>
<tr>
<td><label>TRANSACTION DATE</label></td>
<td><input type="text" name="trdt"></td>
</tr>
<tr>
<center>
<td>
<input type="submit" value="TRANSFER"></td>
</center>
</tr>
</table>
</form>
<p>
<center>
<a href="Client_Menu.jsp">BACK</a>
</center>
</body>
</html>