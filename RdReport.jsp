<%@page import="master.dao.AccountDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.RdDAO"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:directive.include file="Fd_Style.jsp"/>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body
{
display:flex;
flex-direction:column;
}
</style>
</head>
<body>
<table border="2">
<tr>
<td>ACCOUNT NUMBER</td>
<td>AMOUNT</td>
<td>MONTH</td>
<td>BOOKING DATE</td>
<td>MATURITY VALUE</td>
</tr>
<%
String selectedAccount = request.getParameter("accno");
RdDAO mdao=new RdDAO();
  ResultSet rs= mdao.getData(selectedAccount);
while(rs.next())
{
String accno=rs.getString(1);
double amount=rs.getDouble(2);
int mn=rs.getInt(3);
String bookdt=rs.getString(4);
double mvalue=rs.getDouble(5);
%>
<tr>
<td><%=accno %></td>
<td><%=amount %></td>
<td><%=mn %></td>
<td><%=bookdt %></td>
<td><%=mvalue %></td>
</tr>
<%
}
%>
<%
String cid=request.getParameter("id");
System.out.println(cid);
AccountDAO rdao=new AccountDAO();
String accno=rdao.checkAccountNO(cid);
System.out.println(accno);
RdDAO sdao=new RdDAO();
  ResultSet rs1= sdao.getData(accno);
while(rs1.next())
{
String accno2=rs1.getString(1);
double amount=rs1.getDouble(2);
int mn=rs1.getInt(3);
String bookdt=rs1.getString(4);
double mvalue=rs1.getDouble(5);
%>
<tr>
<td><%=accno2 %></td>
<td><%=amount %></td>
<td><%=mn %></td>
<td><%=bookdt %></td>
<td><%=mvalue %></td>
</tr>
<%
}
%>
</body>
</html>