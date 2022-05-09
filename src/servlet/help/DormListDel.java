package servlet.help;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.dao.DormListInterface;
import admin.daofactory.DaoFactory;

@WebServlet("/DormListDel")
public class DormListDel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		var studentnumber = request.getParameter("studentnumber");
		DormListInterface dormlist = DaoFactory.getDormListMethod();
		dormlist.deleteDorm(studentnumber);
		response.sendRedirect("Dorm_List.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
