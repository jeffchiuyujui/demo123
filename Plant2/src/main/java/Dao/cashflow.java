package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import Model.money;
import Model.user;

public interface cashflow {
	//�s�u��k
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
		//�s�W����
		void add(money A);
		
		//�d�ߪ���
		String queryAll();//����
		money queryId(int id);
		String querySum(int start,int end);
		
		//�ק磌��
		void update(money C);
		
		//�R������
		
		void delete(int id);
}
