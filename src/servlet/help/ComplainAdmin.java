package servlet.help;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.dao.ComplainInterface;
import admin.daofactory.DaoFactory;

@WebServlet("/ComplainAdmin")
public class ComplainAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		var description = request.getParameter("description");
		var phone = request.getParameter("phone");
		var email = request.getParameter("email");
		var admin = request.getParameter("admin");
		ComplainInterface admincom = DaoFactory.getComplainMethod();
		admincom.addAdminCom(admin, description, phone, email);
		response.sendRedirect("Complain_admin.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
