package servlet.help;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.dao.RepairInterface;
import admin.daofactory.DaoFactory;
import student.data.Student;

@WebServlet("/FloorWallRepair")
public class FloorWallRepair extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		var area = request.getParameter("area");
		var build = request.getParameter("build");
		var room = request.getParameter("room");
		var description = request.getParameter("description");
		var session = request.getSession();
		@SuppressWarnings("unchecked")
		Student student =  ((ArrayList<Student>)session.getAttribute("studentlist")).get(0); //获取用户信息
		var dormheader = student.getDormheader();
		RepairInterface floorwall = DaoFactory.getRepairMethod();
		floorwall.addFloorwall(area, build, room, description, dormheader);
		response.sendRedirect("FloorWall_repair.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
