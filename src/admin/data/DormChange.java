package admin.data;

public class DormChange {
	private String area;
	private String build;
	private String room;
	private String toarea;
	private String tobuild;
	private String toroom;
	private String description;
	private String phone;
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
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public String getToarea() {
		return toarea;
	}
	public void setToarea(String toarea) {
		this.toarea = toarea;
	}
	public String getTobuild() {
		return tobuild;
	}
	public void setTobuild(String tobuild) {
		this.tobuild = tobuild;
	}
	public String getToroom() {
		return toroom;
	}
	public void setToroom(String toroom) {
		this.toroom = toroom;
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
	public DormChange(String area, String build, String room, String toarea, String tobuild, String toroom,
			String description, String phone) {
		super();
		this.area = area;
		this.build = build;
		this.room = room;
		this.toarea = toarea;
		this.tobuild = tobuild;
		this.toroom = toroom;
		this.description = description;
		this.phone = phone;
	}
	
}
