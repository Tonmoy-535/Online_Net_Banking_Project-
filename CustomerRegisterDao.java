package master.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import master.dto.CustomerRegisterDto;
import master.utilities.ConnectionFactory;

public class CustomerRegisterDao {
	Connection cn=null;
	Statement st=null;
	ResultSet rs=null;
	PreparedStatement ps=null;
	String insert_sql="insert into customer values(?,?,?,?,?,?,?,?,?,?,?,?)";
	String delete_sql="delete from customer where cid=?";
	String update_sql="update customer set password=? where cid=?";
	String select_sql="select * from customer order by cid";
	String updateAccount_sql="update customer set accno=? where cid=?";
	
	public void insertData(CustomerRegisterDto rdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(insert_sql);
			ps.setString(1,rdto.getCid());
			ps.setString(2,rdto.getCname());
			ps.setInt(3,rdto.getCphno());
			ps.setString(4,rdto.getCemail());
			ps.setString(5,rdto.getAdharno());
			ps.setString(6,rdto.getPancardno());
			ps.setString(7,rdto.getDob());
			ps.setString(8,rdto.getGender());
			ps.setString(9,rdto.getPlotno());
			ps.setString(10,rdto.getStreetnm());
			ps.setInt(11,rdto.getPincode());
			ps.setString(12,rdto.getPassword());
			ps.executeUpdate();
			cn.commit();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public void updateData(CustomerRegisterDto rdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(update_sql);
			ps.setString(1,rdto.getPassword());
			ps.setString(2,rdto.getCid());
			ps.executeUpdate();
			cn.commit();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public void deleteData(CustomerRegisterDto rdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(delete_sql);
			ps.setString(1,rdto.getCid());
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
	public void updateAccNoData(String accno, String acid)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(updateAccount_sql);
			ps.setString(1,accno);
			ps.setString(2,acid);
			ps.executeUpdate();
			cn.commit();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public boolean checkCustomer(String cid)
	{
		String sql="select * from customer where cid='"+cid+"'";
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
	public String checkPassword(String cid, String password)
	{
		String sql="select * from customer where cid='"+cid+"' and password='"+password+"'";
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(sql);
			if(rs.next())
			{
				return cid;
			}
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		String wrong="wrong";
		return wrong;
	}
	public boolean checklogin(String cid, String password)
	{
		String sql="select * from customer where cid='"+cid+"' and password='"+password+"'";
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