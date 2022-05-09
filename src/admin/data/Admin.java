package admin.data;

public class Admin {
	private String adminnumber;
	private String adminname;
	private String area;
	private String build;
	private String phone;
	public String getAdminnumber() {
		return adminnumber;
	}
	public void setAdminnumber(String adminnumber) {
		this.adminnumber = adminnumber;
	}
	public String getAdminname() {
		return adminname;
	}
	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getBuild() {
		return build;
	}
	public void setBuild(String build) {
		this.build = build;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Admin(String adminnumber, String adminname, String area, String build, String phone) {
		this.adminnumber = adminnumber;
		this.adminname = adminname;
		this.area = area;
		this.build = build;
		this.phone = phone;
	}
	
	
}
