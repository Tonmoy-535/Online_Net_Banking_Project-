<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.AccountDAO"%>
<%@page import="master.dao.TransactionDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="AccountCreation (1).css" rel="stylesheet" type="text/css">
</head>
<body style="background-color:powderblue;">
<h3 style="color: blue;">MONEY BANK</h3>
<div class="navbar">
 <h2 class="active" > Bank Statement</h2></div>
 <br>
 <br>
 

<script type="text/javascript">
 function getIDDetails()
 {
	 var id=document.getElementById("cid").value;
	 alert(id);
	 document.f1.action="BankStatementDetails.jsp?id="+id;
	 document.f1.method="post";
	 document.f1.submit();
	 
 }
 function getIDDetails1()
 {
	 var id=document.getElementById("cid").value;
	 alert(id);
	 document.f1.action="TransactionReport.jsp?id="+id;
	 document.f1.method="post";
	 document.f1.submit();
	 
 }
 function getIDDetails2()
 {
	 var id=document.getElementById("cid").value;
	 alert(id);
	 document.f1.action="FdReport.jsp?id="+id;
	 document.f1.method="post";
	 document.f1.submit();
	 
 }
 function getIDDetails3()
 {
	 var id=document.getElementById("cid").value;
	 alert(id);
	 document.f1.action="RdReport.jsp?id="+id;
	 document.f1.method="post";
	 document.f1.submit();
	 
 }




</script>
</head>
<body>
<form name="f1" >
<table class ="hi" style=" background-color:#FFFFE0">
<tr>
<td><label>ENTER CUSTOMER ID</label></td>
<td><input type="text" name="cid" id="cid"></td>
</tr>
<center>
<tr>
<td><input style="border: 2px solid Tomato;" type="button" value="STATEMENT" onclick="getIDDetails()"></td>
</tr>
<tr>
<td><input style="border: 2px solid Tomato;" type="button" value="TRANSACTION" onclick="getIDDetails1()"></td>
</tr>
<tr>
<td><input style="border: 2px solid Tomato;" type="button" value="FD STATUS" onclick="getIDDetails2()"></td>
</tr>
<tr>
<td><input style="border: 2px solid Tomato;"  type="button" value="RD STATUS" onclick="getIDDetails3()"></td>
</tr>
</center>

</table>
</form>
<p>
<a href="Client_Menu.jsp">BACK</a>

</body>
</html>