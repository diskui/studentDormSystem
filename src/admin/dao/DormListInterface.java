package admin.dao;
import java.util.ArrayList;
import student.data.Student;

public interface DormListInterface {
	public ArrayList<Student> findAllStudent();
	public Boolean addDorm(Student student);
	public Boolean deleteDorm(String studentnumber);
	public Boolean changeDorm(String studentnumber, String studentname, String area, String build, String room, String dormheader,
			String dormnumber, String dormtype, String dormheaderphone, String phone);
}
