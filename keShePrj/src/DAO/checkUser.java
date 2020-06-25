package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import myUtil.connect;

public class checkUser {
	
	PreparedStatement stmt = null;
	ResultSet rs = null;
	Connection conn = connect.getConnection();
	String sql = "select * from myuser";
	
	public ResultSet getAllUser(){
		try {
			stmt= conn.prepareStatement(sql);
			rs = stmt.executeQuery();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return rs;
		
	}

}
