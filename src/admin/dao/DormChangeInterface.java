package admin.dao;

import java.util.ArrayList;

import admin.data.DormChange;

public interface DormChangeInterface {
	public ArrayList<DormChange> findAllDormChange();
	public Boolean deleteDormChange(String build,String room,String phone);
	public Boolean addDormChange(String area,String build,String room,String toarea,String tobuild,String toroom,String description,String phone);
}
