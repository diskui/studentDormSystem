package servlet.help;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.dao.ComplainInterface;
import admin.daofactory.DaoFactory;

@WebServlet("/DormComplainDel")
public class DormComplainDel extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		var area = request.getParameter("area");
		var build = request.getParameter("build");
		var room = request.getParameter("room");
		var phone = request.getParameter("phone");
		ComplainInterface dormcom = DaoFactory.getComplainMethod();
		dormcom.deleteDormCom(area, build, room, phone);
		response.sendRedirect("ComplainDorm_List.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
