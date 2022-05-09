package admin.dao;

import java.util.ArrayList;

import admin.data.WaterElectricity;

public interface WaterElectricityInterface {
	public ArrayList<WaterElectricity> findAllWaterElectricity();
	public Boolean changeWaterElectricity(String area,String build,String room,int watermoney,int electricitymoney);
	public int findWaterMoney(String area,String build,String room);
	public int findElectricityMoney(String area,String build,String room);
}
