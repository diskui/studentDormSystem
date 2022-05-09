package servlet.help;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.dao.DormListInterface;
import admin.daofactory.DaoFactory;

@WebServlet("/DormListChange")
public class DormListChange extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		var studentnumber = request.getParameter("studentnumber");
		var area = request.getParameter("area");
		var build = request.getParameter("build");
		var room = request.getParameter("room");
		var studentname = request.getParameter("name");
		var dormheader = request.getParameter("dormheader");
		var dormnumber = request.getParameter("dormnumber");
		var dormtype = request.getParameter("dormtype");
		var dormheaderphone = request.getParameter("dormheaderphone");
		var phone = request.getParameter("phone");
		DormListInterface dormlist = DaoFactory.getDormListMethod();
		dormlist.changeDorm(studentnumber, studentname, area, build, room, dormheader, dormnumber, dormtype, dormheaderphone, phone);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
