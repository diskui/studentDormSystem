package admin.data;

public class AdminCom {
	private String admin;
	private String description;
	private String phone;
	private String email;
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public AdminCom(String admin, String description, String phone, String email) {
		super();
		this.admin = admin;
		this.description = description;
		this.phone = phone;
		this.email = email;
	}
	
}
