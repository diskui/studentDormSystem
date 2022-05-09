package servlet.help;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.data.Admin;
import admin.data.WaterElectricity;

import java.sql.Connection;

import dbc.util.DBConnection;


@WebServlet("/AdminData")
public class AdminData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		var adminnumber = request.getParameter("adminnumber");
		var  session = request.getSession();
		Connection con = (Connection) DBConnection.openConnection();
		try {
			//获取管理员总信息----------------------------------------------------------------------------------------------
			Statement stmt = ((java.sql.Connection) con).createStatement();
			String sql = "select * from adminlist where adminnumber = '" + adminnumber + "'";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				var adminname = rs.getString("adminname");
				var area = rs.getString("area");
				var build = rs.getString("build");
				var phone = rs.getString("phone");
				Admin admin = new Admin(adminnumber, adminname, area, build, phone);
				ArrayList<Admin> adminlist= new ArrayList<Admin>();
				 adminlist.add(admin);
				session.setAttribute("adminlist", adminlist);
			}
			rs.close();
			//获取宿舍水电费信息----------------------------------------------------------------------------------------------
			ArrayList<WaterElectricity> waterelectricitylist = new ArrayList<WaterElectricity>();
			String sql1 = "select * from dormwater,dormelectricity where dormwater.room = dormelectricity.room and dormwater.build = dormelectricity.build";
			ResultSet rs1 = stmt.executeQuery(sql1);
			while(rs1.next()){
				var area = rs1.getString("dormwater.area");
				var build = rs1.getString("dormwater.build");
				var room = rs1.getString("dormwater.room");
				var dormheader = rs1.getString("dormwater.dormheader");
				var watermoney = rs1.getInt("dormwater.money");
				var electricitymoney = rs1.getInt("dormelectricity.money");
				WaterElectricity waterelectricity = new WaterElectricity(area, build, room, dormheader, watermoney, electricitymoney);
				waterelectricitylist.add(waterelectricity);
				session.setAttribute("waterelectricitylist", waterelectricitylist);
			}
			rs1.close();
			//跳转页面-----------------------------------------------------------------------------------------------------------
			response.sendRedirect("Admin_Main.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
