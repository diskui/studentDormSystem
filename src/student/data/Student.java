package student.data;

public class Student {
	private String studentnumber;
	private String studentname;
	private String area;
	private String build;
	private String room;
	private String dormheader;
	private String dormnumber;
	private String dormtype;
	private String dormheaderphone;
	private String phone;
	public String getStudentnumber() {
		return studentnumber;
	}
	public void setStudentnumber(String studentnumber) {
		this.studentnumber = studentnumber;
	}
	public String getStudentname() {
		return studentname;
	}
	public void setStudentname(String studentname) {
		this.studentname = studentname;
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
	public void setBulid(String bulid) {
		this.build = bulid;
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
	public String getDormnumber() {
		return dormnumber;
	}
	public void setDormnumber(String dormnumber) {
		this.dormnumber = dormnumber;
	}
	public String getDormtype() {
		return dormtype;
	}
	public void setDormtype(String dormtype) {
		this.dormtype = dormtype;
	}
	public String getDormheaderphone() {
		return dormheaderphone;
	}
	public void setDormheaderphone(String dormheaderphone) {
		this.dormheaderphone = dormheaderphone;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Student(String studentnumber, String studentname, String area, String build, String room, String dormheader,
			String dormnumber, String dormtype, String dormheaderphone, String phone) {
		this.studentnumber = studentnumber;
		this.studentname = studentname;
		this.area = area;
		this.build = build;
		this.room = room;
		this.dormheader = dormheader;
		this.dormnumber = dormnumber;
		this.dormtype = dormtype;
		this.dormheaderphone = dormheaderphone;
		this.phone = phone;
	}
	
	
}
