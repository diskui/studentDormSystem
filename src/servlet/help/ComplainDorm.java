package servlet.help;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.dao.ComplainInterface;
import admin.daofactory.DaoFactory;

@WebServlet("/ComplainDorm")
public class ComplainDorm extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		var area = request.getParameter("area");
		var build = request.getParameter("build");
		var room = request.getParameter("room");
		var description = request.getParameter("description");
		var phone = request.getParameter("phone");
		var email = request.getParameter("email");
		var dormheader = "张三";
		ComplainInterface dormcom = DaoFactory.getComplainMethod();
		dormcom.addDormCom(area, build, room, dormheader, description, phone, email);
		response.sendRedirect("Complain_dorm.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
