package master.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import master.utilities.ConnectionFactory;

public class TransactionDAO {
	Connection cn=null;
	Statement st=null;
	ResultSet rs=null;
	PreparedStatement ps=null;
	public String checkAccountNO(String cid)
	{
		String sql="SELECT ACCNO FROM ACCOUNT A,CUSTOMER C WHERE A.CID=C.CID AND C.CID='"+cid+"'";
		String accno=null;
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next())
			{
				 accno=rs.getString(1);
			}
			
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return accno;
	}
	public String checkSourceAccountNO(String accno)
	{
		String sql="SELECT * FROM FUNDTRANSFER WHERE SACCNO='"+accno+"'";
		String saccno=null;
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next())
			{
				 saccno=rs.getString(1);
			}
			
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return saccno;
	}
	public ResultSet getData(String saccno)
	{
		String sql="SELECT * FROM FUNDTRANSFER WHERE SACCNO='"+saccno+"'";
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(sql);
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	     	
	}
}
