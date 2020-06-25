package myServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.checkUser;

import myUtil.connect;

@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {

	String name;
	String password;
	Connection conn = connect.getConnection();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		name = req.getParameter("username");
		password = req.getParameter("password");

		String b1 = insertUser(name, password);
		boolean b2 = createTable(name);

		System.out.println("���룺" + b1);
		System.out.println("����" + b2);
		resp.setContentType("text/html;charset=utf-8");
		resp.getWriter().write("ע��ɹ� ! <a href='log.jsp'>���ص�¼</a> ");

	}

	// �����û���
	public String insertUser(String name, String passW) {

	    boolean b =	findUserName(name);
	    
	    if(!b){
	    	PreparedStatement stmt = null;
			String sql = "insert into myuser value(null,?,?);";
			try {
				stmt = conn.prepareStatement(sql);
				// ps.setInt(1, id);
				stmt.setString(1, name);
				stmt.setString(2, passW);
				int i = stmt.executeUpdate();
				return "�ɹ����" + i + "��";
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "ʧ���ˣ�";
	    	
	    }

	    return "�û��Ѵ���";
	}

	// ��ѯ�û��� true �Ļ��û��Ѵ���
	public boolean findUserName(String name) {
		checkUser checkuser = new checkUser();
		ResultSet res = checkuser.getAllUser();
		boolean b=false;
		try {
			while (res.next()) {

				String usernumber = res.getString("usernumber");

				if (name.equals(usernumber)) {
					b=true;
					return b;
				} 
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}
		return b;
	}

	// �������ﳵ��
	public boolean createTable(String tablename) {

		tablename = "carttable" + tablename;

		boolean b = false;

		String sql = "CREATE TABLE  " + tablename
				+ "(  `id` INT NOT NULL AUTO_INCREMENT, "
				+ " `img` VARCHAR(45) NULL, " + " `name` VARCHAR(45) NULL,  "
				+ " `about` VARCHAR(145) NULL,"
				+ " `price` VARCHAR(45) NULL,  PRIMARY KEY (`id`))";

		try {
			PreparedStatement stmt = null;
			ResultSet rs = null;
			stmt = conn.prepareStatement(sql);
			stmt.execute();
			b = true;
			System.out.println("����ɹ�");

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return b;

	}

}
