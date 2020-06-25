package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import myUtil.connect;

public class selectTabel {
	PreparedStatement stmt = null;
	ResultSet rs = null;
	Connection conn = connect.getConnection();
	
	
	public ResultSet getAllCol(String myTabel){
		try {
			String sql = "SELECT * FROM carttable" +myTabel ;
//			carttableadmin11
			
			stmt= conn.prepareStatement(sql);
//			stmt.setString(1, s);
			System.out.println(stmt);
			rs = stmt.executeQuery();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return rs;
		
	}

}
