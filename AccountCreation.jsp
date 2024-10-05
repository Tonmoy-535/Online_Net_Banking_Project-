<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Account</title>
<link href="AccountCreation.css" rel="stylesheet" type="text/css">
<link href="AccountCreation (1).css" rel="stylesheet" type="text/css">
</head>
<body style="background-color:powderblue;">
<h3 style="color: blue;">MONEY BANK</h3>
<div class="navbar">
 <h2 class="active" >Account Creation</h2>
</div>
<p>
<form action="AccountCreationServe" method="post">
<table  class ="hi" style=" background-color:#FFFFE0">
<tr>
<td><label>Enter Account number</label></td>
<td><input type="text" name="accno" placeholder="Enter Account Number"></td>
</tr>
<tr>
<td ><label>Choose Account Type</label></td>
<td><select name="acctyp">
<option value=""></option>
<option value="Current Account">Current Account</option>
<option value="Savings Account">Savings Account</option>
<option value="Salary Account">Salary Account</option>
<option value="NRI Account">NRI Account</option>
</select>
</td>
</tr>
<tr>
<td><label>Enter Date Of Open</label></td>
<td><input type="date" name="dtop" placeholder="DD/MM/YYYY"></td>
</tr>
<tr>
<td><label>Enter Balance</label></td>
<td><input type="number" name="balance" placeholder="Enter Balance"></td>
</tr>
<tr>
<td><label>    Enter Customer ID</label></td>
<td><input type="text" name="acid" placeholder="Enter Customer ID"></td>
</tr>
<tr >
<td >
<div class="container">
<button style="border: 2px solid Tomato;" type="submit" form="nameform" value="Submit" id ="CREATE">CREATE</button>
</div>
</td>
</tr>
</table>
<p>
<br>
<div class="ho">
<a href="Admin_Menu.jsp">BACK</a>
</div>
</form>
</body>
</html>