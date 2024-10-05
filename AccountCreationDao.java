package master.dao;
import java.sql.*;

import master.dto.AccountCreationDto;
import master.utilities.ConnectionFactory;

public class AccountCreationDao {
	Connection cn=null;
	Statement st=null;
	ResultSet rs=null;
	PreparedStatement ps=null;
	String insert_sql="insert into account values(?,?,?,?,?)";
	String delete_sql="delete from account where accno=?";
	String update_sql="update account set balance=? where accno=?";
	String select_sql="select * from account order by accno";
	
	public void insertData(AccountCreationDto rdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(insert_sql);
			ps.setString(1,rdto.getAccno());
			ps.setString(2,rdto.getAccctyp());
			ps.setString(3,rdto.getDtop());
			ps.setDouble(4,rdto.getBalance());
			ps.setString(5,rdto.getCid());
			ps.executeUpdate();
			cn.commit();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public void updateData(AccountCreationDto rdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(update_sql);
			ps.setDouble(1,rdto.getBalance());
			ps.setString(2,rdto.getAccno());
			ps.executeUpdate();
			cn.commit();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public void deleteData(AccountCreationDto rdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(delete_sql);
			ps.setString(1,rdto.getAccno());
			ps.executeUpdate();
			cn.commit();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public ResultSet getData()
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(select_sql);
			
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
	public Double getBalance(String accno)
	{
		String check_balance_sql="select balance from account where accno='"+accno+"'";
		Double balance=0.0;
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(check_balance_sql);
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
	public boolean checkAccount(String accno)
	{
		String sql="select * from account where accno='"+accno+"'";
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
	public boolean checkCid(String cid)
	{
		String sql="select * from account where cid='"+cid+"'";
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
}