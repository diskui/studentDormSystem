package admin.implement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import admin.dao.ComplainInterface;
import admin.data.AdminCom;
import admin.data.DormCom;
import dbc.util.DBConnection;

public class ComplainMethod_Mysql implements ComplainInterface{

	Connection con = (Connection) DBConnection.openConnection();//与数据库建立连接
	
	public ArrayList<DormCom> findAllDormCom() {
		ArrayList<DormCom> dormcomlist = new ArrayList<DormCom>();
		try {
			Statement stmt = con.createStatement();
			String sql = "select * from dormcomplain";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				var area = rs.getString("area");
				var build = rs.getString("build");
				var room = rs.getString("room");
				var dormheader = rs.getString("dormheader");
				var description = rs.getString("description");
				var phone = rs.getString("phone");
				var email = rs.getString("email");
				DormCom dormcom = new DormCom(area, build, room, dormheader, description, phone, email);
				dormcomlist.add(dormcom);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dormcomlist;
	}

	@Override
	public ArrayList<AdminCom> findAllAdminCom() {
		ArrayList<AdminCom> admincomlist = new ArrayList<AdminCom>();
		try {
			Statement stmt = con.createStatement();
			String sql = "select * from admincomplain";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				var admin = rs.getString("admin");
				var description = rs.getString("description");
				var phone = rs.getString("phone");
				var email = rs.getString("email");
				AdminCom admincom = new AdminCom(admin, description, phone, email);
				admincomlist.add(admincom);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return admincomlist;
	}

	public Boolean deleteDormCom(String area, String build, String room, String phone) {
		boolean result = false;
		try {
			Statement stmt = con.createStatement();
			String sql = "delete from dormcomplain where area='"+area+"' and build='"+build+"' and room='"+room+"' and phone='"+phone+"'" ;
			int count = stmt.executeUpdate(sql);
			if(count>0)
				result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public Boolean deleteAdminCom(String admin, String phone) {
		boolean result = false;
		try {
			Statement stmt = con.createStatement();
			String sql = "delete from admincomplain where admin='"+admin+"' and phone='"+phone+"'" ;
			int count = stmt.executeUpdate(sql);
			if(count>0)
				result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public Boolean addDormCom(String area, String build, String room, String dormheader, String description,String phone, String email) {
		boolean result = false;
		try {
			String sql = "insert into dormcomplain values(?,?,?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, area);
			pstmt.setString(2, build);
			pstmt.setString(3, room);
			pstmt.setString(4, dormheader);
			pstmt.setString(5, description);
			pstmt.setString(6, phone);
			pstmt.setString(7, email);
			int count = pstmt.executeUpdate();
			if(count>0)
				result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public Boolean addAdminCom(String admin, String description, String phone, String email) {
		boolean result = false;
		try {
			String sql = "insert into admincomplain values(?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, admin);
			pstmt.setString(2, description);
			pstmt.setString(3, phone);
			pstmt.setString(4, email);
			int count = pstmt.executeUpdate();
			if(count>0)
				result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
}
