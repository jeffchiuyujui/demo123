package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import Model.money;
import Model.user;

public interface cashflow {
	//連線方法
		static Connection getDb()
		{
			Connection conn=null;
			String url="jdbc:mysql://localhost:3306/company?useUnicode=true&characterEncoding=utf-8";
			String user="root";
			String password="1234";
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				conn=DriverManager.getConnection(url, user, password);
			} catch (ClassNotFoundException e) {
				System.out.println("no Driver");
				e.printStackTrace();
			} catch (SQLException e) {
				System.out.println("no Connection");
				e.printStackTrace();
			}
			
			return conn;
			
		}
		//新增物件
		void add(money A);
		
		//查詢物件
		String queryAll();//全部
		money queryId(int id);
		String querySum(int start,int end);
		
		//修改物件
		void update(money C);
		
		//刪除物件
		
		void delete(int id);
}
