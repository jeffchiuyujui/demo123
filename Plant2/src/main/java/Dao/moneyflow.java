package Dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.money;
import Model.user;

public class moneyflow  implements cashflow{

	public static void main(String[] args) {
		

	}

	@Override
	public void add(money A) {
		String sql="insert into money(kind,USD,NTD,AUD,NZD,HKD,sum) values(?,?,?,?,?,?,?)";
		Connection conn=cashflow.getDb();
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setString(1, A.getKind());
			ps.setInt(2, A.USD);
			ps.setInt(3, A.NTD);
			ps.setInt(4, A.AUD);
			ps.setInt(5, A.NZD);
			ps.setInt(6, A.HKD);
			ps.setInt(7, A.getsum());			
			
			ps.executeUpdate();	
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
		

	@Override
	public String queryAll() {
		
		Connection conn=cashflow.getDb();
		String SQL="select * from money";
		String show="";
		
		try {
			PreparedStatement ps=conn.prepareStatement(SQL);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				show=show+"<tr><td>"+rs.getInt("id")+
						"<td>"+rs.getString("kind")+
						"<td>"+rs.getInt("USD")+
						"<td>"+rs.getInt("NTD")+
						"<td>"+rs.getInt("AUD")+
						"<td>"+rs.getInt("NZD")+
						"<td>"+rs.getInt("HKD")+
						"<td>"+rs.getInt("sum");
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return show;
	}

	@Override
	public money queryId(int id) {
		
		Connection conn=cashflow.getDb();
		String SQL="select * from money where id=?";
		money p=null;
		try {
			PreparedStatement  ps=conn.prepareStatement(SQL);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				p=new money();
				p.setId(rs.getInt("id"));
				p.setKind(rs.getString("kind"));
				p.setUSD(rs.getInt("USD"));
				p.setNTD(rs.getInt("NTD"));
				p.setAUD(rs.getInt("AUD"));
				p.setNZD(rs.getInt("NZD"));
				p.setHKD(rs.getInt("HKD"));
				p.setSum(rs.getInt("sum"));
				
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return p;
	}

	@Override
	public String querySum(int start, int end) {
		Connection conn=cashflow.getDb();
		String SQL="select * from money where sum>=? and sum<=?";
		String show="";
		
		try {
			PreparedStatement ps=conn.prepareStatement(SQL);
			ps.setInt(1, start);
			ps.setInt(2, end);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				show=show+"<tr><td>"+rs.getInt("id")+
						"<td>"+rs.getString("kind")+
						"<td>"+rs.getInt("USD")+
						"<td>"+rs.getInt("NTD")+
						"<td>"+rs.getInt("AUD")+
						"<td>"+rs.getInt("NZD")+
						"<td>"+rs.getInt("HKD")+
						"<td>"+rs.getInt("sum");
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return show;
	}

	@Override
	public void update(money C) {
		Connection conn=cashflow.getDb();
		String SQL="update money set kind=?,USD=?,NTD=?,AUD=?,NZD=?,HKD=?,Sum=? where id=?";
		
		try {
			PreparedStatement ps=conn.prepareStatement(SQL);
			ps.setString(1, C.getKind());
			ps.setInt(2, C.USD);
			ps.setInt(3, C.NTD);
			ps.setInt(4, C.AUD);
			ps.setInt(5, C.NZD);
			ps.setInt(6, C.HKD);
			ps.setInt(7, C.getsum());
			ps.setInt(8,C.getId());
			
			ps.executeUpdate();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}


	@Override
	public void delete(int id) {
		Connection conn=cashflow.getDb();
		String SQL="delete from money where id=?";
		try {
			PreparedStatement ps=conn.prepareStatement(SQL);
			ps.setInt(1, id);
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
