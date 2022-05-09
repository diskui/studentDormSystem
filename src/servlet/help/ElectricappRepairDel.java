package servlet.help;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.dao.RepairInterface;
import admin.daofactory.DaoFactory;

@WebServlet("/ElectricappRepairDel")
public class ElectricappRepairDel extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		var area = request.getParameter("area");
		var build = request.getParameter("build");
		var room = request.getParameter("room");
		var description = request.getParameter("description");
		RepairInterface repair = DaoFactory.getRepairMethod();
		repair.deleteElectricapp(area, build, room, description);
		response.sendRedirect("ElectricappRepair_List.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
