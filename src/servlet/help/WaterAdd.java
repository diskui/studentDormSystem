package servlet.help;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbc.util.DBConnection;


@WebServlet("/WaterAdd")
public class WaterAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		var studentnumber = request.getParameter("studentnumber");
		var money = Integer.parseInt(request.getParameter("money"));
		Connection con = (Connection) DBConnection.openConnection();//建立数据库连接
		String area = null,build = null,room = null;
		int watermoney;
		
		try {
			Statement stmt = ((java.sql.Connection) con).createStatement();
			String sql = "select * from dormlist where studentnumber = '" + studentnumber + "'";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				area = rs.getString("area");
				build = rs.getString("build");
				room = rs.getString("room");
			}
			rs.close();
			
			String sql1 = "select money from dormwater where area = '" + area + "' and build =  '" + build + "' and room = '" + room + "' ";
			ResultSet rs1 = stmt.executeQuery(sql1);
			while(rs1.next()) {
				watermoney = rs1.getInt("money");
				money = money + watermoney;
			}
			rs1.close();	
			
			String sql2 = "update dormwater set money=? where area = '" + area + "' and build =  '" + build + "' and room = '" + room + "' ";
			PreparedStatement pstmt = con.prepareStatement(sql2);
			pstmt.setInt(1, money);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
