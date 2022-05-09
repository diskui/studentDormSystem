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

@WebServlet("/UserCheck")
public class UserCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		var studentnumber = request.getParameter("studentnumb");
		var password = request.getParameter("password");
		Connection con = (Connection) DBConnection.openConnection();
		var session =  request.getSession();
		try {
			Statement stmt = ((java.sql.Connection) con).createStatement();
			String sql = "select *from studentlogin where studentnumber = '" + studentnumber + "' and password = '" + password + "'";
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()) {
				session.setAttribute("studentnumber", studentnumber);
				session.setAttribute("password", password);
				response.sendRedirect("UserData?studentnumber="+studentnumber);
			}else {
				response.sendRedirect("LoginWarning.jsp");
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
