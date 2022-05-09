package admin.implement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import admin.dao.WaterElectricityInterface;
import admin.data.WaterElectricity;
import dbc.util.DBConnection;

public class WaterElectricityMethod_Mysql  implements WaterElectricityInterface{

	Connection con = (Connection) DBConnection.openConnection();//与数据库建立连接
	
	public Boolean changeWaterElectricity(String area, String build, String room, int watermoney, int electricitymoney) {
		boolean result = false;
		try {
			String sql1 = "update dormwater set money=? where area=? and build=? and room=?";
			PreparedStatement pstmt1 = con.prepareStatement(sql1);
			pstmt1.setInt(1, watermoney);
			pstmt1.setString(2, area);
			pstmt1.setString(3, build);
			pstmt1.setString(4, room);
			int count1 = pstmt1.executeUpdate();
			if(count1>0)
				result = true;
			pstmt1.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			String sql2 = "update dormelectricity set money=? where area=? and build=? and room=?";
			PreparedStatement pstmt2 = con.prepareStatement(sql2);
			pstmt2.setInt(1, electricitymoney);
			pstmt2.setString(2, area);
			pstmt2.setString(3, build);
			pstmt2.setString(4, room);
			int count2 = pstmt2.executeUpdate();
			if(count2>0)
				result = true;
			else
				result = false;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public ArrayList<WaterElectricity> findAllWaterElectricity() {
		ArrayList<WaterElectricity> waterelectricitylist = new ArrayList<WaterElectricity>();
		try {
			String sql1 = "select * from dormwater,dormelectricity where dormwater.room = dormelectricity.room and dormwater.build = dormelectricity.build";
			Statement stmt = ((java.sql.Connection) con).createStatement();
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
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return waterelectricitylist;
	}

	public int findWaterMoney(String area,String build,String room) {
		int money = 0;
		//获取水费
		String sql1 = "select money from dormwater where area = '" + area + "' and build =  '" + build + "' and room = '" + room + "' ";
		Statement stmt;
		try {
			stmt = ((java.sql.Connection) con).createStatement();
			ResultSet rs1 = stmt.executeQuery(sql1);
			while(rs1.next()){
				 money = rs1.getInt("money");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return money;
	}

	public int findElectricityMoney(String area,String build,String room) {
		int money = 0;
		//获取水费
		String sql1 = "select money from dormelectricity where area = '" + area + "' and build =  '" + build + "' and room = '" + room + "' ";
		Statement stmt;
		try {
			stmt = ((java.sql.Connection) con).createStatement();
			ResultSet rs1 = stmt.executeQuery(sql1);
			while(rs1.next()){
				 money = rs1.getInt("money");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return money;
	}

}
