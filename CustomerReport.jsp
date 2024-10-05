<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.CustomerRegisterDao" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:directive.include file="Fd_Style.jsp"/>
<head>
<meta charset="ISO-8859-1">
<title>Customer Details</title>
<link href="AccountCreation (1).css" rel="stylesheet" type="text/css">
</head>
<body style="background-color:powderblue;">
<h3 style="color: blue;">MONEY BANK</h3>
<div class="navbar">
 <h2 class="active" >CUSTOMER REPORT</h2>
 </div>

<p>
<table border="3">
<tr>
<td><label>CUSTOMER ID</label></td>
<td><label>NAME</label></td>
<td><label>PHONE NUMBER</label></td>
<td><label>EMAIL ID</label></td>
<td><label>AADHAR CARD NO.</label></td>
<td><label>PAN CARD NO.</label></td>
<td><label>DATE OF BIRTH</label></td>
<td><label>GENDER</label></td>
<td><label>PLOT NUMBER</label></td>
<td><label>STREET NAME</label></td>
<td><label>PINCODE</label></td>
</tr>
<%
CustomerRegisterDao rdao=new CustomerRegisterDao();
ResultSet rs=rdao.getData();
while(rs.next())
{
	String cid=rs.getString(1);
	String cname=rs.getString(2);
	String cphno=rs.getString(3);
	String cemail=rs.getString(4);
	String adharno=rs.getString(5);
	String pancardno=rs.getString(6);
	String dob=rs.getString(7);
	String gender=rs.getString(8);
	String plotno=rs.getString(9);
	String streetnm=rs.getString(10);
	String pincode=rs.getString(11);
%>
<tr>
<td><%=cid %></td>
<td><%=cname %></td>
<td><%=cphno %></td>
<td><%=cemail %></td>
<td><%=adharno %></td>
<td><%=pancardno %></td>
<td><%=dob %></td>
<td><%=gender %></td>
<td><%=plotno %></td>
<td><%=streetnm %></td>
<td><%=pincode %></td>
</tr>
<%
}
%>
</table>
<p>
<a href="Admin_Menu.jsp">BACK</a>
</body>
</html>