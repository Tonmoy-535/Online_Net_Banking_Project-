
<%@page import="master.dao.AccountDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.FdDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<jsp:directive.include file="Fd_Style.jsp"/>
<head>
<style>
body
{
display:flex;
flex-direction:column;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="2">
<tr>
<td>ACCOUNT NUMBER</td>
<td>AMOUNT</td>
<td>YEAR</td>
<td>BOOKING DATE</td>
<td>MATURITY VALUE</td>
</tr>
<%

String selectedAcc = request.getParameter("accno");
FdDAO mdao=new FdDAO();
  ResultSet rs= mdao.getData(selectedAcc);
while(rs.next())
{
String accno=rs.getString(1);
double amount=rs.getDouble(2);
int yr=rs.getInt(3);
String bookdt=rs.getString(4);
double mvalue=rs.getDouble(5);
%>
<tr>
<td><%=accno %></td>
<td><%=amount %></td>
<td><%=yr %></td>
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

FdDAO fdao=new FdDAO();
  ResultSet rs1= fdao.getData(accno);
while(rs1.next())
{
String accno1=rs1.getString(1);
double amount=rs1.getDouble(2);
int yr=rs1.getInt(3);
String bookdt=rs1.getString(4);
double mvalue=rs1.getDouble(5);
%>
<tr>
<td><%=accno1 %></td>
<td><%=amount %></td>
<td><%=yr %></td>
<td><%=bookdt %></td>
<td><%=mvalue %></td>
</tr>
<%
}
%>


</table>
</body>
<br>
<br>
<center>
<a href="FD.jsp">Back</a>
</center>
</body>
</html>