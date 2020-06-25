package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import myUtil.*;
import entityPackge.Item;

public class ItemsDao {

    public	ArrayList<Item> list = new  ArrayList<Item>();
	 
//		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
	 
	public ArrayList<Item> getAllItems() throws SQLException {
		
		System.out.println( connect.getConnection());
		
		Connection conn = connect.getConnection();

		 try {
			 String sql = "select * from goods";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("≤È—Ø ß∞‹");
		}
		 
		 while(rs.next()){
			 Item item = new Item();
			 item.setId(rs.getInt("id"));
			 item.setName(rs.getString("name"));
			 item.setCity(rs.getString("city"));
			 item.setAbout(rs.getString("about"));
			 item.setPrice(rs.getString("price"));
			 item.setImg(rs.getString("img"));
			 item.setGoodsClass(rs.getString("class"));
			 list.add(item);
		 }
		
		return list;
		
	}
	
	
	 
	public ArrayList<Item> getClassItems(String checkClass) throws SQLException {
		
		System.out.println( connect.getConnection());
		
		Connection conn = connect.getConnection();

		 try {
			 String sql = "select * from goods where class = ?";
			 String s =checkClass;
			 
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, s);
			rs = stmt.executeQuery();
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("≤È—Ø ß∞‹");
		}
		 
		 while(rs.next()){
			 Item item = new Item();
			 item.setId(rs.getInt("id"));
			 item.setName(rs.getString("name"));
			 item.setCity(rs.getString("city"));
			 item.setAbout(rs.getString("about"));
			 item.setPrice(rs.getString("price"));
			 item.setImg(rs.getString("img"));
			 item.setGoodsClass(rs.getString("class"));
			 list.add(item);
		 }
		
		return list;
		
	}
	
	public ArrayList<Item> getSearshItems(String searshWord) throws SQLException {
		
		System.out.println( connect.getConnection());
		
		Connection conn = connect.getConnection();

		 try {
			 String sql ="SELECT * FROM goods WHERE about LIKE  ?  ";
			 String s = "%"+searshWord+"%";
			 
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, s);
			rs = stmt.executeQuery();
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("≤È—Ø ß∞‹");
		}
		 
		 while(rs.next()){
			 Item item = new Item();
			 item.setId(rs.getInt("id"));
			 item.setName(rs.getString("name"));
			 item.setCity(rs.getString("city"));
			 item.setAbout(rs.getString("about"));
			 item.setPrice(rs.getString("price"));
			 item.setImg(rs.getString("img"));
			 item.setGoodsClass(rs.getString("class"));
			 list.add(item);
		 }
		
		return list;
		
	}

}
