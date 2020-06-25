package myServlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myUtil.connect;

import DAO.checkUser;

import com.sun.xml.internal.bind.v2.runtime.Name;

@WebServlet("/logServlet")
public class logServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String name = req.getParameter("username");
		String password = req.getParameter("password");

		resp.setContentType("text/html;charset=utf-8");

		// if(name.){}
		checkUser checkuser = new checkUser();
		ResultSet res = checkuser.getAllUser();
		String usernumber = "";
		String userpassword = "";
		boolean b=true;
		try {
			while (b = res.next()) {

				try {
					usernumber = res.getString("usernumber");
					userpassword = res.getString("userpassword");
				} catch (SQLException e) {

					e.printStackTrace();
				}
				
				
				if (name.equals(usernumber)) {
					if (password.equals(userpassword)) {

						Cookie cookie = new Cookie("usernumber", usernumber);
						resp.addCookie(cookie);
						Cookie cookie1 = new Cookie("userpassword",userpassword);
						resp.addCookie(cookie1);
						
						HttpSession session = req.getSession();
						session.setAttribute("usernumber", usernumber);
//						session.getAttribute(arg0)

					} else {
						resp.getWriter().write("’À∫≈ªÚ’ﬂ√‹¬Î¥Ì¡À");
					}

				} 
				if (name.equals(usernumber) && password.equals(userpassword)) {
					break;
				}
			  

			}

			
		} catch (SQLException e) {

			e.printStackTrace();
		}

	}

}
