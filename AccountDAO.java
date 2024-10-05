package master.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import master.utilities.ConnectionFactory;

public class AccountDAO {
	Connection cn=null;
	Statement st=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	public boolean checkAccount(String accno)
    {
		String sql="select * from account where accno='"+accno+"'"; ;
		boolean flag=false;
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(sql);
			if(rs.next())
			{
				flag=true;
			}
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return flag;
    }
	public double checkBalance(String accno)
	{
		String sql="select balance from account where accno='"+accno+"'"; ;
		double balance=0.0;
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next())
			{
				 balance=rs.getDouble(1);
			}
			
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return balance;
	}
	public void updatetData(String accno,double amount)
	{
		
		String sql="update account set balance=? where accno=?";
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(sql);
			ps.setDouble(1,amount);
			ps.setString(2,accno);
			ps.executeUpdate();
			cn.commit();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
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
	public ResultSet getData(String accno)
	{
		String sql="select * from account where accno='"+accno+"'";
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
