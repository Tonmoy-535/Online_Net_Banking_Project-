<%@page import="java.sql.ResultSet"%>
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
body
{
display:flex;
flex-direction:column;
}
</style>
</head>
<body>
<%
String cid=request.getParameter("id");
System.out.println(cid);
TransactionDAO rdao=new TransactionDAO();
String accno=rdao.checkAccountNO(cid);
System.out.println(accno);
String saccno=rdao.checkSourceAccountNO(accno);
System.out.println(saccno);
ResultSet rs=rdao.getData(saccno);
%>
<table border="2">
<tr>
<p>TRANSACTION HISTORY</p>
</tr>
<tr>
<td><label>SOURCE ACCOUNT NUMBER</label></td>
<td><label>BENEFICIARY ACCOUNT NUMBER</label></td>
<td><label>AMOUNT</label></td>
<td><label>TRANSACTION DATE</label></td>
</tr>
<% 
TransactionDAO tdao=new TransactionDAO();
 ResultSet rs2=rdao.getData(saccno);
        while(rs2.next())
         {
              String saccnom=rs2.getString(1);
              String baccno=rs2.getString(2);
              double amount=rs2.getDouble(3);
              String transdt=rs2.getString(4);
              
%>              
<tr>
<td><%=saccnom  %></td>
<td><%=baccno  %></td>
<td><%=amount %></td>
<td><%=transdt  %></td>
<%
}
%>
</table>
<p>
<a href="Client_Menu.jsp">BACK</a>
</body>
</html>