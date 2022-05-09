package servlet.help;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.dao.WaterElectricityInterface;
import admin.daofactory.DaoFactory;

@WebServlet("/WaterElectricityChange")
public class WaterElectricityChange extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		var area = request.getParameter("area");
		var build = request.getParameter("build");
		var room = request.getParameter("room");
		int watermoney = Integer.parseInt(request.getParameter("watermoney"));
		int electricitymoney = Integer.parseInt(request.getParameter("electricitymoney"));
		WaterElectricityInterface waterelectricity = DaoFactory.getWaterElectricityMethod();
		waterelectricity.changeWaterElectricity(area, build, room, watermoney, electricitymoney);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
