package myUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connect {
	static String driver = "com.mysql.jdbc.Driver";
	static String url = "jdbc:mysql://localhost:3306/webkeshe?useUnicode=true&characterEnconding=utf-8";
	static String username="root";
	static String password = "123456";
	static Connection conn =null;
	static{
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static Connection getConnection(){
		if(conn==null){
			try {
				conn= DriverManager.getConnection(url,username,password);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return conn;
		}
		return conn;
		
	}
	
	

}
