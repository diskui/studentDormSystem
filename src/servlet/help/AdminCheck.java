package servlet.help;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;

import dbc.util.DBConnection;

@WebServlet("/AdminCheck")
public class AdminCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		var adminnumber = request.getParameter("adminnumb");
		var password = request.getParameter("password");
		Connection con = (Connection) DBConnection.openConnection();
		try {
			Statement stmt = ((java.sql.Connection) con).createStatement();
			String sql = "select *from adminlogin where adminnumber = '" + adminnumber + "' and password = '" + password + "'";
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()) {
				response.sendRedirect("AdminData?adminnumber=" + adminnumber);
			}else {
				response.sendRedirect("LoginWarning_admin.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
