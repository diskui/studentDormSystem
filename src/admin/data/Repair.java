package admin.data;

public class Repair {
	private String area;
	private String build;
	private String room;
	private String dormheader;
	private String description;
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
	public String getDormheader() {
		return dormheader;
	}
	public void setDormheader(String dormheader) {
		this.dormheader = dormheader;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Repair(String area, String build, String room, String dormheader, String description) {
		super();
		this.area = area;
		this.build = build;
		this.room = room;
		this.dormheader = dormheader;
		this.description = description;
	}
	
}
