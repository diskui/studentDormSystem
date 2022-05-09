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

import student.data.Paybill;
import student.data.Student;

import java.sql.Connection;

import dbc.util.DBConnection;

@WebServlet("/UserData")
public class UserData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		var studentnumber = request.getParameter("studentnumber");
		Connection con = (Connection) DBConnection.openConnection();
		try {
			//获取宿舍总体信息---------------------------------------------------------------------------------------------
			String studentname,area = null,build = null,room = null,dormheader = null,dormnumber,dormtype,dormheaderphone,phone;
			var  session = request.getSession();
			Statement stmt = ((java.sql.Connection) con).createStatement();
			String sql = "select * from dormlist where studentnumber = '" + studentnumber + "'";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				//查找数据，若有仅能查找到一条
				studentname = rs.getString("studentname");
				area = rs.getString("area");
				build = rs.getString("build");
				room = rs.getString("room");
				dormheader = rs.getString("dormheader");
				dormnumber = rs.getString("dormnumber");
				dormtype = rs.getString("dormtype");
				dormheaderphone = rs.getString("dormheaderphone");
				phone = rs.getString("phone");
				Student student = new Student(studentnumber,studentname,area,build,room,dormheader,dormnumber,dormtype,dormheaderphone,phone);
				ArrayList<Student> studentlist= new ArrayList<Student>();
				studentlist.add(student);
				session.setAttribute("studentlist", studentlist);		
			}
			rs.close();
			//获取宿舍的水费，电费账单-----------------------------------------------------------------------------------
			ArrayList<Paybill> billlist = new ArrayList<Paybill>();
			//获取水费
			String sql1 = "select * from dormwater where area = '" + area + "' and build =  '" + build + "' and room = '" + room + "' ";
			ResultSet rs1 = stmt.executeQuery(sql1);
			while(rs1.next()){
				var money = rs1.getInt("money");
				var week1 = rs1.getInt("week1");var week2 = rs1.getInt("week2");var week3 = rs1.getInt("week3");var week4= rs1.getInt("week4");
				var week5 = rs1.getInt("week5");var week6 = rs1.getInt("week6");var week7 = rs1.getInt("week7");var week8= rs1.getInt("week8");
				var week9 = rs1.getInt("week9");var week10 = rs1.getInt("week10");var week11 = rs1.getInt("week11");var week12= rs1.getInt("week12");
				var week13 = rs1.getInt("week13");var week14 = rs1.getInt("week14");var week15 = rs1.getInt("week15");var week16= rs1.getInt("week16");
				var week17 = rs1.getInt("week17");var week18= rs1.getInt("week18");
				Paybill waterbill = new Paybill(area, build, room, dormheader, money, week1, week2, week3, week4, week5, week6, week7, week8, week9, week10, week11, week12, week13, week14, week15, week16, week17, week18);
				billlist.add(waterbill);
				session.setAttribute("billlist", billlist);
			}
			rs1.close();
			//获取电费
			String sql2 = "select * from dormelectricity where area = '" + area + "' and build =  '" + build + "' and room = '" + room + "' ";
			ResultSet rs2 = stmt.executeQuery(sql2);
			while(rs2.next()){
				var money = rs2.getInt("money");
				var week1 = rs2.getInt("week1");var week2 = rs2.getInt("week2");var week3 = rs2.getInt("week3");var week4= rs2.getInt("week4");
				var week5 = rs2.getInt("week5");var week6 = rs2.getInt("week6");var week7 = rs2.getInt("week7");var week8= rs2.getInt("week8");
				var week9 = rs2.getInt("week9");var week10 = rs2.getInt("week10");var week11 = rs2.getInt("week11");var week12= rs2.getInt("week12");
				var week13 = rs2.getInt("week13");var week14 = rs2.getInt("week14");var week15 = rs2.getInt("week15");var week16= rs2.getInt("week16");
				var week17 = rs2.getInt("week17");var week18= rs2.getInt("week18");
				Paybill electricitybill = new Paybill(area, build, room, dormheader, money, week1, week2, week3, week4, week5, week6, week7, week8, week9, week10, week11, week12, week13, week14, week15, week16, week17, week18);
				billlist.add(electricitybill);
				session.setAttribute("billlist", billlist);
			}
			rs2.close();
			//页面跳转-----------------------------------------------------------------------------------------------------
			response.sendRedirect("Student_Main.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//response.sendRedirect("Student_Main.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
