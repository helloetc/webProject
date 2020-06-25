package myServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myUtil.connect;

@WebServlet("/cartAddServlet")
public class cartAddServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)	throws ServletException, IOException {
		
		System.out.println("请求过啊来了");
		System.out.println(req.getParameter("id"));
		String img= req.getParameter("img");
		String name= req.getParameter("name");
		String about=	req.getParameter("about");
		String price = req.getParameter("price");
		
		resp.setContentType("text/html;charset=utf-8");
		
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		Connection conn = connect.getConnection();
		String usernumber="";
		
//		遍历cookie
		Cookie[] cookies=req.getCookies();
		if(cookies!=null){
			for(Cookie cookie:cookies){
				System.out.println(cookie.getName()+"------"+cookie.getValue());
				if(cookie.getName().equals("usernumber")){
					usernumber = cookie.getValue();
					usernumber="carttable" + usernumber;
				}
			}
		}

		boolean b = true;
		try {
			String sql ="insert into "+ usernumber +"   value(null,?,?,?,?)";
			stmt = conn.prepareStatement(sql);
			

			stmt.setString(1, img);
			stmt.setString(2, name);
			stmt.setString(3, about);
			stmt.setString(4, price);
			
			System.out.println(stmt);
			
			int i = stmt.executeUpdate();
			System.out.println(b);
			resp.getWriter().write("添加购物车成功!");
			
		} catch (SQLException e) {
			System.out.println("第二次"+b);
			e.printStackTrace();
		}

		
		
	}

}
