package admin.dao;

import java.util.ArrayList;

import admin.data.AdminCom;
import admin.data.DormCom;

public interface ComplainInterface {
	public ArrayList<DormCom> findAllDormCom();
	public ArrayList<AdminCom> findAllAdminCom();
	public Boolean deleteDormCom(String area,String build,String room,String phone);
	public Boolean deleteAdminCom(String admin,String phone);
	public Boolean addDormCom(String area,String build,String room,String dormheader,String description,String phone,String email);
	public Boolean addAdminCom(String admin,String description,String phone,String email);
}
