package admin.implement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import admin.dao.DormChangeInterface;
import admin.data.DormChange;
import dbc.util.DBConnection;

public class DormChangeMethod_Mysql implements DormChangeInterface{

	Connection con = (Connection) DBConnection.openConnection();//与数据库建立连接
	
	public ArrayList<DormChange> findAllDormChange() {
		ArrayList<DormChange> dormchangelist = new ArrayList<DormChange>();
		try {
			Statement stmt = con.createStatement();
			String sql = "select * from dormchange";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				var area = rs.getString("area");
				var build = rs.getString("build");
				var room = rs.getString("room");
				var toarea = rs.getString("toarea");
				var tobuild = rs.getString("tobuild");
				var toroom = rs.getString("toroom");
				var description = rs.getString("description");
				var phone = rs.getString("phone");
				DormChange dormchange = new DormChange(area, build, room, toarea, tobuild, toroom, description, phone);
				dormchangelist.add(dormchange);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dormchangelist;
	}

	@Override
	public Boolean deleteDormChange(String build, String room, String phone) {
		boolean result = false;
		try {
			Statement stmt = con.createStatement();
			String sql = "delete from dormchange where build='"+build+"' and room='"+room+"' and phone='"+phone+"'" ;
			int count = stmt.executeUpdate(sql);
			if(count>0)
				result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public Boolean addDormChange(String area, String build, String room, String toarea, String tobuild, String toroom,String description, String phone) {
		boolean result = false;
		try {
			String sql = "insert into dormchange values(?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, area);
			pstmt.setString(2, build);
			pstmt.setString(3, room);
			pstmt.setString(4, toarea);
			pstmt.setString(5, tobuild);
			pstmt.setString(6, toroom);
			pstmt.setString(7, description);
			pstmt.setString(8, phone);
			int count = pstmt.executeUpdate();
			if(count>0)
				result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
}
