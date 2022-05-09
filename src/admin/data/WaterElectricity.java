package admin.data;

public class WaterElectricity {
	private String area;
	private String build;
	private String room;
	private String dormheader;
	private int watermoney;
	private int electricitymoney;
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
	public int getWatermoney() {
		return watermoney;
	}
	public void setWatermoney(int watermoney) {
		this.watermoney = watermoney;
	}
	public int getElectricitymoney() {
		return electricitymoney;
	}
	public void setElectricitymoney(int electricitymoney) {
		this.electricitymoney = electricitymoney;
	}
	public WaterElectricity(String area, String build, String room, String dormheader, int watermoney,
			int electricitymoney) {
		super();
		this.area = area;
		this.build = build;
		this.room = room;
		this.dormheader = dormheader;
		this.watermoney = watermoney;
		this.electricitymoney = electricitymoney;
	}
	
}
