package master.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import master.dto.FundTransferDTO;

import master.utilities.ConnectionFactory;

public class FundTransferDAO {
	Connection cn=null;
	Statement st=null;
	ResultSet rs=null;
	PreparedStatement ps=null;
	String insert_sql="insert into fundtransfer values(?,?,?,?)";
	
	public void insertData(FundTransferDTO rdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(insert_sql);
			ps.setString(1,rdto.getSaccno());
			ps.setString(2,rdto.getBaccno());
			ps.setDouble(3,rdto.getAmount());
			ps.setString(4,rdto.getTrdt());
			ps.executeUpdate();
			cn.commit();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
}
