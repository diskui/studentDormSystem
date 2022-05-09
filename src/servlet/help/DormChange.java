package servlet.help;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.dao.DormChangeInterface;
import admin.daofactory.DaoFactory;

@WebServlet("/DormChange")
public class DormChange extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		var area = request.getParameter("area");
		var build = request.getParameter("build");
		var room = request.getParameter("room");
		var toarea = request.getParameter("toarea");
		var tobuild = request.getParameter("tobuild");
		var toroom = request.getParameter("toroom");
		var description = request.getParameter("description");
		var phone = request.getParameter("phone");
		DormChangeInterface addDormChange = DaoFactory.getDormChangeMethod();
		addDormChange.addDormChange(area, build, room, toarea, tobuild, toroom, description, phone);
		response.sendRedirect("Dorm_change.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
