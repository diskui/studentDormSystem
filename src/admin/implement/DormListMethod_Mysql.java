package admin.implement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import admin.dao.DormListInterface;
import dbc.util.DBConnection;
import student.data.Student;

public class DormListMethod_Mysql implements DormListInterface{

	Connection con = (Connection) DBConnection.openConnection();//与数据库建立连接
	
	public ArrayList<Student> findAllStudent() {
		ArrayList<Student> dormlist = new ArrayList<Student>();
		try {
			Statement stmt = con.createStatement();
			String sql = "select * from dormlist";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				var studentnumber = rs.getString("studentnumber");
				var studentname = rs.getString("studentname");
				var area = rs.getString("area");
				var build = rs.getString("build");
				var room = rs.getString("room");
				var dormheader = rs.getString("dormheader");
				var dormnumber = rs.getString("dormnumber");
				var dormtype = rs.getString("dormtype");
				var dormheaderphone = rs.getString("dormheaderphone");
				var phone = rs.getString("phone");
				Student student = new Student(studentnumber, studentname, area, build, room, dormheader, dormnumber, dormtype, dormheaderphone, phone);
				dormlist.add(student);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dormlist;
	}

	public Boolean addDorm(Student student) {
		boolean result = false;
		try {
			String sql = "insert into dormlist values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, student.getStudentnumber());
			pstmt.setString(2, student.getStudentname());
			pstmt.setString(3, student.getArea());
			pstmt.setString(4, student.getBuild());
			pstmt.setString(5, student.getRoom());
			pstmt.setString(6, student.getDormheader());
			pstmt.setString(7, student.getDormnumber());
			pstmt.setString(8, student.getDormtype());
			pstmt.setString(9, student.getDormheaderphone());
			pstmt.setString(10, student.getPhone());
			int count = pstmt.executeUpdate();
			if(count>0)
				result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public Boolean deleteDorm(String studentnumber) {
		boolean result = false;
		try {
			Statement stmt = con.createStatement();
			String sql = "delete from dormlist where studentnumber='"+studentnumber+"'" ;
			int count = stmt.executeUpdate(sql);
			if(count>0)
				result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public Boolean changeDorm(String studentnumber, String studentname, String area, String build, String room, String dormheader,
			String dormnumber, String dormtype, String dormheaderphone, String phone) {
		boolean result = false;
		try {
			String sql = "update dormlist set area=?,build=?,room=?,dormheader=?,dormnumber=?,dormtype=?,dormheaderphone=?,phone=? where studentnumber=?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, area);
			pstmt.setString(2, build);
			pstmt.setString(3, room);
			pstmt.setString(4, dormheader);
			pstmt.setString(5, dormnumber);
			pstmt.setString(6, dormtype);
			pstmt.setString(7, dormheaderphone);
			pstmt.setString(8, phone);
			pstmt.setString(9, studentnumber);
			int count = pstmt.executeUpdate();
			if(count>0)
				result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
