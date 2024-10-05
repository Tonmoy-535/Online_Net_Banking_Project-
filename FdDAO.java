package master.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import master.dto.FdDTO;
import master.utilities.ConnectionFactory;


public class FdDAO {
	Connection cn=null;
	Statement st=null;
	ResultSet rs=null;
	PreparedStatement ps=null;
	String insert_sql="insert into fd values(?,?,?,?)";
	String select_sql="SELECT ACCNO,AMOUNT,YR,BOOKDT,AMOUNT+(AMOUNT*YR*0.06) MATURYVALUE FROM FD WHERE ACCNO='";
	
	public void insertData(FdDTO rdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(insert_sql);
			ps.setString(1,rdto.getAccno());
			ps.setDouble(2,rdto.getAmount());
			ps.setInt(3,rdto.getYr());
			ps.setString(4,rdto.getBookdt());
			ps.executeUpdate();
			cn.commit();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public ResultSet getData(String accno)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(select_sql +accno+"'");
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
}
