package admin.daofactory;

import admin.dao.ComplainInterface;
import admin.dao.DormChangeInterface;
import admin.dao.DormListInterface;
import admin.dao.RepairInterface;
import admin.dao.WaterElectricityInterface;
import admin.implement.ComplainMethod_Mysql;
import admin.implement.DormChangeMethod_Mysql;
import admin.implement.DormListMethod_Mysql;
import admin.implement.RepairMethod_Mysql;
import admin.implement.WaterElectricityMethod_Mysql;

public class DaoFactory {
	
	public static RepairInterface getRepairMethod() {
		return new RepairMethod_Mysql();
	}
	
	public static ComplainInterface getComplainMethod() {
		return new ComplainMethod_Mysql();
	}
	
	public static DormChangeInterface getDormChangeMethod() {
		return new DormChangeMethod_Mysql();
	}
	
	public static DormListInterface getDormListMethod() {
		return new DormListMethod_Mysql();
	}
	
	public static WaterElectricityInterface getWaterElectricityMethod() {
		return new WaterElectricityMethod_Mysql();
	}
}
