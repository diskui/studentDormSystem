package admin.dao;

import java.util.ArrayList;

import admin.data.Repair;

public interface RepairInterface {
	public ArrayList<Repair> findAllPipeline();
	public ArrayList<Repair> findAllElectricapp();
	public ArrayList<Repair> findAllFurniture();
	public ArrayList<Repair> findAllFloorwall();
	public Boolean deletePipeline(String area,String build,String room,String description);
	public Boolean deleteElectricapp(String area,String build,String room,String description);
	public Boolean deleteFurniture(String area,String build,String room,String description);
	public Boolean deleteFloorwall(String area,String build,String room,String description);
	public Boolean addPipeline(String area,String build,String room,String description,String dormheader);
	public Boolean addElectricapp(String area,String build,String room,String description,String dormheader);
	public Boolean addFurniture(String area,String build,String room,String description,String dormheader);
	public Boolean addFloorwall(String area,String build,String room,String description,String dormheader);
}
