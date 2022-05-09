package admin.implement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import admin.dao.RepairInterface;
import admin.data.Repair;
import dbc.util.DBConnection;


public class RepairMethod_Mysql implements RepairInterface {
	
	Connection con = (Connection) DBConnection.openConnection();//与数据库建立连接
	
	public ArrayList<Repair> findAllPipeline() {
		ArrayList<Repair> repairlist = new ArrayList<Repair>();
		try {
			Statement stmt = con.createStatement();
			String sql = "select * from pipeline";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				var area = rs.getString("area");
				var build = rs.getString("build");
				var room = rs.getString("room");
				var dormheader = rs.getString("dormheader");
				var description = rs.getString("description");
				Repair repair = new Repair(area, build, room, dormheader, description);
				repairlist.add(repair);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return repairlist;
	}

	public ArrayList<Repair> findAllElectricapp() {
		ArrayList<Repair> repairlist = new ArrayList<Repair>();
		try {
			Statement stmt = con.createStatement();
			String sql = "select * from electricapp";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				var area = rs.getString("area");
				var build = rs.getString("build");
				var room = rs.getString("room");
				var dormheader = rs.getString("dormheader");
				var description = rs.getString("description");
				Repair repair = new Repair(area, build, room, dormheader, description);
				repairlist.add(repair);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return repairlist;
	}

	public ArrayList<Repair> findAllFurniture() {
		ArrayList<Repair> repairlist = new ArrayList<Repair>();
		try {
			Statement stmt = con.createStatement();
			String sql = "select * from furniture";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				var area = rs.getString("area");
				var build = rs.getString("build");
				var room = rs.getString("room");
				var dormheader = rs.getString("dormheader");
				var description = rs.getString("description");
				Repair repair = new Repair(area, build, room, dormheader, description);
				repairlist.add(repair);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return repairlist;
	}

	public ArrayList<Repair> findAllFloorwall() {
		ArrayList<Repair> repairlist = new ArrayList<Repair>();
		try {
			Statement stmt = con.createStatement();
			String sql = "select * from floorwall";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				var area = rs.getString("area");
				var build = rs.getString("build");
				var room = rs.getString("room");
				var dormheader = rs.getString("dormheader");
				var description = rs.getString("description");
				Repair repair = new Repair(area, build, room, dormheader, description);
				repairlist.add(repair);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return repairlist;
	}

	public Boolean deletePipeline(String area, String build, String room, String description) {
		boolean result = false;
		try {
			Statement stmt = con.createStatement();
			String sql = "delete from pipeline where area='"+area+"' and build='"+build+"' and room='"+room+"' and description='"+description+"'" ;
			int count = stmt.executeUpdate(sql);
			if(count>0)
				result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public Boolean deleteElectricapp(String area, String build, String room, String description) {
		boolean result = false;
		try {
			Statement stmt = con.createStatement();
			String sql = "delete from electricapp where area='"+area+"' and build='"+build+"' and room='"+room+"' and description='"+description+"'" ;
			int count = stmt.executeUpdate(sql);
			if(count>0)
				result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public Boolean deleteFurniture(String area, String build, String room, String description) {
		boolean result = false;
		try {
			Statement stmt = con.createStatement();
			String sql = "delete from furniture where area='"+area+"' and build='"+build+"' and room='"+room+"' and description='"+description+"'" ;
			int count = stmt.executeUpdate(sql);
			if(count>0)
				result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public Boolean deleteFloorwall(String area, String build, String room, String description) {
		boolean result = false;
		try {
			Statement stmt = con.createStatement();
			String sql = "delete from floorwall where area='"+area+"' and build='"+build+"' and room='"+room+"' and description='"+description+"'" ;
			int count = stmt.executeUpdate(sql);
			if(count>0)
				result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public Boolean addPipeline(String area, String build, String room, String description,String dormheader) {
		boolean result = false;
		try {
			String sql = "insert into pipeline values(?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, area);
			pstmt.setString(2, build);
			pstmt.setString(3, room);
			pstmt.setString(4, dormheader);
			pstmt.setString(5, description);
			int count = pstmt.executeUpdate();
			if(count>0)
				result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public Boolean addElectricapp(String area, String build, String room, String description,String dormheader) {
		boolean result = false;
		try {
			String sql = "insert into electricapp values(?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, area);
			pstmt.setString(2, build);
			pstmt.setString(3, room);
			pstmt.setString(4, dormheader);
			pstmt.setString(5, description);
			int count = pstmt.executeUpdate();
			if(count>0)
				result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public Boolean addFurniture(String area, String build, String room, String description,String dormheader) {
		boolean result = false;
		try {
			String sql = "insert into furniture values(?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, area);
			pstmt.setString(2, build);
			pstmt.setString(3, room);
			pstmt.setString(4, dormheader);
			pstmt.setString(5, description);
			int count = pstmt.executeUpdate();
			if(count>0)
				result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public Boolean addFloorwall(String area, String build, String room, String description,String dormheader) {
		boolean result = false;
		try {
			String sql = "insert into floorwall values(?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, area);
			pstmt.setString(2, build);
			pstmt.setString(3, room);
			pstmt.setString(4, dormheader);
			pstmt.setString(5, description);
			int count = pstmt.executeUpdate();
			if(count>0)
				result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
