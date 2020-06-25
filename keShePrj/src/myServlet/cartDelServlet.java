package myServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.PreparedStatement;

import myUtil.connect;

@WebServlet("/cartDelServlet")
public class cartDelServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		java.sql.PreparedStatement ps = null;
		connect getConnect = new connect();
	    Connection conn  =	getConnect.getConnection();
	    HttpSession session = req.getSession();
	   String  userTabel =(String) session.getAttribute("usernumber");
	    int id = Integer.parseInt(req.getParameter("id")) ;
	    String sql = "delete from carttable" + userTabel + "  where id = "  + id ;
	    
	    try {
	    	
			ps = conn.prepareStatement(sql);
			int i  = ps.executeUpdate();
			System.out.println("成功删除了" + i +"行");
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	    
	    

	}
}
