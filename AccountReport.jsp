<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.AccountCreationDao" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:directive.include file="Fd_Style.jsp"/>
<head>
<meta charset="ISO-8859-1">
<title>Account Details</title>
<link href="AccountCreation (1).css" rel="stylesheet" type="text/css">

</head>
<body style="background-color:powderblue;">
<h3 style="color: blue;">MONEY BANK</h3>
<div class="navbar">
 <h2 class="active" >ACCOUNT DETAILS</h2>
</div>
<p>
<table border="3">
<tr>
<td><label>ACCOUNT NUMBER</label></td>
<td><label>ACCOUNT TYPE</label></td>
<td><label>DATE OF OPEN</label></td>
<td><label>BALANCE</label></td>
<td><label>CID</label></td>
</tr>
<%
AccountCreationDao rdao=new AccountCreationDao();
ResultSet rs=rdao.getData();
while(rs.next())
{
	String accno=rs.getString(1);
	String acctyp=rs.getString(2);
	String dtop=rs.getString(3);
	Double balance=rs.getDouble(4);
	String cid=rs.getString(5);
%>
<tr>
<td><%=accno %></td>
<td><%=acctyp %></td>
<td><%=dtop %></td>
<td><%=balance %></td>
<td><%=cid %></td>
</tr>
<%
}
%>
</table>
<center>
<p>
<a href="Admin_Menu.jsp">BACK</a>
</p></center>
</body>
</html>