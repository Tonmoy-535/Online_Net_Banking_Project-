<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.AccountDAO"%>
<%@page import="master.dao.TransactionDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:directive.include file="Fd_Style.jsp"/>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
th
{
background-color:#FFFFE0;
}
table {
margin: auto;
}
</style>
</head>
<body>
<h2><b>YOUR STATEMENT</b></h2>
<table border="2">
<tr>
<td>ACCOUNT NUMBER</td>
<td>ACCOUNT TYPE</td>
<td>DATE OF OPEN</td>
<td>BALANCE</td>

</tr>
<%
String cid=request.getParameter("id");
System.out.println(cid);
AccountDAO rdao=new AccountDAO();
String accno=rdao.checkAccountNO(cid);
System.out.println(accno);
ResultSet rs1=rdao.getData(accno);

while(rs1.next())
{
      String accnos=rs1.getString(1);
      String acctyp=rs1.getString(2);
      String dop=rs1.getString(3);
      double balance=rs1.getDouble(4);
%>
<tr>
<td><%=accnos %></td>
<td><%=acctyp %></td>
<td><%=dop %></td>
<td><%=balance %></td>


</tr>


<%
}
%>
</table>
<p>
<a href="BankStatement.jsp">BACK</a>


</body>
</html>